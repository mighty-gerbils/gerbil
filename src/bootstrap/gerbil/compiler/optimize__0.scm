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
    (lambda _$args23638_
      (apply make-struct-instance gxc#optimizer-info::t _$args23638_)))
  (define gxc#optimizer-info-type
    (make-struct-field-accessor gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi
    (make-struct-field-accessor gxc#optimizer-info::t '1))
  (define gxc#optimizer-info-type-set!
    (make-struct-field-mutator gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi-set!
    (make-struct-field-mutator gxc#optimizer-info::t '1))
  (define gxc#optimizer-info:::init!
    (lambda (_self23636_)
      (if (##fx< '2 (##vector-length _self23636_))
          (begin
            (##vector-set! _self23636_ '1 (make-hash-table-eq))
            (##vector-set! _self23636_ '2 (make-hash-table-eq)))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self23636_))))
  (bind-method! gxc#optimizer-info::t ':init! gxc#optimizer-info:::init! '#f)
  (define gxc#optimizer-info-init!
    (lambda ()
      (if (gxc#current-compile-optimizer-info)
          '#!void
          (gxc#current-compile-optimizer-info
           (let ((__obj23650 (make-object gxc#optimizer-info::t '2)))
             (begin (gxc#optimizer-info:::init! __obj23650) __obj23650))))))
  (define gxc#optimize!
    (lambda (_ctx23508_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#optimizer-load-ssxi-deps _ctx23508_)
           (table-set!
            (##structure-ref
             (gxc#current-compile-optimizer-info)
             '2
             gxc#optimizer-info::t
             '#f)
            (##structure-ref _ctx23508_ '1 gx#expander-context::t '#f)
            '#t)
           (let ((_code23511_
                  (gxc#optimize-source
                   (##structure-ref _ctx23508_ '11 gx#module-context::t '#f))))
             (##structure-set!
              _ctx23508_
              _code23511_
              '11
              gx#module-context::t
              '#f))))
       gxc#current-compile-mutators
       (make-hash-table-eq)
       gxc#current-compile-local-type
       (make-hash-table-eq))))
  (define gxc#optimizer-load-ssxi-deps
    (lambda (_ctx23453_)
      (letrec* ((_deps23455_
                 (let* ((_imports23499_
                         (##structure-ref
                          _ctx23453_
                          '8
                          gx#module-context::t
                          '#f))
                        (_$e23501_
                         (gx#core-context-prelude__opt-lambda13205
                          _ctx23453_)))
                   (if _$e23501_
                       ((lambda (_g2350323505_)
                          (cons _g2350323505_ _imports23499_))
                        _$e23501_)
                       _imports23499_))))
        (let _lp23457_ ((_rest23459_ _deps23455_))
          (let* ((_rest2346023468_ _rest23459_)
                 (_E2346323472_
                  (lambda () (error '"No clause matching" _rest2346023468_)))
                 (_else2346223476_ (lambda () '#!void))
                 (_K2346423487_
                  (lambda (_rest23479_ _hd23480_)
                    (if (##structure-instance-of?
                         _hd23480_
                         'gx#module-context::t)
                        (begin
                          (if (table-ref
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)
                               (##structure-ref
                                _hd23480_
                                '1
                                gx#expander-context::t
                                '#f)
                               '#f)
                              '#!void
                              (begin
                                (let ((_$e23482_
                                       (gx#core-context-prelude__opt-lambda13205
                                        _hd23480_)))
                                  (if _$e23482_
                                      ((lambda (_pre23485_)
                                         (_lp23457_
                                          (cons _pre23485_
                                                (##structure-ref
                                                 _hd23480_
                                                 '8
                                                 gx#module-context::t
                                                 '#f))))
                                       _$e23482_)
                                      (_lp23457_
                                       (##structure-ref
                                        _hd23480_
                                        '8
                                        gx#module-context::t
                                        '#f))))
                                (gxc#optimizer-load-ssxi _hd23480_)))
                          (_lp23457_ _rest23479_))
                        (if (##structure-instance-of?
                             _hd23480_
                             'gx#prelude-context::t)
                            (begin
                              (if (table-ref
                                   (##structure-ref
                                    (gxc#current-compile-optimizer-info)
                                    '2
                                    gxc#optimizer-info::t
                                    '#f)
                                   (##structure-ref
                                    _hd23480_
                                    '1
                                    gx#expander-context::t
                                    '#f)
                                   '#f)
                                  '#!void
                                  (begin
                                    (_lp23457_
                                     (##structure-ref
                                      _hd23480_
                                      '7
                                      gx#prelude-context::t
                                      '#f))
                                    (gxc#optimizer-load-ssxi _hd23480_)))
                              (_lp23457_ _rest23479_))
                            (if (##structure-direct-instance-of?
                                 _hd23480_
                                 'gx#module-import::t)
                                (_lp23457_
                                 (cons (##direct-structure-ref
                                        _hd23480_
                                        '1
                                        gx#module-import::t
                                        '#f)
                                       _rest23479_))
                                (if (##structure-direct-instance-of?
                                     _hd23480_
                                     'gx#module-export::t)
                                    (_lp23457_
                                     (cons (##direct-structure-ref
                                            _hd23480_
                                            '1
                                            gx#module-export::t
                                            '#f)
                                           _rest23479_))
                                    (if (##structure-direct-instance-of?
                                         _hd23480_
                                         'gx#import-set::t)
                                        (_lp23457_
                                         (cons (##direct-structure-ref
                                                _hd23480_
                                                '1
                                                gx#import-set::t
                                                '#f)
                                               _rest23479_))
                                        (error '"Unexpected module import"
                                               _hd23480_)))))))))
            (if (##pair? _rest2346023468_)
                (let ((_hd2346523490_ (##car _rest2346023468_))
                      (_tl2346623492_ (##cdr _rest2346023468_)))
                  (let* ((_hd23495_ _hd2346523490_)
                         (_rest23497_ _tl2346623492_))
                    (_K2346423487_ _rest23497_ _hd23495_)))
                (_else2346223476_)))))))
  (define gxc#optimizer-load-ssxi
    (lambda (_ctx23433_)
      (if (if (##structure-instance-of? _ctx23433_ 'gx#module-context::t)
              (list? (##structure-ref _ctx23433_ '7 gx#module-context::t '#f))
              '#f)
          '#!void
          (let* ((_ht23435_
                  (##structure-ref
                   (gxc#current-compile-optimizer-info)
                   '2
                   gxc#optimizer-info::t
                   '#f))
                 (_id23437_
                  (##structure-ref _ctx23433_ '1 gx#expander-context::t '#f))
                 (_mod23439_ (table-ref _ht23435_ _id23437_ '#f)))
            (let ((_$e23442_ _mod23439_))
              (if _$e23442_
                  _$e23442_
                  (let* ((_mod23445_ (gxc#optimizer-import-ssxi _ctx23433_))
                         (_val23450_
                          (let ((_$e23447_ _mod23445_))
                            (if _$e23447_ _$e23447_ '#!void))))
                    (begin
                      (table-set! _ht23435_ _id23437_ _val23450_)
                      _val23450_))))))))
  (define gxc#optimizer-import-ssxi
    (lambda (_ctx23410_)
      (letrec ((_catch-e23412_
                (lambda (_exn23431_)
                  (begin
                    (if (gxc#current-compile-verbose)
                        (begin
                          (displayln
                           '"Failed to load ssxi module for "
                           (##structure-ref
                            _ctx23410_
                            '1
                            gx#expander-context::t
                            '#f))
                          (display-exception _exn23431_))
                        '#!void)
                    '#f)))
               (_import-e23413_
                (lambda ()
                  (let* ((_str-id23416_
                          (string-append
                           (symbol->string
                            (##structure-ref
                             _ctx23410_
                             '1
                             gx#expander-context::t
                             '#f))
                           '".ssxi"))
                         (_artefact-path23424_
                          (let ((_odir2341723419_
                                 (gxc#current-compile-output-dir)))
                            (if _odir2341723419_
                                (let ((_odir23422_ _odir2341723419_))
                                  (path-expand
                                   (string-append _str-id23416_ '".ss")
                                   _odir23422_))
                                '#f)))
                         (_library-path23426_
                          (string->symbol
                           (string-append '":" _str-id23416_ '".ss")))
                         (_ssxi-path23428_
                          (if (if _artefact-path23424_
                                  (file-exists? _artefact-path23424_)
                                  '#f)
                              _artefact-path23424_
                              _library-path23426_)))
                    (begin
                      (gxc#verbose '"Loading ssxi module " _ssxi-path23428_)
                      (gx#import-module__opt-lambda13240
                       _ssxi-path23428_
                       '#t
                       '#t))))))
        (if (##structure-ref _ctx23410_ '1 gx#expander-context::t '#f)
            (with-exception-catcher _catch-e23412_ _import-e23413_)
            '#f))))
  (define gxc#!type::t (make-struct-type 'gxc#!type::t '#f '1 '!type '() '#f))
  (define gxc#!type? (make-struct-predicate gxc#!type::t))
  (define gxc#make-!type
    (lambda _$args23407_
      (apply make-struct-instance gxc#!type::t _$args23407_)))
  (define gxc#!type-id (make-struct-field-accessor gxc#!type::t '0))
  (define gxc#!type-id-set! (make-struct-field-mutator gxc#!type::t '0))
  (define gxc#!alias::t
    (make-struct-type 'gxc#!alias::t gxc#!type::t '0 '!alias '() '#f))
  (define gxc#!alias? (make-struct-predicate gxc#!alias::t))
  (define gxc#make-!alias
    (lambda _$args23404_
      (apply make-struct-instance gxc#!alias::t _$args23404_)))
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
    (lambda _$args23401_
      (apply make-struct-instance gxc#!struct-type::t _$args23401_)))
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
    (lambda _$args23398_
      (apply make-struct-instance gxc#!procedure::t _$args23398_)))
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
    (lambda _$args23395_
      (apply make-struct-instance gxc#!struct-pred::t _$args23395_)))
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
    (lambda _$args23392_
      (apply make-struct-instance gxc#!struct-cons::t _$args23392_)))
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
    (lambda _$args23389_
      (apply make-struct-instance gxc#!struct-getf::t _$args23389_)))
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
    (lambda _$args23386_
      (apply make-struct-instance gxc#!struct-setf::t _$args23386_)))
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
    (lambda _$args23383_
      (apply make-struct-instance gxc#!lambda::t _$args23383_)))
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
    (lambda _$args23380_
      (apply make-struct-instance gxc#!case-lambda::t _$args23380_)))
  (define gxc#!case-lambda-clauses
    (make-struct-field-accessor gxc#!case-lambda::t '0))
  (define gxc#!case-lambda-clauses-set!
    (make-struct-field-mutator gxc#!case-lambda::t '0))
  (define gxc#!struct-type:::init!
    (lambda (_self23372_
             _id23373_
             _super23374_
             _fields23375_
             _xfields23376_
             _ctor23377_
             _plist23378_)
      (if (##fx< '7 (##vector-length _self23372_))
          (begin
            (##vector-set! _self23372_ '1 _id23373_)
            (##vector-set! _self23372_ '2 _super23374_)
            (##vector-set! _self23372_ '3 _fields23375_)
            (##vector-set! _self23372_ '4 _xfields23376_)
            (##vector-set! _self23372_ '5 _ctor23377_)
            (##vector-set! _self23372_ '6 _plist23378_)
            (##vector-set! _self23372_ '7 '#f))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self23372_))))
  (bind-method! gxc#!struct-type::t ':init! gxc#!struct-type:::init! '#f)
  (begin
    (define gxc#!lambda:::init!__opt-lambda23214
      (lambda (_self23216_
               _id23217_
               _arity23218_
               _dispatch23219_
               _inline23220_
               _typedecl23221_)
        (if (##fx< '5 (##vector-length _self23216_))
            (begin
              (##vector-set! _self23216_ '1 _id23217_)
              (##vector-set! _self23216_ '2 _arity23218_)
              (##vector-set! _self23216_ '3 _dispatch23219_)
              (##vector-set! _self23216_ '4 _inline23220_)
              (##vector-set! _self23216_ '5 _typedecl23221_))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self23216_))))
    (begin
      (define gxc#!lambda:::init!__0
        (lambda (_self23226_ _id23227_ _arity23228_ _dispatch23229_)
          (let* ((_inline23231_ '#f) (_typedecl23233_ '#f))
            (if (##fx< '5 (##vector-length _self23226_))
                (begin
                  (##vector-set! _self23226_ '1 _id23227_)
                  (##vector-set! _self23226_ '2 _arity23228_)
                  (##vector-set! _self23226_ '3 _dispatch23229_)
                  (##vector-set! _self23226_ '4 _inline23231_)
                  (##vector-set! _self23226_ '5 _typedecl23233_))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self23226_)))))
      (define gxc#!lambda:::init!__1
        (lambda (_self23235_
                 _id23236_
                 _arity23237_
                 _dispatch23238_
                 _inline23239_)
          (let ((_typedecl23241_ '#f))
            (if (##fx< '5 (##vector-length _self23235_))
                (begin
                  (##vector-set! _self23235_ '1 _id23236_)
                  (##vector-set! _self23235_ '2 _arity23237_)
                  (##vector-set! _self23235_ '3 _dispatch23238_)
                  (##vector-set! _self23235_ '4 _inline23239_)
                  (##vector-set! _self23235_ '5 _typedecl23241_))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self23235_)))))
      (define gxc#!lambda:::init!
        (lambda _g23658_
          (let ((_g23657_ (length _g23658_)))
            (cond ((fx= _g23657_ 4) (apply gxc#!lambda:::init!__0 _g23658_))
                  ((fx= _g23657_ 5) (apply gxc#!lambda:::init!__1 _g23658_))
                  ((fx= _g23657_ 6)
                   (apply (lambda (_self23243_
                                   _id23244_
                                   _arity23245_
                                   _dispatch23246_
                                   _inline23247_
                                   _typedecl23248_)
                            (if (##fx< '5 (##vector-length _self23243_))
                                (begin
                                  (##vector-set! _self23243_ '1 _id23244_)
                                  (##vector-set! _self23243_ '2 _arity23245_)
                                  (##vector-set!
                                   _self23243_
                                   '3
                                   _dispatch23246_)
                                  (##vector-set! _self23243_ '4 _inline23247_)
                                  (##vector-set!
                                   _self23243_
                                   '5
                                   _typedecl23248_))
                                (error '"struct-instance-init!: too many arguments for struct"
                                       _self23243_)))
                          _g23658_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#!lambda:::init!
                    _g23658_))))))))
  (bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f)
  (define gxc#!struct-type-vtab
    (lambda (_type23086_)
      (let ((_$e23088_
             (##structure-ref _type23086_ '7 gxc#!struct-type::t '#f)))
        (if _$e23088_
            (values _$e23088_)
            (let ((_vtab23091_ (make-hash-table-eq)))
              (begin
                (##structure-set!
                 _type23086_
                 _vtab23091_
                 '7
                 gxc#!struct-type::t
                 '#f)
                _vtab23091_))))))
  (define gxc#!struct-type-lookup-method
    (lambda (_type23077_ _method23078_)
      (let ((_vtab2307923081_
             (##structure-ref _type23077_ '7 gxc#!struct-type::t '#f)))
        (if _vtab2307923081_
            (let ((_vtab23084_ _vtab2307923081_))
              (table-ref _vtab23084_ _method23078_ '#f))
            '#f))))
  (begin
    (define gxc#optimizer-declare-type!__opt-lambda23059
      (lambda (_sym23061_ _type23062_ _local?23063_)
        (begin
          (if (##structure-instance-of? _type23062_ 'gxc#!type::t)
              '#!void
              (error '"bad declaration: expected !type"
                     _sym23061_
                     _type23062_))
          (gxc#verbose
           '"declare-type "
           _sym23061_
           '" "
           (struct->list _type23062_))
          (table-set!
           (if _local?23063_
               (gxc#current-compile-local-type)
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '1
                gxc#optimizer-info::t
                '#f))
           _sym23061_
           _type23062_))))
    (begin
      (define gxc#optimizer-declare-type!__0
        (lambda (_sym23068_ _type23069_)
          (let ((_local?23071_ '#f))
            (gxc#optimizer-declare-type!__opt-lambda23059
             _sym23068_
             _type23069_
             _local?23071_))))
      (define gxc#optimizer-declare-type!
        (lambda _g23660_
          (let ((_g23659_ (length _g23660_)))
            (cond ((fx= _g23659_ 2)
                   (apply gxc#optimizer-declare-type!__0 _g23660_))
                  ((fx= _g23659_ 3)
                   (apply gxc#optimizer-declare-type!__opt-lambda23059
                          _g23660_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-declare-type!
                    _g23660_))))))))
  (begin
    (define gxc#optimizer-declare-method!__opt-lambda23035
      (lambda (_type-t23037_ _method23038_ _sym23039_ _rebind?23040_)
        (let ((_type23042_ (gxc#optimizer-resolve-type _type-t23037_)))
          (if (##structure-instance-of? _type23042_ 'gxc#!struct-type::t)
              (let ((_vtab23044_ (gxc#!struct-type-vtab _type23042_)))
                (if _rebind?23040_
                    (if (hash-key? _vtab23044_ _method23038_)
                        (gxc#verbose
                         '"declare-method: [warning] skip rebind on existing method"
                         _type-t23037_
                         '" "
                         _method23038_)
                        (gxc#verbose
                         '"declare-method: skip rebind method "
                         _type-t23037_
                         '" "
                         _method23038_))
                    (if (hash-key? _vtab23044_ _method23038_)
                        (error '"declare-method: duplicate method declaration")
                        (begin
                          (gxc#verbose
                           '"declare-method "
                           _type-t23037_
                           '" "
                           _method23038_
                           '" => "
                           _sym23039_)
                          (table-set! _vtab23044_ _method23038_ _sym23039_)))))
              (if (not _type23042_)
                  (gxc#verbose '"declare-method: unknown type " _type-t23037_)
                  (error '"declare-method: bad method declaration; no method table"
                         _type-t23037_
                         _type23042_))))))
    (begin
      (define gxc#optimizer-declare-method!__0
        (lambda (_type-t23049_ _method23050_ _sym23051_)
          (let ((_rebind?23053_ '#f))
            (gxc#optimizer-declare-method!__opt-lambda23035
             _type-t23049_
             _method23050_
             _sym23051_
             _rebind?23053_))))
      (define gxc#optimizer-declare-method!
        (lambda _g23662_
          (let ((_g23661_ (length _g23662_)))
            (cond ((fx= _g23661_ 3)
                   (apply gxc#optimizer-declare-method!__0 _g23662_))
                  ((fx= _g23661_ 4)
                   (apply gxc#optimizer-declare-method!__opt-lambda23035
                          _g23662_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-declare-method!
                    _g23662_))))))))
  (define gxc#optimizer-lookup-type
    (lambda (_sym23025_)
      (let ((_$e23033_
             (let ((_ht2302623028_ (gxc#current-compile-local-type)))
               (if _ht2302623028_
                   (let ((_ht23031_ _ht2302623028_))
                     (table-ref _ht23031_ _sym23025_ '#f))
                   '#f))))
        (if _$e23033_
            _$e23033_
            (table-ref
             (##structure-ref
              (gxc#current-compile-optimizer-info)
              '1
              gxc#optimizer-info::t
              '#f)
             _sym23025_
             '#f)))))
  (define gxc#optimizer-resolve-type
    (lambda (_sym23017_)
      (let ((_type2301823020_ (gxc#optimizer-lookup-type _sym23017_)))
        (if _type2301823020_
            (let ((_type23023_ _type2301823020_))
              (if (##structure-instance-of? _type23023_ 'gxc#!alias::t)
                  (gxc#optimizer-resolve-type
                   (##structure-ref _type23023_ '1 gxc#!type::t '#f))
                  _type23023_))
            '#f))))
  (define gxc#optimizer-lookup-method
    (lambda (_type-t23012_ _method23013_)
      (let ((_type23015_ (gxc#optimizer-resolve-type _type-t23012_)))
        (if (##structure-instance-of? _type23015_ 'gxc#!struct-type::t)
            (gxc#!struct-type-lookup-method _type23015_ _method23013_)
            '#f))))
  (define gxc#optimize-source
    (lambda (_stx23008_)
      (begin
        (gxc#apply-collect-mutators _stx23008_)
        (let ((_stx23010_ (gxc#apply-lift-top-lambdas _stx23008_)))
          (begin
            (gxc#apply-collect-type-info _stx23010_)
            (gxc#apply-optimize-call _stx23010_))))))
  (define gxc#&identity-expression
    (make-promise
     (lambda ()
       (let ((_tbl23005_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl23005_ '%#begin-annotation gxc#xform-identity)
           (table-set! _tbl23005_ '%#lambda gxc#xform-identity)
           (table-set! _tbl23005_ '%#case-lambda gxc#xform-identity)
           (table-set! _tbl23005_ '%#let-values gxc#xform-identity)
           (table-set! _tbl23005_ '%#letrec-values gxc#xform-identity)
           (table-set! _tbl23005_ '%#letrec*-values gxc#xform-identity)
           (table-set! _tbl23005_ '%#quote gxc#xform-identity)
           (table-set! _tbl23005_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl23005_ '%#call gxc#xform-identity)
           (table-set! _tbl23005_ '%#if gxc#xform-identity)
           (table-set! _tbl23005_ '%#ref gxc#xform-identity)
           (table-set! _tbl23005_ '%#set! gxc#xform-identity)
           (table-set! _tbl23005_ '%#struct-instance? gxc#xform-identity)
           (table-set!
            _tbl23005_
            '%#struct-direct-instance?
            gxc#xform-identity)
           (table-set! _tbl23005_ '%#struct-ref gxc#xform-identity)
           (table-set! _tbl23005_ '%#struct-set! gxc#xform-identity)
           (table-set! _tbl23005_ '%#struct-direct-ref gxc#xform-identity)
           (table-set! _tbl23005_ '%#struct-direct-set! gxc#xform-identity)
           (table-set! _tbl23005_ '%#struct-unchecked-ref gxc#xform-identity)
           (table-set! _tbl23005_ '%#struct-unchecked-set! gxc#xform-identity)
           _tbl23005_)))))
  (define gxc#&identity-special-form
    (make-promise
     (lambda ()
       (let ((_tbl23001_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl23001_ '%#begin gxc#xform-identity)
           (table-set! _tbl23001_ '%#begin-syntax gxc#xform-identity)
           (table-set! _tbl23001_ '%#begin-foreign gxc#xform-identity)
           (table-set! _tbl23001_ '%#module gxc#xform-identity)
           (table-set! _tbl23001_ '%#import gxc#xform-identity)
           (table-set! _tbl23001_ '%#export gxc#xform-identity)
           (table-set! _tbl23001_ '%#provide gxc#xform-identity)
           (table-set! _tbl23001_ '%#extern gxc#xform-identity)
           (table-set! _tbl23001_ '%#define-values gxc#xform-identity)
           (table-set! _tbl23001_ '%#define-syntax gxc#xform-identity)
           (table-set! _tbl23001_ '%#define-alias gxc#xform-identity)
           (table-set! _tbl23001_ '%#declare gxc#xform-identity)
           _tbl23001_)))))
  (define gxc#&identity
    (make-promise
     (lambda ()
       (let ((_tbl22997_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl22997_ (force gxc#&identity-special-form))
           (hash-copy! _tbl22997_ (force gxc#&identity-expression))
           _tbl22997_)))))
  (define gxc#&basic-xform-expression
    (make-promise
     (lambda ()
       (let ((_tbl22993_ (make-hash-table-eq)))
         (begin
           (table-set!
            _tbl22993_
            '%#begin-annotation
            gxc#xform-begin-annotation%)
           (table-set! _tbl22993_ '%#lambda gxc#xform-lambda%)
           (table-set! _tbl22993_ '%#case-lambda gxc#xform-case-lambda%)
           (table-set! _tbl22993_ '%#let-values gxc#xform-let-values%)
           (table-set! _tbl22993_ '%#letrec-values gxc#xform-let-values%)
           (table-set! _tbl22993_ '%#letrec*-values gxc#xform-let-values%)
           (table-set! _tbl22993_ '%#quote gxc#xform-identity)
           (table-set! _tbl22993_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl22993_ '%#call gxc#xform-operands)
           (table-set! _tbl22993_ '%#if gxc#xform-operands)
           (table-set! _tbl22993_ '%#ref gxc#xform-identity)
           (table-set! _tbl22993_ '%#set! gxc#xform-setq%)
           (table-set! _tbl22993_ '%#struct-instance? gxc#xform-operands)
           (table-set!
            _tbl22993_
            '%#struct-direct-instance?
            gxc#xform-operands)
           (table-set! _tbl22993_ '%#struct-ref gxc#xform-operands)
           (table-set! _tbl22993_ '%#struct-set! gxc#xform-operands)
           (table-set! _tbl22993_ '%#struct-direct-ref gxc#xform-operands)
           (table-set! _tbl22993_ '%#struct-direct-set! gxc#xform-operands)
           (table-set! _tbl22993_ '%#struct-unchecked-ref gxc#xform-operands)
           (table-set! _tbl22993_ '%#struct-unchecked-set! gxc#xform-operands)
           _tbl22993_)))))
  (define gxc#&basic-xform
    (make-promise
     (lambda ()
       (let ((_tbl22989_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl22989_ (force gxc#&basic-xform-expression))
           (hash-copy! _tbl22989_ (force gxc#&identity))
           (table-set! _tbl22989_ '%#begin gxc#xform-begin%)
           (table-set! _tbl22989_ '%#module gxc#xform-module%)
           (table-set! _tbl22989_ '%#define-values gxc#xform-define-values%)
           _tbl22989_)))))
  (define gxc#&collect-mutators
    (make-promise
     (lambda ()
       (let ((_tbl22985_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl22985_ (force gxc#&void))
           (table-set! _tbl22985_ '%#begin gxc#collect-begin%)
           (table-set! _tbl22985_ '%#module gxc#collect-module%)
           (table-set!
            _tbl22985_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl22985_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl22985_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl22985_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl22985_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl22985_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl22985_ '%#call gxc#collect-operands)
           (table-set! _tbl22985_ '%#if gxc#collect-operands)
           (table-set! _tbl22985_ '%#set! gxc#collect-mutators-setq%)
           (table-set! _tbl22985_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl22985_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl22985_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl22985_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl22985_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl22985_ '%#struct-direct-set! gxc#collect-operands)
           (table-set! _tbl22985_ '%#struct-unchecked-ref gxc#collect-operands)
           (table-set!
            _tbl22985_
            '%#struct-unchecked-set!
            gxc#collect-operands)
           _tbl22985_)))))
  (define gxc#apply-collect-mutators
    (lambda (_stx22978_ . _args22980_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx22978_ _args22980_))
       gxc#current-compile-methods
       (force gxc#&collect-mutators))))
  (define gxc#&lift-top-lambdas
    (make-promise
     (lambda ()
       (let ((_tbl22975_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl22975_ (force gxc#&basic-xform))
           (table-set!
            _tbl22975_
            '%#define-values
            gxc#lift-top-lambda-define-values%)
           (table-set!
            _tbl22975_
            '%#let-values
            gxc#lift-top-lambda-let-values%)
           (table-set!
            _tbl22975_
            '%#letrec-values
            gxc#lift-top-lambda-letrec-values%)
           (table-set!
            _tbl22975_
            '%#letrec*-values
            gxc#lift-top-lambda-letrec-values%)
           _tbl22975_)))))
  (define gxc#apply-lift-top-lambdas
    (lambda (_stx22968_ . _args22970_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx22968_ _args22970_))
       gxc#current-compile-methods
       (force gxc#&lift-top-lambdas))))
  (define gxc#&expression-subst
    (make-promise
     (lambda ()
       (let ((_tbl22965_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl22965_ (force gxc#&basic-xform-expression))
           (table-set! _tbl22965_ '%#begin gxc#xform-begin%)
           (table-set! _tbl22965_ '%#ref gxc#expression-subst-ref%)
           _tbl22965_)))))
  (define gxc#apply-expression-subst
    (lambda (_stx22958_ . _args22960_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx22958_ _args22960_))
       gxc#current-compile-methods
       (force gxc#&expression-subst))))
  (define gxc#&collect-type-info
    (make-promise
     (lambda ()
       (let ((_tbl22955_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl22955_ (force gxc#&void))
           (table-set! _tbl22955_ '%#begin gxc#collect-begin%)
           (table-set! _tbl22955_ '%#module gxc#collect-module%)
           (table-set!
            _tbl22955_
            '%#define-values
            gxc#collect-type-define-values%)
           (table-set!
            _tbl22955_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl22955_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl22955_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl22955_ '%#let-values gxc#collect-type-let-values%)
           (table-set!
            _tbl22955_
            '%#letrec-values
            gxc#collect-type-let-values%)
           (table-set!
            _tbl22955_
            '%#letrec*-values
            gxc#collect-type-let-values%)
           (table-set! _tbl22955_ '%#call gxc#collect-type-call%)
           (table-set! _tbl22955_ '%#if gxc#collect-operands)
           (table-set! _tbl22955_ '%#set! gxc#collect-body-setq%)
           _tbl22955_)))))
  (define gxc#apply-collect-type-info
    (lambda (_stx22948_ . _args22950_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx22948_ _args22950_))
       gxc#current-compile-methods
       (force gxc#&collect-type-info))))
  (define gxc#&basic-expression-type
    (make-promise
     (lambda ()
       (let ((_tbl22945_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl22945_ (force gxc#&false))
           (table-set! _tbl22945_ '%#begin gxc#basic-expression-type-begin%)
           (table-set!
            _tbl22945_
            '%#begin-annotation
            gxc#basic-expression-type-begin-annotation%)
           (table-set! _tbl22945_ '%#lambda gxc#basic-expression-type-lambda%)
           (table-set!
            _tbl22945_
            '%#case-lambda
            gxc#basic-expression-type-case-lambda%)
           (table-set! _tbl22945_ '%#call gxc#basic-expression-type-call%)
           (table-set! _tbl22945_ '%#ref gxc#basic-expression-type-ref%)
           _tbl22945_)))))
  (define gxc#apply-basic-expression-type
    (lambda (_stx22938_ . _args22940_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx22938_ _args22940_))
       gxc#current-compile-methods
       (force gxc#&basic-expression-type))))
  (define gxc#&optimize-call
    (make-promise
     (lambda ()
       (let ((_tbl22935_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl22935_ (force gxc#&basic-xform))
           (table-set! _tbl22935_ '%#call gxc#optimize-call%)
           _tbl22935_)))))
  (define gxc#apply-optimize-call
    (lambda (_stx22928_ . _args22930_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx22928_ _args22930_))
       gxc#current-compile-methods
       (force gxc#&optimize-call))))
  (define gxc#&generate-ssxi
    (make-promise
     (lambda ()
       (let ((_tbl22925_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl22925_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl22925_ '%#begin gxc#generate-runtime-begin%)
           (table-set! _tbl22925_ '%#module gxc#generate-ssxi-module%)
           (table-set!
            _tbl22925_
            '%#define-values
            gxc#generate-ssxi-define-values%)
           (table-set! _tbl22925_ '%#call gxc#generate-ssxi-call%)
           _tbl22925_)))))
  (define gxc#apply-generate-ssxi
    (lambda (_stx22918_ . _args22920_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx22918_ _args22920_))
       gxc#current-compile-methods
       (force gxc#&generate-ssxi))))
  (define gxc#xform-identity (lambda (_stx22915_ . _args22916_) _stx22915_))
  (define gxc#xform-wrap-source
    (lambda (_stx22912_ _src-stx22913_)
      (gx#stx-wrap-source _stx22912_ (gx#stx-source _src-stx22913_))))
  (define gxc#xform-apply-compile-e
    (lambda (_args22906_)
      (lambda (_g2290722909_)
        (apply gxc#compile-e _g2290722909_ _args22906_))))
  (define gxc#xform-begin%
    (lambda (_stx22865_ . _args22866_)
      (let* ((_g2286822878_
              (lambda (_g2286922875_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2286922875_)))
             (_g2286722903_
              (lambda (_g2286922881_)
                (if (gx#stx-pair? _g2286922881_)
                    (let ((_e2287122883_ (gx#stx-e _g2286922881_)))
                      (let ((_hd2287222886_ (##car _e2287122883_))
                            (_tl2287322888_ (##cdr _e2287122883_)))
                        ((lambda (_L22891_)
                           (let ((_forms22901_
                                  (map (gxc#xform-apply-compile-e _args22866_)
                                       _L22891_)))
                             (gxc#xform-wrap-source
                              (cons '%#begin _forms22901_)
                              _stx22865_)))
                         _tl2287322888_)))
                    (_g2286822878_ _g2286922881_)))))
        (_g2286722903_ _stx22865_))))
  (define gxc#xform-module%
    (lambda (_stx22802_ . _args22803_)
      (let* ((_g2280522819_
              (lambda (_g2280622816_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2280622816_)))
             (_g2280422862_
              (lambda (_g2280622822_)
                (if (gx#stx-pair? _g2280622822_)
                    (let ((_e2280922824_ (gx#stx-e _g2280622822_)))
                      (let ((_hd2281022827_ (##car _e2280922824_))
                            (_tl2281122829_ (##cdr _e2280922824_)))
                        (if (gx#stx-pair? _tl2281122829_)
                            (let ((_e2281222832_ (gx#stx-e _tl2281122829_)))
                              (let ((_hd2281322835_ (##car _e2281222832_))
                                    (_tl2281422837_ (##cdr _e2281222832_)))
                                ((lambda (_L22840_ _L22841_)
                                   (let* ((_ctx22854_
                                           (gx#syntax-local-e__0 _L22841_))
                                          (_code22856_
                                           (##structure-ref
                                            _ctx22854_
                                            '11
                                            gx#module-context::t
                                            '#f))
                                          (_code22859_
                                           (call-with-parameters
                                            (lambda ()
                                              (apply gxc#compile-e
                                                     _code22856_
                                                     _args22803_))
                                            gx#current-expander-context
                                            _ctx22854_)))
                                     (begin
                                       (##structure-set!
                                        _ctx22854_
                                        _code22859_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _L22841_
                                                    (cons _code22859_ '())))
                                        _stx22802_))))
                                 _tl2281422837_
                                 _hd2281322835_)))
                            (_g2280522819_ _g2280622822_))))
                    (_g2280522819_ _g2280622822_)))))
        (_g2280422862_ _stx22802_))))
  (define gxc#xform-define-values%
    (lambda (_stx22732_ . _args22733_)
      (let* ((_g2273522752_
              (lambda (_g2273622749_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2273622749_)))
             (_g2273422799_
              (lambda (_g2273622755_)
                (if (gx#stx-pair? _g2273622755_)
                    (let ((_e2273922757_ (gx#stx-e _g2273622755_)))
                      (let ((_hd2274022760_ (##car _e2273922757_))
                            (_tl2274122762_ (##cdr _e2273922757_)))
                        (if (gx#stx-pair? _tl2274122762_)
                            (let ((_e2274222765_ (gx#stx-e _tl2274122762_)))
                              (let ((_hd2274322768_ (##car _e2274222765_))
                                    (_tl2274422770_ (##cdr _e2274222765_)))
                                (if (gx#stx-pair? _tl2274422770_)
                                    (let ((_e2274522773_
                                           (gx#stx-e _tl2274422770_)))
                                      (let ((_hd2274622776_
                                             (##car _e2274522773_))
                                            (_tl2274722778_
                                             (##cdr _e2274522773_)))
                                        (if (gx#stx-null? _tl2274722778_)
                                            ((lambda (_L22781_ _L22782_)
                                               (let ((_expr22797_
                                                      (apply gxc#compile-e
                                                             _L22781_
                                                             _args22733_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#define-values
                                                        (cons _L22782_
                                                              (cons _expr22797_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx22732_)))
                                             _hd2274622776_
                                             _hd2274322768_)
                                            (_g2273522752_ _g2273622755_))))
                                    (_g2273522752_ _g2273622755_))))
                            (_g2273522752_ _g2273622755_))))
                    (_g2273522752_ _g2273622755_)))))
        (_g2273422799_ _stx22732_))))
  (define gxc#xform-begin-annotation%
    (lambda (_stx22662_ . _args22663_)
      (let* ((_g2266522682_
              (lambda (_g2266622679_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2266622679_)))
             (_g2266422729_
              (lambda (_g2266622685_)
                (if (gx#stx-pair? _g2266622685_)
                    (let ((_e2266922687_ (gx#stx-e _g2266622685_)))
                      (let ((_hd2267022690_ (##car _e2266922687_))
                            (_tl2267122692_ (##cdr _e2266922687_)))
                        (if (gx#stx-pair? _tl2267122692_)
                            (let ((_e2267222695_ (gx#stx-e _tl2267122692_)))
                              (let ((_hd2267322698_ (##car _e2267222695_))
                                    (_tl2267422700_ (##cdr _e2267222695_)))
                                (if (gx#stx-pair? _tl2267422700_)
                                    (let ((_e2267522703_
                                           (gx#stx-e _tl2267422700_)))
                                      (let ((_hd2267622706_
                                             (##car _e2267522703_))
                                            (_tl2267722708_
                                             (##cdr _e2267522703_)))
                                        (if (gx#stx-null? _tl2267722708_)
                                            ((lambda (_L22711_ _L22712_)
                                               (let ((_expr22727_
                                                      (apply gxc#compile-e
                                                             _L22711_
                                                             _args22663_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#begin-annotation
                                                        (cons _L22712_
                                                              (cons _expr22727_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx22662_)))
                                             _hd2267622706_
                                             _hd2267322698_)
                                            (_g2266522682_ _g2266622685_))))
                                    (_g2266522682_ _g2266622685_))))
                            (_g2266522682_ _g2266622685_))))
                    (_g2266522682_ _g2266622685_)))))
        (_g2266422729_ _stx22662_))))
  (define gxc#xform-lambda%
    (lambda (_stx22605_ . _args22606_)
      (let* ((_g2260822622_
              (lambda (_g2260922619_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2260922619_)))
             (_g2260722659_
              (lambda (_g2260922625_)
                (if (gx#stx-pair? _g2260922625_)
                    (let ((_e2261222627_ (gx#stx-e _g2260922625_)))
                      (let ((_hd2261322630_ (##car _e2261222627_))
                            (_tl2261422632_ (##cdr _e2261222627_)))
                        (if (gx#stx-pair? _tl2261422632_)
                            (let ((_e2261522635_ (gx#stx-e _tl2261422632_)))
                              (let ((_hd2261622638_ (##car _e2261522635_))
                                    (_tl2261722640_ (##cdr _e2261522635_)))
                                ((lambda (_L22643_ _L22644_)
                                   (let ((_body22657_
                                          (map (gxc#xform-apply-compile-e
                                                _args22606_)
                                               _L22643_)))
                                     (gxc#xform-wrap-source
                                      (cons '%#lambda
                                            (cons _L22644_ _body22657_))
                                      _stx22605_)))
                                 _tl2261722640_
                                 _hd2261622638_)))
                            (_g2260822622_ _g2260922625_))))
                    (_g2260822622_ _g2260922625_)))))
        (_g2260722659_ _stx22605_))))
  (define gxc#xform-case-lambda%
    (lambda (_stx22518_ . _args22519_)
      (letrec ((_clause-e22521_
                (lambda (_clause22562_)
                  (let* ((_g2256422575_
                          (lambda (_g2256522572_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g2256522572_)))
                         (_g2256322602_
                          (lambda (_g2256522578_)
                            (if (gx#stx-pair? _g2256522578_)
                                (let ((_e2256822580_ (gx#stx-e _g2256522578_)))
                                  (let ((_hd2256922583_ (##car _e2256822580_))
                                        (_tl2257022585_ (##cdr _e2256822580_)))
                                    ((lambda (_L22588_ _L22589_)
                                       (let ((_body22600_
                                              (map (gxc#xform-apply-compile-e
                                                    _args22519_)
                                                   _L22588_)))
                                         (cons _L22589_ _body22600_)))
                                     _tl2257022585_
                                     _hd2256922583_)))
                                (_g2256422575_ _g2256522578_)))))
                    (_g2256322602_ _clause22562_)))))
        (let* ((_g2252322533_
                (lambda (_g2252422530_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2252422530_)))
               (_g2252222559_
                (lambda (_g2252422536_)
                  (if (gx#stx-pair? _g2252422536_)
                      (let ((_e2252622538_ (gx#stx-e _g2252422536_)))
                        (let ((_hd2252722541_ (##car _e2252622538_))
                              (_tl2252822543_ (##cdr _e2252622538_)))
                          ((lambda (_L22546_)
                             (let ((_clauses22557_
                                    (map _clause-e22521_ _L22546_)))
                               (gxc#xform-wrap-source
                                (cons '%#case-lambda _clauses22557_)
                                _stx22518_)))
                           _tl2252822543_)))
                      (_g2252322533_ _g2252422536_)))))
          (_g2252222559_ _stx22518_)))))
  (define gxc#xform-let-values%
    (lambda (_stx22312_ . _args22313_)
      (let* ((_g2231522348_
              (lambda (_g2231622345_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2231622345_)))
             (_g2231422515_
              (lambda (_g2231622351_)
                (if (gx#stx-pair? _g2231622351_)
                    (let ((_e2232122353_ (gx#stx-e _g2231622351_)))
                      (let ((_hd2232222356_ (##car _e2232122353_))
                            (_tl2232322358_ (##cdr _e2232122353_)))
                        (if (gx#stx-pair? _tl2232322358_)
                            (let ((_e2232422361_ (gx#stx-e _tl2232322358_)))
                              (let ((_hd2232522364_ (##car _e2232422361_))
                                    (_tl2232622366_ (##cdr _e2232422361_)))
                                (if (gx#stx-pair/null? _hd2232522364_)
                                    (if (fx>= (gx#stx-length _hd2232522364_)
                                              '0)
                                        (let ((_g23663_
                                               (gx#syntax-split-splice
                                                _hd2232522364_
                                                '0)))
                                          (begin
                                            (let ((_g23664_
                                                   (values-count _g23663_)))
                                              (if (not (fx= _g23664_ 2))
                                                  (error "Context expects 2 values"
                                                         _g23664_)))
                                            (let ((_target2232722369_
                                                   (values-ref _g23663_ 0))
                                                  (_tl2232922371_
                                                   (values-ref _g23663_ 1)))
                                              (if (gx#stx-null? _tl2232922371_)
                                                  (letrec ((_loop2233022374_
                                                            (lambda (_hd2232822377_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr2233422379_
                             _hd2233522381_)
                      (if (gx#stx-pair? _hd2232822377_)
                          (let ((_e2233122384_ (gx#stx-e _hd2232822377_)))
                            (let ((_lp-hd2233222387_ (##car _e2233122384_))
                                  (_lp-tl2233322389_ (##cdr _e2233122384_)))
                              (if (gx#stx-pair? _lp-hd2233222387_)
                                  (let ((_e2233822392_
                                         (gx#stx-e _lp-hd2233222387_)))
                                    (let ((_hd2233922395_
                                           (##car _e2233822392_))
                                          (_tl2234022397_
                                           (##cdr _e2233822392_)))
                                      (if (gx#stx-pair? _tl2234022397_)
                                          (let ((_e2234122400_
                                                 (gx#stx-e _tl2234022397_)))
                                            (let ((_hd2234222403_
                                                   (##car _e2234122400_))
                                                  (_tl2234322405_
                                                   (##cdr _e2234122400_)))
                                              (if (gx#stx-null? _tl2234322405_)
                                                  (_loop2233022374_
                                                   _lp-tl2233322389_
                                                   (cons _hd2234222403_
                                                         _expr2233422379_)
                                                   (cons _hd2233922395_
                                                         _hd2233522381_))
                                                  (_g2231522348_
                                                   _g2231622351_))))
                                          (_g2231522348_ _g2231622351_))))
                                  (_g2231522348_ _g2231622351_))))
                          (let ((_expr2233622408_ (reverse _expr2233422379_))
                                (_hd2233722410_ (reverse _hd2233522381_)))
                            ((lambda (_L22413_ _L22414_ _L22415_ _L22416_)
                               (let* ((_g2243522451_
                                       (lambda (_g2243622448_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2243622448_)))
                                      (_g2243422505_
                                       (lambda (_g2243622454_)
                                         (if (gx#stx-pair/null? _g2243622454_)
                                             (if (fx>= (gx#stx-length
                                                        _g2243622454_)
                                                       '0)
                                                 (let ((_g23665_
                                                        (gx#syntax-split-splice
                                                         _g2243622454_
                                                         '0)))
                                                   (begin
                                                     (let ((_g23666_
                                                            (values-count
                                                             _g23665_)))
                                                       (if (not (fx= _g23666_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g23666_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2243822456_
                                                            (values-ref
                                                             _g23665_
                                                             0))
                                                           (_tl2244022458_
                                                            (values-ref
                                                             _g23665_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2244022458_)
                                                           (letrec ((_loop2244122461_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2243922464_ _expr2244522466_)
                               (if (gx#stx-pair? _hd2243922464_)
                                   (let ((_e2244222469_
                                          (gx#syntax-e _hd2243922464_)))
                                     (let ((_lp-hd2244322472_
                                            (##car _e2244222469_))
                                           (_lp-tl2244422474_
                                            (##cdr _e2244222469_)))
                                       (_loop2244122461_
                                        _lp-tl2244422474_
                                        (cons _lp-hd2244322472_
                                              _expr2244522466_))))
                                   (let ((_expr2244622477_
                                          (reverse _expr2244522466_)))
                                     ((lambda (_L22480_)
                                        (let ()
                                          (let ((_body22493_
                                                 (map (gxc#xform-apply-compile-e
                                                       _args22313_)
                                                      _L22413_)))
                                            (gxc#xform-wrap-source
                                             (cons _L22416_
                                                   (cons (begin
                                                           (gx#syntax-check-splice-targets
                                                            _L22480_
                                                            _L22415_)
                                                           (foldr (lambda (_g2249422498_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g2249522500_
                                   _g2249622502_)
                            (cons (cons _g2249522500_ (cons _g2249422498_ '()))
                                  _g2249622502_))
                          '()
                          _L22480_
                          _L22415_))
                 _body22493_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _stx22312_))))
                                      _expr2244622477_))))))
                     (_loop2244122461_ _target2243822456_ '()))
                   (_g2243522451_ _g2243622454_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2243522451_ _g2243622454_))
                                             (_g2243522451_ _g2243622454_)))))
                                 (_g2243422505_
                                  (map (gxc#xform-apply-compile-e _args22313_)
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g2250722510_
                                                          _g2250822512_)
                                                   (cons _g2250722510_
                                                         _g2250822512_))
                                                 '()
                                                 _L22414_))))))
                             _tl2232622366_
                             _expr2233622408_
                             _hd2233722410_
                             _hd2232222356_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop2233022374_
                                                     _target2232722369_
                                                     '()
                                                     '()))
                                                  (_g2231522348_
                                                   _g2231622351_)))))
                                        (_g2231522348_ _g2231622351_))
                                    (_g2231522348_ _g2231622351_))))
                            (_g2231522348_ _g2231622351_))))
                    (_g2231522348_ _g2231622351_)))))
        (_g2231422515_ _stx22312_))))
  (define gxc#xform-operands
    (lambda (_stx22268_ . _args22269_)
      (let* ((_g2227122282_
              (lambda (_g2227222279_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2227222279_)))
             (_g2227022309_
              (lambda (_g2227222285_)
                (if (gx#stx-pair? _g2227222285_)
                    (let ((_e2227522287_ (gx#stx-e _g2227222285_)))
                      (let ((_hd2227622290_ (##car _e2227522287_))
                            (_tl2227722292_ (##cdr _e2227522287_)))
                        ((lambda (_L22295_ _L22296_)
                           (let ((_rands22307_
                                  (map (gxc#xform-apply-compile-e _args22269_)
                                       _L22295_)))
                             (gxc#xform-wrap-source
                              (cons _L22296_ _rands22307_)
                              _stx22268_)))
                         _tl2227722292_
                         _hd2227622290_)))
                    (_g2227122282_ _g2227222285_)))))
        (_g2227022309_ _stx22268_))))
  (define gxc#xform-call% gxc#xform-operands)
  (define gxc#xform-setq%
    (lambda (_stx22198_ . _args22199_)
      (let* ((_g2220122218_
              (lambda (_g2220222215_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2220222215_)))
             (_g2220022265_
              (lambda (_g2220222221_)
                (if (gx#stx-pair? _g2220222221_)
                    (let ((_e2220522223_ (gx#stx-e _g2220222221_)))
                      (let ((_hd2220622226_ (##car _e2220522223_))
                            (_tl2220722228_ (##cdr _e2220522223_)))
                        (if (gx#stx-pair? _tl2220722228_)
                            (let ((_e2220822231_ (gx#stx-e _tl2220722228_)))
                              (let ((_hd2220922234_ (##car _e2220822231_))
                                    (_tl2221022236_ (##cdr _e2220822231_)))
                                (if (gx#stx-pair? _tl2221022236_)
                                    (let ((_e2221122239_
                                           (gx#stx-e _tl2221022236_)))
                                      (let ((_hd2221222242_
                                             (##car _e2221122239_))
                                            (_tl2221322244_
                                             (##cdr _e2221122239_)))
                                        (if (gx#stx-null? _tl2221322244_)
                                            ((lambda (_L22247_ _L22248_)
                                               (let ((_expr22263_
                                                      (apply gxc#compile-e
                                                             _L22247_
                                                             _args22199_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#set!
                                                        (cons _L22248_
                                                              (cons _expr22263_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx22198_)))
                                             _hd2221222242_
                                             _hd2220922234_)
                                            (_g2220122218_ _g2220222221_))))
                                    (_g2220122218_ _g2220222221_))))
                            (_g2220122218_ _g2220222221_))))
                    (_g2220122218_ _g2220222221_)))))
        (_g2220022265_ _stx22198_))))
  (define gxc#collect-mutators-setq%
    (lambda (_stx22129_)
      (let* ((_g2213122148_
              (lambda (_g2213222145_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2213222145_)))
             (_g2213022195_
              (lambda (_g2213222151_)
                (if (gx#stx-pair? _g2213222151_)
                    (let ((_e2213522153_ (gx#stx-e _g2213222151_)))
                      (let ((_hd2213622156_ (##car _e2213522153_))
                            (_tl2213722158_ (##cdr _e2213522153_)))
                        (if (gx#stx-pair? _tl2213722158_)
                            (let ((_e2213822161_ (gx#stx-e _tl2213722158_)))
                              (let ((_hd2213922164_ (##car _e2213822161_))
                                    (_tl2214022166_ (##cdr _e2213822161_)))
                                (if (gx#stx-pair? _tl2214022166_)
                                    (let ((_e2214122169_
                                           (gx#stx-e _tl2214022166_)))
                                      (let ((_hd2214222172_
                                             (##car _e2214122169_))
                                            (_tl2214322174_
                                             (##cdr _e2214122169_)))
                                        (if (gx#stx-null? _tl2214322174_)
                                            ((lambda (_L22177_ _L22178_)
                                               (let ((_sym22193_
                                                      (gxc#generate-runtime-binding-id
                                                       _L22178_)))
                                                 (begin
                                                   (gxc#verbose
                                                    '"collect mutator "
                                                    _sym22193_)
                                                   (table-set!
                                                    (gxc#current-compile-mutators)
                                                    _sym22193_
                                                    '#t)
                                                   (gxc#compile-e _L22177_))))
                                             _hd2214222172_
                                             _hd2213922164_)
                                            (_g2213122148_ _g2213222151_))))
                                    (_g2213122148_ _g2213222151_))))
                            (_g2213122148_ _g2213222151_))))
                    (_g2213122148_ _g2213222151_)))))
        (_g2213022195_ _stx22129_))))
  (define gxc#dispatch-lambda-form?
    (lambda (_form21363_)
      (let* ((_g2136821525_
              (lambda (_g2136921522_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2136921522_)))
             (_g2136721532_ (lambda (_g2136921528_) ((lambda () '#f))))
             (_g2136621672_
              (lambda (_g2136921535_)
                (if (gx#stx-pair? _g2136921535_)
                    (let ((_e2148521537_ (gx#stx-e _g2136921535_)))
                      (let ((_hd2148621540_ (##car _e2148521537_))
                            (_tl2148721542_ (##cdr _e2148521537_)))
                        (if (gx#stx-pair? _tl2148721542_)
                            (let ((_e2148821545_ (gx#stx-e _tl2148721542_)))
                              (let ((_hd2148921548_ (##car _e2148821545_))
                                    (_tl2149021550_ (##cdr _e2148821545_)))
                                (if (gx#stx-pair? _hd2148921548_)
                                    (let ((_e2149121553_
                                           (gx#stx-e _hd2148921548_)))
                                      (let ((_hd2149221556_
                                             (##car _e2149121553_))
                                            (_tl2149321558_
                                             (##cdr _e2149121553_)))
                                        (if (gx#identifier? _hd2149221556_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd2149221556_)
                                                (if (gx#stx-pair?
                                                     _tl2149321558_)
                                                    (let ((_e2149421561_
                                                           (gx#stx-e
                                                            _tl2149321558_)))
                                                      (let ((_hd2149521564_
                                                             (##car _e2149421561_))
                                                            (_tl2149621566_
                                                             (##cdr _e2149421561_)))
                                                        (if (gx#stx-pair?
                                                             _hd2149521564_)
                                                            (let ((_e2149721569_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2149521564_)))
                      (let ((_hd2149821572_ (##car _e2149721569_))
                            (_tl2149921574_ (##cdr _e2149721569_)))
                        (if (gx#identifier? _hd2149821572_)
                            (if (gx#stx-eq? '%#ref _hd2149821572_)
                                (if (gx#stx-pair? _tl2149921574_)
                                    (let ((_e2150021577_
                                           (gx#stx-e _tl2149921574_)))
                                      (let ((_hd2150121580_
                                             (##car _e2150021577_))
                                            (_tl2150221582_
                                             (##cdr _e2150021577_)))
                                        (if (gx#stx-null? _tl2150221582_)
                                            (if (gx#stx-pair? _tl2149621566_)
                                                (let ((_e2150321585_
                                                       (gx#stx-e
                                                        _tl2149621566_)))
                                                  (let ((_hd2150421588_
                                                         (##car _e2150321585_))
                                                        (_tl2150521590_
                                                         (##cdr _e2150321585_)))
                                                    (if (gx#stx-pair?
                                                         _hd2150421588_)
                                                        (let ((_e2150621593_
                                                               (gx#stx-e
                                                                _hd2150421588_)))
                                                          (let ((_hd2150721596_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2150621593_))
                        (_tl2150821598_ (##cdr _e2150621593_)))
                    (if (gx#identifier? _hd2150721596_)
                        (if (gx#stx-eq? '%#ref _hd2150721596_)
                            (if (gx#stx-pair? _tl2150821598_)
                                (let ((_e2150921601_
                                       (gx#stx-e _tl2150821598_)))
                                  (let ((_hd2151021604_ (##car _e2150921601_))
                                        (_tl2151121606_ (##cdr _e2150921601_)))
                                    (if (gx#stx-null? _tl2151121606_)
                                        (if (gx#stx-pair? _tl2150521590_)
                                            (let ((_e2151221609_
                                                   (gx#stx-e _tl2150521590_)))
                                              (let ((_hd2151321612_
                                                     (##car _e2151221609_))
                                                    (_tl2151421614_
                                                     (##cdr _e2151221609_)))
                                                (if (gx#stx-pair?
                                                     _hd2151321612_)
                                                    (let ((_e2151521617_
                                                           (gx#stx-e
                                                            _hd2151321612_)))
                                                      (let ((_hd2151621620_
                                                             (##car _e2151521617_))
                                                            (_tl2151721622_
                                                             (##cdr _e2151521617_)))
                                                        (if (gx#identifier?
                                                             _hd2151621620_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2151621620_)
                        (if (gx#stx-pair? _tl2151721622_)
                            (let ((_e2151821625_ (gx#stx-e _tl2151721622_)))
                              (let ((_hd2151921628_ (##car _e2151821625_))
                                    (_tl2152021630_ (##cdr _e2151821625_)))
                                (if (gx#stx-null? _tl2152021630_)
                                    (if (gx#stx-null? _tl2151421614_)
                                        (if (gx#stx-null? _tl2149021550_)
                                            ((lambda (_L21633_
                                                      _L21634_
                                                      _L21635_
                                                      _L21636_)
                                               (if (if (gx#identifier?
                                                        _L21636_)
                                                       (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L21635_)
                        'apply)
                   (if (gx#free-identifier=? _L21636_ _L21633_)
                       (not (gx#free-identifier=? _L21634_ _L21636_))
                       '#f)
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#t
                                                   (_g2136721532_
                                                    _g2136921535_)))
                                             _hd2151921628_
                                             _hd2151021604_
                                             _hd2150121580_
                                             _hd2148621540_)
                                            (_g2136721532_ _g2136921535_))
                                        (_g2136721532_ _g2136921535_))
                                    (_g2136721532_ _g2136921535_))))
                            (_g2136721532_ _g2136921535_))
                        (_g2136721532_ _g2136921535_))
                    (_g2136721532_ _g2136921535_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2136721532_
                                                     _g2136921535_))))
                                            (_g2136721532_ _g2136921535_))
                                        (_g2136721532_ _g2136921535_))))
                                (_g2136721532_ _g2136921535_))
                            (_g2136721532_ _g2136921535_))
                        (_g2136721532_ _g2136921535_))))
                (_g2136721532_ _g2136921535_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2136721532_ _g2136921535_))
                                            (_g2136721532_ _g2136921535_))))
                                    (_g2136721532_ _g2136921535_))
                                (_g2136721532_ _g2136921535_))
                            (_g2136721532_ _g2136921535_))))
                    (_g2136721532_ _g2136921535_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2136721532_
                                                     _g2136921535_))
                                                (_g2136721532_ _g2136921535_))
                                            (_g2136721532_ _g2136921535_))))
                                    (_g2136721532_ _g2136921535_))))
                            (_g2136721532_ _g2136921535_))))
                    (_g2136721532_ _g2136921535_))))
             (_g2136521932_
              (lambda (_g2136921675_)
                (if (gx#stx-pair? _g2136921675_)
                    (let ((_e2142121677_ (gx#stx-e _g2136921675_)))
                      (let ((_hd2142221680_ (##car _e2142121677_))
                            (_tl2142321682_ (##cdr _e2142121677_)))
                        (if (gx#stx-pair/null? _hd2142221680_)
                            (if (fx>= (gx#stx-length _hd2142221680_) '0)
                                (let ((_g23667_
                                       (gx#syntax-split-splice
                                        _hd2142221680_
                                        '0)))
                                  (begin
                                    (let ((_g23668_ (values-count _g23667_)))
                                      (if (not (fx= _g23668_ 2))
                                          (error "Context expects 2 values"
                                                 _g23668_)))
                                    (let ((_target2142421685_
                                           (values-ref _g23667_ 0))
                                          (_tl2142621687_
                                           (values-ref _g23667_ 1)))
                                      (letrec ((_loop2142721690_
                                                (lambda (_hd2142521693_
                                                         _arg2143121695_)
                                                  (if (gx#stx-pair?
                                                       _hd2142521693_)
                                                      (let ((_e2142821698_
                                                             (gx#stx-e
                                                              _hd2142521693_)))
                                                        (let ((_lp-hd2142921701_
                                                               (##car _e2142821698_))
                                                              (_lp-tl2143021703_
                                                               (##cdr _e2142821698_)))
                                                          (_loop2142721690_
                                                           _lp-tl2143021703_
                                                           (cons _lp-hd2142921701_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _arg2143121695_))))
              (let ((_arg2143221706_ (reverse _arg2143121695_)))
                (if (gx#stx-pair? _tl2142321682_)
                    (let ((_e2143321709_ (gx#stx-e _tl2142321682_)))
                      (let ((_hd2143421712_ (##car _e2143321709_))
                            (_tl2143521714_ (##cdr _e2143321709_)))
                        (if (gx#stx-pair? _hd2143421712_)
                            (let ((_e2143621717_ (gx#stx-e _hd2143421712_)))
                              (let ((_hd2143721720_ (##car _e2143621717_))
                                    (_tl2143821722_ (##cdr _e2143621717_)))
                                (if (gx#identifier? _hd2143721720_)
                                    (if (gx#stx-eq? '%#call _hd2143721720_)
                                        (if (gx#stx-pair? _tl2143821722_)
                                            (let ((_e2143921725_
                                                   (gx#stx-e _tl2143821722_)))
                                              (let ((_hd2144021728_
                                                     (##car _e2143921725_))
                                                    (_tl2144121730_
                                                     (##cdr _e2143921725_)))
                                                (if (gx#stx-pair?
                                                     _hd2144021728_)
                                                    (let ((_e2144221733_
                                                           (gx#stx-e
                                                            _hd2144021728_)))
                                                      (let ((_hd2144321736_
                                                             (##car _e2144221733_))
                                                            (_tl2144421738_
                                                             (##cdr _e2144221733_)))
                                                        (if (gx#identifier?
                                                             _hd2144321736_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2144321736_)
                        (if (gx#stx-pair? _tl2144421738_)
                            (let ((_e2144521741_ (gx#stx-e _tl2144421738_)))
                              (let ((_hd2144621744_ (##car _e2144521741_))
                                    (_tl2144721746_ (##cdr _e2144521741_)))
                                (if (gx#stx-null? _tl2144721746_)
                                    (if (gx#stx-pair? _tl2144121730_)
                                        (let ((_e2144821749_
                                               (gx#stx-e _tl2144121730_)))
                                          (let ((_hd2144921752_
                                                 (##car _e2144821749_))
                                                (_tl2145021754_
                                                 (##cdr _e2144821749_)))
                                            (if (gx#stx-pair? _hd2144921752_)
                                                (let ((_e2145121757_
                                                       (gx#stx-e
                                                        _hd2144921752_)))
                                                  (let ((_hd2145221760_
                                                         (##car _e2145121757_))
                                                        (_tl2145321762_
                                                         (##cdr _e2145121757_)))
                                                    (if (gx#identifier?
                                                         _hd2145221760_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd2145221760_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2145321762_)
                        (let ((_e2145421765_ (gx#stx-e _tl2145321762_)))
                          (let ((_hd2145521768_ (##car _e2145421765_))
                                (_tl2145621770_ (##cdr _e2145421765_)))
                            (if (gx#stx-null? _tl2145621770_)
                                (if (gx#stx-pair/null? _tl2145021754_)
                                    (if (fx>= (gx#stx-length _tl2145021754_)
                                              '1)
                                        (let ((_g23669_
                                               (gx#syntax-split-splice
                                                _tl2145021754_
                                                '1)))
                                          (begin
                                            (let ((_g23670_
                                                   (values-count _g23669_)))
                                              (if (not (fx= _g23670_ 2))
                                                  (error "Context expects 2 values"
                                                         _g23670_)))
                                            (let ((_target2145721773_
                                                   (values-ref _g23669_ 0))
                                                  (_tl2145921775_
                                                   (values-ref _g23669_ 1)))
                                              (if (gx#stx-pair? _tl2145921775_)
                                                  (let ((_e2146621778_
                                                         (gx#stx-e
                                                          _tl2145921775_)))
                                                    (let ((_hd2146721781_
                                                           (##car _e2146621778_))
                                                          (_tl2146821783_
                                                           (##cdr _e2146621778_)))
                                                      (if (gx#stx-pair?
                                                           _hd2146721781_)
                                                          (let ((_e2146921786_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2146721781_)))
                    (let ((_hd2147021789_ (##car _e2146921786_))
                          (_tl2147121791_ (##cdr _e2146921786_)))
                      (if (gx#identifier? _hd2147021789_)
                          (if (gx#stx-eq? '%#ref _hd2147021789_)
                              (if (gx#stx-pair? _tl2147121791_)
                                  (let ((_e2147221794_
                                         (gx#stx-e _tl2147121791_)))
                                    (let ((_hd2147321797_
                                           (##car _e2147221794_))
                                          (_tl2147421799_
                                           (##cdr _e2147221794_)))
                                      (if (gx#stx-null? _tl2147421799_)
                                          (if (gx#stx-null? _tl2146821783_)
                                              (letrec ((_loop2146021802_
                                                        (lambda (_hd2145821805_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _xarg2146421807_)
                  (if (gx#stx-pair? _hd2145821805_)
                      (let ((_e2146121810_ (gx#stx-e _hd2145821805_)))
                        (let ((_lp-hd2146221813_ (##car _e2146121810_))
                              (_lp-tl2146321815_ (##cdr _e2146121810_)))
                          (if (gx#stx-pair? _lp-hd2146221813_)
                              (let ((_e2147521818_
                                     (gx#stx-e _lp-hd2146221813_)))
                                (let ((_hd2147621821_ (##car _e2147521818_))
                                      (_tl2147721823_ (##cdr _e2147521818_)))
                                  (if (gx#identifier? _hd2147621821_)
                                      (if (gx#stx-eq? '%#ref _hd2147621821_)
                                          (if (gx#stx-pair? _tl2147721823_)
                                              (let ((_e2147821826_
                                                     (gx#stx-e
                                                      _tl2147721823_)))
                                                (let ((_hd2147921829_
                                                       (##car _e2147821826_))
                                                      (_tl2148021831_
                                                       (##cdr _e2147821826_)))
                                                  (if (gx#stx-null?
                                                       _tl2148021831_)
                                                      (_loop2146021802_
                                                       _lp-tl2146321815_
                                                       (cons _hd2147921829_
                                                             _xarg2146421807_))
                                                      (_g2136621672_
                                                       _g2136921675_))))
                                              (_g2136621672_ _g2136921675_))
                                          (_g2136621672_ _g2136921675_))
                                      (_g2136621672_ _g2136921675_))))
                              (_g2136621672_ _g2136921675_))))
                      (let ((_xarg2146521834_ (reverse _xarg2146421807_)))
                        (if (gx#stx-null? _tl2143521714_)
                            ((lambda (_L21837_
                                      _L21838_
                                      _L21839_
                                      _L21840_
                                      _L21841_
                                      _L21842_)
                               (if (if (gx#identifier-list?
                                        (begin
                                          '#!void
                                          (foldr1 (lambda (_g2188521888_
                                                           _g2188621890_)
                                                    (cons _g2188521888_
                                                          _g2188621890_))
                                                  '()
                                                  _L21842_)))
                                       (if (gx#identifier? _L21841_)
                                           (if (eq? (gxc#generate-runtime-binding-id
                                                     _L21840_)
                                                    'apply)
                                               (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr1 (lambda (_g2189221895_ _g2189321897_)
                                    (cons _g2189221895_ _g2189321897_))
                                  '()
                                  _L21842_)))
                (length (begin
                          '#!void
                          (foldr1 (lambda (_g2189921902_ _g2190021904_)
                                    (cons _g2189921902_ _g2190021904_))
                                  '()
                                  _L21838_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (andmap gx#free-identifier=?
                                                               (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#!void
                         (foldr1 (lambda (_g2190621909_ _g2190721911_)
                                   (cons _g2190621909_ _g2190721911_))
                                 '()
                                 _L21842_))
                       (begin
                         '#!void
                         (foldr1 (lambda (_g2191321916_ _g2191421918_)
                                   (cons _g2191321916_ _g2191421918_))
                                 '()
                                 _L21838_)))
               (if (gx#free-identifier=? _L21841_ _L21837_)
                   (not (find (lambda (_g2192021922_)
                                (gx#free-identifier=? _g2192021922_ _L21839_))
                              (begin
                                '#!void
                                (foldr1 (lambda (_g2192421927_ _g2192521929_)
                                          (cons _g2192421927_ _g2192521929_))
                                        (cons _L21841_ '())
                                        _L21842_))))
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#f)
                                               '#f)
                                           '#f)
                                       '#f)
                                   '#t
                                   (_g2136621672_ _g2136921675_)))
                             _hd2147321797_
                             _xarg2146521834_
                             _hd2145521768_
                             _hd2144621744_
                             _tl2142621687_
                             _arg2143221706_)
                            (_g2136621672_ _g2136921675_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop2146021802_
                                                 _target2145721773_
                                                 '()))
                                              (_g2136621672_ _g2136921675_))
                                          (_g2136621672_ _g2136921675_))))
                                  (_g2136621672_ _g2136921675_))
                              (_g2136621672_ _g2136921675_))
                          (_g2136621672_ _g2136921675_))))
                  (_g2136621672_ _g2136921675_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2136621672_
                                                   _g2136921675_)))))
                                        (_g2136621672_ _g2136921675_))
                                    (_g2136621672_ _g2136921675_))
                                (_g2136621672_ _g2136921675_))))
                        (_g2136621672_ _g2136921675_))
                    (_g2136621672_ _g2136921675_))
                (_g2136621672_ _g2136921675_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2136621672_
                                                 _g2136921675_))))
                                        (_g2136621672_ _g2136921675_))
                                    (_g2136621672_ _g2136921675_))))
                            (_g2136621672_ _g2136921675_))
                        (_g2136621672_ _g2136921675_))
                    (_g2136621672_ _g2136921675_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2136621672_
                                                     _g2136921675_))))
                                            (_g2136621672_ _g2136921675_))
                                        (_g2136621672_ _g2136921675_))
                                    (_g2136621672_ _g2136921675_))))
                            (_g2136621672_ _g2136921675_))))
                    (_g2136621672_ _g2136921675_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop2142721690_
                                         _target2142421685_
                                         '())))))
                                (_g2136621672_ _g2136921675_))
                            (_g2136621672_ _g2136921675_))))
                    (_g2136621672_ _g2136921675_))))
             (_g2136422126_
              (lambda (_g2136921935_)
                (if (gx#stx-pair? _g2136921935_)
                    (let ((_e2137321937_ (gx#stx-e _g2136921935_)))
                      (let ((_hd2137421940_ (##car _e2137321937_))
                            (_tl2137521942_ (##cdr _e2137321937_)))
                        (if (gx#stx-pair/null? _hd2137421940_)
                            (if (fx>= (gx#stx-length _hd2137421940_) '0)
                                (let ((_g23671_
                                       (gx#syntax-split-splice
                                        _hd2137421940_
                                        '0)))
                                  (begin
                                    (let ((_g23672_ (values-count _g23671_)))
                                      (if (not (fx= _g23672_ 2))
                                          (error "Context expects 2 values"
                                                 _g23672_)))
                                    (let ((_target2137621945_
                                           (values-ref _g23671_ 0))
                                          (_tl2137821947_
                                           (values-ref _g23671_ 1)))
                                      (if (gx#stx-null? _tl2137821947_)
                                          (letrec ((_loop2137921950_
                                                    (lambda (_hd2137721953_
                                                             _arg2138321955_)
                                                      (if (gx#stx-pair?
                                                           _hd2137721953_)
                                                          (let ((_e2138021958_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2137721953_)))
                    (let ((_lp-hd2138121961_ (##car _e2138021958_))
                          (_lp-tl2138221963_ (##cdr _e2138021958_)))
                      (_loop2137921950_
                       _lp-tl2138221963_
                       (cons _lp-hd2138121961_ _arg2138321955_))))
                  (let ((_arg2138421966_ (reverse _arg2138321955_)))
                    (if (gx#stx-pair? _tl2137521942_)
                        (let ((_e2138521969_ (gx#stx-e _tl2137521942_)))
                          (let ((_hd2138621972_ (##car _e2138521969_))
                                (_tl2138721974_ (##cdr _e2138521969_)))
                            (if (gx#stx-pair? _hd2138621972_)
                                (let ((_e2138821977_
                                       (gx#stx-e _hd2138621972_)))
                                  (let ((_hd2138921980_ (##car _e2138821977_))
                                        (_tl2139021982_ (##cdr _e2138821977_)))
                                    (if (gx#identifier? _hd2138921980_)
                                        (if (gx#stx-eq? '%#call _hd2138921980_)
                                            (if (gx#stx-pair? _tl2139021982_)
                                                (let ((_e2139121985_
                                                       (gx#stx-e
                                                        _tl2139021982_)))
                                                  (let ((_hd2139221988_
                                                         (##car _e2139121985_))
                                                        (_tl2139321990_
                                                         (##cdr _e2139121985_)))
                                                    (if (gx#stx-pair?
                                                         _hd2139221988_)
                                                        (let ((_e2139421993_
                                                               (gx#stx-e
                                                                _hd2139221988_)))
                                                          (let ((_hd2139521996_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2139421993_))
                        (_tl2139621998_ (##cdr _e2139421993_)))
                    (if (gx#identifier? _hd2139521996_)
                        (if (gx#stx-eq? '%#ref _hd2139521996_)
                            (if (gx#stx-pair? _tl2139621998_)
                                (let ((_e2139722001_
                                       (gx#stx-e _tl2139621998_)))
                                  (let ((_hd2139822004_ (##car _e2139722001_))
                                        (_tl2139922006_ (##cdr _e2139722001_)))
                                    (if (gx#stx-null? _tl2139922006_)
                                        (if (gx#stx-pair/null? _tl2139321990_)
                                            (if (fx>= (gx#stx-length
                                                       _tl2139321990_)
                                                      '0)
                                                (let ((_g23673_
                                                       (gx#syntax-split-splice
                                                        _tl2139321990_
                                                        '0)))
                                                  (begin
                                                    (let ((_g23674_
                                                           (values-count
                                                            _g23673_)))
                                                      (if (not (fx= _g23674_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g23674_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2140022009_
                                                           (values-ref
                                                            _g23673_
                                                            0))
                                                          (_tl2140222011_
                                                           (values-ref
                                                            _g23673_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl2140222011_)
                                                          (letrec ((_loop2140322014_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd2140122017_ _xarg2140722019_)
                              (if (gx#stx-pair? _hd2140122017_)
                                  (let ((_e2140422022_
                                         (gx#stx-e _hd2140122017_)))
                                    (let ((_lp-hd2140522025_
                                           (##car _e2140422022_))
                                          (_lp-tl2140622027_
                                           (##cdr _e2140422022_)))
                                      (if (gx#stx-pair? _lp-hd2140522025_)
                                          (let ((_e2140922030_
                                                 (gx#stx-e _lp-hd2140522025_)))
                                            (let ((_hd2141022033_
                                                   (##car _e2140922030_))
                                                  (_tl2141122035_
                                                   (##cdr _e2140922030_)))
                                              (if (gx#identifier?
                                                   _hd2141022033_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd2141022033_)
                                                      (if (gx#stx-pair?
                                                           _tl2141122035_)
                                                          (let ((_e2141222038_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2141122035_)))
                    (let ((_hd2141322041_ (##car _e2141222038_))
                          (_tl2141422043_ (##cdr _e2141222038_)))
                      (if (gx#stx-null? _tl2141422043_)
                          (_loop2140322014_
                           _lp-tl2140622027_
                           (cons _hd2141322041_ _xarg2140722019_))
                          (_g2136521932_ _g2136921935_))))
                  (_g2136521932_ _g2136921935_))
              (_g2136521932_ _g2136921935_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2136521932_
                                                   _g2136921935_))))
                                          (_g2136521932_ _g2136921935_))))
                                  (let ((_xarg2140822046_
                                         (reverse _xarg2140722019_)))
                                    (if (gx#stx-null? _tl2138721974_)
                                        ((lambda (_L22049_ _L22050_ _L22051_)
                                           (if (if (gx#identifier-list?
                                                    (begin
                                                      '#!void
                                                      (foldr1 (lambda (_g2207922082_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2208022084_)
                        (cons _g2207922082_ _g2208022084_))
                      '()
                      _L22051_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#!void
                              (foldr1 (lambda (_g2208622089_ _g2208722091_)
                                        (cons _g2208622089_ _g2208722091_))
                                      '()
                                      _L22051_)))
                    (length (begin
                              '#!void
                              (foldr1 (lambda (_g2209322096_ _g2209422098_)
                                        (cons _g2209322096_ _g2209422098_))
                                      '()
                                      _L22049_))))
               (if (andmap gx#free-identifier=?
                           (begin
                             '#!void
                             (foldr1 (lambda (_g2210022103_ _g2210122105_)
                                       (cons _g2210022103_ _g2210122105_))
                                     '()
                                     _L22051_))
                           (begin
                             '#!void
                             (foldr1 (lambda (_g2210722110_ _g2210822112_)
                                       (cons _g2210722110_ _g2210822112_))
                                     '()
                                     _L22049_)))
                   (not (find (lambda (_g2211422116_)
                                (gx#free-identifier=? _g2211422116_ _L22050_))
                              (begin
                                '#!void
                                (foldr1 (lambda (_g2211822121_ _g2211922123_)
                                          (cons _g2211822121_ _g2211922123_))
                                        '()
                                        _L22051_))))
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#f)
                                               '#t
                                               (_g2136521932_ _g2136921935_)))
                                         _xarg2140822046_
                                         _hd2139822004_
                                         _arg2138421966_)
                                        (_g2136521932_ _g2136921935_)))))))
                    (_loop2140322014_ _target2140022009_ '()))
                  (_g2136521932_ _g2136921935_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2136521932_ _g2136921935_))
                                            (_g2136521932_ _g2136921935_))
                                        (_g2136521932_ _g2136921935_))))
                                (_g2136521932_ _g2136921935_))
                            (_g2136521932_ _g2136921935_))
                        (_g2136521932_ _g2136921935_))))
                (_g2136521932_ _g2136921935_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2136521932_ _g2136921935_))
                                            (_g2136521932_ _g2136921935_))
                                        (_g2136521932_ _g2136921935_))))
                                (_g2136521932_ _g2136921935_))))
                        (_g2136521932_ _g2136921935_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop2137921950_
                                             _target2137621945_
                                             '()))
                                          (_g2136521932_ _g2136921935_)))))
                                (_g2136521932_ _g2136921935_))
                            (_g2136521932_ _g2136921935_))))
                    (_g2136521932_ _g2136921935_)))))
        (_g2136422126_ _form21363_))))
  (define gxc#dispatch-lambda-form-delegate
    (lambda (_form20831_)
      (let* ((_g2083520959_
              (lambda (_g2083620956_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2083620956_)))
             (_g2083421076_
              (lambda (_g2083620962_)
                (if (gx#stx-pair? _g2083620962_)
                    (let ((_e2092520964_ (gx#stx-e _g2083620962_)))
                      (let ((_hd2092620967_ (##car _e2092520964_))
                            (_tl2092720969_ (##cdr _e2092520964_)))
                        (if (gx#stx-pair? _tl2092720969_)
                            (let ((_e2092820972_ (gx#stx-e _tl2092720969_)))
                              (let ((_hd2092920975_ (##car _e2092820972_))
                                    (_tl2093020977_ (##cdr _e2092820972_)))
                                (if (gx#stx-pair? _hd2092920975_)
                                    (let ((_e2093120980_
                                           (gx#stx-e _hd2092920975_)))
                                      (let ((_hd2093220983_
                                             (##car _e2093120980_))
                                            (_tl2093320985_
                                             (##cdr _e2093120980_)))
                                        (if (gx#identifier? _hd2093220983_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd2093220983_)
                                                (if (gx#stx-pair?
                                                     _tl2093320985_)
                                                    (let ((_e2093420988_
                                                           (gx#stx-e
                                                            _tl2093320985_)))
                                                      (let ((_hd2093520991_
                                                             (##car _e2093420988_))
                                                            (_tl2093620993_
                                                             (##cdr _e2093420988_)))
                                                        (if (gx#stx-pair?
                                                             _hd2093520991_)
                                                            (let ((_e2093720996_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2093520991_)))
                      (let ((_hd2093820999_ (##car _e2093720996_))
                            (_tl2093921001_ (##cdr _e2093720996_)))
                        (if (gx#identifier? _hd2093820999_)
                            (if (gx#stx-eq? '%#ref _hd2093820999_)
                                (if (gx#stx-pair? _tl2093921001_)
                                    (let ((_e2094021004_
                                           (gx#stx-e _tl2093921001_)))
                                      (let ((_hd2094121007_
                                             (##car _e2094021004_))
                                            (_tl2094221009_
                                             (##cdr _e2094021004_)))
                                        (if (gx#stx-null? _tl2094221009_)
                                            (if (gx#stx-pair? _tl2093620993_)
                                                (let ((_e2094321012_
                                                       (gx#stx-e
                                                        _tl2093620993_)))
                                                  (let ((_hd2094421015_
                                                         (##car _e2094321012_))
                                                        (_tl2094521017_
                                                         (##cdr _e2094321012_)))
                                                    (if (gx#stx-pair?
                                                         _hd2094421015_)
                                                        (let ((_e2094621020_
                                                               (gx#stx-e
                                                                _hd2094421015_)))
                                                          (let ((_hd2094721023_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2094621020_))
                        (_tl2094821025_ (##cdr _e2094621020_)))
                    (if (gx#identifier? _hd2094721023_)
                        (if (gx#stx-eq? '%#ref _hd2094721023_)
                            (if (gx#stx-pair? _tl2094821025_)
                                (let ((_e2094921028_
                                       (gx#stx-e _tl2094821025_)))
                                  (let ((_hd2095021031_ (##car _e2094921028_))
                                        (_tl2095121033_ (##cdr _e2094921028_)))
                                    (if (gx#stx-null? _tl2095121033_)
                                        (if (gx#stx-pair? _tl2094521017_)
                                            (let ((_e2095221036_
                                                   (gx#stx-e _tl2094521017_)))
                                              (let ((_hd2095321039_
                                                     (##car _e2095221036_))
                                                    (_tl2095421041_
                                                     (##cdr _e2095221036_)))
                                                (if (gx#stx-null?
                                                     _tl2095421041_)
                                                    (if (gx#stx-null?
                                                         _tl2093020977_)
                                                        ((lambda (_L21044_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L21045_
                          _L21046_)
                   (gxc#generate-runtime-binding-id _L21044_))
                 _hd2095021031_
                 _hd2094121007_
                 _hd2092620967_)
                (_g2083520959_ _g2083620962_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2083520959_
                                                     _g2083620962_))))
                                            (_g2083520959_ _g2083620962_))
                                        (_g2083520959_ _g2083620962_))))
                                (_g2083520959_ _g2083620962_))
                            (_g2083520959_ _g2083620962_))
                        (_g2083520959_ _g2083620962_))))
                (_g2083520959_ _g2083620962_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2083520959_ _g2083620962_))
                                            (_g2083520959_ _g2083620962_))))
                                    (_g2083520959_ _g2083620962_))
                                (_g2083520959_ _g2083620962_))
                            (_g2083520959_ _g2083620962_))))
                    (_g2083520959_ _g2083620962_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2083520959_
                                                     _g2083620962_))
                                                (_g2083520959_ _g2083620962_))
                                            (_g2083520959_ _g2083620962_))))
                                    (_g2083520959_ _g2083620962_))))
                            (_g2083520959_ _g2083620962_))))
                    (_g2083520959_ _g2083620962_))))
             (_g2083321212_
              (lambda (_g2083621079_)
                (if (gx#stx-pair? _g2083621079_)
                    (let ((_e2088621081_ (gx#stx-e _g2083621079_)))
                      (let ((_hd2088721084_ (##car _e2088621081_))
                            (_tl2088821086_ (##cdr _e2088621081_)))
                        (if (gx#stx-pair/null? _hd2088721084_)
                            (if (fx>= (gx#stx-length _hd2088721084_) '0)
                                (let ((_g23675_
                                       (gx#syntax-split-splice
                                        _hd2088721084_
                                        '0)))
                                  (begin
                                    (let ((_g23676_ (values-count _g23675_)))
                                      (if (not (fx= _g23676_ 2))
                                          (error "Context expects 2 values"
                                                 _g23676_)))
                                    (let ((_target2088921089_
                                           (values-ref _g23675_ 0))
                                          (_tl2089121091_
                                           (values-ref _g23675_ 1)))
                                      (letrec ((_loop2089221094_
                                                (lambda (_hd2089021097_
                                                         _arg2089621099_)
                                                  (if (gx#stx-pair?
                                                       _hd2089021097_)
                                                      (let ((_e2089321102_
                                                             (gx#stx-e
                                                              _hd2089021097_)))
                                                        (let ((_lp-hd2089421105_
                                                               (##car _e2089321102_))
                                                              (_lp-tl2089521107_
                                                               (##cdr _e2089321102_)))
                                                          (_loop2089221094_
                                                           _lp-tl2089521107_
                                                           (cons _lp-hd2089421105_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _arg2089621099_))))
              (let ((_arg2089721110_ (reverse _arg2089621099_)))
                (if (gx#stx-pair? _tl2088821086_)
                    (let ((_e2089821113_ (gx#stx-e _tl2088821086_)))
                      (let ((_hd2089921116_ (##car _e2089821113_))
                            (_tl2090021118_ (##cdr _e2089821113_)))
                        (if (gx#stx-pair? _hd2089921116_)
                            (let ((_e2090121121_ (gx#stx-e _hd2089921116_)))
                              (let ((_hd2090221124_ (##car _e2090121121_))
                                    (_tl2090321126_ (##cdr _e2090121121_)))
                                (if (gx#identifier? _hd2090221124_)
                                    (if (gx#stx-eq? '%#call _hd2090221124_)
                                        (if (gx#stx-pair? _tl2090321126_)
                                            (let ((_e2090421129_
                                                   (gx#stx-e _tl2090321126_)))
                                              (let ((_hd2090521132_
                                                     (##car _e2090421129_))
                                                    (_tl2090621134_
                                                     (##cdr _e2090421129_)))
                                                (if (gx#stx-pair?
                                                     _hd2090521132_)
                                                    (let ((_e2090721137_
                                                           (gx#stx-e
                                                            _hd2090521132_)))
                                                      (let ((_hd2090821140_
                                                             (##car _e2090721137_))
                                                            (_tl2090921142_
                                                             (##cdr _e2090721137_)))
                                                        (if (gx#identifier?
                                                             _hd2090821140_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2090821140_)
                        (if (gx#stx-pair? _tl2090921142_)
                            (let ((_e2091021145_ (gx#stx-e _tl2090921142_)))
                              (let ((_hd2091121148_ (##car _e2091021145_))
                                    (_tl2091221150_ (##cdr _e2091021145_)))
                                (if (gx#stx-null? _tl2091221150_)
                                    (if (gx#stx-pair? _tl2090621134_)
                                        (let ((_e2091321153_
                                               (gx#stx-e _tl2090621134_)))
                                          (let ((_hd2091421156_
                                                 (##car _e2091321153_))
                                                (_tl2091521158_
                                                 (##cdr _e2091321153_)))
                                            (if (gx#stx-pair? _hd2091421156_)
                                                (let ((_e2091621161_
                                                       (gx#stx-e
                                                        _hd2091421156_)))
                                                  (let ((_hd2091721164_
                                                         (##car _e2091621161_))
                                                        (_tl2091821166_
                                                         (##cdr _e2091621161_)))
                                                    (if (gx#identifier?
                                                         _hd2091721164_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd2091721164_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2091821166_)
                        (let ((_e2091921169_ (gx#stx-e _tl2091821166_)))
                          (let ((_hd2092021172_ (##car _e2091921169_))
                                (_tl2092121174_ (##cdr _e2091921169_)))
                            (if (gx#stx-null? _tl2092121174_)
                                (if (gx#stx-null? _tl2090021118_)
                                    ((lambda (_L21177_
                                              _L21178_
                                              _L21179_
                                              _L21180_)
                                       (gxc#generate-runtime-binding-id
                                        _L21177_))
                                     _hd2092021172_
                                     _hd2091121148_
                                     _tl2089121091_
                                     _arg2089721110_)
                                    (_g2083421076_ _g2083621079_))
                                (_g2083421076_ _g2083621079_))))
                        (_g2083421076_ _g2083621079_))
                    (_g2083421076_ _g2083621079_))
                (_g2083421076_ _g2083621079_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2083421076_
                                                 _g2083621079_))))
                                        (_g2083421076_ _g2083621079_))
                                    (_g2083421076_ _g2083621079_))))
                            (_g2083421076_ _g2083621079_))
                        (_g2083421076_ _g2083621079_))
                    (_g2083421076_ _g2083621079_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2083421076_
                                                     _g2083621079_))))
                                            (_g2083421076_ _g2083621079_))
                                        (_g2083421076_ _g2083621079_))
                                    (_g2083421076_ _g2083621079_))))
                            (_g2083421076_ _g2083621079_))))
                    (_g2083421076_ _g2083621079_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop2089221094_
                                         _target2088921089_
                                         '())))))
                                (_g2083421076_ _g2083621079_))
                            (_g2083421076_ _g2083621079_))))
                    (_g2083421076_ _g2083621079_))))
             (_g2083221360_
              (lambda (_g2083621215_)
                (if (gx#stx-pair? _g2083621215_)
                    (let ((_e2084021217_ (gx#stx-e _g2083621215_)))
                      (let ((_hd2084121220_ (##car _e2084021217_))
                            (_tl2084221222_ (##cdr _e2084021217_)))
                        (if (gx#stx-pair/null? _hd2084121220_)
                            (if (fx>= (gx#stx-length _hd2084121220_) '0)
                                (let ((_g23677_
                                       (gx#syntax-split-splice
                                        _hd2084121220_
                                        '0)))
                                  (begin
                                    (let ((_g23678_ (values-count _g23677_)))
                                      (if (not (fx= _g23678_ 2))
                                          (error "Context expects 2 values"
                                                 _g23678_)))
                                    (let ((_target2084321225_
                                           (values-ref _g23677_ 0))
                                          (_tl2084521227_
                                           (values-ref _g23677_ 1)))
                                      (if (gx#stx-null? _tl2084521227_)
                                          (letrec ((_loop2084621230_
                                                    (lambda (_hd2084421233_
                                                             _arg2085021235_)
                                                      (if (gx#stx-pair?
                                                           _hd2084421233_)
                                                          (let ((_e2084721238_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2084421233_)))
                    (let ((_lp-hd2084821241_ (##car _e2084721238_))
                          (_lp-tl2084921243_ (##cdr _e2084721238_)))
                      (_loop2084621230_
                       _lp-tl2084921243_
                       (cons _lp-hd2084821241_ _arg2085021235_))))
                  (let ((_arg2085121246_ (reverse _arg2085021235_)))
                    (if (gx#stx-pair? _tl2084221222_)
                        (let ((_e2085221249_ (gx#stx-e _tl2084221222_)))
                          (let ((_hd2085321252_ (##car _e2085221249_))
                                (_tl2085421254_ (##cdr _e2085221249_)))
                            (if (gx#stx-pair? _hd2085321252_)
                                (let ((_e2085521257_
                                       (gx#stx-e _hd2085321252_)))
                                  (let ((_hd2085621260_ (##car _e2085521257_))
                                        (_tl2085721262_ (##cdr _e2085521257_)))
                                    (if (gx#identifier? _hd2085621260_)
                                        (if (gx#stx-eq? '%#call _hd2085621260_)
                                            (if (gx#stx-pair? _tl2085721262_)
                                                (let ((_e2085821265_
                                                       (gx#stx-e
                                                        _tl2085721262_)))
                                                  (let ((_hd2085921268_
                                                         (##car _e2085821265_))
                                                        (_tl2086021270_
                                                         (##cdr _e2085821265_)))
                                                    (if (gx#stx-pair?
                                                         _hd2085921268_)
                                                        (let ((_e2086121273_
                                                               (gx#stx-e
                                                                _hd2085921268_)))
                                                          (let ((_hd2086221276_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2086121273_))
                        (_tl2086321278_ (##cdr _e2086121273_)))
                    (if (gx#identifier? _hd2086221276_)
                        (if (gx#stx-eq? '%#ref _hd2086221276_)
                            (if (gx#stx-pair? _tl2086321278_)
                                (let ((_e2086421281_
                                       (gx#stx-e _tl2086321278_)))
                                  (let ((_hd2086521284_ (##car _e2086421281_))
                                        (_tl2086621286_ (##cdr _e2086421281_)))
                                    (if (gx#stx-null? _tl2086621286_)
                                        (if (gx#stx-pair/null? _tl2086021270_)
                                            (if (fx>= (gx#stx-length
                                                       _tl2086021270_)
                                                      '0)
                                                (let ((_g23679_
                                                       (gx#syntax-split-splice
                                                        _tl2086021270_
                                                        '0)))
                                                  (begin
                                                    (let ((_g23680_
                                                           (values-count
                                                            _g23679_)))
                                                      (if (not (fx= _g23680_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g23680_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2086721289_
                                                           (values-ref
                                                            _g23679_
                                                            0))
                                                          (_tl2086921291_
                                                           (values-ref
                                                            _g23679_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl2086921291_)
                                                          (letrec ((_loop2087021294_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd2086821297_ _xarg2087421299_)
                              (if (gx#stx-pair? _hd2086821297_)
                                  (let ((_e2087121302_
                                         (gx#stx-e _hd2086821297_)))
                                    (let ((_lp-hd2087221305_
                                           (##car _e2087121302_))
                                          (_lp-tl2087321307_
                                           (##cdr _e2087121302_)))
                                      (if (gx#stx-pair? _lp-hd2087221305_)
                                          (let ((_e2087621310_
                                                 (gx#stx-e _lp-hd2087221305_)))
                                            (let ((_hd2087721313_
                                                   (##car _e2087621310_))
                                                  (_tl2087821315_
                                                   (##cdr _e2087621310_)))
                                              (if (gx#identifier?
                                                   _hd2087721313_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd2087721313_)
                                                      (if (gx#stx-pair?
                                                           _tl2087821315_)
                                                          (let ((_e2087921318_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2087821315_)))
                    (let ((_hd2088021321_ (##car _e2087921318_))
                          (_tl2088121323_ (##cdr _e2087921318_)))
                      (if (gx#stx-null? _tl2088121323_)
                          (_loop2087021294_
                           _lp-tl2087321307_
                           (cons _hd2088021321_ _xarg2087421299_))
                          (_g2083321212_ _g2083621215_))))
                  (_g2083321212_ _g2083621215_))
              (_g2083321212_ _g2083621215_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2083321212_
                                                   _g2083621215_))))
                                          (_g2083321212_ _g2083621215_))))
                                  (let ((_xarg2087521326_
                                         (reverse _xarg2087421299_)))
                                    (if (gx#stx-null? _tl2085421254_)
                                        ((lambda (_L21329_ _L21330_ _L21331_)
                                           (gxc#generate-runtime-binding-id
                                            _L21330_))
                                         _xarg2087521326_
                                         _hd2086521284_
                                         _arg2085121246_)
                                        (_g2083321212_ _g2083621215_)))))))
                    (_loop2087021294_ _target2086721289_ '()))
                  (_g2083321212_ _g2083621215_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2083321212_ _g2083621215_))
                                            (_g2083321212_ _g2083621215_))
                                        (_g2083321212_ _g2083621215_))))
                                (_g2083321212_ _g2083621215_))
                            (_g2083321212_ _g2083621215_))
                        (_g2083321212_ _g2083621215_))))
                (_g2083321212_ _g2083621215_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2083321212_ _g2083621215_))
                                            (_g2083321212_ _g2083621215_))
                                        (_g2083321212_ _g2083621215_))))
                                (_g2083321212_ _g2083621215_))))
                        (_g2083321212_ _g2083621215_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop2084621230_
                                             _target2084321225_
                                             '()))
                                          (_g2083321212_ _g2083621215_)))))
                                (_g2083321212_ _g2083621215_))
                            (_g2083321212_ _g2083621215_))))
                    (_g2083321212_ _g2083621215_)))))
        (_g2083221360_ _form20831_))))
  (define gxc#lambda-form-arity
    (lambda (_form20635_)
      (let* ((_g2063720651_
              (lambda (_g2063820648_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2063820648_)))
             (_g2063620828_
              (lambda (_g2063820654_)
                (if (gx#stx-pair? _g2063820654_)
                    (let ((_e2064120656_ (gx#stx-e _g2063820654_)))
                      (let ((_hd2064220659_ (##car _e2064120656_))
                            (_tl2064320661_ (##cdr _e2064120656_)))
                        (if (gx#stx-pair? _tl2064320661_)
                            (let ((_e2064420664_ (gx#stx-e _tl2064320661_)))
                              (let ((_hd2064520667_ (##car _e2064420664_))
                                    (_tl2064620669_ (##cdr _e2064420664_)))
                                (if (gx#stx-null? _tl2064620669_)
                                    ((lambda (_L20672_ _L20673_)
                                       (let* ((_g2068820716_
                                               (lambda (_g2068920713_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g2068920713_)))
                                              (_g2068720729_
                                               (lambda (_g2068920719_)
                                                 ((lambda (_L20721_)
                                                    (cons '0 '()))
                                                  _g2068920719_)))
                                              (_g2068620778_
                                               (lambda (_g2068920732_)
                                                 (if (gx#stx-pair/null?
                                                      _g2068920732_)
                                                     (if (fx>= (gx#stx-length
                                                                _g2068920732_)
                                                               '0)
                                                         (let ((_g23681_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2068920732_
                         '0)))
                   (begin
                     (let ((_g23682_ (values-count _g23681_)))
                       (if (not (fx= _g23682_ 2))
                           (error "Context expects 2 values" _g23682_)))
                     (let ((_target2070220734_ (values-ref _g23681_ 0))
                           (_tl2070420736_ (values-ref _g23681_ 1)))
                       (letrec ((_loop2070520739_
                                 (lambda (_hd2070320742_ _arg2070920744_)
                                   (if (gx#stx-pair? _hd2070320742_)
                                       (let ((_e2070620747_
                                              (gx#stx-e _hd2070320742_)))
                                         (let ((_lp-hd2070720750_
                                                (##car _e2070620747_))
                                               (_lp-tl2070820752_
                                                (##cdr _e2070620747_)))
                                           (_loop2070520739_
                                            _lp-tl2070820752_
                                            (cons _lp-hd2070720750_
                                                  _arg2070920744_))))
                                       (let ((_arg2071020755_
                                              (reverse _arg2070920744_)))
                                         ((lambda (_L20758_ _L20759_)
                                            (cons (length (begin
                                                            '#!void
                                                            (foldr1 (lambda (_g2077020773_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g2077120775_)
                              (cons _g2077020773_ _g2077120775_))
                            '()
                            _L20759_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                          _tl2070420736_
                                          _arg2071020755_))))))
                         (_loop2070520739_ _target2070220734_ '())))))
                 (_g2068720729_ _g2068920732_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2068720729_
                                                      _g2068920732_))))
                                              (_g2068520825_
                                               (lambda (_g2068920781_)
                                                 (if (gx#stx-pair/null?
                                                      _g2068920781_)
                                                     (if (fx>= (gx#stx-length
                                                                _g2068920781_)
                                                               '0)
                                                         (let ((_g23683_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2068920781_
                         '0)))
                   (begin
                     (let ((_g23684_ (values-count _g23683_)))
                       (if (not (fx= _g23684_ 2))
                           (error "Context expects 2 values" _g23684_)))
                     (let ((_target2069120783_ (values-ref _g23683_ 0))
                           (_tl2069320785_ (values-ref _g23683_ 1)))
                       (if (gx#stx-null? _tl2069320785_)
                           (letrec ((_loop2069420788_
                                     (lambda (_hd2069220791_ _arg2069820793_)
                                       (if (gx#stx-pair? _hd2069220791_)
                                           (let ((_e2069520796_
                                                  (gx#stx-e _hd2069220791_)))
                                             (let ((_lp-hd2069620799_
                                                    (##car _e2069520796_))
                                                   (_lp-tl2069720801_
                                                    (##cdr _e2069520796_)))
                                               (_loop2069420788_
                                                _lp-tl2069720801_
                                                (cons _lp-hd2069620799_
                                                      _arg2069820793_))))
                                           (let ((_arg2069920804_
                                                  (reverse _arg2069820793_)))
                                             ((lambda (_L20807_)
                                                (length (begin
                                                          '#!void
                                                          (foldr1 (lambda (_g2081720820_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g2081820822_)
                            (cons _g2081720820_ _g2081820822_))
                          '()
                          _L20807_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _arg2069920804_))))))
                             (_loop2069420788_ _target2069120783_ '()))
                           (_g2068620778_ _g2068920781_)))))
                 (_g2068620778_ _g2068920781_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2068620778_
                                                      _g2068920781_)))))
                                         (_g2068520825_ _L20673_)))
                                     _hd2064520667_
                                     _hd2064220659_)
                                    (_g2063720651_ _g2063820654_))))
                            (_g2063720651_ _g2063820654_))))
                    (_g2063720651_ _g2063820654_)))))
        (_g2063620828_ _form20635_))))
  (define gxc#lambda-expr?
    (lambda (_expr20588_)
      (let* ((_g2059120601_
              (lambda (_g2059220598_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2059220598_)))
             (_g2059020608_ (lambda (_g2059220604_) ((lambda () '#f))))
             (_g2058920632_
              (lambda (_g2059220611_)
                (if (gx#stx-pair? _g2059220611_)
                    (let ((_e2059420613_ (gx#stx-e _g2059220611_)))
                      (let ((_hd2059520616_ (##car _e2059420613_))
                            (_tl2059620618_ (##cdr _e2059420613_)))
                        (if (gx#identifier? _hd2059520616_)
                            (if (gx#stx-eq? '%#lambda _hd2059520616_)
                                ((lambda (_L20621_) '#t) _tl2059620618_)
                                (_g2059020608_ _g2059220611_))
                            (_g2059020608_ _g2059220611_))))
                    (_g2059020608_ _g2059220611_)))))
        (_g2058920632_ _expr20588_))))
  (define gxc#case-lambda-expr?
    (lambda (_expr20541_)
      (let* ((_g2054420554_
              (lambda (_g2054520551_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2054520551_)))
             (_g2054320561_ (lambda (_g2054520557_) ((lambda () '#f))))
             (_g2054220585_
              (lambda (_g2054520564_)
                (if (gx#stx-pair? _g2054520564_)
                    (let ((_e2054720566_ (gx#stx-e _g2054520564_)))
                      (let ((_hd2054820569_ (##car _e2054720566_))
                            (_tl2054920571_ (##cdr _e2054720566_)))
                        (if (gx#identifier? _hd2054820569_)
                            (if (gx#stx-eq? '%#case-lambda _hd2054820569_)
                                ((lambda (_L20574_) '#t) _tl2054920571_)
                                (_g2054320561_ _g2054520564_))
                            (_g2054320561_ _g2054520564_))))
                    (_g2054320561_ _g2054520564_)))))
        (_g2054220585_ _expr20541_))))
  (define gxc#opt-lambda-expr?
    (lambda (_expr20410_)
      (let* ((_g2041320443_
              (lambda (_g2041420440_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2041420440_)))
             (_g2041220450_ (lambda (_g2041420446_) ((lambda () '#f))))
             (_g2041120538_
              (lambda (_g2041420453_)
                (if (gx#stx-pair? _g2041420453_)
                    (let ((_e2041820455_ (gx#stx-e _g2041420453_)))
                      (let ((_hd2041920458_ (##car _e2041820455_))
                            (_tl2042020460_ (##cdr _e2041820455_)))
                        (if (gx#identifier? _hd2041920458_)
                            (if (gx#stx-eq? '%#let-values _hd2041920458_)
                                (if (gx#stx-pair? _tl2042020460_)
                                    (let ((_e2042120463_
                                           (gx#stx-e _tl2042020460_)))
                                      (let ((_hd2042220466_
                                             (##car _e2042120463_))
                                            (_tl2042320468_
                                             (##cdr _e2042120463_)))
                                        (if (gx#stx-pair? _hd2042220466_)
                                            (let ((_e2042420471_
                                                   (gx#stx-e _hd2042220466_)))
                                              (let ((_hd2042520474_
                                                     (##car _e2042420471_))
                                                    (_tl2042620476_
                                                     (##cdr _e2042420471_)))
                                                (if (gx#stx-pair?
                                                     _hd2042520474_)
                                                    (let ((_e2042720479_
                                                           (gx#stx-e
                                                            _hd2042520474_)))
                                                      (let ((_hd2042820482_
                                                             (##car _e2042720479_))
                                                            (_tl2042920484_
                                                             (##cdr _e2042720479_)))
                                                        (if (gx#stx-pair?
                                                             _hd2042820482_)
                                                            (let ((_e2043020487_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2042820482_)))
                      (let ((_hd2043120490_ (##car _e2043020487_))
                            (_tl2043220492_ (##cdr _e2043020487_)))
                        (if (gx#stx-null? _tl2043220492_)
                            (if (gx#stx-pair? _tl2042920484_)
                                (let ((_e2043320495_
                                       (gx#stx-e _tl2042920484_)))
                                  (let ((_hd2043420498_ (##car _e2043320495_))
                                        (_tl2043520500_ (##cdr _e2043320495_)))
                                    (if (gx#stx-null? _tl2043520500_)
                                        (if (gx#stx-null? _tl2042620476_)
                                            (if (gx#stx-pair? _tl2042320468_)
                                                (let ((_e2043620503_
                                                       (gx#stx-e
                                                        _tl2042320468_)))
                                                  (let ((_hd2043720506_
                                                         (##car _e2043620503_))
                                                        (_tl2043820508_
                                                         (##cdr _e2043620503_)))
                                                    (if (gx#stx-null?
                                                         _tl2043820508_)
                                                        ((lambda (_L20511_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L20512_
                          _L20513_)
                   (if (gx#identifier? _L20513_)
                       (if (gxc#lambda-expr? _L20512_)
                           (gxc#case-lambda-expr? _L20511_)
                           '#f)
                       '#f))
                 _hd2043720506_
                 _hd2043420498_
                 _hd2043120490_)
                (_g2041220450_ _g2041420453_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2041220450_ _g2041420453_))
                                            (_g2041220450_ _g2041420453_))
                                        (_g2041220450_ _g2041420453_))))
                                (_g2041220450_ _g2041420453_))
                            (_g2041220450_ _g2041420453_))))
                    (_g2041220450_ _g2041420453_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2041220450_
                                                     _g2041420453_))))
                                            (_g2041220450_ _g2041420453_))))
                                    (_g2041220450_ _g2041420453_))
                                (_g2041220450_ _g2041420453_))
                            (_g2041220450_ _g2041420453_))))
                    (_g2041220450_ _g2041420453_)))))
        (_g2041120538_ _expr20410_))))
  (begin
    (define gxc#lift-case-lambda-clauses__opt-lambda20150
      (lambda (_stx20152_ _id20153_ _clauses20154_ _gensym?20155_)
        (let _lp20157_ ((_rest20159_ _clauses20154_)
                        (_ids20160_ '())
                        (_impls20161_ '())
                        (_clauses20162_ '()))
          (let* ((_rest2016320171_ _rest20159_)
                 (_E2016620175_
                  (lambda () (error '"No clause matching" _rest2016320171_)))
                 (_else2016520179_
                  (lambda ()
                    (values (reverse _ids20160_)
                            (reverse _impls20161_)
                            (reverse _clauses20162_))))
                 (_K2016720384_
                  (lambda (_rest20182_ _clause20183_)
                    (if (gxc#dispatch-lambda-form? _clause20183_)
                        (_lp20157_
                         _rest20182_
                         _ids20160_
                         _impls20161_
                         (cons _clause20183_ _clauses20162_))
                        (let* ((_g2018520196_
                                (lambda (_g2018620193_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2018620193_)))
                               (_g2018420381_
                                (lambda (_g2018620199_)
                                  (if (gx#stx-pair? _g2018620199_)
                                      (let ((_e2018920201_
                                             (gx#stx-e _g2018620199_)))
                                        (let ((_hd2019020204_
                                               (##car _e2018920201_))
                                              (_tl2019120206_
                                               (##cdr _e2018920201_)))
                                          ((lambda (_L20209_ _L20210_)
                                             (let* ((_id20227_
                                                     (make-symbol
                                                      (gx#stx-e _id20153_)
                                                      '"__"
                                                      (length _clauses20162_)
                                                      (if _gensym?20155_
                                                          (gensym '__)
                                                          '"")))
                                                    (_id20229_
                                                     (gx#core-quote-syntax__1
                                                      _id20227_
                                                      (gx#stx-source
                                                       _stx20152_)))
                                                    (_impl20231_
                                                     (gxc#xform-wrap-source
                                                      (cons (gx#datum->syntax__0
                                                             '#f
                                                             '%#lambda)
                                                            (cons _L20210_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L20209_))
              _stx20152_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause20378_
                                                     (let* ((_g2023520263_
                                                             (lambda (_g2023620260_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2023620260_)))
                                                            (_g2023420279_
                                                             (lambda (_g2023620266_)
                                                               ((lambda (_L20268_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L20210_
                                (cons (gxc#xform-wrap-source
                                       (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'apply '()))
                                                   (cons (cons '%#ref
                                                               (cons _id20229_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                             (cons _L20268_ '()))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _stx20152_)
                                      '())))
                        _g2023620266_)))
                    (_g2023320328_
                     (lambda (_g2023620282_)
                       (if (gx#stx-pair/null? _g2023620282_)
                           (if (fx>= (gx#stx-length _g2023620282_) '0)
                               (let ((_g23685_
                                      (gx#syntax-split-splice
                                       _g2023620282_
                                       '0)))
                                 (begin
                                   (let ((_g23686_ (values-count _g23685_)))
                                     (if (not (fx= _g23686_ 2))
                                         (error "Context expects 2 values"
                                                _g23686_)))
                                   (let ((_target2024920284_
                                          (values-ref _g23685_ 0))
                                         (_tl2025120286_
                                          (values-ref _g23685_ 1)))
                                     (letrec ((_loop2025220289_
                                               (lambda (_hd2025020292_
                                                        _arg2025620294_)
                                                 (if (gx#stx-pair?
                                                      _hd2025020292_)
                                                     (let ((_e2025320297_
                                                            (gx#stx-e
                                                             _hd2025020292_)))
                                                       (let ((_lp-hd2025420300_
                                                              (##car _e2025320297_))
                                                             (_lp-tl2025520302_
                                                              (##cdr _e2025320297_)))
                                                         (_loop2025220289_
                                                          _lp-tl2025520302_
                                                          (cons _lp-hd2025420300_
                                                                _arg2025620294_))))
                                                     (let ((_arg2025720305_
                                                            (reverse _arg2025620294_)))
                                                       ((lambda (_L20308_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L20309_)
                  (cons _L20210_
                        (cons (gxc#xform-wrap-source
                               (cons '%#call
                                     (cons (cons '%#ref (cons 'apply '()))
                                           (cons (cons '%#ref
                                                       (cons _id20229_ '()))
                                                 (foldr1 cons
                                                         (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '%#ref)
                             (cons _L20308_ '()))
                       '())
                 (begin
                   '#!void
                   (foldr1 (lambda (_g2032020323_ _g2032120325_)
                             (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                         (cons _g2032020323_ '()))
                                   _g2032120325_))
                           '()
                           _L20309_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _stx20152_)
                              '())))
                _tl2025120286_
                _arg2025720305_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop2025220289_
                                        _target2024920284_
                                        '())))))
                               (_g2023420279_ _g2023620282_))
                           (_g2023420279_ _g2023620282_))))
                    (_g2023220375_
                     (lambda (_g2023620331_)
                       (if (gx#stx-pair/null? _g2023620331_)
                           (if (fx>= (gx#stx-length _g2023620331_) '0)
                               (let ((_g23687_
                                      (gx#syntax-split-splice
                                       _g2023620331_
                                       '0)))
                                 (begin
                                   (let ((_g23688_ (values-count _g23687_)))
                                     (if (not (fx= _g23688_ 2))
                                         (error "Context expects 2 values"
                                                _g23688_)))
                                   (let ((_target2023820333_
                                          (values-ref _g23687_ 0))
                                         (_tl2024020335_
                                          (values-ref _g23687_ 1)))
                                     (if (gx#stx-null? _tl2024020335_)
                                         (letrec ((_loop2024120338_
                                                   (lambda (_hd2023920341_
                                                            _arg2024520343_)
                                                     (if (gx#stx-pair?
                                                          _hd2023920341_)
                                                         (let ((_e2024220346_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd2023920341_)))
                   (let ((_lp-hd2024320349_ (##car _e2024220346_))
                         (_lp-tl2024420351_ (##cdr _e2024220346_)))
                     (_loop2024120338_
                      _lp-tl2024420351_
                      (cons _lp-hd2024320349_ _arg2024520343_))))
                 (let ((_arg2024620354_ (reverse _arg2024520343_)))
                   ((lambda (_L20357_)
                      (cons _L20210_
                            (cons (gxc#xform-wrap-source
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _id20229_ '()))
                                               (begin
                                                 '#!void
                                                 (foldr1 (lambda (_g2036720370_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g2036820372_)
                   (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                               (cons _g2036720370_ '()))
                         _g2036820372_))
                 '()
                 _L20357_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _stx20152_)
                                  '())))
                    _arg2024620354_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop2024120338_
                                            _target2023820333_
                                            '()))
                                         (_g2023320328_ _g2023620331_)))))
                               (_g2023320328_ _g2023620331_))
                           (_g2023320328_ _g2023620331_)))))
               (_g2023220375_ _L20210_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_lp20157_
                                                _rest20182_
                                                (cons _id20229_ _ids20160_)
                                                (cons _impl20231_ _impls20161_)
                                                (cons _clause20378_
                                                      _clauses20162_))))
                                           _tl2019120206_
                                           _hd2019020204_)))
                                      (_g2018520196_ _g2018620199_)))))
                          (_g2018420381_ _clause20183_))))))
            (if (##pair? _rest2016320171_)
                (let ((_hd2016820387_ (##car _rest2016320171_))
                      (_tl2016920389_ (##cdr _rest2016320171_)))
                  (let* ((_clause20392_ _hd2016820387_)
                         (_rest20394_ _tl2016920389_))
                    (_K2016720384_ _rest20394_ _clause20392_)))
                (_else2016520179_))))))
    (begin
      (define gxc#lift-case-lambda-clauses__0
        (lambda (_stx20399_ _id20400_ _clauses20401_)
          (let ((_gensym?20403_ '#f))
            (gxc#lift-case-lambda-clauses__opt-lambda20150
             _stx20399_
             _id20400_
             _clauses20401_
             _gensym?20403_))))
      (define gxc#lift-case-lambda-clauses
        (lambda _g23690_
          (let ((_g23689_ (length _g23690_)))
            (cond ((fx= _g23689_ 3)
                   (apply gxc#lift-case-lambda-clauses__0 _g23690_))
                  ((fx= _g23689_ 4)
                   (apply gxc#lift-case-lambda-clauses__opt-lambda20150
                          _g23690_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#lift-case-lambda-clauses
                    _g23690_))))))))
  (define gxc#lift-top-lambda-define-values%
    (lambda (_stx19741_)
      (letrec ((_case-lambda-clause-def19743_
                (lambda (_id20148_ _impl20149_)
                  (gxc#xform-wrap-source
                   (cons '%#define-values
                         (cons (cons _id20148_ '())
                               (cons (gxc#compile-e _impl20149_) '())))
                   _stx19741_))))
        (let* ((_g1974719792_
                (lambda (_g1974819789_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1974819789_)))
               (_g1974619838_
                (lambda (_g1974819795_)
                  (if (gx#stx-pair? _g1974819795_)
                      (let ((_e1977919797_ (gx#stx-e _g1974819795_)))
                        (let ((_hd1978019800_ (##car _e1977919797_))
                              (_tl1978119802_ (##cdr _e1977919797_)))
                          (if (gx#stx-pair? _tl1978119802_)
                              (let ((_e1978219805_ (gx#stx-e _tl1978119802_)))
                                (let ((_hd1978319808_ (##car _e1978219805_))
                                      (_tl1978419810_ (##cdr _e1978219805_)))
                                  (if (gx#stx-pair? _tl1978419810_)
                                      (let ((_e1978519813_
                                             (gx#stx-e _tl1978419810_)))
                                        (let ((_hd1978619816_
                                               (##car _e1978519813_))
                                              (_tl1978719818_
                                               (##cdr _e1978519813_)))
                                          (if (gx#stx-null? _tl1978719818_)
                                              ((lambda (_L19821_ _L19822_)
                                                 (gxc#xform-wrap-source
                                                  (cons '%#define-values
                                                        (cons _L19822_
                                                              (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L19821_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx19741_))
                                               _hd1978619816_
                                               _hd1978319808_)
                                              (_g1974719792_ _g1974819795_))))
                                      (_g1974719792_ _g1974819795_))))
                              (_g1974719792_ _g1974819795_))))
                      (_g1974719792_ _g1974819795_))))
               (_g1974520020_
                (lambda (_g1974819841_)
                  (if (gx#stx-pair? _g1974819841_)
                      (let ((_e1976519843_ (gx#stx-e _g1974819841_)))
                        (let ((_hd1976619846_ (##car _e1976519843_))
                              (_tl1976719848_ (##cdr _e1976519843_)))
                          (if (gx#stx-pair? _tl1976719848_)
                              (let ((_e1976819851_ (gx#stx-e _tl1976719848_)))
                                (let ((_hd1976919854_ (##car _e1976819851_))
                                      (_tl1977019856_ (##cdr _e1976819851_)))
                                  (if (gx#stx-pair? _hd1976919854_)
                                      (let ((_e1977119859_
                                             (gx#stx-e _hd1976919854_)))
                                        (let ((_hd1977219862_
                                               (##car _e1977119859_))
                                              (_tl1977319864_
                                               (##cdr _e1977119859_)))
                                          (if (gx#stx-null? _tl1977319864_)
                                              (if (gx#stx-pair? _tl1977019856_)
                                                  (let ((_e1977419867_
                                                         (gx#stx-e
                                                          _tl1977019856_)))
                                                    (let ((_hd1977519870_
                                                           (##car _e1977419867_))
                                                          (_tl1977619872_
                                                           (##cdr _e1977419867_)))
                                                      (if (gx#stx-null?
                                                           _tl1977619872_)
                                                          ((lambda (_L19875_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L19876_)
                     (if (if (gx#identifier? _L19876_)
                             (gxc#opt-lambda-expr? _L19875_)
                             '#f)
                         (let* ((_g1989219922_
                                 (lambda (_g1989319919_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1989319919_)))
                                (_g1989120017_
                                 (lambda (_g1989319925_)
                                   (if (gx#stx-pair? _g1989319925_)
                                       (let ((_e1989719927_
                                              (gx#stx-e _g1989319925_)))
                                         (let ((_hd1989819930_
                                                (##car _e1989719927_))
                                               (_tl1989919932_
                                                (##cdr _e1989719927_)))
                                           (if (gx#stx-pair? _tl1989919932_)
                                               (let ((_e1990019935_
                                                      (gx#stx-e
                                                       _tl1989919932_)))
                                                 (let ((_hd1990119938_
                                                        (##car _e1990019935_))
                                                       (_tl1990219940_
                                                        (##cdr _e1990019935_)))
                                                   (if (gx#stx-pair?
                                                        _hd1990119938_)
                                                       (let ((_e1990319943_
                                                              (gx#stx-e
                                                               _hd1990119938_)))
                                                         (let ((_hd1990419946_
                                                                (##car _e1990319943_))
                                                               (_tl1990519948_
                                                                (##cdr _e1990319943_)))
                                                           (if (gx#stx-pair?
                                                                _hd1990419946_)
                                                               (let ((_e1990619951_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1990419946_)))
                         (let ((_hd1990719954_ (##car _e1990619951_))
                               (_tl1990819956_ (##cdr _e1990619951_)))
                           (if (gx#stx-pair? _hd1990719954_)
                               (let ((_e1990919959_ (gx#stx-e _hd1990719954_)))
                                 (let ((_hd1991019962_ (##car _e1990919959_))
                                       (_tl1991119964_ (##cdr _e1990919959_)))
                                   (if (gx#stx-null? _tl1991119964_)
                                       (if (gx#stx-pair? _tl1990819956_)
                                           (let ((_e1991219967_
                                                  (gx#stx-e _tl1990819956_)))
                                             (let ((_hd1991319970_
                                                    (##car _e1991219967_))
                                                   (_tl1991419972_
                                                    (##cdr _e1991219967_)))
                                               (if (gx#stx-null?
                                                    _tl1991419972_)
                                                   (if (gx#stx-null?
                                                        _tl1990519948_)
                                                       (if (gx#stx-pair?
                                                            _tl1990219940_)
                                                           (let ((_e1991519975_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1990219940_)))
                     (let ((_hd1991619978_ (##car _e1991519975_))
                           (_tl1991719980_ (##cdr _e1991519975_)))
                       (if (gx#stx-null? _tl1991719980_)
                           ((lambda (_L19983_ _L19984_ _L19985_)
                              (let* ((_lambda-id20009_
                                      (make-symbol
                                       (gx#stx-e _L19876_)
                                       '"__"
                                       (gx#stx-e _L19985_)))
                                     (_lambda-id20011_
                                      (gx#core-quote-syntax__1
                                       _lambda-id20009_
                                       (gx#stx-source _stx19741_)))
                                     (_g23691_
                                      (gx#core-bind-runtime!__0
                                       _lambda-id20011_))
                                     (_new-case-lambda-expr20014_
                                      (gxc#apply-expression-subst
                                       _L19983_
                                       _L19985_
                                       _lambda-id20011_)))
                                (begin
                                  (gxc#verbose
                                   '"lift opt-lambda dispatch "
                                   (gxc#generate-runtime-binding-id _L19876_)
                                   '" => "
                                   (gxc#generate-runtime-binding-id
                                    _lambda-id20011_))
                                  (gxc#xform-wrap-source
                                   (cons '%#begin
                                         (cons (gxc#xform-wrap-source
                                                (cons '%#define-values
                                                      (cons (cons _lambda-id20011_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (gxc#compile-e _L19984_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _stx19741_)
                                               (cons (gxc#lift-top-lambda-define-values%
                                                      (gxc#xform-wrap-source
                                                       (cons '%#define-values
                                                             (cons (cons _L19876_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons _new-case-lambda-expr20014_ '())))
               _stx19741_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   _stx19741_))))
                            _hd1991619978_
                            _hd1991319970_
                            _hd1991019962_)
                           (_g1989219922_ _g1989319925_))))
                   (_g1989219922_ _g1989319925_))
               (_g1989219922_ _g1989319925_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1989219922_
                                                    _g1989319925_))))
                                           (_g1989219922_ _g1989319925_))
                                       (_g1989219922_ _g1989319925_))))
                               (_g1989219922_ _g1989319925_))))
                       (_g1989219922_ _g1989319925_))))
               (_g1989219922_ _g1989319925_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1989219922_ _g1989319925_))))
                                       (_g1989219922_ _g1989319925_)))))
                           (_g1989120017_ _L19875_))
                         (_g1974619838_ _g1974819841_)))
                   _hd1977519870_
                   _hd1977219862_)
                  (_g1974619838_ _g1974819841_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1974619838_
                                                   _g1974819841_))
                                              (_g1974619838_ _g1974819841_))))
                                      (_g1974619838_ _g1974819841_))))
                              (_g1974619838_ _g1974819841_))))
                      (_g1974619838_ _g1974819841_))))
               (_g1974420145_
                (lambda (_g1974820023_)
                  (if (gx#stx-pair? _g1974820023_)
                      (let ((_e1975120025_ (gx#stx-e _g1974820023_)))
                        (let ((_hd1975220028_ (##car _e1975120025_))
                              (_tl1975320030_ (##cdr _e1975120025_)))
                          (if (gx#stx-pair? _tl1975320030_)
                              (let ((_e1975420033_ (gx#stx-e _tl1975320030_)))
                                (let ((_hd1975520036_ (##car _e1975420033_))
                                      (_tl1975620038_ (##cdr _e1975420033_)))
                                  (if (gx#stx-pair? _hd1975520036_)
                                      (let ((_e1975720041_
                                             (gx#stx-e _hd1975520036_)))
                                        (let ((_hd1975820044_
                                               (##car _e1975720041_))
                                              (_tl1975920046_
                                               (##cdr _e1975720041_)))
                                          (if (gx#stx-null? _tl1975920046_)
                                              (if (gx#stx-pair? _tl1975620038_)
                                                  (let ((_e1976020049_
                                                         (gx#stx-e
                                                          _tl1975620038_)))
                                                    (let ((_hd1976120052_
                                                           (##car _e1976020049_))
                                                          (_tl1976220054_
                                                           (##cdr _e1976020049_)))
                                                      (if (gx#stx-null?
                                                           _tl1976220054_)
                                                          ((lambda (_L20057_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L20058_)
                     (if (if (gx#identifier? _L20058_)
                             (gxc#case-lambda-expr? _L20057_)
                             '#f)
                         (let* ((_g2007520089_
                                 (lambda (_g2007620086_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g2007620086_)))
                                (_g2007420120_
                                 (lambda (_g2007620092_)
                                   (if (gx#stx-pair? _g2007620092_)
                                       (let ((_e2008220094_
                                              (gx#stx-e _g2007620092_)))
                                         (let ((_hd2008320097_
                                                (##car _e2008220094_))
                                               (_tl2008420099_
                                                (##cdr _e2008220094_)))
                                           ((lambda (_L20102_)
                                              (let ((_g23692_
                                                     (gxc#lift-case-lambda-clauses__0
                                                      _stx19741_
                                                      _L20058_
                                                      _L20102_)))
                                                (begin
                                                  (let ((_g23693_
                                                         (values-count
                                                          _g23692_)))
                                                    (if (not (fx= _g23693_ 3))
                                                        (error "Context expects 3 values"
                                                               _g23693_)))
                                                  (let ((_ids20112_
                                                         (values-ref
                                                          _g23692_
                                                          0))
                                                        (_impls20113_
                                                         (values-ref
                                                          _g23692_
                                                          1))
                                                        (_clauses20114_
                                                         (values-ref
                                                          _g23692_
                                                          2)))
                                                    (let* ((_g23694_
                                                            (for-each
                                                             gx#core-bind-runtime!
                                                             _ids20112_))
                                                           (_defs20117_
                                                            (map _case-lambda-clause-def19743_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _ids20112_
                         _impls20113_)))
              (begin
                (gxc#verbose
                 '"lift case-lambda clauses "
                 (gxc#generate-runtime-binding-id _L20058_)
                 '" => "
                 (map gxc#identifier-symbol _ids20112_))
                (gxc#xform-wrap-source
                 (cons '%#begin
                       (foldr1 cons
                               (cons (gxc#xform-wrap-source
                                      (cons '%#define-values
                                            (cons (cons _L20058_ '())
                                                  (cons (gxc#xform-wrap-source
                                                         (cons '%#case-lambda
                                                               _clauses20114_)
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'case-lambda-expr))
                                                        '())))
                                      _stx19741_)
                                     '())
                               _defs20117_))
                 _stx19741_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _tl2008420099_)))
                                       (_g2007520089_ _g2007620092_))))
                                (_g2007320142_
                                 (lambda (_g2007620123_)
                                   (if (gx#stx-pair? _g2007620123_)
                                       (let ((_e2007820125_
                                              (gx#stx-e _g2007620123_)))
                                         (let ((_hd2007920128_
                                                (##car _e2007820125_))
                                               (_tl2008020130_
                                                (##cdr _e2007820125_)))
                                           ((lambda (_L20133_)
                                              (if (andmap1 gxc#dispatch-lambda-form?
                                                           _L20133_)
                                                  _stx19741_
                                                  (_g2007420120_
                                                   _g2007620123_)))
                                            _tl2008020130_)))
                                       (_g2007420120_ _g2007620123_)))))
                           (_g2007320142_ _L20057_))
                         (_g1974520020_ _g1974820023_)))
                   _hd1976120052_
                   _hd1975820044_)
                  (_g1974520020_ _g1974820023_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1974520020_
                                                   _g1974820023_))
                                              (_g1974520020_ _g1974820023_))))
                                      (_g1974520020_ _g1974820023_))))
                              (_g1974520020_ _g1974820023_))))
                      (_g1974520020_ _g1974820023_)))))
          (_g1974420145_ _stx19741_)))))
  (define gxc#lift-top-lambda-let-values%
    (lambda (_stx19164_)
      (letrec* ((_bind-e__opt-lambda19723__2364123642_
                 (lambda (_id19725_ _expr19726_ _compile?19727_)
                   (cons (cons _id19725_ '())
                         (cons (if _compile?19727_
                                   (gxc#compile-e _expr19726_)
                                   _expr19726_)
                               '()))))
                (_bind-e__0__2364323644_
                 (lambda (_id19732_ _expr19733_)
                   (let ((_compile?19735_ '#t))
                     (_bind-e__opt-lambda19723__2364123642_
                      _id19732_
                      _expr19733_
                      _compile?19735_))))
                (_bind-e19166_
                 (lambda _g23696_
                   (let ((_g23695_ (length _g23696_)))
                     (cond ((fx= _g23695_ 2)
                            (apply _bind-e__0__2364323644_ _g23696_))
                           ((fx= _g23695_ 3)
                            (apply _bind-e__opt-lambda19723__2364123642_
                                   _g23696_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g23696_))))))
                (_compile-bindings19167_
                 (lambda (_rest19309_)
                   (let _lp19311_ ((_rest19313_ _rest19309_)
                                   (_lift119314_ '())
                                   (_lift219315_ '())
                                   (_bind19316_ '()))
                     (let* ((_rest1931719325_ _rest19313_)
                            (_E1932019329_
                             (lambda ()
                               (error '"No clause matching" _rest1931719325_)))
                            (_else1931919333_
                             (lambda ()
                               (values (reverse _lift119314_)
                                       (reverse _lift219315_)
                                       (reverse _bind19316_))))
                            (_K1932119712_
                             (lambda (_rest19336_ _hd19337_)
                               (let* ((_g1934119377_
                                       (lambda (_g1934219374_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1934219374_)))
                                      (_g1934019418_
                                       (lambda (_g1934219380_)
                                         (if (gx#stx-pair? _g1934219380_)
                                             (let ((_e1936719382_
                                                    (gx#stx-e _g1934219380_)))
                                               (let ((_hd1936819385_
                                                      (##car _e1936719382_))
                                                     (_tl1936919387_
                                                      (##cdr _e1936719382_)))
                                                 (if (gx#stx-pair?
                                                      _tl1936919387_)
                                                     (let ((_e1937019390_
                                                            (gx#stx-e
                                                             _tl1936919387_)))
                                                       (let ((_hd1937119393_
                                                              (##car _e1937019390_))
                                                             (_tl1937219395_
                                                              (##cdr _e1937019390_)))
                                                         (if (gx#stx-null?
                                                              _tl1937219395_)
                                                             ((lambda (_L19398_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L19399_)
                        (_lp19311_
                         _rest19336_
                         _lift119314_
                         _lift219315_
                         (cons (cons _L19399_
                                     (cons (gxc#compile-e _L19398_) '()))
                               _bind19316_)))
                      _hd1937119393_
                      _hd1936819385_)
                     (_g1934119377_ _g1934219380_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1934119377_
                                                      _g1934219380_))))
                                             (_g1934119377_ _g1934219380_))))
                                      (_g1933919590_
                                       (lambda (_g1934219421_)
                                         (if (gx#stx-pair? _g1934219421_)
                                             (let ((_e1935619423_
                                                    (gx#stx-e _g1934219421_)))
                                               (let ((_hd1935719426_
                                                      (##car _e1935619423_))
                                                     (_tl1935819428_
                                                      (##cdr _e1935619423_)))
                                                 (if (gx#stx-pair?
                                                      _hd1935719426_)
                                                     (let ((_e1935919431_
                                                            (gx#stx-e
                                                             _hd1935719426_)))
                                                       (let ((_hd1936019434_
                                                              (##car _e1935919431_))
                                                             (_tl1936119436_
                                                              (##cdr _e1935919431_)))
                                                         (if (gx#stx-null?
                                                              _tl1936119436_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1935819428_)
                         (let ((_e1936219439_ (gx#stx-e _tl1935819428_)))
                           (let ((_hd1936319442_ (##car _e1936219439_))
                                 (_tl1936419444_ (##cdr _e1936219439_)))
                             (if (gx#stx-null? _tl1936419444_)
                                 ((lambda (_L19447_ _L19448_)
                                    (if (if (gx#identifier? _L19448_)
                                            (gxc#opt-lambda-expr? _L19447_)
                                            '#f)
                                        (let* ((_g1946219492_
                                                (lambda (_g1946319489_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1946319489_)))
                                               (_g1946119587_
                                                (lambda (_g1946319495_)
                                                  (if (gx#stx-pair?
                                                       _g1946319495_)
                                                      (let ((_e1946719497_
                                                             (gx#stx-e
                                                              _g1946319495_)))
                                                        (let ((_hd1946819500_
                                                               (##car _e1946719497_))
                                                              (_tl1946919502_
                                                               (##cdr _e1946719497_)))
                                                          (if (gx#stx-pair?
                                                               _tl1946919502_)
                                                              (let ((_e1947019505_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1946919502_)))
                        (let ((_hd1947119508_ (##car _e1947019505_))
                              (_tl1947219510_ (##cdr _e1947019505_)))
                          (if (gx#stx-pair? _hd1947119508_)
                              (let ((_e1947319513_ (gx#stx-e _hd1947119508_)))
                                (let ((_hd1947419516_ (##car _e1947319513_))
                                      (_tl1947519518_ (##cdr _e1947319513_)))
                                  (if (gx#stx-pair? _hd1947419516_)
                                      (let ((_e1947619521_
                                             (gx#stx-e _hd1947419516_)))
                                        (let ((_hd1947719524_
                                               (##car _e1947619521_))
                                              (_tl1947819526_
                                               (##cdr _e1947619521_)))
                                          (if (gx#stx-pair? _hd1947719524_)
                                              (let ((_e1947919529_
                                                     (gx#stx-e
                                                      _hd1947719524_)))
                                                (let ((_hd1948019532_
                                                       (##car _e1947919529_))
                                                      (_tl1948119534_
                                                       (##cdr _e1947919529_)))
                                                  (if (gx#stx-null?
                                                       _tl1948119534_)
                                                      (if (gx#stx-pair?
                                                           _tl1947819526_)
                                                          (let ((_e1948219537_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1947819526_)))
                    (let ((_hd1948319540_ (##car _e1948219537_))
                          (_tl1948419542_ (##cdr _e1948219537_)))
                      (if (gx#stx-null? _tl1948419542_)
                          (if (gx#stx-null? _tl1947519518_)
                              (if (gx#stx-pair? _tl1947219510_)
                                  (let ((_e1948519545_
                                         (gx#stx-e _tl1947219510_)))
                                    (let ((_hd1948619548_
                                           (##car _e1948519545_))
                                          (_tl1948719550_
                                           (##cdr _e1948519545_)))
                                      (if (gx#stx-null? _tl1948719550_)
                                          ((lambda (_L19553_ _L19554_ _L19555_)
                                             (let* ((_lambda-id19579_
                                                     (make-symbol
                                                      (gx#stx-e _L19448_)
                                                      '"__"
                                                      (gx#stx-e _L19555_)
                                                      (gensym '__)))
                                                    (_lambda-id19581_
                                                     (gx#core-quote-syntax__1
                                                      _lambda-id19579_
                                                      (gx#stx-source
                                                       _stx19164_)))
                                                    (_g23697_
                                                     (gx#core-bind-runtime!__0
                                                      _lambda-id19581_))
                                                    (_new-case-lambda-expr19584_
                                                     (gxc#apply-expression-subst
                                                      _L19553_
                                                      _L19555_
                                                      _lambda-id19581_)))
                                               (begin
                                                 (gxc#verbose
                                                  '"lift opt-lambda dispatch "
                                                  (gxc#generate-runtime-binding-id
                                                   _L19448_)
                                                  '" => "
                                                  (gxc#generate-runtime-binding-id
                                                   _lambda-id19581_))
                                                 (_lp19311_
                                                  (cons (_bind-e__opt-lambda19723__2364123642_
                                                         _L19448_
                                                         _new-case-lambda-expr19584_
                                                         '#f)
                                                        _rest19336_)
                                                  (cons (_bind-e__0__2364323644_
                                                         _lambda-id19581_
                                                         _L19554_)
                                                        _lift119314_)
                                                  _lift219315_
                                                  _bind19316_))))
                                           _hd1948619548_
                                           _hd1948319540_
                                           _hd1948019532_)
                                          (_g1946219492_ _g1946319495_))))
                                  (_g1946219492_ _g1946319495_))
                              (_g1946219492_ _g1946319495_))
                          (_g1946219492_ _g1946319495_))))
                  (_g1946219492_ _g1946319495_))
              (_g1946219492_ _g1946319495_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1946219492_ _g1946319495_))))
                                      (_g1946219492_ _g1946319495_))))
                              (_g1946219492_ _g1946319495_))))
                      (_g1946219492_ _g1946319495_))))
              (_g1946219492_ _g1946319495_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g1946119587_ _L19447_))
                                        (_g1934019418_ _g1934219421_)))
                                  _hd1936319442_
                                  _hd1936019434_)
                                 (_g1934019418_ _g1934219421_))))
                         (_g1934019418_ _g1934219421_))
                     (_g1934019418_ _g1934219421_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1934019418_
                                                      _g1934219421_))))
                                             (_g1934019418_ _g1934219421_))))
                                      (_g1933819709_
                                       (lambda (_g1934219593_)
                                         (if (gx#stx-pair? _g1934219593_)
                                             (let ((_e1934519595_
                                                    (gx#stx-e _g1934219593_)))
                                               (let ((_hd1934619598_
                                                      (##car _e1934519595_))
                                                     (_tl1934719600_
                                                      (##cdr _e1934519595_)))
                                                 (if (gx#stx-pair?
                                                      _hd1934619598_)
                                                     (let ((_e1934819603_
                                                            (gx#stx-e
                                                             _hd1934619598_)))
                                                       (let ((_hd1934919606_
                                                              (##car _e1934819603_))
                                                             (_tl1935019608_
                                                              (##cdr _e1934819603_)))
                                                         (if (gx#stx-null?
                                                              _tl1935019608_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1934719600_)
                         (let ((_e1935119611_ (gx#stx-e _tl1934719600_)))
                           (let ((_hd1935219614_ (##car _e1935119611_))
                                 (_tl1935319616_ (##cdr _e1935119611_)))
                             (if (gx#stx-null? _tl1935319616_)
                                 ((lambda (_L19619_ _L19620_)
                                    (if (if (gx#identifier? _L19620_)
                                            (gxc#case-lambda-expr? _L19619_)
                                            '#f)
                                        (let* ((_g1963519649_
                                                (lambda (_g1963619646_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1963619646_)))
                                               (_g1963419684_
                                                (lambda (_g1963619652_)
                                                  (if (gx#stx-pair?
                                                       _g1963619652_)
                                                      (let ((_e1964219654_
                                                             (gx#stx-e
                                                              _g1963619652_)))
                                                        (let ((_hd1964319657_
                                                               (##car _e1964219654_))
                                                              (_tl1964419659_
                                                               (##cdr _e1964219654_)))
                                                          ((lambda (_L19662_)
                                                             (let ((_g23698_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#lift-case-lambda-clauses__opt-lambda20150
                             _stx19164_
                             _L19620_
                             _L19662_
                             '#t)))
                       (begin
                         (let ((_g23699_ (values-count _g23698_)))
                           (if (not (fx= _g23699_ 3))
                               (error "Context expects 3 values" _g23699_)))
                         (let ((_ids19672_ (values-ref _g23698_ 0))
                               (_impls19673_ (values-ref _g23698_ 1))
                               (_clauses19674_ (values-ref _g23698_ 2)))
                           (let* ((_g23700_
                                   (for-each gx#core-bind-runtime! _ids19672_))
                                  (_xbind19677_
                                   (map _bind-e19166_ _ids19672_ _impls19673_))
                                  (_expr*19679_
                                   (gxc#xform-wrap-source
                                    (cons '%#case-lambda _clauses19674_)
                                    (gx#datum->syntax__0
                                     '#f
                                     'case-lambda-expr)))
                                  (_bind*19681_
                                   (_bind-e__opt-lambda19723__2364123642_
                                    _L19620_
                                    _expr*19679_
                                    '#f)))
                             (begin
                               (gxc#verbose
                                '"lift case-lambda clauses "
                                (gxc#generate-runtime-binding-id _L19620_)
                                '" => "
                                (map gxc#identifier-symbol _ids19672_))
                               (_lp19311_
                                _rest19336_
                                _lift119314_
                                (foldl1 cons _lift219315_ _xbind19677_)
                                (cons _bind*19681_ _bind19316_))))))))
                   _tl1964419659_)))
              (_g1963519649_ _g1963619652_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1963319706_
                                                (lambda (_g1963619687_)
                                                  (if (gx#stx-pair?
                                                       _g1963619687_)
                                                      (let ((_e1963819689_
                                                             (gx#stx-e
                                                              _g1963619687_)))
                                                        (let ((_hd1963919692_
                                                               (##car _e1963819689_))
                                                              (_tl1964019694_
                                                               (##cdr _e1963819689_)))
                                                          ((lambda (_L19697_)
                                                             (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _L19697_)
                         (_lp19311_
                          _rest19336_
                          _lift119314_
                          _lift219315_
                          (cons (_bind-e__opt-lambda19723__2364123642_
                                 _L19620_
                                 _L19619_
                                 '#f)
                                _bind19316_))
                         (_g1963419684_ _g1963619687_)))
                   _tl1964019694_)))
              (_g1963419684_ _g1963619687_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g1963319706_ _L19619_))
                                        (_g1933919590_ _g1934219593_)))
                                  _hd1935219614_
                                  _hd1934919606_)
                                 (_g1933919590_ _g1934219593_))))
                         (_g1933919590_ _g1934219593_))
                     (_g1933919590_ _g1934219593_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1933919590_
                                                      _g1934219593_))))
                                             (_g1933919590_ _g1934219593_)))))
                                 (_g1933819709_ _hd19337_)))))
                       (if (##pair? _rest1931719325_)
                           (let ((_hd1932219715_ (##car _rest1931719325_))
                                 (_tl1932319717_ (##cdr _rest1931719325_)))
                             (let* ((_hd19720_ _hd1932219715_)
                                    (_rest19722_ _tl1932319717_))
                               (_K1932119712_ _rest19722_ _hd19720_)))
                           (_else1931919333_)))))))
        (let* ((_g1917019196_
                (lambda (_g1917119193_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1917119193_)))
               (_g1916919203_
                (lambda (_g1917119199_)
                  ((lambda () (gxc#xform-let-values% _stx19164_)))))
               (_g1916819306_
                (lambda (_g1917119206_)
                  (if (gx#stx-pair? _g1917119206_)
                      (let ((_e1917419208_ (gx#stx-e _g1917119206_)))
                        (let ((_hd1917519211_ (##car _e1917419208_))
                              (_tl1917619213_ (##cdr _e1917419208_)))
                          (if (gx#stx-pair? _tl1917619213_)
                              (let ((_e1917719216_ (gx#stx-e _tl1917619213_)))
                                (let ((_hd1917819219_ (##car _e1917719216_))
                                      (_tl1917919221_ (##cdr _e1917719216_)))
                                  (if (gx#stx-pair/null? _hd1917819219_)
                                      (if (fx>= (gx#stx-length _hd1917819219_)
                                                '0)
                                          (let ((_g23701_
                                                 (gx#syntax-split-splice
                                                  _hd1917819219_
                                                  '0)))
                                            (begin
                                              (let ((_g23702_
                                                     (values-count _g23701_)))
                                                (if (not (fx= _g23702_ 2))
                                                    (error "Context expects 2 values"
                                                           _g23702_)))
                                              (let ((_target1918019224_
                                                     (values-ref _g23701_ 0))
                                                    (_tl1918219226_
                                                     (values-ref _g23701_ 1)))
                                                (if (gx#stx-null?
                                                     _tl1918219226_)
                                                    (letrec ((_loop1918319229_
                                                              (lambda (_hd1918119232_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind1918719234_)
                        (if (gx#stx-pair? _hd1918119232_)
                            (let ((_e1918419237_ (gx#stx-e _hd1918119232_)))
                              (let ((_lp-hd1918519240_ (##car _e1918419237_))
                                    (_lp-tl1918619242_ (##cdr _e1918419237_)))
                                (_loop1918319229_
                                 _lp-tl1918619242_
                                 (cons _lp-hd1918519240_ _bind1918719234_))))
                            (let ((_bind1918819245_
                                   (reverse _bind1918719234_)))
                              (if (gx#stx-pair? _tl1917919221_)
                                  (let ((_e1918919248_
                                         (gx#stx-e _tl1917919221_)))
                                    (let ((_hd1919019251_
                                           (##car _e1918919248_))
                                          (_tl1919119253_
                                           (##cdr _e1918919248_)))
                                      (if (gx#stx-null? _tl1919119253_)
                                          ((lambda (_L19256_ _L19257_)
                                             (if (ormap1 gxc#lift-top-lambda-binding?
                                                         (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g1927719280_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g1927819282_)
                             (cons _g1927719280_ _g1927819282_))
                           '()
                           _L19257_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (call-with-parameters
                                                  (lambda ()
                                                    (let ((_g23703_
                                                           (_compile-bindings19167_
                                                            (begin
                                                              '#!void
                                                              (foldr1 (lambda (_g1928519288_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1928619290_)
                                (cons _g1928519288_ _g1928619290_))
                              '()
                              _L19257_)))))
              (begin
                (let ((_g23704_ (values-count _g23703_)))
                  (if (not (fx= _g23704_ 3))
                      (error "Context expects 3 values" _g23704_)))
                (let ((_lift119293_ (values-ref _g23703_ 0))
                      (_lift219294_ (values-ref _g23703_ 1))
                      (_hd19295_ (values-ref _g23703_ 2)))
                  (let* ((_body19297_ (gxc#compile-e _L19256_))
                         (_expr19299_
                          (gxc#xform-wrap-source
                           (cons '%#let-values
                                 (cons _hd19295_ (cons _body19297_ '())))
                           _stx19164_))
                         (_expr19301_
                          (if (null? _lift219294_)
                              _expr19299_
                              (gxc#xform-wrap-source
                               (cons '%#let-values
                                     (cons _lift219294_
                                           (cons _expr19299_ '())))
                               _stx19164_)))
                         (_expr19303_
                          (if (null? _lift119293_)
                              _expr19301_
                              (gxc#xform-wrap-source
                               (cons '%#let-values
                                     (cons _lift119293_
                                           (cons _expr19301_ '())))
                               _stx19164_))))
                    _expr19303_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  gx#current-expander-context
                                                  (let ((__obj23651
                                                         (make-object
                                                          gx#local-context::t
                                                          '5)))
                                                    (begin
                                                      (gx#local-context:::init!__0
                                                       __obj23651)
                                                      __obj23651)))
                                                 (_g1916919203_
                                                  _g1917119206_)))
                                           _hd1919019251_
                                           _bind1918819245_)
                                          (_g1916919203_ _g1917119206_))))
                                  (_g1916919203_ _g1917119206_)))))))
              (_loop1918319229_ _target1918019224_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1916919203_
                                                     _g1917119206_)))))
                                          (_g1916919203_ _g1917119206_))
                                      (_g1916919203_ _g1917119206_))))
                              (_g1916919203_ _g1917119206_))))
                      (_g1916919203_ _g1917119206_)))))
          (_g1916819306_ _stx19164_)))))
  (define gxc#lift-top-lambda-letrec-values%
    (lambda (_stx18596_)
      (letrec* ((_bind-e__opt-lambda19146__2364623647_
                 (lambda (_id19148_ _expr19149_ _compile?19150_)
                   (cons (cons _id19148_ '())
                         (cons (if _compile?19150_
                                   (gxc#compile-e _expr19149_)
                                   _expr19149_)
                               '()))))
                (_bind-e__0__2364823649_
                 (lambda (_id19155_ _expr19156_)
                   (let ((_compile?19158_ '#t))
                     (_bind-e__opt-lambda19146__2364623647_
                      _id19155_
                      _expr19156_
                      _compile?19158_))))
                (_bind-e18598_
                 (lambda _g23706_
                   (let ((_g23705_ (length _g23706_)))
                     (cond ((fx= _g23705_ 2)
                            (apply _bind-e__0__2364823649_ _g23706_))
                           ((fx= _g23705_ 3)
                            (apply _bind-e__opt-lambda19146__2364623647_
                                   _g23706_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g23706_))))))
                (_compile-bindings18599_
                 (lambda (_rest18734_)
                   (let _lp18736_ ((_rest18738_ _rest18734_) (_bind18739_ '()))
                     (let* ((_rest1874018748_ _rest18738_)
                            (_E1874318752_
                             (lambda ()
                               (error '"No clause matching" _rest1874018748_)))
                            (_else1874218756_
                             (lambda () (reverse _bind18739_)))
                            (_K1874419135_
                             (lambda (_rest18759_ _hd18760_)
                               (let* ((_g1876418800_
                                       (lambda (_g1876518797_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1876518797_)))
                                      (_g1876318841_
                                       (lambda (_g1876518803_)
                                         (if (gx#stx-pair? _g1876518803_)
                                             (let ((_e1879018805_
                                                    (gx#stx-e _g1876518803_)))
                                               (let ((_hd1879118808_
                                                      (##car _e1879018805_))
                                                     (_tl1879218810_
                                                      (##cdr _e1879018805_)))
                                                 (if (gx#stx-pair?
                                                      _tl1879218810_)
                                                     (let ((_e1879318813_
                                                            (gx#stx-e
                                                             _tl1879218810_)))
                                                       (let ((_hd1879418816_
                                                              (##car _e1879318813_))
                                                             (_tl1879518818_
                                                              (##cdr _e1879318813_)))
                                                         (if (gx#stx-null?
                                                              _tl1879518818_)
                                                             ((lambda (_L18821_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L18822_)
                        (_lp18736_
                         _rest18759_
                         (cons (cons _L18822_
                                     (cons (gxc#compile-e _L18821_) '()))
                               _bind18739_)))
                      _hd1879418816_
                      _hd1879118808_)
                     (_g1876418800_ _g1876518803_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1876418800_
                                                      _g1876518803_))))
                                             (_g1876418800_ _g1876518803_))))
                                      (_g1876219013_
                                       (lambda (_g1876518844_)
                                         (if (gx#stx-pair? _g1876518844_)
                                             (let ((_e1877918846_
                                                    (gx#stx-e _g1876518844_)))
                                               (let ((_hd1878018849_
                                                      (##car _e1877918846_))
                                                     (_tl1878118851_
                                                      (##cdr _e1877918846_)))
                                                 (if (gx#stx-pair?
                                                      _hd1878018849_)
                                                     (let ((_e1878218854_
                                                            (gx#stx-e
                                                             _hd1878018849_)))
                                                       (let ((_hd1878318857_
                                                              (##car _e1878218854_))
                                                             (_tl1878418859_
                                                              (##cdr _e1878218854_)))
                                                         (if (gx#stx-null?
                                                              _tl1878418859_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1878118851_)
                         (let ((_e1878518862_ (gx#stx-e _tl1878118851_)))
                           (let ((_hd1878618865_ (##car _e1878518862_))
                                 (_tl1878718867_ (##cdr _e1878518862_)))
                             (if (gx#stx-null? _tl1878718867_)
                                 ((lambda (_L18870_ _L18871_)
                                    (if (if (gx#identifier? _L18871_)
                                            (gxc#opt-lambda-expr? _L18870_)
                                            '#f)
                                        (let* ((_g1888518915_
                                                (lambda (_g1888618912_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1888618912_)))
                                               (_g1888419010_
                                                (lambda (_g1888618918_)
                                                  (if (gx#stx-pair?
                                                       _g1888618918_)
                                                      (let ((_e1889018920_
                                                             (gx#stx-e
                                                              _g1888618918_)))
                                                        (let ((_hd1889118923_
                                                               (##car _e1889018920_))
                                                              (_tl1889218925_
                                                               (##cdr _e1889018920_)))
                                                          (if (gx#stx-pair?
                                                               _tl1889218925_)
                                                              (let ((_e1889318928_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1889218925_)))
                        (let ((_hd1889418931_ (##car _e1889318928_))
                              (_tl1889518933_ (##cdr _e1889318928_)))
                          (if (gx#stx-pair? _hd1889418931_)
                              (let ((_e1889618936_ (gx#stx-e _hd1889418931_)))
                                (let ((_hd1889718939_ (##car _e1889618936_))
                                      (_tl1889818941_ (##cdr _e1889618936_)))
                                  (if (gx#stx-pair? _hd1889718939_)
                                      (let ((_e1889918944_
                                             (gx#stx-e _hd1889718939_)))
                                        (let ((_hd1890018947_
                                               (##car _e1889918944_))
                                              (_tl1890118949_
                                               (##cdr _e1889918944_)))
                                          (if (gx#stx-pair? _hd1890018947_)
                                              (let ((_e1890218952_
                                                     (gx#stx-e
                                                      _hd1890018947_)))
                                                (let ((_hd1890318955_
                                                       (##car _e1890218952_))
                                                      (_tl1890418957_
                                                       (##cdr _e1890218952_)))
                                                  (if (gx#stx-null?
                                                       _tl1890418957_)
                                                      (if (gx#stx-pair?
                                                           _tl1890118949_)
                                                          (let ((_e1890518960_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1890118949_)))
                    (let ((_hd1890618963_ (##car _e1890518960_))
                          (_tl1890718965_ (##cdr _e1890518960_)))
                      (if (gx#stx-null? _tl1890718965_)
                          (if (gx#stx-null? _tl1889818941_)
                              (if (gx#stx-pair? _tl1889518933_)
                                  (let ((_e1890818968_
                                         (gx#stx-e _tl1889518933_)))
                                    (let ((_hd1890918971_
                                           (##car _e1890818968_))
                                          (_tl1891018973_
                                           (##cdr _e1890818968_)))
                                      (if (gx#stx-null? _tl1891018973_)
                                          ((lambda (_L18976_ _L18977_ _L18978_)
                                             (let* ((_lambda-id19002_
                                                     (make-symbol
                                                      (gx#stx-e _L18871_)
                                                      '"__"
                                                      (gx#stx-e _L18978_)
                                                      (gensym '__)))
                                                    (_lambda-id19004_
                                                     (gx#core-quote-syntax__1
                                                      _lambda-id19002_
                                                      (gx#stx-source
                                                       _stx18596_)))
                                                    (_g23707_
                                                     (gx#core-bind-runtime!__0
                                                      _lambda-id19004_))
                                                    (_new-case-lambda-expr19007_
                                                     (gxc#apply-expression-subst
                                                      _L18976_
                                                      _L18978_
                                                      _lambda-id19004_)))
                                               (begin
                                                 (gxc#verbose
                                                  '"lift opt-lambda dispatch "
                                                  (gxc#generate-runtime-binding-id
                                                   _L18871_)
                                                  '" => "
                                                  (gxc#generate-runtime-binding-id
                                                   _lambda-id19004_))
                                                 (_lp18736_
                                                  (cons (_bind-e__opt-lambda19146__2364623647_
                                                         _L18871_
                                                         _new-case-lambda-expr19007_
                                                         '#f)
                                                        _rest18759_)
                                                  (cons (_bind-e__0__2364823649_
                                                         _lambda-id19004_
                                                         _L18977_)
                                                        _bind18739_)))))
                                           _hd1890918971_
                                           _hd1890618963_
                                           _hd1890318955_)
                                          (_g1888518915_ _g1888618918_))))
                                  (_g1888518915_ _g1888618918_))
                              (_g1888518915_ _g1888618918_))
                          (_g1888518915_ _g1888618918_))))
                  (_g1888518915_ _g1888618918_))
              (_g1888518915_ _g1888618918_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1888518915_ _g1888618918_))))
                                      (_g1888518915_ _g1888618918_))))
                              (_g1888518915_ _g1888618918_))))
                      (_g1888518915_ _g1888618918_))))
              (_g1888518915_ _g1888618918_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g1888419010_ _L18870_))
                                        (_g1876318841_ _g1876518844_)))
                                  _hd1878618865_
                                  _hd1878318857_)
                                 (_g1876318841_ _g1876518844_))))
                         (_g1876318841_ _g1876518844_))
                     (_g1876318841_ _g1876518844_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1876318841_
                                                      _g1876518844_))))
                                             (_g1876318841_ _g1876518844_))))
                                      (_g1876119132_
                                       (lambda (_g1876519016_)
                                         (if (gx#stx-pair? _g1876519016_)
                                             (let ((_e1876819018_
                                                    (gx#stx-e _g1876519016_)))
                                               (let ((_hd1876919021_
                                                      (##car _e1876819018_))
                                                     (_tl1877019023_
                                                      (##cdr _e1876819018_)))
                                                 (if (gx#stx-pair?
                                                      _hd1876919021_)
                                                     (let ((_e1877119026_
                                                            (gx#stx-e
                                                             _hd1876919021_)))
                                                       (let ((_hd1877219029_
                                                              (##car _e1877119026_))
                                                             (_tl1877319031_
                                                              (##cdr _e1877119026_)))
                                                         (if (gx#stx-null?
                                                              _tl1877319031_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1877019023_)
                         (let ((_e1877419034_ (gx#stx-e _tl1877019023_)))
                           (let ((_hd1877519037_ (##car _e1877419034_))
                                 (_tl1877619039_ (##cdr _e1877419034_)))
                             (if (gx#stx-null? _tl1877619039_)
                                 ((lambda (_L19042_ _L19043_)
                                    (if (if (gx#identifier? _L19043_)
                                            (gxc#case-lambda-expr? _L19042_)
                                            '#f)
                                        (let* ((_g1905819072_
                                                (lambda (_g1905919069_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1905919069_)))
                                               (_g1905719107_
                                                (lambda (_g1905919075_)
                                                  (if (gx#stx-pair?
                                                       _g1905919075_)
                                                      (let ((_e1906519077_
                                                             (gx#stx-e
                                                              _g1905919075_)))
                                                        (let ((_hd1906619080_
                                                               (##car _e1906519077_))
                                                              (_tl1906719082_
                                                               (##cdr _e1906519077_)))
                                                          ((lambda (_L19085_)
                                                             (let ((_g23708_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#lift-case-lambda-clauses__opt-lambda20150
                             _stx18596_
                             _L19043_
                             _L19085_
                             '#t)))
                       (begin
                         (let ((_g23709_ (values-count _g23708_)))
                           (if (not (fx= _g23709_ 3))
                               (error "Context expects 3 values" _g23709_)))
                         (let ((_ids19095_ (values-ref _g23708_ 0))
                               (_impls19096_ (values-ref _g23708_ 1))
                               (_clauses19097_ (values-ref _g23708_ 2)))
                           (let* ((_g23710_
                                   (for-each gx#core-bind-runtime! _ids19095_))
                                  (_xbind19100_
                                   (map _bind-e18598_ _ids19095_ _impls19096_))
                                  (_expr*19102_
                                   (gxc#xform-wrap-source
                                    (cons '%#case-lambda _clauses19097_)
                                    (gx#datum->syntax__0
                                     '#f
                                     'case-lambda-expr)))
                                  (_bind*19104_
                                   (_bind-e__opt-lambda19146__2364623647_
                                    _L19043_
                                    _expr*19102_
                                    '#f)))
                             (begin
                               (gxc#verbose
                                '"lift case-lambda clauses "
                                (gxc#generate-runtime-binding-id _L19043_)
                                '" => "
                                (map gxc#identifier-symbol _ids19095_))
                               (_lp18736_
                                _rest18759_
                                (cons _bind*19104_
                                      (foldl1 cons
                                              _bind18739_
                                              _xbind19100_)))))))))
                   _tl1906719082_)))
              (_g1905819072_ _g1905919075_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1905619129_
                                                (lambda (_g1905919110_)
                                                  (if (gx#stx-pair?
                                                       _g1905919110_)
                                                      (let ((_e1906119112_
                                                             (gx#stx-e
                                                              _g1905919110_)))
                                                        (let ((_hd1906219115_
                                                               (##car _e1906119112_))
                                                              (_tl1906319117_
                                                               (##cdr _e1906119112_)))
                                                          ((lambda (_L19120_)
                                                             (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _L19120_)
                         (_lp18736_
                          _rest18759_
                          (cons (_bind-e__opt-lambda19146__2364623647_
                                 _L19043_
                                 _L19042_
                                 '#f)
                                _bind18739_))
                         (_g1905719107_ _g1905919110_)))
                   _tl1906319117_)))
              (_g1905719107_ _g1905919110_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g1905619129_ _L19042_))
                                        (_g1876219013_ _g1876519016_)))
                                  _hd1877519037_
                                  _hd1877219029_)
                                 (_g1876219013_ _g1876519016_))))
                         (_g1876219013_ _g1876519016_))
                     (_g1876219013_ _g1876519016_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1876219013_
                                                      _g1876519016_))))
                                             (_g1876219013_ _g1876519016_)))))
                                 (_g1876119132_ _hd18760_)))))
                       (if (##pair? _rest1874018748_)
                           (let ((_hd1874519138_ (##car _rest1874018748_))
                                 (_tl1874619140_ (##cdr _rest1874018748_)))
                             (let* ((_hd19143_ _hd1874519138_)
                                    (_rest19145_ _tl1874619140_))
                               (_K1874419135_ _rest19145_ _hd19143_)))
                           (_else1874218756_)))))))
        (let* ((_g1860218629_
                (lambda (_g1860318626_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1860318626_)))
               (_g1860118636_
                (lambda (_g1860318632_)
                  ((lambda () (gxc#xform-let-values% _stx18596_)))))
               (_g1860018731_
                (lambda (_g1860318639_)
                  (if (gx#stx-pair? _g1860318639_)
                      (let ((_e1860718641_ (gx#stx-e _g1860318639_)))
                        (let ((_hd1860818644_ (##car _e1860718641_))
                              (_tl1860918646_ (##cdr _e1860718641_)))
                          (if (gx#stx-pair? _tl1860918646_)
                              (let ((_e1861018649_ (gx#stx-e _tl1860918646_)))
                                (let ((_hd1861118652_ (##car _e1861018649_))
                                      (_tl1861218654_ (##cdr _e1861018649_)))
                                  (if (gx#stx-pair/null? _hd1861118652_)
                                      (if (fx>= (gx#stx-length _hd1861118652_)
                                                '0)
                                          (let ((_g23711_
                                                 (gx#syntax-split-splice
                                                  _hd1861118652_
                                                  '0)))
                                            (begin
                                              (let ((_g23712_
                                                     (values-count _g23711_)))
                                                (if (not (fx= _g23712_ 2))
                                                    (error "Context expects 2 values"
                                                           _g23712_)))
                                              (let ((_target1861318657_
                                                     (values-ref _g23711_ 0))
                                                    (_tl1861518659_
                                                     (values-ref _g23711_ 1)))
                                                (if (gx#stx-null?
                                                     _tl1861518659_)
                                                    (letrec ((_loop1861618662_
                                                              (lambda (_hd1861418665_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind1862018667_)
                        (if (gx#stx-pair? _hd1861418665_)
                            (let ((_e1861718670_ (gx#stx-e _hd1861418665_)))
                              (let ((_lp-hd1861818673_ (##car _e1861718670_))
                                    (_lp-tl1861918675_ (##cdr _e1861718670_)))
                                (_loop1861618662_
                                 _lp-tl1861918675_
                                 (cons _lp-hd1861818673_ _bind1862018667_))))
                            (let ((_bind1862118678_
                                   (reverse _bind1862018667_)))
                              (if (gx#stx-pair? _tl1861218654_)
                                  (let ((_e1862218681_
                                         (gx#stx-e _tl1861218654_)))
                                    (let ((_hd1862318684_
                                           (##car _e1862218681_))
                                          (_tl1862418686_
                                           (##cdr _e1862218681_)))
                                      (if (gx#stx-null? _tl1862418686_)
                                          ((lambda (_L18689_ _L18690_ _L18691_)
                                             (if (ormap1 gxc#lift-top-lambda-binding?
                                                         (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g1871218715_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g1871318717_)
                             (cons _g1871218715_ _g1871318717_))
                           '()
                           _L18690_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (call-with-parameters
                                                  (lambda ()
                                                    (let ((_hd18728_
                                                           (_compile-bindings18599_
                                                            (begin
                                                              '#!void
                                                              (foldr1 (lambda (_g1872018723_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1872118725_)
                                (cons _g1872018723_ _g1872118725_))
                              '()
                              _L18690_))))
                  (_body18729_ (gxc#compile-e _L18689_)))
              (gxc#xform-wrap-source
               (cons _L18691_ (cons _hd18728_ (cons _body18729_ '())))
               _stx18596_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  gx#current-expander-context
                                                  (let ((__obj23652
                                                         (make-object
                                                          gx#local-context::t
                                                          '5)))
                                                    (begin
                                                      (gx#local-context:::init!__0
                                                       __obj23652)
                                                      __obj23652)))
                                                 (_g1860118636_
                                                  _g1860318639_)))
                                           _hd1862318684_
                                           _bind1862118678_
                                           _hd1860818644_)
                                          (_g1860118636_ _g1860318639_))))
                                  (_g1860118636_ _g1860318639_)))))))
              (_loop1861618662_ _target1861318657_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1860118636_
                                                     _g1860318639_)))))
                                          (_g1860118636_ _g1860318639_))
                                      (_g1860118636_ _g1860318639_))))
                              (_g1860118636_ _g1860318639_))))
                      (_g1860118636_ _g1860318639_)))))
          (_g1860018731_ _stx18596_)))))
  (define gxc#lift-top-lambda-binding?
    (lambda (_bind18517_)
      (let* ((_g1852018537_
              (lambda (_g1852118534_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1852118534_)))
             (_g1851918544_ (lambda (_g1852118540_) ((lambda () '#f))))
             (_g1851818593_
              (lambda (_g1852118547_)
                (if (gx#stx-pair? _g1852118547_)
                    (let ((_e1852418549_ (gx#stx-e _g1852118547_)))
                      (let ((_hd1852518552_ (##car _e1852418549_))
                            (_tl1852618554_ (##cdr _e1852418549_)))
                        (if (gx#stx-pair? _hd1852518552_)
                            (let ((_e1852718557_ (gx#stx-e _hd1852518552_)))
                              (let ((_hd1852818560_ (##car _e1852718557_))
                                    (_tl1852918562_ (##cdr _e1852718557_)))
                                (if (gx#stx-null? _tl1852918562_)
                                    (if (gx#stx-pair? _tl1852618554_)
                                        (let ((_e1853018565_
                                               (gx#stx-e _tl1852618554_)))
                                          (let ((_hd1853118568_
                                                 (##car _e1853018565_))
                                                (_tl1853218570_
                                                 (##cdr _e1853018565_)))
                                            (if (gx#stx-null? _tl1853218570_)
                                                ((lambda (_L18573_ _L18574_)
                                                   (if (gx#identifier?
                                                        _L18574_)
                                                       (let ((_$e18590_
                                                              (gxc#case-lambda-expr?
                                                               _L18573_)))
                                                         (if _$e18590_
                                                             _$e18590_
                                                             (gxc#opt-lambda-expr?
                                                              _L18573_)))
                                                       '#f))
                                                 _hd1853118568_
                                                 _hd1852818560_)
                                                (_g1851918544_
                                                 _g1852118547_))))
                                        (_g1851918544_ _g1852118547_))
                                    (_g1851918544_ _g1852118547_))))
                            (_g1851918544_ _g1852118547_))))
                    (_g1851918544_ _g1852118547_)))))
        (_g1851818593_ _bind18517_))))
  (define gxc#expression-subst-ref%
    (lambda (_stx18455_ _id18456_ _new-id18457_)
      (let* ((_g1846018473_
              (lambda (_g1846118470_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1846118470_)))
             (_g1845918480_ (lambda (_g1846118476_) ((lambda () _stx18455_))))
             (_g1845818514_
              (lambda (_g1846118483_)
                (if (gx#stx-pair? _g1846118483_)
                    (let ((_e1846318485_ (gx#stx-e _g1846118483_)))
                      (let ((_hd1846418488_ (##car _e1846318485_))
                            (_tl1846518490_ (##cdr _e1846318485_)))
                        (if (gx#stx-pair? _tl1846518490_)
                            (let ((_e1846618493_ (gx#stx-e _tl1846518490_)))
                              (let ((_hd1846718496_ (##car _e1846618493_))
                                    (_tl1846818498_ (##cdr _e1846618493_)))
                                (if (gx#stx-null? _tl1846818498_)
                                    ((lambda (_L18501_)
                                       (if (gx#free-identifier=?
                                            _L18501_
                                            _id18456_)
                                           (gxc#xform-wrap-source
                                            (cons '%#ref
                                                  (cons _new-id18457_ '()))
                                            _stx18455_)
                                           (_g1845918480_ _g1846118483_)))
                                     _hd1846718496_)
                                    (_g1845918480_ _g1846118483_))))
                            (_g1845918480_ _g1846118483_))))
                    (_g1845918480_ _g1846118483_)))))
        (_g1845818514_ _stx18455_))))
  (define gxc#collect-type-define-values%
    (lambda (_stx18311_)
      (let* ((_g1831418345_
              (lambda (_g1831518342_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1831518342_)))
             (_g1831318390_
              (lambda (_g1831518348_)
                (if (gx#stx-pair? _g1831518348_)
                    (let ((_e1833218350_ (gx#stx-e _g1831518348_)))
                      (let ((_hd1833318353_ (##car _e1833218350_))
                            (_tl1833418355_ (##cdr _e1833218350_)))
                        (if (gx#stx-pair? _tl1833418355_)
                            (let ((_e1833518358_ (gx#stx-e _tl1833418355_)))
                              (let ((_hd1833618361_ (##car _e1833518358_))
                                    (_tl1833718363_ (##cdr _e1833518358_)))
                                (if (gx#stx-pair? _tl1833718363_)
                                    (let ((_e1833818366_
                                           (gx#stx-e _tl1833718363_)))
                                      (let ((_hd1833918369_
                                             (##car _e1833818366_))
                                            (_tl1834018371_
                                             (##cdr _e1833818366_)))
                                        (if (gx#stx-null? _tl1834018371_)
                                            ((lambda (_L18374_ _L18375_)
                                               (gxc#compile-e _L18374_))
                                             _hd1833918369_
                                             _hd1833618361_)
                                            (_g1831418345_ _g1831518348_))))
                                    (_g1831418345_ _g1831518348_))))
                            (_g1831418345_ _g1831518348_))))
                    (_g1831418345_ _g1831518348_))))
             (_g1831218452_
              (lambda (_g1831518393_)
                (if (gx#stx-pair? _g1831518393_)
                    (let ((_e1831818395_ (gx#stx-e _g1831518393_)))
                      (let ((_hd1831918398_ (##car _e1831818395_))
                            (_tl1832018400_ (##cdr _e1831818395_)))
                        (if (gx#stx-pair? _tl1832018400_)
                            (let ((_e1832118403_ (gx#stx-e _tl1832018400_)))
                              (let ((_hd1832218406_ (##car _e1832118403_))
                                    (_tl1832318408_ (##cdr _e1832118403_)))
                                (if (gx#stx-pair? _hd1832218406_)
                                    (let ((_e1832418411_
                                           (gx#stx-e _hd1832218406_)))
                                      (let ((_hd1832518414_
                                             (##car _e1832418411_))
                                            (_tl1832618416_
                                             (##cdr _e1832418411_)))
                                        (if (gx#stx-null? _tl1832618416_)
                                            (if (gx#stx-pair? _tl1832318408_)
                                                (let ((_e1832718419_
                                                       (gx#stx-e
                                                        _tl1832318408_)))
                                                  (let ((_hd1832818422_
                                                         (##car _e1832718419_))
                                                        (_tl1832918424_
                                                         (##cdr _e1832718419_)))
                                                    (if (gx#stx-null?
                                                         _tl1832918424_)
                                                        ((lambda (_L18427_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L18428_)
                   (if (gx#identifier? _L18428_)
                       (let ((_sym18444_
                              (gxc#generate-runtime-binding-id _L18428_)))
                         (begin
                           (if (table-ref
                                (gxc#current-compile-mutators)
                                _sym18444_
                                '#f)
                               (gxc#verbose
                                '"skipping type declaration for mutable binding "
                                _sym18444_)
                               (let ((_type1844518447_
                                      (gxc#apply-basic-expression-type
                                       _L18427_)))
                                 (if _type1844518447_
                                     (let ((_type18450_ _type1844518447_))
                                       (gxc#optimizer-declare-type!__0
                                        _sym18444_
                                        _type18450_))
                                     '#f)))
                           (gxc#compile-e _L18427_)))
                       (_g1831318390_ _g1831518393_)))
                 _hd1832818422_
                 _hd1832518414_)
                (_g1831318390_ _g1831518393_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1831318390_ _g1831518393_))
                                            (_g1831318390_ _g1831518393_))))
                                    (_g1831318390_ _g1831518393_))))
                            (_g1831318390_ _g1831518393_))))
                    (_g1831318390_ _g1831518393_)))))
        (_g1831218452_ _stx18311_))))
  (define gxc#collect-type-let-values%
    (lambda (_stx18096_)
      (letrec ((_collect-e18098_
                (lambda (_hd18255_ _expr18256_)
                  (let* ((_g1825918269_
                          (lambda (_g1826018266_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1826018266_)))
                         (_g1825818276_
                          (lambda (_g1826018272_) ((lambda () '#!void))))
                         (_g1825718308_
                          (lambda (_g1826018279_)
                            (if (gx#stx-pair? _g1826018279_)
                                (let ((_e1826218281_ (gx#stx-e _g1826018279_)))
                                  (let ((_hd1826318284_ (##car _e1826218281_))
                                        (_tl1826418286_ (##cdr _e1826218281_)))
                                    (if (gx#stx-null? _tl1826418286_)
                                        ((lambda (_L18289_)
                                           (if (gx#identifier? _L18289_)
                                               (let ((_sym18300_
                                                      (gxc#generate-runtime-binding-id
                                                       _L18289_)))
                                                 (if (table-ref
                                                      (gxc#current-compile-mutators)
                                                      _sym18300_
                                                      '#f)
                                                     (gxc#verbose
                                                      '"skipping type declaration for mutable binding "
                                                      _sym18300_)
                                                     (let ((_type1830118303_
                                                            (gxc#apply-basic-expression-type
                                                             _expr18256_)))
                                                       (if _type1830118303_
                                                           (let ((_type18306_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _type1830118303_))
                     (gxc#optimizer-declare-type!__opt-lambda23059
                      _sym18300_
                      _type18306_
                      '#t))
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1825818276_ _g1826018279_)))
                                         _hd1826318284_)
                                        (_g1825818276_ _g1826018279_))))
                                (_g1825818276_ _g1826018279_)))))
                    (_g1825718308_ _hd18255_)))))
        (let* ((_g1810018135_
                (lambda (_g1810118132_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1810118132_)))
               (_g1809918252_
                (lambda (_g1810118138_)
                  (if (gx#stx-pair? _g1810118138_)
                      (let ((_e1810518140_ (gx#stx-e _g1810118138_)))
                        (let ((_hd1810618143_ (##car _e1810518140_))
                              (_tl1810718145_ (##cdr _e1810518140_)))
                          (if (gx#stx-pair? _tl1810718145_)
                              (let ((_e1810818148_ (gx#stx-e _tl1810718145_)))
                                (let ((_hd1810918151_ (##car _e1810818148_))
                                      (_tl1811018153_ (##cdr _e1810818148_)))
                                  (if (gx#stx-pair/null? _hd1810918151_)
                                      (if (fx>= (gx#stx-length _hd1810918151_)
                                                '0)
                                          (let ((_g23713_
                                                 (gx#syntax-split-splice
                                                  _hd1810918151_
                                                  '0)))
                                            (begin
                                              (let ((_g23714_
                                                     (values-count _g23713_)))
                                                (if (not (fx= _g23714_ 2))
                                                    (error "Context expects 2 values"
                                                           _g23714_)))
                                              (let ((_target1811118156_
                                                     (values-ref _g23713_ 0))
                                                    (_tl1811318158_
                                                     (values-ref _g23713_ 1)))
                                                (if (gx#stx-null?
                                                     _tl1811318158_)
                                                    (letrec ((_loop1811418161_
                                                              (lambda (_hd1811218164_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _expr1811818166_
                               _hd1811918168_)
                        (if (gx#stx-pair? _hd1811218164_)
                            (let ((_e1811518171_ (gx#stx-e _hd1811218164_)))
                              (let ((_lp-hd1811618174_ (##car _e1811518171_))
                                    (_lp-tl1811718176_ (##cdr _e1811518171_)))
                                (if (gx#stx-pair? _lp-hd1811618174_)
                                    (let ((_e1812218179_
                                           (gx#stx-e _lp-hd1811618174_)))
                                      (let ((_hd1812318182_
                                             (##car _e1812218179_))
                                            (_tl1812418184_
                                             (##cdr _e1812218179_)))
                                        (if (gx#stx-pair? _tl1812418184_)
                                            (let ((_e1812518187_
                                                   (gx#stx-e _tl1812418184_)))
                                              (let ((_hd1812618190_
                                                     (##car _e1812518187_))
                                                    (_tl1812718192_
                                                     (##cdr _e1812518187_)))
                                                (if (gx#stx-null?
                                                     _tl1812718192_)
                                                    (_loop1811418161_
                                                     _lp-tl1811718176_
                                                     (cons _hd1812618190_
                                                           _expr1811818166_)
                                                     (cons _hd1812318182_
                                                           _hd1811918168_))
                                                    (_g1810018135_
                                                     _g1810118138_))))
                                            (_g1810018135_ _g1810118138_))))
                                    (_g1810018135_ _g1810118138_))))
                            (let ((_expr1812018195_ (reverse _expr1811818166_))
                                  (_hd1812118197_ (reverse _hd1811918168_)))
                              (if (gx#stx-pair? _tl1811018153_)
                                  (let ((_e1812818200_
                                         (gx#stx-e _tl1811018153_)))
                                    (let ((_hd1812918203_
                                           (##car _e1812818200_))
                                          (_tl1813018205_
                                           (##cdr _e1812818200_)))
                                      (if (gx#stx-null? _tl1813018205_)
                                          ((lambda (_L18208_ _L18209_ _L18210_)
                                             (begin
                                               (for-each
                                                _collect-e18098_
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g1823018233_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1823118235_)
                    (cons _g1823018233_ _g1823118235_))
                  '()
                  _L18210_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g1823718240_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1823818242_)
                    (cons _g1823718240_ _g1823818242_))
                  '()
                  _L18209_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (for-each
                                                gxc#compile-e
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g1824418247_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1824518249_)
                    (cons _g1824418247_ _g1824518249_))
                  '()
                  _L18209_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gxc#compile-e _L18208_)))
                                           _hd1812918203_
                                           _expr1812018195_
                                           _hd1812118197_)
                                          (_g1810018135_ _g1810118138_))))
                                  (_g1810018135_ _g1810118138_)))))))
              (_loop1811418161_ _target1811118156_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1810018135_
                                                     _g1810118138_)))))
                                          (_g1810018135_ _g1810118138_))
                                      (_g1810018135_ _g1810118138_))))
                              (_g1810018135_ _g1810118138_))))
                      (_g1810018135_ _g1810118138_)))))
          (_g1809918252_ _stx18096_)))))
  (define gxc#collect-type-call%
    (lambda (_stx17650_)
      (let* ((_g1765417756_
              (lambda (_g1765517753_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1765517753_)))
             (_g1765317763_ (lambda (_g1765517759_) ((lambda () '#!void))))
             (_g1765217913_
              (lambda (_g1765517766_)
                (if (gx#stx-pair? _g1765517766_)
                    (let ((_e1771317768_ (gx#stx-e _g1765517766_)))
                      (let ((_hd1771417771_ (##car _e1771317768_))
                            (_tl1771517773_ (##cdr _e1771317768_)))
                        (if (gx#stx-pair? _tl1771517773_)
                            (let ((_e1771617776_ (gx#stx-e _tl1771517773_)))
                              (let ((_hd1771717779_ (##car _e1771617776_))
                                    (_tl1771817781_ (##cdr _e1771617776_)))
                                (if (gx#stx-pair? _hd1771717779_)
                                    (let ((_e1771917784_
                                           (gx#stx-e _hd1771717779_)))
                                      (let ((_hd1772017787_
                                             (##car _e1771917784_))
                                            (_tl1772117789_
                                             (##cdr _e1771917784_)))
                                        (if (gx#identifier? _hd1772017787_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1772017787_)
                                                (if (gx#stx-pair?
                                                     _tl1772117789_)
                                                    (let ((_e1772217792_
                                                           (gx#stx-e
                                                            _tl1772117789_)))
                                                      (let ((_hd1772317795_
                                                             (##car _e1772217792_))
                                                            (_tl1772417797_
                                                             (##cdr _e1772217792_)))
                                                        (if (gx#stx-null?
                                                             _tl1772417797_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1771817781_)
                        (let ((_e1772517800_ (gx#stx-e _tl1771817781_)))
                          (let ((_hd1772617803_ (##car _e1772517800_))
                                (_tl1772717805_ (##cdr _e1772517800_)))
                            (if (gx#stx-pair? _hd1772617803_)
                                (let ((_e1772817808_
                                       (gx#stx-e _hd1772617803_)))
                                  (let ((_hd1772917811_ (##car _e1772817808_))
                                        (_tl1773017813_ (##cdr _e1772817808_)))
                                    (if (gx#identifier? _hd1772917811_)
                                        (if (gx#stx-eq? '%#ref _hd1772917811_)
                                            (if (gx#stx-pair? _tl1773017813_)
                                                (let ((_e1773117816_
                                                       (gx#stx-e
                                                        _tl1773017813_)))
                                                  (let ((_hd1773217819_
                                                         (##car _e1773117816_))
                                                        (_tl1773317821_
                                                         (##cdr _e1773117816_)))
                                                    (if (gx#stx-null?
                                                         _tl1773317821_)
                                                        (if (gx#stx-pair?
                                                             _tl1772717805_)
                                                            (let ((_e1773417824_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1772717805_)))
                      (let ((_hd1773517827_ (##car _e1773417824_))
                            (_tl1773617829_ (##cdr _e1773417824_)))
                        (if (gx#stx-pair? _hd1773517827_)
                            (let ((_e1773717832_ (gx#stx-e _hd1773517827_)))
                              (let ((_hd1773817835_ (##car _e1773717832_))
                                    (_tl1773917837_ (##cdr _e1773717832_)))
                                (if (gx#identifier? _hd1773817835_)
                                    (if (gx#stx-eq? '%#quote _hd1773817835_)
                                        (if (gx#stx-pair? _tl1773917837_)
                                            (let ((_e1774017840_
                                                   (gx#stx-e _tl1773917837_)))
                                              (let ((_hd1774117843_
                                                     (##car _e1774017840_))
                                                    (_tl1774217845_
                                                     (##cdr _e1774017840_)))
                                                (if (gx#stx-null?
                                                     _tl1774217845_)
                                                    (if (gx#stx-pair?
                                                         _tl1773617829_)
                                                        (let ((_e1774317848_
                                                               (gx#stx-e
                                                                _tl1773617829_)))
                                                          (let ((_hd1774417851_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1774317848_))
                        (_tl1774517853_ (##cdr _e1774317848_)))
                    (if (gx#stx-pair? _hd1774417851_)
                        (let ((_e1774617856_ (gx#stx-e _hd1774417851_)))
                          (let ((_hd1774717859_ (##car _e1774617856_))
                                (_tl1774817861_ (##cdr _e1774617856_)))
                            (if (gx#identifier? _hd1774717859_)
                                (if (gx#stx-eq? '%#ref _hd1774717859_)
                                    (if (gx#stx-pair? _tl1774817861_)
                                        (let ((_e1774917864_
                                               (gx#stx-e _tl1774817861_)))
                                          (let ((_hd1775017867_
                                                 (##car _e1774917864_))
                                                (_tl1775117869_
                                                 (##cdr _e1774917864_)))
                                            (if (gx#stx-null? _tl1775117869_)
                                                (if (gx#stx-null?
                                                     _tl1774517853_)
                                                    ((lambda (_L17872_
                                                              _L17873_
                                                              _L17874_
                                                              _L17875_)
                                                       (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax__0 '#f '-bind-method))
                        'bind-method!)
                   (gxc#optimizer-declare-method!__opt-lambda23035
                    (gxc#generate-runtime-binding-id _L17874_)
                    (gx#stx-e _L17873_)
                    (gxc#generate-runtime-binding-id _L17872_)
                    '#f)
                   (_g1765317763_ _g1765517766_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd1775017867_
                                                     _hd1774117843_
                                                     _hd1773217819_
                                                     _hd1772317795_)
                                                    (_g1765317763_
                                                     _g1765517766_))
                                                (_g1765317763_
                                                 _g1765517766_))))
                                        (_g1765317763_ _g1765517766_))
                                    (_g1765317763_ _g1765517766_))
                                (_g1765317763_ _g1765517766_))))
                        (_g1765317763_ _g1765517766_))))
                (_g1765317763_ _g1765517766_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1765317763_
                                                     _g1765517766_))))
                                            (_g1765317763_ _g1765517766_))
                                        (_g1765317763_ _g1765517766_))
                                    (_g1765317763_ _g1765517766_))))
                            (_g1765317763_ _g1765517766_))))
                    (_g1765317763_ _g1765517766_))
                (_g1765317763_ _g1765517766_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1765317763_ _g1765517766_))
                                            (_g1765317763_ _g1765517766_))
                                        (_g1765317763_ _g1765517766_))))
                                (_g1765317763_ _g1765517766_))))
                        (_g1765317763_ _g1765517766_))
                    (_g1765317763_ _g1765517766_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1765317763_
                                                     _g1765517766_))
                                                (_g1765317763_ _g1765517766_))
                                            (_g1765317763_ _g1765517766_))))
                                    (_g1765317763_ _g1765517766_))))
                            (_g1765317763_ _g1765517766_))))
                    (_g1765317763_ _g1765517766_))))
             (_g1765118093_
              (lambda (_g1765517916_)
                (if (gx#stx-pair? _g1765517916_)
                    (let ((_e1766117918_ (gx#stx-e _g1765517916_)))
                      (let ((_hd1766217921_ (##car _e1766117918_))
                            (_tl1766317923_ (##cdr _e1766117918_)))
                        (if (gx#stx-pair? _tl1766317923_)
                            (let ((_e1766417926_ (gx#stx-e _tl1766317923_)))
                              (let ((_hd1766517929_ (##car _e1766417926_))
                                    (_tl1766617931_ (##cdr _e1766417926_)))
                                (if (gx#stx-pair? _hd1766517929_)
                                    (let ((_e1766717934_
                                           (gx#stx-e _hd1766517929_)))
                                      (let ((_hd1766817937_
                                             (##car _e1766717934_))
                                            (_tl1766917939_
                                             (##cdr _e1766717934_)))
                                        (if (gx#identifier? _hd1766817937_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1766817937_)
                                                (if (gx#stx-pair?
                                                     _tl1766917939_)
                                                    (let ((_e1767017942_
                                                           (gx#stx-e
                                                            _tl1766917939_)))
                                                      (let ((_hd1767117945_
                                                             (##car _e1767017942_))
                                                            (_tl1767217947_
                                                             (##cdr _e1767017942_)))
                                                        (if (gx#stx-null?
                                                             _tl1767217947_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1766617931_)
                        (let ((_e1767317950_ (gx#stx-e _tl1766617931_)))
                          (let ((_hd1767417953_ (##car _e1767317950_))
                                (_tl1767517955_ (##cdr _e1767317950_)))
                            (if (gx#stx-pair? _hd1767417953_)
                                (let ((_e1767617958_
                                       (gx#stx-e _hd1767417953_)))
                                  (let ((_hd1767717961_ (##car _e1767617958_))
                                        (_tl1767817963_ (##cdr _e1767617958_)))
                                    (if (gx#identifier? _hd1767717961_)
                                        (if (gx#stx-eq? '%#ref _hd1767717961_)
                                            (if (gx#stx-pair? _tl1767817963_)
                                                (let ((_e1767917966_
                                                       (gx#stx-e
                                                        _tl1767817963_)))
                                                  (let ((_hd1768017969_
                                                         (##car _e1767917966_))
                                                        (_tl1768117971_
                                                         (##cdr _e1767917966_)))
                                                    (if (gx#stx-null?
                                                         _tl1768117971_)
                                                        (if (gx#stx-pair?
                                                             _tl1767517955_)
                                                            (let ((_e1768217974_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1767517955_)))
                      (let ((_hd1768317977_ (##car _e1768217974_))
                            (_tl1768417979_ (##cdr _e1768217974_)))
                        (if (gx#stx-pair? _hd1768317977_)
                            (let ((_e1768517982_ (gx#stx-e _hd1768317977_)))
                              (let ((_hd1768617985_ (##car _e1768517982_))
                                    (_tl1768717987_ (##cdr _e1768517982_)))
                                (if (gx#identifier? _hd1768617985_)
                                    (if (gx#stx-eq? '%#quote _hd1768617985_)
                                        (if (gx#stx-pair? _tl1768717987_)
                                            (let ((_e1768817990_
                                                   (gx#stx-e _tl1768717987_)))
                                              (let ((_hd1768917993_
                                                     (##car _e1768817990_))
                                                    (_tl1769017995_
                                                     (##cdr _e1768817990_)))
                                                (if (gx#stx-null?
                                                     _tl1769017995_)
                                                    (if (gx#stx-pair?
                                                         _tl1768417979_)
                                                        (let ((_e1769117998_
                                                               (gx#stx-e
                                                                _tl1768417979_)))
                                                          (let ((_hd1769218001_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1769117998_))
                        (_tl1769318003_ (##cdr _e1769117998_)))
                    (if (gx#stx-pair? _hd1769218001_)
                        (let ((_e1769418006_ (gx#stx-e _hd1769218001_)))
                          (let ((_hd1769518009_ (##car _e1769418006_))
                                (_tl1769618011_ (##cdr _e1769418006_)))
                            (if (gx#identifier? _hd1769518009_)
                                (if (gx#stx-eq? '%#ref _hd1769518009_)
                                    (if (gx#stx-pair? _tl1769618011_)
                                        (let ((_e1769718014_
                                               (gx#stx-e _tl1769618011_)))
                                          (let ((_hd1769818017_
                                                 (##car _e1769718014_))
                                                (_tl1769918019_
                                                 (##cdr _e1769718014_)))
                                            (if (gx#stx-null? _tl1769918019_)
                                                (if (gx#stx-pair?
                                                     _tl1769318003_)
                                                    (let ((_e1770018022_
                                                           (gx#stx-e
                                                            _tl1769318003_)))
                                                      (let ((_hd1770118025_
                                                             (##car _e1770018022_))
                                                            (_tl1770218027_
                                                             (##cdr _e1770018022_)))
                                                        (if (gx#stx-pair?
                                                             _hd1770118025_)
                                                            (let ((_e1770318030_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1770118025_)))
                      (let ((_hd1770418033_ (##car _e1770318030_))
                            (_tl1770518035_ (##cdr _e1770318030_)))
                        (if (gx#identifier? _hd1770418033_)
                            (if (gx#stx-eq? '%#quote _hd1770418033_)
                                (if (gx#stx-pair? _tl1770518035_)
                                    (let ((_e1770618038_
                                           (gx#stx-e _tl1770518035_)))
                                      (let ((_hd1770718041_
                                             (##car _e1770618038_))
                                            (_tl1770818043_
                                             (##cdr _e1770618038_)))
                                        (if (gx#stx-null? _tl1770818043_)
                                            (if (gx#stx-null? _tl1770218027_)
                                                ((lambda (_L18046_
                                                          _L18047_
                                                          _L18048_
                                                          _L18049_
                                                          _L18050_)
                                                   (if (eq? (gxc#generate-runtime-binding-id
                                                             _L18050_)
                                                            'bind-method!)
                                                       (gxc#optimizer-declare-method!__opt-lambda23035
                                                        (gxc#generate-runtime-binding-id
                                                         _L18049_)
                                                        (gx#stx-e _L18048_)
                                                        (gxc#generate-runtime-binding-id
                                                         _L18047_)
                                                        (gx#stx-e _L18046_))
                                                       (_g1765217913_
                                                        _g1765517916_)))
                                                 _hd1770718041_
                                                 _hd1769818017_
                                                 _hd1768917993_
                                                 _hd1768017969_
                                                 _hd1767117945_)
                                                (_g1765217913_ _g1765517916_))
                                            (_g1765217913_ _g1765517916_))))
                                    (_g1765217913_ _g1765517916_))
                                (_g1765217913_ _g1765517916_))
                            (_g1765217913_ _g1765517916_))))
                    (_g1765217913_ _g1765517916_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1765217913_
                                                     _g1765517916_))
                                                (_g1765217913_
                                                 _g1765517916_))))
                                        (_g1765217913_ _g1765517916_))
                                    (_g1765217913_ _g1765517916_))
                                (_g1765217913_ _g1765517916_))))
                        (_g1765217913_ _g1765517916_))))
                (_g1765217913_ _g1765517916_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1765217913_
                                                     _g1765517916_))))
                                            (_g1765217913_ _g1765517916_))
                                        (_g1765217913_ _g1765517916_))
                                    (_g1765217913_ _g1765517916_))))
                            (_g1765217913_ _g1765517916_))))
                    (_g1765217913_ _g1765517916_))
                (_g1765217913_ _g1765517916_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1765217913_ _g1765517916_))
                                            (_g1765217913_ _g1765517916_))
                                        (_g1765217913_ _g1765517916_))))
                                (_g1765217913_ _g1765517916_))))
                        (_g1765217913_ _g1765517916_))
                    (_g1765217913_ _g1765517916_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1765217913_
                                                     _g1765517916_))
                                                (_g1765217913_ _g1765517916_))
                                            (_g1765217913_ _g1765517916_))))
                                    (_g1765217913_ _g1765517916_))))
                            (_g1765217913_ _g1765517916_))))
                    (_g1765217913_ _g1765517916_)))))
        (_g1765118093_ _stx17650_))))
  (define gxc#basic-expression-type-begin%
    (lambda (_stx17590_)
      (let* ((_g1759317606_
              (lambda (_g1759417603_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1759417603_)))
             (_g1759217613_ (lambda (_g1759417609_) ((lambda () '#f))))
             (_g1759117647_
              (lambda (_g1759417616_)
                (if (gx#stx-pair? _g1759417616_)
                    (let ((_e1759617618_ (gx#stx-e _g1759417616_)))
                      (let ((_hd1759717621_ (##car _e1759617618_))
                            (_tl1759817623_ (##cdr _e1759617618_)))
                        (if (gx#stx-pair? _tl1759817623_)
                            (let ((_e1759917626_ (gx#stx-e _tl1759817623_)))
                              (let ((_hd1760017629_ (##car _e1759917626_))
                                    (_tl1760117631_ (##cdr _e1759917626_)))
                                (if (gx#stx-null? _tl1760117631_)
                                    ((lambda (_L17634_)
                                       (gxc#compile-e _L17634_))
                                     _hd1760017629_)
                                    (_g1759217613_ _g1759417616_))))
                            (_g1759217613_ _g1759417616_))))
                    (_g1759217613_ _g1759417616_)))))
        (_g1759117647_ _stx17590_))))
  (define gxc#basic-expression-type-begin-annotation%
    (lambda (_stx17523_)
      (let* ((_g1752517542_
              (lambda (_g1752617539_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1752617539_)))
             (_g1752417587_
              (lambda (_g1752617545_)
                (if (gx#stx-pair? _g1752617545_)
                    (let ((_e1752917547_ (gx#stx-e _g1752617545_)))
                      (let ((_hd1753017550_ (##car _e1752917547_))
                            (_tl1753117552_ (##cdr _e1752917547_)))
                        (if (gx#stx-pair? _tl1753117552_)
                            (let ((_e1753217555_ (gx#stx-e _tl1753117552_)))
                              (let ((_hd1753317558_ (##car _e1753217555_))
                                    (_tl1753417560_ (##cdr _e1753217555_)))
                                (if (gx#stx-pair? _tl1753417560_)
                                    (let ((_e1753517563_
                                           (gx#stx-e _tl1753417560_)))
                                      (let ((_hd1753617566_
                                             (##car _e1753517563_))
                                            (_tl1753717568_
                                             (##cdr _e1753517563_)))
                                        (if (gx#stx-null? _tl1753717568_)
                                            ((lambda (_L17571_ _L17572_)
                                               (gxc#compile-e _L17571_))
                                             _hd1753617566_
                                             _hd1753317558_)
                                            (_g1752517542_ _g1752617545_))))
                                    (_g1752517542_ _g1752617545_))))
                            (_g1752517542_ _g1752617545_))))
                    (_g1752517542_ _g1752617545_)))))
        (_g1752417587_ _stx17523_))))
  (define gxc#basic-expression-type-lambda%
    (lambda (_stx16948_)
      (let* ((_g1695317074_
              (lambda (_g1695417071_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1695417071_)))
             (_g1695217081_ (lambda (_g1695417077_) ((lambda () '#f))))
             (_g1695117105_
              (lambda (_g1695417084_)
                (if (gx#stx-pair? _g1695417084_)
                    (let ((_e1706717086_ (gx#stx-e _g1695417084_)))
                      (let ((_hd1706817089_ (##car _e1706717086_))
                            (_tl1706917091_ (##cdr _e1706717086_)))
                        ((lambda (_L17094_)
                           (if (gxc#dispatch-lambda-form? _L17094_)
                               (let ((__obj23653
                                      (make-object gxc#!lambda::t '5)))
                                 (begin
                                   (gxc#!lambda:::init!__0
                                    __obj23653
                                    'lambda
                                    (gxc#lambda-form-arity _L17094_)
                                    (gxc#dispatch-lambda-form-delegate
                                     _L17094_))
                                   __obj23653))
                               (_g1695217081_ _g1695417084_)))
                         _tl1706917091_)))
                    (_g1695217081_ _g1695417084_))))
             (_g1695017335_
              (lambda (_g1695417108_)
                (if (gx#stx-pair? _g1695417108_)
                    (let ((_e1701217110_ (gx#stx-e _g1695417108_)))
                      (let ((_hd1701317113_ (##car _e1701217110_))
                            (_tl1701417115_ (##cdr _e1701217110_)))
                        (if (gx#stx-pair? _tl1701417115_)
                            (let ((_e1701517118_ (gx#stx-e _tl1701417115_)))
                              (let ((_hd1701617121_ (##car _e1701517118_))
                                    (_tl1701717123_ (##cdr _e1701517118_)))
                                (if (gx#stx-pair/null? _hd1701617121_)
                                    (if (fx>= (gx#stx-length _hd1701617121_)
                                              '0)
                                        (let ((_g23715_
                                               (gx#syntax-split-splice
                                                _hd1701617121_
                                                '0)))
                                          (begin
                                            (let ((_g23716_
                                                   (values-count _g23715_)))
                                              (if (not (fx= _g23716_ 2))
                                                  (error "Context expects 2 values"
                                                         _g23716_)))
                                            (let ((_target1701817126_
                                                   (values-ref _g23715_ 0))
                                                  (_tl1702017128_
                                                   (values-ref _g23715_ 1)))
                                              (if (gx#stx-null? _tl1702017128_)
                                                  (letrec ((_loop1702117131_
                                                            (lambda (_hd1701917134_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _arg1702517136_)
                      (if (gx#stx-pair? _hd1701917134_)
                          (let ((_e1702217139_ (gx#stx-e _hd1701917134_)))
                            (let ((_lp-hd1702317142_ (##car _e1702217139_))
                                  (_lp-tl1702417144_ (##cdr _e1702217139_)))
                              (_loop1702117131_
                               _lp-tl1702417144_
                               (cons _lp-hd1702317142_ _arg1702517136_))))
                          (let ((_arg1702617147_ (reverse _arg1702517136_)))
                            (if (gx#stx-pair? _tl1701717123_)
                                (let ((_e1702717150_
                                       (gx#stx-e _tl1701717123_)))
                                  (let ((_hd1702817153_ (##car _e1702717150_))
                                        (_tl1702917155_ (##cdr _e1702717150_)))
                                    (if (gx#stx-pair? _hd1702817153_)
                                        (let ((_e1703017158_
                                               (gx#stx-e _hd1702817153_)))
                                          (let ((_hd1703117161_
                                                 (##car _e1703017158_))
                                                (_tl1703217163_
                                                 (##cdr _e1703017158_)))
                                            (if (gx#identifier? _hd1703117161_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd1703117161_)
                                                    (if (gx#stx-pair?
                                                         _tl1703217163_)
                                                        (let ((_e1703317166_
                                                               (gx#stx-e
                                                                _tl1703217163_)))
                                                          (let ((_hd1703417169_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1703317166_))
                        (_tl1703517171_ (##cdr _e1703317166_)))
                    (if (gx#stx-pair? _hd1703417169_)
                        (let ((_e1703617174_ (gx#stx-e _hd1703417169_)))
                          (let ((_hd1703717177_ (##car _e1703617174_))
                                (_tl1703817179_ (##cdr _e1703617174_)))
                            (if (gx#identifier? _hd1703717177_)
                                (if (gx#stx-eq? '%#ref _hd1703717177_)
                                    (if (gx#stx-pair? _tl1703817179_)
                                        (let ((_e1703917182_
                                               (gx#stx-e _tl1703817179_)))
                                          (let ((_hd1704017185_
                                                 (##car _e1703917182_))
                                                (_tl1704117187_
                                                 (##cdr _e1703917182_)))
                                            (if (gx#stx-null? _tl1704117187_)
                                                (if (gx#stx-pair?
                                                     _tl1703517171_)
                                                    (let ((_e1704217190_
                                                           (gx#stx-e
                                                            _tl1703517171_)))
                                                      (let ((_hd1704317193_
                                                             (##car _e1704217190_))
                                                            (_tl1704417195_
                                                             (##cdr _e1704217190_)))
                                                        (if (gx#stx-pair?
                                                             _hd1704317193_)
                                                            (let ((_e1704517198_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1704317193_)))
                      (let ((_hd1704617201_ (##car _e1704517198_))
                            (_tl1704717203_ (##cdr _e1704517198_)))
                        (if (gx#identifier? _hd1704617201_)
                            (if (gx#stx-eq? '%#ref _hd1704617201_)
                                (if (gx#stx-pair? _tl1704717203_)
                                    (let ((_e1704817206_
                                           (gx#stx-e _tl1704717203_)))
                                      (let ((_hd1704917209_
                                             (##car _e1704817206_))
                                            (_tl1705017211_
                                             (##cdr _e1704817206_)))
                                        (if (gx#stx-null? _tl1705017211_)
                                            (if (gx#stx-pair/null?
                                                 _tl1704417195_)
                                                (if (fx>= (gx#stx-length
                                                           _tl1704417195_)
                                                          '0)
                                                    (let ((_g23717_
                                                           (gx#syntax-split-splice
                                                            _tl1704417195_
                                                            '0)))
                                                      (begin
                                                        (let ((_g23718_
                                                               (values-count
                                                                _g23717_)))
                                                          (if (not (fx= _g23718_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                2))
                      (error "Context expects 2 values" _g23718_)))
                (let ((_target1705117214_ (values-ref _g23717_ 0))
                      (_tl1705317216_ (values-ref _g23717_ 1)))
                  (if (gx#stx-null? _tl1705317216_)
                      (letrec ((_loop1705417219_
                                (lambda (_hd1705217222_ _xarg1705817224_)
                                  (if (gx#stx-pair? _hd1705217222_)
                                      (let ((_e1705517227_
                                             (gx#stx-e _hd1705217222_)))
                                        (let ((_lp-hd1705617230_
                                               (##car _e1705517227_))
                                              (_lp-tl1705717232_
                                               (##cdr _e1705517227_)))
                                          (if (gx#stx-pair? _lp-hd1705617230_)
                                              (let ((_e1706017235_
                                                     (gx#stx-e
                                                      _lp-hd1705617230_)))
                                                (let ((_hd1706117238_
                                                       (##car _e1706017235_))
                                                      (_tl1706217240_
                                                       (##cdr _e1706017235_)))
                                                  (if (gx#identifier?
                                                       _hd1706117238_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd1706117238_)
                                                          (if (gx#stx-pair?
                                                               _tl1706217240_)
                                                              (let ((_e1706317243_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1706217240_)))
                        (let ((_hd1706417246_ (##car _e1706317243_))
                              (_tl1706517248_ (##cdr _e1706317243_)))
                          (if (gx#stx-null? _tl1706517248_)
                              (_loop1705417219_
                               _lp-tl1705717232_
                               (cons _hd1706417246_ _xarg1705817224_))
                              (_g1695117105_ _g1695417108_))))
                      (_g1695117105_ _g1695417108_))
                  (_g1695117105_ _g1695417108_))
              (_g1695117105_ _g1695417108_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1695117105_ _g1695417108_))))
                                      (let ((_xarg1705917251_
                                             (reverse _xarg1705817224_)))
                                        (if (gx#stx-null? _tl1702917155_)
                                            ((lambda (_L17254_
                                                      _L17255_
                                                      _L17256_
                                                      _L17257_)
                                               (if (if (gx#identifier-list?
                                                        (begin
                                                          '#!void
                                                          (foldr1 (lambda (_g1729417297_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g1729517299_)
                            (cons _g1729417297_ _g1729517299_))
                          '()
                          _L17257_)))
               (if (eq? (gxc#generate-runtime-binding-id _L17256_)
                        'make-struct-instance)
                   (if (fx= (length (begin
                                      '#!void
                                      (foldr1 (lambda (_g1730117304_
                                                       _g1730217306_)
                                                (cons _g1730117304_
                                                      _g1730217306_))
                                              '()
                                              _L17257_)))
                            (length (begin
                                      '#!void
                                      (foldr1 (lambda (_g1730817311_
                                                       _g1730917313_)
                                                (cons _g1730817311_
                                                      _g1730917313_))
                                              '()
                                              _L17254_))))
                       (andmap gx#free-identifier=?
                               (begin
                                 '#!void
                                 (foldr1 (lambda (_g1731517318_ _g1731617320_)
                                           (cons _g1731517318_ _g1731617320_))
                                         '()
                                         _L17257_))
                               (begin
                                 '#!void
                                 (foldr1 (lambda (_g1732217325_ _g1732317327_)
                                           (cons _g1732217325_ _g1732317327_))
                                         '()
                                         _L17254_)))
                       '#f)
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_type-t17330_
                                                           (gxc#generate-runtime-binding-id
                                                            _L17255_))
                                                          (_type17332_
                                                           (gxc#optimizer-resolve-type
                                                            _type-t17330_)))
                                                     (if (##structure-instance-of?
                                                          _type17332_
                                                          'gxc#!struct-type::t)
                                                         (##structure
                                                          gxc#!struct-cons::t
                                                          _type-t17330_)
                                                         '#f))
                                                   (_g1695117105_
                                                    _g1695417108_)))
                                             _xarg1705917251_
                                             _hd1704917209_
                                             _hd1704017185_
                                             _arg1702617147_)
                                            (_g1695117105_ _g1695417108_)))))))
                        (_loop1705417219_ _target1705117214_ '()))
                      (_g1695117105_ _g1695417108_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1695117105_
                                                     _g1695417108_))
                                                (_g1695117105_ _g1695417108_))
                                            (_g1695117105_ _g1695417108_))))
                                    (_g1695117105_ _g1695417108_))
                                (_g1695117105_ _g1695417108_))
                            (_g1695117105_ _g1695417108_))))
                    (_g1695117105_ _g1695417108_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1695117105_
                                                     _g1695417108_))
                                                (_g1695117105_
                                                 _g1695417108_))))
                                        (_g1695117105_ _g1695417108_))
                                    (_g1695117105_ _g1695417108_))
                                (_g1695117105_ _g1695417108_))))
                        (_g1695117105_ _g1695417108_))))
                (_g1695117105_ _g1695417108_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1695117105_
                                                     _g1695417108_))
                                                (_g1695117105_
                                                 _g1695417108_))))
                                        (_g1695117105_ _g1695417108_))))
                                (_g1695117105_ _g1695417108_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1702117131_
                                                     _target1701817126_
                                                     '()))
                                                  (_g1695117105_
                                                   _g1695417108_)))))
                                        (_g1695117105_ _g1695417108_))
                                    (_g1695117105_ _g1695417108_))))
                            (_g1695117105_ _g1695417108_))))
                    (_g1695117105_ _g1695417108_))))
             (_g1694917520_
              (lambda (_g1695417338_)
                (if (gx#stx-pair? _g1695417338_)
                    (let ((_e1696017340_ (gx#stx-e _g1695417338_)))
                      (let ((_hd1696117343_ (##car _e1696017340_))
                            (_tl1696217345_ (##cdr _e1696017340_)))
                        (if (gx#stx-pair? _tl1696217345_)
                            (let ((_e1696317348_ (gx#stx-e _tl1696217345_)))
                              (let ((_hd1696417351_ (##car _e1696317348_))
                                    (_tl1696517353_ (##cdr _e1696317348_)))
                                (if (gx#stx-pair? _tl1696517353_)
                                    (let ((_e1696617356_
                                           (gx#stx-e _tl1696517353_)))
                                      (let ((_hd1696717359_
                                             (##car _e1696617356_))
                                            (_tl1696817361_
                                             (##cdr _e1696617356_)))
                                        (if (gx#stx-pair? _hd1696717359_)
                                            (let ((_e1696917364_
                                                   (gx#stx-e _hd1696717359_)))
                                              (let ((_hd1697017367_
                                                     (##car _e1696917364_))
                                                    (_tl1697117369_
                                                     (##cdr _e1696917364_)))
                                                (if (gx#identifier?
                                                     _hd1697017367_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd1697017367_)
                                                        (if (gx#stx-pair?
                                                             _tl1697117369_)
                                                            (let ((_e1697217372_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1697117369_)))
                      (let ((_hd1697317375_ (##car _e1697217372_))
                            (_tl1697417377_ (##cdr _e1697217372_)))
                        (if (gx#stx-pair? _hd1697317375_)
                            (let ((_e1697517380_ (gx#stx-e _hd1697317375_)))
                              (let ((_hd1697617383_ (##car _e1697517380_))
                                    (_tl1697717385_ (##cdr _e1697517380_)))
                                (if (gx#identifier? _hd1697617383_)
                                    (if (gx#stx-eq? '%#ref _hd1697617383_)
                                        (if (gx#stx-pair? _tl1697717385_)
                                            (let ((_e1697817388_
                                                   (gx#stx-e _tl1697717385_)))
                                              (let ((_hd1697917391_
                                                     (##car _e1697817388_))
                                                    (_tl1698017393_
                                                     (##cdr _e1697817388_)))
                                                (if (gx#stx-null?
                                                     _tl1698017393_)
                                                    (if (gx#stx-pair?
                                                         _tl1697417377_)
                                                        (let ((_e1698117396_
                                                               (gx#stx-e
                                                                _tl1697417377_)))
                                                          (let ((_hd1698217399_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1698117396_))
                        (_tl1698317401_ (##cdr _e1698117396_)))
                    (if (gx#stx-pair? _hd1698217399_)
                        (let ((_e1698417404_ (gx#stx-e _hd1698217399_)))
                          (let ((_hd1698517407_ (##car _e1698417404_))
                                (_tl1698617409_ (##cdr _e1698417404_)))
                            (if (gx#identifier? _hd1698517407_)
                                (if (gx#stx-eq? '%#ref _hd1698517407_)
                                    (if (gx#stx-pair? _tl1698617409_)
                                        (let ((_e1698717412_
                                               (gx#stx-e _tl1698617409_)))
                                          (let ((_hd1698817415_
                                                 (##car _e1698717412_))
                                                (_tl1698917417_
                                                 (##cdr _e1698717412_)))
                                            (if (gx#stx-null? _tl1698917417_)
                                                (if (gx#stx-pair?
                                                     _tl1698317401_)
                                                    (let ((_e1699017420_
                                                           (gx#stx-e
                                                            _tl1698317401_)))
                                                      (let ((_hd1699117423_
                                                             (##car _e1699017420_))
                                                            (_tl1699217425_
                                                             (##cdr _e1699017420_)))
                                                        (if (gx#stx-pair?
                                                             _hd1699117423_)
                                                            (let ((_e1699317428_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1699117423_)))
                      (let ((_hd1699417431_ (##car _e1699317428_))
                            (_tl1699517433_ (##cdr _e1699317428_)))
                        (if (gx#identifier? _hd1699417431_)
                            (if (gx#stx-eq? '%#ref _hd1699417431_)
                                (if (gx#stx-pair? _tl1699517433_)
                                    (let ((_e1699617436_
                                           (gx#stx-e _tl1699517433_)))
                                      (let ((_hd1699717439_
                                             (##car _e1699617436_))
                                            (_tl1699817441_
                                             (##cdr _e1699617436_)))
                                        (if (gx#stx-null? _tl1699817441_)
                                            (if (gx#stx-pair? _tl1699217425_)
                                                (let ((_e1699917444_
                                                       (gx#stx-e
                                                        _tl1699217425_)))
                                                  (let ((_hd1700017447_
                                                         (##car _e1699917444_))
                                                        (_tl1700117449_
                                                         (##cdr _e1699917444_)))
                                                    (if (gx#stx-pair?
                                                         _hd1700017447_)
                                                        (let ((_e1700217452_
                                                               (gx#stx-e
                                                                _hd1700017447_)))
                                                          (let ((_hd1700317455_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1700217452_))
                        (_tl1700417457_ (##cdr _e1700217452_)))
                    (if (gx#identifier? _hd1700317455_)
                        (if (gx#stx-eq? '%#ref _hd1700317455_)
                            (if (gx#stx-pair? _tl1700417457_)
                                (let ((_e1700517460_
                                       (gx#stx-e _tl1700417457_)))
                                  (let ((_hd1700617463_ (##car _e1700517460_))
                                        (_tl1700717465_ (##cdr _e1700517460_)))
                                    (if (gx#stx-null? _tl1700717465_)
                                        (if (gx#stx-null? _tl1700117449_)
                                            (if (gx#stx-null? _tl1696817361_)
                                                ((lambda (_L17468_
                                                          _L17469_
                                                          _L17470_
                                                          _L17471_
                                                          _L17472_)
                                                   (if (if (gx#identifier?
                                                            _L17472_)
                                                           (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L17471_)
                            'apply)
                       (if (eq? (gxc#generate-runtime-binding-id _L17470_)
                                'make-struct-instance)
                           (gx#free-identifier=? _L17472_ _L17468_)
                           '#f)
                       '#f)
                   '#f)
               (let* ((_type-t17515_
                       (gxc#generate-runtime-binding-id _L17469_))
                      (_type17517_ (gxc#optimizer-resolve-type _type-t17515_)))
                 (if (##structure-instance-of?
                      _type17517_
                      'gxc#!struct-type::t)
                     (##structure gxc#!struct-cons::t _type-t17515_)
                     '#f))
               (_g1695017335_ _g1695417338_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1700617463_
                                                 _hd1699717439_
                                                 _hd1698817415_
                                                 _hd1697917391_
                                                 _hd1696417351_)
                                                (_g1695017335_ _g1695417338_))
                                            (_g1695017335_ _g1695417338_))
                                        (_g1695017335_ _g1695417338_))))
                                (_g1695017335_ _g1695417338_))
                            (_g1695017335_ _g1695417338_))
                        (_g1695017335_ _g1695417338_))))
                (_g1695017335_ _g1695417338_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1695017335_ _g1695417338_))
                                            (_g1695017335_ _g1695417338_))))
                                    (_g1695017335_ _g1695417338_))
                                (_g1695017335_ _g1695417338_))
                            (_g1695017335_ _g1695417338_))))
                    (_g1695017335_ _g1695417338_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1695017335_
                                                     _g1695417338_))
                                                (_g1695017335_
                                                 _g1695417338_))))
                                        (_g1695017335_ _g1695417338_))
                                    (_g1695017335_ _g1695417338_))
                                (_g1695017335_ _g1695417338_))))
                        (_g1695017335_ _g1695417338_))))
                (_g1695017335_ _g1695417338_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1695017335_
                                                     _g1695417338_))))
                                            (_g1695017335_ _g1695417338_))
                                        (_g1695017335_ _g1695417338_))
                                    (_g1695017335_ _g1695417338_))))
                            (_g1695017335_ _g1695417338_))))
                    (_g1695017335_ _g1695417338_))
                (_g1695017335_ _g1695417338_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1695017335_
                                                     _g1695417338_))))
                                            (_g1695017335_ _g1695417338_))))
                                    (_g1695017335_ _g1695417338_))))
                            (_g1695017335_ _g1695417338_))))
                    (_g1695017335_ _g1695417338_)))))
        (_g1694917520_ _stx16948_))))
  (define gxc#basic-expression-type-case-lambda%
    (lambda (_stx16894_)
      (letrec ((_clause-e16896_
                (lambda (_form16946_)
                  (let ((__obj23654 (make-object gxc#!lambda::t '5)))
                    (begin
                      (gxc#!lambda:::init!__0
                       __obj23654
                       'case-lambda-clause
                       (gxc#lambda-form-arity _form16946_)
                       (gxc#dispatch-lambda-form-delegate _form16946_))
                      __obj23654)))))
        (let* ((_g1689916909_
                (lambda (_g1690016906_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1690016906_)))
               (_g1689816916_ (lambda (_g1690016912_) ((lambda () '#f))))
               (_g1689716943_
                (lambda (_g1690016919_)
                  (if (gx#stx-pair? _g1690016919_)
                      (let ((_e1690216921_ (gx#stx-e _g1690016919_)))
                        (let ((_hd1690316924_ (##car _e1690216921_))
                              (_tl1690416926_ (##cdr _e1690216921_)))
                          ((lambda (_L16929_)
                             (if (andmap1 gxc#dispatch-lambda-form? _L16929_)
                                 (let ((_clauses16941_
                                        (map _clause-e16896_ _L16929_)))
                                   (##structure
                                    gxc#!case-lambda::t
                                    'case-lambda
                                    _clauses16941_))
                                 (_g1689816916_ _g1690016919_)))
                           _tl1690416926_)))
                      (_g1689816916_ _g1690016919_)))))
          (_g1689716943_ _stx16894_)))))
  (define gxc#basic-expression-type-builtin (make-hash-table-eq))
  (define gxc#basic-expression-type-call%
    (lambda (_stx16799_)
      (let* ((_g1680216822_
              (lambda (_g1680316819_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1680316819_)))
             (_g1680116829_ (lambda (_g1680316825_) ((lambda () '#f))))
             (_g1680016891_
              (lambda (_g1680316832_)
                (if (gx#stx-pair? _g1680316832_)
                    (let ((_e1680616834_ (gx#stx-e _g1680316832_)))
                      (let ((_hd1680716837_ (##car _e1680616834_))
                            (_tl1680816839_ (##cdr _e1680616834_)))
                        (if (gx#stx-pair? _tl1680816839_)
                            (let ((_e1680916842_ (gx#stx-e _tl1680816839_)))
                              (let ((_hd1681016845_ (##car _e1680916842_))
                                    (_tl1681116847_ (##cdr _e1680916842_)))
                                (if (gx#stx-pair? _hd1681016845_)
                                    (let ((_e1681216850_
                                           (gx#stx-e _hd1681016845_)))
                                      (let ((_hd1681316853_
                                             (##car _e1681216850_))
                                            (_tl1681416855_
                                             (##cdr _e1681216850_)))
                                        (if (gx#identifier? _hd1681316853_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1681316853_)
                                                (if (gx#stx-pair?
                                                     _tl1681416855_)
                                                    (let ((_e1681516858_
                                                           (gx#stx-e
                                                            _tl1681416855_)))
                                                      (let ((_hd1681616861_
                                                             (##car _e1681516858_))
                                                            (_tl1681716863_
                                                             (##cdr _e1681516858_)))
                                                        (if (gx#stx-null?
                                                             _tl1681716863_)
                                                            ((lambda (_L16866_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L16867_)
                       (let ((_type-e1688416886_
                              (table-ref
                               gxc#basic-expression-type-builtin
                               (gxc#generate-runtime-binding-id _L16867_)
                               '#f)))
                         (if _type-e1688416886_
                             (let ((_type-e16889_ _type-e1688416886_))
                               (_type-e16889_ _stx16799_ _L16866_))
                             '#f)))
                     _tl1681116847_
                     _hd1681616861_)
                    (_g1680116829_ _g1680316832_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1680116829_
                                                     _g1680316832_))
                                                (_g1680116829_ _g1680316832_))
                                            (_g1680116829_ _g1680316832_))))
                                    (_g1680116829_ _g1680316832_))))
                            (_g1680116829_ _g1680316832_))))
                    (_g1680116829_ _g1680316832_)))))
        (_g1680016891_ _stx16799_))))
  (define gxc#basic-expression-type-make-struct-type
    (lambda (_stx16284_ _args16285_)
      (let* ((_g1628916402_
              (lambda (_g1629016399_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1629016399_)))
             (_g1628816409_
              (lambda (_g1629016405_)
                ((lambda ()
                   (begin
                     (gxc#verbose
                      '"make-struct-type: can't infer type "
                      (gx#syntax->datum _stx16284_))
                     '#f)))))
             (_g1628716616_
              (lambda (_g1629016412_)
                (if (gx#stx-pair? _g1629016412_)
                    (let ((_e1635016414_ (gx#stx-e _g1629016412_)))
                      (let ((_hd1635116417_ (##car _e1635016414_))
                            (_tl1635216419_ (##cdr _e1635016414_)))
                        (if (gx#stx-pair? _hd1635116417_)
                            (let ((_e1635316422_ (gx#stx-e _hd1635116417_)))
                              (let ((_hd1635416425_ (##car _e1635316422_))
                                    (_tl1635516427_ (##cdr _e1635316422_)))
                                (if (gx#identifier? _hd1635416425_)
                                    (if (gx#stx-eq? '%#quote _hd1635416425_)
                                        (if (gx#stx-pair? _tl1635516427_)
                                            (let ((_e1635616430_
                                                   (gx#stx-e _tl1635516427_)))
                                              (let ((_hd1635716433_
                                                     (##car _e1635616430_))
                                                    (_tl1635816435_
                                                     (##cdr _e1635616430_)))
                                                (if (gx#stx-null?
                                                     _tl1635816435_)
                                                    (if (gx#stx-pair?
                                                         _tl1635216419_)
                                                        (let ((_e1635916438_
                                                               (gx#stx-e
                                                                _tl1635216419_)))
                                                          (let ((_hd1636016441_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1635916438_))
                        (_tl1636116443_ (##cdr _e1635916438_)))
                    (if (gx#stx-pair? _hd1636016441_)
                        (let ((_e1636216446_ (gx#stx-e _hd1636016441_)))
                          (let ((_hd1636316449_ (##car _e1636216446_))
                                (_tl1636416451_ (##cdr _e1636216446_)))
                            (if (gx#identifier? _hd1636316449_)
                                (if (gx#stx-eq? '%#ref _hd1636316449_)
                                    (if (gx#stx-pair? _tl1636416451_)
                                        (let ((_e1636516454_
                                               (gx#stx-e _tl1636416451_)))
                                          (let ((_hd1636616457_
                                                 (##car _e1636516454_))
                                                (_tl1636716459_
                                                 (##cdr _e1636516454_)))
                                            (if (gx#stx-null? _tl1636716459_)
                                                (if (gx#stx-pair?
                                                     _tl1636116443_)
                                                    (let ((_e1636816462_
                                                           (gx#stx-e
                                                            _tl1636116443_)))
                                                      (let ((_hd1636916465_
                                                             (##car _e1636816462_))
                                                            (_tl1637016467_
                                                             (##cdr _e1636816462_)))
                                                        (if (gx#stx-pair?
                                                             _hd1636916465_)
                                                            (let ((_e1637116470_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1636916465_)))
                      (let ((_hd1637216473_ (##car _e1637116470_))
                            (_tl1637316475_ (##cdr _e1637116470_)))
                        (if (gx#identifier? _hd1637216473_)
                            (if (gx#stx-eq? '%#quote _hd1637216473_)
                                (if (gx#stx-pair? _tl1637316475_)
                                    (let ((_e1637416478_
                                           (gx#stx-e _tl1637316475_)))
                                      (let ((_hd1637516481_
                                             (##car _e1637416478_))
                                            (_tl1637616483_
                                             (##cdr _e1637416478_)))
                                        (if (gx#stx-null? _tl1637616483_)
                                            (if (gx#stx-pair? _tl1637016467_)
                                                (let ((_e1637716486_
                                                       (gx#stx-e
                                                        _tl1637016467_)))
                                                  (let ((_hd1637816489_
                                                         (##car _e1637716486_))
                                                        (_tl1637916491_
                                                         (##cdr _e1637716486_)))
                                                    (if (gx#stx-pair?
                                                         _tl1637916491_)
                                                        (let ((_e1638016494_
                                                               (gx#stx-e
                                                                _tl1637916491_)))
                                                          (let ((_hd1638116497_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1638016494_))
                        (_tl1638216499_ (##cdr _e1638016494_)))
                    (if (gx#stx-pair? _hd1638116497_)
                        (let ((_e1638316502_ (gx#stx-e _hd1638116497_)))
                          (let ((_hd1638416505_ (##car _e1638316502_))
                                (_tl1638516507_ (##cdr _e1638316502_)))
                            (if (gx#identifier? _hd1638416505_)
                                (if (gx#stx-eq? '%#quote _hd1638416505_)
                                    (if (gx#stx-pair? _tl1638516507_)
                                        (let ((_e1638616510_
                                               (gx#stx-e _tl1638516507_)))
                                          (let ((_hd1638716513_
                                                 (##car _e1638616510_))
                                                (_tl1638816515_
                                                 (##cdr _e1638616510_)))
                                            (if (gx#stx-null? _tl1638816515_)
                                                (if (gx#stx-pair?
                                                     _tl1638216499_)
                                                    (let ((_e1638916518_
                                                           (gx#stx-e
                                                            _tl1638216499_)))
                                                      (let ((_hd1639016521_
                                                             (##car _e1638916518_))
                                                            (_tl1639116523_
                                                             (##cdr _e1638916518_)))
                                                        (if (gx#stx-pair?
                                                             _hd1639016521_)
                                                            (let ((_e1639216526_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1639016521_)))
                      (let ((_hd1639316529_ (##car _e1639216526_))
                            (_tl1639416531_ (##cdr _e1639216526_)))
                        (if (gx#identifier? _hd1639316529_)
                            (if (gx#stx-eq? '%#quote _hd1639316529_)
                                (if (gx#stx-pair? _tl1639416531_)
                                    (let ((_e1639516534_
                                           (gx#stx-e _tl1639416531_)))
                                      (let ((_hd1639616537_
                                             (##car _e1639516534_))
                                            (_tl1639716539_
                                             (##cdr _e1639516534_)))
                                        (if (gx#stx-null? _tl1639716539_)
                                            (if (gx#stx-null? _tl1639116523_)
                                                ((lambda (_L16542_
                                                          _L16543_
                                                          _L16544_
                                                          _L16545_
                                                          _L16546_
                                                          _L16547_)
                                                   (let* ((_super-t16593_
                                                           (if (gx#stx-e
                                                                _L16546_)
                                                               (gxc#generate-runtime-binding-id
                                                                _L16546_)
                                                               '#f))
                                                          (_super-type16595_
                                                           (if _super-t16593_
                                                               (gxc#optimizer-resolve-type
                                                                _super-t16593_)
                                                               '#f)))
                                                     (begin
                                                       (if (if _super-type16595_
                                                               (not (##structure-instance-of?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _super-type16595_
                             'gxc#!struct-type::t))
                       '#f)
                   (gxc#raise-compile-error
                    '"Illegal struct-type construction; invalid super type"
                    _stx16284_
                    _L16546_)
                   '#!void)
               (let ((_fields16611_ (gx#stx-e _L16545_))
                     (_xfields16612_
                      (if _super-type16595_
                          (let ((_super-fields1659716600_
                                 (##structure-ref
                                  _super-type16595_
                                  '3
                                  gxc#!struct-type::t
                                  '#f))
                                (_super-xfields1659816602_
                                 (##structure-ref
                                  _super-type16595_
                                  '4
                                  gxc#!struct-type::t
                                  '#f)))
                            (if _super-fields1659716600_
                                (if _super-xfields1659816602_
                                    (let ((_super-fields16605_
                                           _super-fields1659716600_)
                                          (_super-xfields16606_
                                           _super-xfields1659816602_))
                                      (fx+ _super-fields16605_
                                           _super-xfields16606_))
                                    '#f)
                                '#f))
                          '#f))
                     (_plist16613_ (gx#stx-e _L16543_))
                     (_ctor16614_
                      (let ((_$e16608_ (gx#stx-e _L16542_)))
                        (if _$e16608_
                            (values _$e16608_)
                            (if _super-type16595_
                                (##structure-ref
                                 _super-type16595_
                                 '5
                                 gxc#!struct-type::t
                                 '#f)
                                (if _super-t16593_ '#!void '#f))))))
                 (let ((__obj23655 (make-object gxc#!struct-type::t '7)))
                   (begin
                     (gxc#!struct-type:::init!
                      __obj23655
                      (gx#stx-e _L16547_)
                      _super-t16593_
                      _fields16611_
                      _xfields16612_
                      _ctor16614_
                      _plist16613_)
                     __obj23655))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1639616537_
                                                 _hd1638716513_
                                                 _hd1637816489_
                                                 _hd1637516481_
                                                 _hd1636616457_
                                                 _hd1635716433_)
                                                (_g1628816409_ _g1629016412_))
                                            (_g1628816409_ _g1629016412_))))
                                    (_g1628816409_ _g1629016412_))
                                (_g1628816409_ _g1629016412_))
                            (_g1628816409_ _g1629016412_))))
                    (_g1628816409_ _g1629016412_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1628816409_
                                                     _g1629016412_))
                                                (_g1628816409_
                                                 _g1629016412_))))
                                        (_g1628816409_ _g1629016412_))
                                    (_g1628816409_ _g1629016412_))
                                (_g1628816409_ _g1629016412_))))
                        (_g1628816409_ _g1629016412_))))
                (_g1628816409_ _g1629016412_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1628816409_ _g1629016412_))
                                            (_g1628816409_ _g1629016412_))))
                                    (_g1628816409_ _g1629016412_))
                                (_g1628816409_ _g1629016412_))
                            (_g1628816409_ _g1629016412_))))
                    (_g1628816409_ _g1629016412_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1628816409_
                                                     _g1629016412_))
                                                (_g1628816409_
                                                 _g1629016412_))))
                                        (_g1628816409_ _g1629016412_))
                                    (_g1628816409_ _g1629016412_))
                                (_g1628816409_ _g1629016412_))))
                        (_g1628816409_ _g1629016412_))))
                (_g1628816409_ _g1629016412_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1628816409_
                                                     _g1629016412_))))
                                            (_g1628816409_ _g1629016412_))
                                        (_g1628816409_ _g1629016412_))
                                    (_g1628816409_ _g1629016412_))))
                            (_g1628816409_ _g1629016412_))))
                    (_g1628816409_ _g1629016412_))))
             (_g1628616796_
              (lambda (_g1629016619_)
                (if (gx#stx-pair? _g1629016619_)
                    (let ((_e1629616621_ (gx#stx-e _g1629016619_)))
                      (let ((_hd1629716624_ (##car _e1629616621_))
                            (_tl1629816626_ (##cdr _e1629616621_)))
                        (if (gx#stx-pair? _hd1629716624_)
                            (let ((_e1629916629_ (gx#stx-e _hd1629716624_)))
                              (let ((_hd1630016632_ (##car _e1629916629_))
                                    (_tl1630116634_ (##cdr _e1629916629_)))
                                (if (gx#identifier? _hd1630016632_)
                                    (if (gx#stx-eq? '%#quote _hd1630016632_)
                                        (if (gx#stx-pair? _tl1630116634_)
                                            (let ((_e1630216637_
                                                   (gx#stx-e _tl1630116634_)))
                                              (let ((_hd1630316640_
                                                     (##car _e1630216637_))
                                                    (_tl1630416642_
                                                     (##cdr _e1630216637_)))
                                                (if (gx#stx-null?
                                                     _tl1630416642_)
                                                    (if (gx#stx-pair?
                                                         _tl1629816626_)
                                                        (let ((_e1630516645_
                                                               (gx#stx-e
                                                                _tl1629816626_)))
                                                          (let ((_hd1630616648_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1630516645_))
                        (_tl1630716650_ (##cdr _e1630516645_)))
                    (if (gx#stx-pair? _hd1630616648_)
                        (let ((_e1630816653_ (gx#stx-e _hd1630616648_)))
                          (let ((_hd1630916656_ (##car _e1630816653_))
                                (_tl1631016658_ (##cdr _e1630816653_)))
                            (if (gx#identifier? _hd1630916656_)
                                (if (gx#stx-eq? '%#quote _hd1630916656_)
                                    (if (gx#stx-pair? _tl1631016658_)
                                        (let ((_e1631116661_
                                               (gx#stx-e _tl1631016658_)))
                                          (let ((_hd1631216664_
                                                 (##car _e1631116661_))
                                                (_tl1631316666_
                                                 (##cdr _e1631116661_)))
                                            (if (gx#stx-datum? _hd1631216664_)
                                                (if (equal? (gx#stx-e
                                                             _hd1631216664_)
                                                            '#f)
                                                    (if (gx#stx-null?
                                                         _tl1631316666_)
                                                        (if (gx#stx-pair?
                                                             _tl1630716650_)
                                                            (let ((_e1631416669_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1630716650_)))
                      (let ((_hd1631516672_ (##car _e1631416669_))
                            (_tl1631616674_ (##cdr _e1631416669_)))
                        (if (gx#stx-pair? _hd1631516672_)
                            (let ((_e1631716677_ (gx#stx-e _hd1631516672_)))
                              (let ((_hd1631816680_ (##car _e1631716677_))
                                    (_tl1631916682_ (##cdr _e1631716677_)))
                                (if (gx#identifier? _hd1631816680_)
                                    (if (gx#stx-eq? '%#quote _hd1631816680_)
                                        (if (gx#stx-pair? _tl1631916682_)
                                            (let ((_e1632016685_
                                                   (gx#stx-e _tl1631916682_)))
                                              (let ((_hd1632116688_
                                                     (##car _e1632016685_))
                                                    (_tl1632216690_
                                                     (##cdr _e1632016685_)))
                                                (if (gx#stx-null?
                                                     _tl1632216690_)
                                                    (if (gx#stx-pair?
                                                         _tl1631616674_)
                                                        (let ((_e1632316693_
                                                               (gx#stx-e
                                                                _tl1631616674_)))
                                                          (let ((_hd1632416696_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1632316693_))
                        (_tl1632516698_ (##cdr _e1632316693_)))
                    (if (gx#stx-pair? _tl1632516698_)
                        (let ((_e1632616701_ (gx#stx-e _tl1632516698_)))
                          (let ((_hd1632716704_ (##car _e1632616701_))
                                (_tl1632816706_ (##cdr _e1632616701_)))
                            (if (gx#stx-pair? _hd1632716704_)
                                (let ((_e1632916709_
                                       (gx#stx-e _hd1632716704_)))
                                  (let ((_hd1633016712_ (##car _e1632916709_))
                                        (_tl1633116714_ (##cdr _e1632916709_)))
                                    (if (gx#identifier? _hd1633016712_)
                                        (if (gx#stx-eq?
                                             '%#quote
                                             _hd1633016712_)
                                            (if (gx#stx-pair? _tl1633116714_)
                                                (let ((_e1633216717_
                                                       (gx#stx-e
                                                        _tl1633116714_)))
                                                  (let ((_hd1633316720_
                                                         (##car _e1633216717_))
                                                        (_tl1633416722_
                                                         (##cdr _e1633216717_)))
                                                    (if (gx#stx-null?
                                                         _tl1633416722_)
                                                        (if (gx#stx-pair?
                                                             _tl1632816706_)
                                                            (let ((_e1633516725_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1632816706_)))
                      (let ((_hd1633616728_ (##car _e1633516725_))
                            (_tl1633716730_ (##cdr _e1633516725_)))
                        (if (gx#stx-pair? _hd1633616728_)
                            (let ((_e1633816733_ (gx#stx-e _hd1633616728_)))
                              (let ((_hd1633916736_ (##car _e1633816733_))
                                    (_tl1634016738_ (##cdr _e1633816733_)))
                                (if (gx#identifier? _hd1633916736_)
                                    (if (gx#stx-eq? '%#quote _hd1633916736_)
                                        (if (gx#stx-pair? _tl1634016738_)
                                            (let ((_e1634116741_
                                                   (gx#stx-e _tl1634016738_)))
                                              (let ((_hd1634216744_
                                                     (##car _e1634116741_))
                                                    (_tl1634316746_
                                                     (##cdr _e1634116741_)))
                                                (if (gx#stx-null?
                                                     _tl1634316746_)
                                                    (if (gx#stx-null?
                                                         _tl1633716730_)
                                                        ((lambda (_L16749_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L16750_
                          _L16751_
                          _L16752_
                          _L16753_)
                   (let ((__obj23656 (make-object gxc#!struct-type::t '7)))
                     (begin
                       (gxc#!struct-type:::init!
                        __obj23656
                        (gx#stx-e _L16753_)
                        '#f
                        (gx#stx-e _L16752_)
                        '0
                        (gx#stx-e _L16749_)
                        (gx#stx-e _L16750_))
                       __obj23656)))
                 _hd1634216744_
                 _hd1633316720_
                 _hd1632416696_
                 _hd1632116688_
                 _hd1630316640_)
                (_g1628716616_ _g1629016619_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1628716616_
                                                     _g1629016619_))))
                                            (_g1628716616_ _g1629016619_))
                                        (_g1628716616_ _g1629016619_))
                                    (_g1628716616_ _g1629016619_))))
                            (_g1628716616_ _g1629016619_))))
                    (_g1628716616_ _g1629016619_))
                (_g1628716616_ _g1629016619_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1628716616_ _g1629016619_))
                                            (_g1628716616_ _g1629016619_))
                                        (_g1628716616_ _g1629016619_))))
                                (_g1628716616_ _g1629016619_))))
                        (_g1628716616_ _g1629016619_))))
                (_g1628716616_ _g1629016619_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1628716616_
                                                     _g1629016619_))))
                                            (_g1628716616_ _g1629016619_))
                                        (_g1628716616_ _g1629016619_))
                                    (_g1628716616_ _g1629016619_))))
                            (_g1628716616_ _g1629016619_))))
                    (_g1628716616_ _g1629016619_))
                (_g1628716616_ _g1629016619_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1628716616_
                                                     _g1629016619_))
                                                (_g1628716616_
                                                 _g1629016619_))))
                                        (_g1628716616_ _g1629016619_))
                                    (_g1628716616_ _g1629016619_))
                                (_g1628716616_ _g1629016619_))))
                        (_g1628716616_ _g1629016619_))))
                (_g1628716616_ _g1629016619_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1628716616_
                                                     _g1629016619_))))
                                            (_g1628716616_ _g1629016619_))
                                        (_g1628716616_ _g1629016619_))
                                    (_g1628716616_ _g1629016619_))))
                            (_g1628716616_ _g1629016619_))))
                    (_g1628716616_ _g1629016619_)))))
        (_g1628616796_ _args16285_))))
  (define gxc#basic-expression-type-make-struct-predicate
    (lambda (_stx16210_ _args16211_)
      (let* ((_g1621416230_
              (lambda (_g1621516227_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1621516227_)))
             (_g1621316237_ (lambda (_g1621516233_) ((lambda () '#f))))
             (_g1621216281_
              (lambda (_g1621516240_)
                (if (gx#stx-pair? _g1621516240_)
                    (let ((_e1621716242_ (gx#stx-e _g1621516240_)))
                      (let ((_hd1621816245_ (##car _e1621716242_))
                            (_tl1621916247_ (##cdr _e1621716242_)))
                        (if (gx#stx-pair? _hd1621816245_)
                            (let ((_e1622016250_ (gx#stx-e _hd1621816245_)))
                              (let ((_hd1622116253_ (##car _e1622016250_))
                                    (_tl1622216255_ (##cdr _e1622016250_)))
                                (if (gx#identifier? _hd1622116253_)
                                    (if (gx#stx-eq? '%#ref _hd1622116253_)
                                        (if (gx#stx-pair? _tl1622216255_)
                                            (let ((_e1622316258_
                                                   (gx#stx-e _tl1622216255_)))
                                              (let ((_hd1622416261_
                                                     (##car _e1622316258_))
                                                    (_tl1622516263_
                                                     (##cdr _e1622316258_)))
                                                (if (gx#stx-null?
                                                     _tl1622516263_)
                                                    (if (gx#stx-null?
                                                         _tl1621916247_)
                                                        ((lambda (_L16266_)
                                                           (##structure
                                                            gxc#!struct-pred::t
                                                            (gxc#generate-runtime-binding-id
                                                             _L16266_)))
                                                         _hd1622416261_)
                                                        (_g1621316237_
                                                         _g1621516240_))
                                                    (_g1621316237_
                                                     _g1621516240_))))
                                            (_g1621316237_ _g1621516240_))
                                        (_g1621316237_ _g1621516240_))
                                    (_g1621316237_ _g1621516240_))))
                            (_g1621316237_ _g1621516240_))))
                    (_g1621316237_ _g1621516240_)))))
        (_g1621216281_ _args16211_))))
  (begin
    (define gxc#basic-expression-type-make-struct-field-accessor__opt-lambda16079
      (lambda (_stx16081_ _args16082_ _unchecked?16083_)
        (let* ((_g1608616112_
                (lambda (_g1608716109_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1608716109_)))
               (_g1608516119_ (lambda (_g1608716115_) ((lambda () '#f))))
               (_g1608416195_
                (lambda (_g1608716122_)
                  (if (gx#stx-pair? _g1608716122_)
                      (let ((_e1609016124_ (gx#stx-e _g1608716122_)))
                        (let ((_hd1609116127_ (##car _e1609016124_))
                              (_tl1609216129_ (##cdr _e1609016124_)))
                          (if (gx#stx-pair? _hd1609116127_)
                              (let ((_e1609316132_ (gx#stx-e _hd1609116127_)))
                                (let ((_hd1609416135_ (##car _e1609316132_))
                                      (_tl1609516137_ (##cdr _e1609316132_)))
                                  (if (gx#identifier? _hd1609416135_)
                                      (if (gx#stx-eq? '%#ref _hd1609416135_)
                                          (if (gx#stx-pair? _tl1609516137_)
                                              (let ((_e1609616140_
                                                     (gx#stx-e
                                                      _tl1609516137_)))
                                                (let ((_hd1609716143_
                                                       (##car _e1609616140_))
                                                      (_tl1609816145_
                                                       (##cdr _e1609616140_)))
                                                  (if (gx#stx-null?
                                                       _tl1609816145_)
                                                      (if (gx#stx-pair?
                                                           _tl1609216129_)
                                                          (let ((_e1609916148_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1609216129_)))
                    (let ((_hd1610016151_ (##car _e1609916148_))
                          (_tl1610116153_ (##cdr _e1609916148_)))
                      (if (gx#stx-pair? _hd1610016151_)
                          (let ((_e1610216156_ (gx#stx-e _hd1610016151_)))
                            (let ((_hd1610316159_ (##car _e1610216156_))
                                  (_tl1610416161_ (##cdr _e1610216156_)))
                              (if (gx#identifier? _hd1610316159_)
                                  (if (gx#stx-eq? '%#quote _hd1610316159_)
                                      (if (gx#stx-pair? _tl1610416161_)
                                          (let ((_e1610516164_
                                                 (gx#stx-e _tl1610416161_)))
                                            (let ((_hd1610616167_
                                                   (##car _e1610516164_))
                                                  (_tl1610716169_
                                                   (##cdr _e1610516164_)))
                                              (if (gx#stx-null? _tl1610716169_)
                                                  (if (gx#stx-null?
                                                       _tl1610116153_)
                                                      ((lambda (_L16172_
                                                                _L16173_)
                                                         (##structure
                                                          gxc#!struct-getf::t
                                                          (gxc#generate-runtime-binding-id
                                                           _L16173_)
                                                          (gx#stx-e _L16172_)
                                                          _unchecked?16083_))
                                                       _hd1610616167_
                                                       _hd1609716143_)
                                                      (_g1608516119_
                                                       _g1608716122_))
                                                  (_g1608516119_
                                                   _g1608716122_))))
                                          (_g1608516119_ _g1608716122_))
                                      (_g1608516119_ _g1608716122_))
                                  (_g1608516119_ _g1608716122_))))
                          (_g1608516119_ _g1608716122_))))
                  (_g1608516119_ _g1608716122_))
              (_g1608516119_ _g1608716122_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1608516119_ _g1608716122_))
                                          (_g1608516119_ _g1608716122_))
                                      (_g1608516119_ _g1608716122_))))
                              (_g1608516119_ _g1608716122_))))
                      (_g1608516119_ _g1608716122_)))))
          (_g1608416195_ _args16082_))))
    (begin
      (define gxc#basic-expression-type-make-struct-field-accessor__0
        (lambda (_stx16201_ _args16202_)
          (let ((_unchecked?16204_ '#f))
            (gxc#basic-expression-type-make-struct-field-accessor__opt-lambda16079
             _stx16201_
             _args16202_
             _unchecked?16204_))))
      (define gxc#basic-expression-type-make-struct-field-accessor
        (lambda _g23720_
          (let ((_g23719_ (length _g23720_)))
            (cond ((fx= _g23719_ 2)
                   (apply gxc#basic-expression-type-make-struct-field-accessor__0
                          _g23720_))
                  ((fx= _g23719_ 3)
                   (apply gxc#basic-expression-type-make-struct-field-accessor__opt-lambda16079
                          _g23720_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#basic-expression-type-make-struct-field-accessor
                    _g23720_))))))))
  (begin
    (define gxc#basic-expression-type-make-struct-field-mutator__opt-lambda15949
      (lambda (_stx15951_ _args15952_ _unchecked?15953_)
        (let* ((_g1595615982_
                (lambda (_g1595715979_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1595715979_)))
               (_g1595515989_ (lambda (_g1595715985_) ((lambda () '#f))))
               (_g1595416065_
                (lambda (_g1595715992_)
                  (if (gx#stx-pair? _g1595715992_)
                      (let ((_e1596015994_ (gx#stx-e _g1595715992_)))
                        (let ((_hd1596115997_ (##car _e1596015994_))
                              (_tl1596215999_ (##cdr _e1596015994_)))
                          (if (gx#stx-pair? _hd1596115997_)
                              (let ((_e1596316002_ (gx#stx-e _hd1596115997_)))
                                (let ((_hd1596416005_ (##car _e1596316002_))
                                      (_tl1596516007_ (##cdr _e1596316002_)))
                                  (if (gx#identifier? _hd1596416005_)
                                      (if (gx#stx-eq? '%#ref _hd1596416005_)
                                          (if (gx#stx-pair? _tl1596516007_)
                                              (let ((_e1596616010_
                                                     (gx#stx-e
                                                      _tl1596516007_)))
                                                (let ((_hd1596716013_
                                                       (##car _e1596616010_))
                                                      (_tl1596816015_
                                                       (##cdr _e1596616010_)))
                                                  (if (gx#stx-null?
                                                       _tl1596816015_)
                                                      (if (gx#stx-pair?
                                                           _tl1596215999_)
                                                          (let ((_e1596916018_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1596215999_)))
                    (let ((_hd1597016021_ (##car _e1596916018_))
                          (_tl1597116023_ (##cdr _e1596916018_)))
                      (if (gx#stx-pair? _hd1597016021_)
                          (let ((_e1597216026_ (gx#stx-e _hd1597016021_)))
                            (let ((_hd1597316029_ (##car _e1597216026_))
                                  (_tl1597416031_ (##cdr _e1597216026_)))
                              (if (gx#identifier? _hd1597316029_)
                                  (if (gx#stx-eq? '%#quote _hd1597316029_)
                                      (if (gx#stx-pair? _tl1597416031_)
                                          (let ((_e1597516034_
                                                 (gx#stx-e _tl1597416031_)))
                                            (let ((_hd1597616037_
                                                   (##car _e1597516034_))
                                                  (_tl1597716039_
                                                   (##cdr _e1597516034_)))
                                              (if (gx#stx-null? _tl1597716039_)
                                                  (if (gx#stx-null?
                                                       _tl1597116023_)
                                                      ((lambda (_L16042_
                                                                _L16043_)
                                                         (##structure
                                                          gxc#!struct-setf::t
                                                          (gxc#generate-runtime-binding-id
                                                           _L16043_)
                                                          (gx#stx-e _L16042_)
                                                          _unchecked?15953_))
                                                       _hd1597616037_
                                                       _hd1596716013_)
                                                      (_g1595515989_
                                                       _g1595715992_))
                                                  (_g1595515989_
                                                   _g1595715992_))))
                                          (_g1595515989_ _g1595715992_))
                                      (_g1595515989_ _g1595715992_))
                                  (_g1595515989_ _g1595715992_))))
                          (_g1595515989_ _g1595715992_))))
                  (_g1595515989_ _g1595715992_))
              (_g1595515989_ _g1595715992_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1595515989_ _g1595715992_))
                                          (_g1595515989_ _g1595715992_))
                                      (_g1595515989_ _g1595715992_))))
                              (_g1595515989_ _g1595715992_))))
                      (_g1595515989_ _g1595715992_)))))
          (_g1595416065_ _args15952_))))
    (begin
      (define gxc#basic-expression-type-make-struct-field-mutator__0
        (lambda (_stx16071_ _args16072_)
          (let ((_unchecked?16074_ '#f))
            (gxc#basic-expression-type-make-struct-field-mutator__opt-lambda15949
             _stx16071_
             _args16072_
             _unchecked?16074_))))
      (define gxc#basic-expression-type-make-struct-field-mutator
        (lambda _g23722_
          (let ((_g23721_ (length _g23722_)))
            (cond ((fx= _g23721_ 2)
                   (apply gxc#basic-expression-type-make-struct-field-mutator__0
                          _g23722_))
                  ((fx= _g23721_ 3)
                   (apply gxc#basic-expression-type-make-struct-field-mutator__opt-lambda15949
                          _g23722_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#basic-expression-type-make-struct-field-mutator
                    _g23722_))))))))
  (define gxc#basic-expression-type-make-struct-field-unchecked-accessor
    (lambda (_stx15947_ _args15948_)
      (gxc#basic-expression-type-make-struct-field-accessor__opt-lambda16079
       _stx15947_
       _args15948_
       '#t)))
  (define gxc#basic-expression-type-make-struct-field-unchecked-mutator
    (lambda (_stx15944_ _args15945_)
      (gxc#basic-expression-type-make-struct-field-mutator__opt-lambda15949
       _stx15944_
       _args15945_
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
    (lambda (_stx15893_)
      (let* ((_g1589515908_
              (lambda (_g1589615905_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1589615905_)))
             (_g1589415941_
              (lambda (_g1589615911_)
                (if (gx#stx-pair? _g1589615911_)
                    (let ((_e1589815913_ (gx#stx-e _g1589615911_)))
                      (let ((_hd1589915916_ (##car _e1589815913_))
                            (_tl1590015918_ (##cdr _e1589815913_)))
                        (if (gx#stx-pair? _tl1590015918_)
                            (let ((_e1590115921_ (gx#stx-e _tl1590015918_)))
                              (let ((_hd1590215924_ (##car _e1590115921_))
                                    (_tl1590315926_ (##cdr _e1590115921_)))
                                (if (gx#stx-null? _tl1590315926_)
                                    ((lambda (_L15929_)
                                       (gxc#optimizer-lookup-type
                                        (gxc#generate-runtime-binding-id
                                         _L15929_)))
                                     _hd1590215924_)
                                    (_g1589515908_ _g1589615911_))))
                            (_g1589515908_ _g1589615911_))))
                    (_g1589515908_ _g1589615911_)))))
        (_g1589415941_ _stx15893_))))
  (define gxc#optimize-call%
    (lambda (_stx15799_)
      (let* ((_g1580215822_
              (lambda (_g1580315819_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1580315819_)))
             (_g1580115829_
              (lambda (_g1580315825_)
                ((lambda () (gxc#xform-call% _stx15799_)))))
             (_g1580015890_
              (lambda (_g1580315832_)
                (if (gx#stx-pair? _g1580315832_)
                    (let ((_e1580615834_ (gx#stx-e _g1580315832_)))
                      (let ((_hd1580715837_ (##car _e1580615834_))
                            (_tl1580815839_ (##cdr _e1580615834_)))
                        (if (gx#stx-pair? _tl1580815839_)
                            (let ((_e1580915842_ (gx#stx-e _tl1580815839_)))
                              (let ((_hd1581015845_ (##car _e1580915842_))
                                    (_tl1581115847_ (##cdr _e1580915842_)))
                                (if (gx#stx-pair? _hd1581015845_)
                                    (let ((_e1581215850_
                                           (gx#stx-e _hd1581015845_)))
                                      (let ((_hd1581315853_
                                             (##car _e1581215850_))
                                            (_tl1581415855_
                                             (##cdr _e1581215850_)))
                                        (if (gx#identifier? _hd1581315853_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1581315853_)
                                                (if (gx#stx-pair?
                                                     _tl1581415855_)
                                                    (let ((_e1581515858_
                                                           (gx#stx-e
                                                            _tl1581415855_)))
                                                      (let ((_hd1581615861_
                                                             (##car _e1581515858_))
                                                            (_tl1581715863_
                                                             (##cdr _e1581515858_)))
                                                        (if (gx#stx-null?
                                                             _tl1581715863_)
                                                            ((lambda (_L15866_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L15867_)
                       (let* ((_rator-id15885_
                               (gxc#generate-runtime-binding-id _L15867_))
                              (_rator-type15887_
                               (gxc#optimizer-resolve-type _rator-id15885_)))
                         (if (##structure-instance-of?
                              _rator-type15887_
                              'gxc#!procedure::t)
                             (begin
                               (gxc#verbose
                                '"optimize-call "
                                _rator-id15885_
                                '" => "
                                _rator-type15887_
                                '" "
                                (##structure-ref
                                 _rator-type15887_
                                 '1
                                 gxc#!type::t
                                 '#f))
                               (call-method
                                _rator-type15887_
                                'optimize-call
                                _stx15799_
                                _L15866_))
                             (if (not _rator-type15887_)
                                 (gxc#xform-call% _stx15799_)
                                 (gxc#raise-compile-error
                                  '"Illegal application; not a procedure"
                                  _stx15799_
                                  _rator-type15887_)))))
                     _tl1581115847_
                     _hd1581615861_)
                    (_g1580115829_ _g1580315832_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1580115829_
                                                     _g1580315832_))
                                                (_g1580115829_ _g1580315832_))
                                            (_g1580115829_ _g1580315832_))))
                                    (_g1580115829_ _g1580315832_))))
                            (_g1580115829_ _g1580315832_))))
                    (_g1580115829_ _g1580315832_)))))
        (_g1580015890_ _stx15799_))))
  (define gxc#!struct-pred::optimize-call
    (lambda (_self15653_ _stx15654_ _args15655_)
      (let* ((_self1565615662_ _self15653_)
             (_E1565815666_
              (lambda () (error '"No clause matching" _self1565615662_)))
             (_K1565915791_
              (lambda (_struct-t15669_)
                (let* ((_struct-type15671_
                        (gxc#optimizer-resolve-type _struct-t15669_))
                       (_struct-type1567215686_ _struct-type15671_)
                       (_E1567615690_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1567215686_)))
                       (_else1567515694_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx15654_
                           _struct-t15669_
                           _struct-type15671_)))
                       (_try-match1567415702_
                        (lambda ()
                          (let ((_K1567715699_
                                 (lambda () (gxc#xform-call% _stx15654_))))
                            (if (##eq? _struct-type1567215686_ '#f)
                                (_K1567715699_)
                                (_else1567515694_)))))
                       (_K1567815766_
                        (lambda (_plist15705_ _struct-type-id15706_)
                          (let* ((_g1570915719_
                                  (lambda (_g1571015716_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1571015716_)))
                                 (_g1570815726_
                                  (lambda (_g1571015722_)
                                    ((lambda ()
                                       (gxc#raise-compile-error
                                        '"Illegal struct predicate application"
                                        _stx15654_)))))
                                 (_g1570715763_
                                  (lambda (_g1571015729_)
                                    (if (gx#stx-pair? _g1571015729_)
                                        (let ((_e1571215731_
                                               (gx#stx-e _g1571015729_)))
                                          (let ((_hd1571315734_
                                                 (##car _e1571215731_))
                                                (_tl1571415736_
                                                 (##cdr _e1571215731_)))
                                            (if (gx#stx-null? _tl1571415736_)
                                                ((lambda (_L15739_)
                                                   (let ((_expr15760_
                                                          (gxc#compile-e
                                                           _L15739_))
                                                         (_op15761_
                                                          (if (if _plist15705_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (assgetq 'final: _plist15705_)
                          '#f)
                      '%#struct-direct-instance?
                      '%#struct-instance?)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gxc#xform-wrap-source
                                                      (cons _op15761_
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _struct-type-id15706_ '()))
                          (cons _expr15760_ '())))
              _stx15654_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1571315734_)
                                                (_g1570815726_
                                                 _g1571015729_))))
                                        (_g1570815726_ _g1571015729_)))))
                            (_g1570715763_ _args15655_)))))
                  (if (##structure-instance-of?
                       _struct-type1567215686_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1567915769_
                              (##vector-ref _struct-type1567215686_ '1))
                             (_struct-type-id15772_ _e1567915769_)
                             (_e1568015774_
                              (##vector-ref _struct-type1567215686_ '2))
                             (_e1568115777_
                              (##vector-ref _struct-type1567215686_ '3))
                             (_e1568215780_
                              (##vector-ref _struct-type1567215686_ '4))
                             (_e1568315783_
                              (##vector-ref _struct-type1567215686_ '5))
                             (_e1568415786_
                              (##vector-ref _struct-type1567215686_ '6))
                             (_plist15789_ _e1568415786_))
                        (_K1567815766_ _plist15789_ _struct-type-id15772_))
                      (_try-match1567415702_))))))
        (if (##structure-instance-of?
             _self1565615662_
             (##type-id gxc#!struct-pred::t))
            (let* ((_e1566015794_ (##vector-ref _self1565615662_ '1))
                   (_struct-t15797_ _e1566015794_))
              (_K1565915791_ _struct-t15797_))
            (_E1565815666_)))))
  (bind-method!
   gxc#!struct-pred::t
   'optimize-call
   gxc#!struct-pred::optimize-call
   '#f)
  (define gxc#!struct-cons::optimize-call
    (lambda (_self15427_ _stx15428_ _args15429_)
      (let* ((_self1543015436_ _self15427_)
             (_E1543215440_
              (lambda () (error '"No clause matching" _self1543015436_)))
             (_K1543315523_
              (lambda (_struct-t15443_)
                (let* ((_struct-type15445_
                        (gxc#optimizer-resolve-type _struct-t15443_))
                       (_struct-type1544615459_ _struct-type15445_)
                       (_E1545015463_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1544615459_)))
                       (_else1544915467_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct constructor application; not a struct type"
                           _stx15428_
                           _struct-t15443_
                           _struct-type15445_)))
                       (_try-match1544815475_
                        (lambda ()
                          (let ((_K1545115472_
                                 (lambda ()
                                   (begin
                                     (gxc#verbose
                                      '"cannot inline struct constructor; unknown struct type "
                                      _struct-t15443_)
                                     (gxc#xform-call% _stx15428_)))))
                            (if (##eq? _struct-type1544615459_ '#f)
                                (_K1545115472_)
                                (_else1544915467_)))))
                       (_K1545215497_
                        (lambda (_ctor15478_
                                 _xfields15479_
                                 _fields15480_
                                 _type-id15481_)
                          (let* ((_args15483_ (map gxc#compile-e _args15429_))
                                 (_$e15485_
                                  (if _ctor15478_
                                      (if _xfields15479_
                                          (gxc#!struct-type-lookup-method
                                           _struct-type15445_
                                           _ctor15478_)
                                          '#f)
                                      '#f)))
                            (if _$e15485_
                                ((lambda (_kons15488_)
                                   (let ((_$obj15490_
                                          (make-symbol (gensym '__obj))))
                                     (gxc#xform-wrap-source
                                      (cons '%#let-values
                                            (cons (cons (cons (cons _$obj15490_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (cons '%#call
                                  (cons (cons '%#ref (cons 'make-object '()))
                                        (cons (cons '%#ref
                                                    (cons _struct-t15443_ '()))
                                              (cons (cons '%#quote
                                                          (cons (fx+ _fields15480_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _xfields15479_)
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
                                    (cons (cons '%#ref (cons _kons15488_ '()))
                                          (cons (cons '%#ref
                                                      (cons _$obj15490_ '()))
                                                _args15483_)))
                              _stx15428_))
                            (cons (cons '%#ref (cons _$obj15490_ '())) '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _stx15428_)))
                                 _$e15485_)
                                (if (let ((_$e15492_ _ctor15478_))
                                      (if _$e15492_
                                          _$e15492_
                                          (not _xfields15479_)))
                                    (gxc#xform-wrap-source
                                     (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons 'make-struct-instance
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _struct-t15443_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _args15483_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _stx15428_)
                                    (let ((_arity15495_
                                           (fx+ _fields15480_ _xfields15479_)))
                                      (if (fx= _arity15495_
                                               (length _args15483_))
                                          (gxc#xform-wrap-source
                                           (cons '%#call
                                                 (cons (cons '%#ref
                                                             (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons '%#ref (cons _struct-t15443_ '())) _args15483_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _stx15428_)
                                          (gxc#raise-compile-error
                                           '"Illegal struct constructor application; arity mismatch"
                                           _stx15428_
                                           _struct-t15443_
                                           _arity15495_)))))))))
                  (if (##structure-instance-of?
                       _struct-type1544615459_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1545315500_
                              (##vector-ref _struct-type1544615459_ '1))
                             (_type-id15503_ _e1545315500_)
                             (_e1545415505_
                              (##vector-ref _struct-type1544615459_ '2))
                             (_e1545515508_
                              (##vector-ref _struct-type1544615459_ '3))
                             (_fields15511_ _e1545515508_)
                             (_e1545615513_
                              (##vector-ref _struct-type1544615459_ '4))
                             (_xfields15516_ _e1545615513_)
                             (_e1545715518_
                              (##vector-ref _struct-type1544615459_ '5))
                             (_ctor15521_ _e1545715518_))
                        (_K1545215497_
                         _ctor15521_
                         _xfields15516_
                         _fields15511_
                         _type-id15503_))
                      (_try-match1544815475_))))))
        (if (##structure-instance-of?
             _self1543015436_
             (##type-id gxc#!struct-cons::t))
            (let* ((_e1543415526_ (##vector-ref _self1543015436_ '1))
                   (_struct-t15529_ _e1543415526_))
              (_K1543315523_ _struct-t15529_))
            (_E1543215440_)))))
  (bind-method!
   gxc#!struct-cons::t
   'optimize-call
   gxc#!struct-cons::optimize-call
   '#f)
  (define gxc#!struct-getf::optimize-call
    (lambda (_self15138_ _stx15139_ _args15140_)
      (let* ((_self1514115149_ _self15138_)
             (_E1514315153_
              (lambda () (error '"No clause matching" _self1514115149_)))
             (_K1514415287_
              (lambda (_unchecked?15156_ _off15157_ _struct-t15158_)
                (let* ((_struct-type15160_
                        (gxc#optimizer-resolve-type _struct-t15158_))
                       (_struct-type1516115175_ _struct-type15160_)
                       (_E1516515179_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1516115175_)))
                       (_else1516415183_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx15139_
                           _struct-t15158_
                           _struct-type15160_)))
                       (_try-match1516315191_
                        (lambda ()
                          (let ((_K1516615188_
                                 (lambda () (gxc#xform-call% _stx15139_))))
                            (if (##eq? _struct-type1516115175_ '#f)
                                (_K1516615188_)
                                (_else1516415183_)))))
                       (_K1516715258_
                        (lambda (_plist15194_
                                 _xfields15195_
                                 _fields15196_
                                 _struct-type-id15197_)
                          (if _xfields15195_
                              (let* ((_g1520015210_
                                      (lambda (_g1520115207_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g1520115207_)))
                                     (_g1519915217_
                                      (lambda (_g1520115213_)
                                        ((lambda ()
                                           (gxc#raise-compile-error
                                            '"Illegal struct accessor application"
                                            _stx15139_)))))
                                     (_g1519815255_
                                      (lambda (_g1520115220_)
                                        (if (gx#stx-pair? _g1520115220_)
                                            (let ((_e1520315222_
                                                   (gx#stx-e _g1520115220_)))
                                              (let ((_hd1520415225_
                                                     (##car _e1520315222_))
                                                    (_tl1520515227_
                                                     (##cdr _e1520315222_)))
                                                (if (gx#stx-null?
                                                     _tl1520515227_)
                                                    ((lambda (_L15230_)
                                                       (let ((_expr15251_
                                                              (gxc#compile-e
                                                               _L15230_))
                                                             (_off15252_
                                                              (fx+ _off15157_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xfields15195_
                           '1))
                     (_op15253_
                      (if _unchecked?15156_
                          '%#struct-unchecked-ref
                          (if (if _plist15194_
                                  (assgetq 'final: _plist15194_)
                                  '#f)
                              '%#struct-direct-ref
                              '%#struct-ref))))
                 (gxc#xform-wrap-source
                  (cons _op15253_
                        (cons (cons '%#ref (cons _struct-t15158_ '()))
                              (cons (cons '%#quote (cons _off15252_ '()))
                                    (cons _expr15251_ '()))))
                  _stx15139_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd1520415225_)
                                                    (_g1519915217_
                                                     _g1520115220_))))
                                            (_g1519915217_ _g1520115220_)))))
                                (_g1519815255_ _args15140_))
                              (begin
                                (gxc#verbose
                                 '"struct-getf: incomplete struct "
                                 _struct-type-id15197_)
                                (gxc#xform-call% _stx15139_))))))
                  (if (##structure-instance-of?
                       _struct-type1516115175_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1516815261_
                              (##vector-ref _struct-type1516115175_ '1))
                             (_struct-type-id15264_ _e1516815261_)
                             (_e1516915266_
                              (##vector-ref _struct-type1516115175_ '2))
                             (_e1517015269_
                              (##vector-ref _struct-type1516115175_ '3))
                             (_fields15272_ _e1517015269_)
                             (_e1517115274_
                              (##vector-ref _struct-type1516115175_ '4))
                             (_xfields15277_ _e1517115274_)
                             (_e1517215279_
                              (##vector-ref _struct-type1516115175_ '5))
                             (_e1517315282_
                              (##vector-ref _struct-type1516115175_ '6))
                             (_plist15285_ _e1517315282_))
                        (_K1516715258_
                         _plist15285_
                         _xfields15277_
                         _fields15272_
                         _struct-type-id15264_))
                      (_try-match1516315191_))))))
        (if (##structure-instance-of?
             _self1514115149_
             (##type-id gxc#!struct-getf::t))
            (let* ((_e1514515290_ (##vector-ref _self1514115149_ '1))
                   (_struct-t15293_ _e1514515290_)
                   (_e1514615295_ (##vector-ref _self1514115149_ '2))
                   (_off15298_ _e1514615295_)
                   (_e1514715300_ (##vector-ref _self1514115149_ '3))
                   (_unchecked?15303_ _e1514715300_))
              (_K1514415287_ _unchecked?15303_ _off15298_ _struct-t15293_))
            (_E1514315153_)))))
  (bind-method!
   gxc#!struct-getf::t
   'optimize-call
   gxc#!struct-getf::optimize-call
   '#f)
  (define gxc#!struct-setf::optimize-call
    (lambda (_self14832_ _stx14833_ _args14834_)
      (let* ((_self1483514843_ _self14832_)
             (_E1483714847_
              (lambda () (error '"No clause matching" _self1483514843_)))
             (_K1483814998_
              (lambda (_unchecked?14850_ _off14851_ _struct-t14852_)
                (let* ((_struct-type14854_
                        (gxc#optimizer-resolve-type _struct-t14852_))
                       (_struct-type1485514869_ _struct-type14854_)
                       (_E1485914873_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1485514869_)))
                       (_else1485814877_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx14833_
                           _struct-t14852_
                           _struct-type14854_)))
                       (_try-match1485714885_
                        (lambda ()
                          (let ((_K1486014882_
                                 (lambda () (gxc#xform-call% _stx14833_))))
                            (if (##eq? _struct-type1485514869_ '#f)
                                (_K1486014882_)
                                (_else1485814877_)))))
                       (_K1486114969_
                        (lambda (_plist14888_
                                 _xfields14889_
                                 _fields14890_
                                 _struct-type-id14891_)
                          (if _xfields14889_
                              (let* ((_g1489414908_
                                      (lambda (_g1489514905_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g1489514905_)))
                                     (_g1489314915_
                                      (lambda (_g1489514911_)
                                        ((lambda ()
                                           (gxc#raise-compile-error
                                            '"Illegal struct mutator application"
                                            _stx14833_)))))
                                     (_g1489214966_
                                      (lambda (_g1489514918_)
                                        (if (gx#stx-pair? _g1489514918_)
                                            (let ((_e1489814920_
                                                   (gx#stx-e _g1489514918_)))
                                              (let ((_hd1489914923_
                                                     (##car _e1489814920_))
                                                    (_tl1490014925_
                                                     (##cdr _e1489814920_)))
                                                (if (gx#stx-pair?
                                                     _tl1490014925_)
                                                    (let ((_e1490114928_
                                                           (gx#stx-e
                                                            _tl1490014925_)))
                                                      (let ((_hd1490214931_
                                                             (##car _e1490114928_))
                                                            (_tl1490314933_
                                                             (##cdr _e1490114928_)))
                                                        (if (gx#stx-null?
                                                             _tl1490314933_)
                                                            ((lambda (_L14936_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L14937_)
                       (let ((_expr14961_ (gxc#compile-e _L14937_))
                             (_val14962_ (gxc#compile-e _L14936_))
                             (_off14963_ (fx+ _off14851_ _xfields14889_ '1))
                             (_op14964_
                              (if _unchecked?14850_
                                  '%#struct-unchecked-set!
                                  (if (if _plist14888_
                                          (assgetq 'final: _plist14888_)
                                          '#f)
                                      '%#struct-direct-set!
                                      '%#struct-set!))))
                         (gxc#xform-wrap-source
                          (cons _op14964_
                                (cons (cons '%#ref (cons _struct-t14852_ '()))
                                      (cons (cons '%#quote
                                                  (cons _off14963_ '()))
                                            (cons _expr14961_
                                                  (cons _val14962_ '())))))
                          _stx14833_)))
                     _hd1490214931_
                     _hd1489914923_)
                    (_g1489314915_ _g1489514918_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1489314915_
                                                     _g1489514918_))))
                                            (_g1489314915_ _g1489514918_)))))
                                (_g1489214966_ _args14834_))
                              (begin
                                (gxc#verbose
                                 '"struct-setf: incomplete struct "
                                 _struct-type-id14891_)
                                (gxc#xform-call% _stx14833_))))))
                  (if (##structure-instance-of?
                       _struct-type1485514869_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1486214972_
                              (##vector-ref _struct-type1485514869_ '1))
                             (_struct-type-id14975_ _e1486214972_)
                             (_e1486314977_
                              (##vector-ref _struct-type1485514869_ '2))
                             (_e1486414980_
                              (##vector-ref _struct-type1485514869_ '3))
                             (_fields14983_ _e1486414980_)
                             (_e1486514985_
                              (##vector-ref _struct-type1485514869_ '4))
                             (_xfields14988_ _e1486514985_)
                             (_e1486614990_
                              (##vector-ref _struct-type1485514869_ '5))
                             (_e1486714993_
                              (##vector-ref _struct-type1485514869_ '6))
                             (_plist14996_ _e1486714993_))
                        (_K1486114969_
                         _plist14996_
                         _xfields14988_
                         _fields14983_
                         _struct-type-id14975_))
                      (_try-match1485714885_))))))
        (if (##structure-instance-of?
             _self1483514843_
             (##type-id gxc#!struct-setf::t))
            (let* ((_e1483915001_ (##vector-ref _self1483514843_ '1))
                   (_struct-t15004_ _e1483915001_)
                   (_e1484015006_ (##vector-ref _self1483514843_ '2))
                   (_off15009_ _e1484015006_)
                   (_e1484115011_ (##vector-ref _self1483514843_ '3))
                   (_unchecked?15014_ _e1484115011_))
              (_K1483814998_ _unchecked?15014_ _off15009_ _struct-t15004_))
            (_E1483714847_)))))
  (bind-method!
   gxc#!struct-setf::t
   'optimize-call
   gxc#!struct-setf::optimize-call
   '#f)
  (define gxc#!lambda::optimize-call
    (lambda (_self14666_ _stx14667_ _args14668_)
      (let* ((_self1466914678_ _self14666_)
             (_E1467114682_
              (lambda () (error '"No clause matching" _self1466914678_)))
             (_K1467214689_
              (lambda (_inline14685_ _dispatch14686_ _arity14687_)
                (begin
                  (if (gxc#!lambda-arity-match? _self14666_ _args14668_)
                      '#!void
                      (gxc#raise-compile-error
                       '"Illegal lambda application; arity mismatch"
                       _stx14667_
                       _arity14687_))
                  (if _inline14685_
                      (begin
                        (gxc#verbose '"inline lambda")
                        (gxc#compile-e
                         (gxc#xform-wrap-source
                          (_inline14685_ _stx14667_)
                          _stx14667_)))
                      (if _dispatch14686_
                          (begin
                            (gxc#verbose
                             '"dispatch lambda => "
                             _dispatch14686_)
                            (gxc#compile-e
                             (gxc#xform-wrap-source
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons _dispatch14686_ '()))
                                          _args14668_))
                              _stx14667_)))
                          (gxc#xform-call% _stx14667_)))))))
        (if (##structure-instance-of?
             _self1466914678_
             (##type-id gxc#!lambda::t))
            (let* ((_e1467314692_ (##vector-ref _self1466914678_ '1))
                   (_e1467414695_ (##vector-ref _self1466914678_ '2))
                   (_arity14698_ _e1467414695_)
                   (_e1467514700_ (##vector-ref _self1466914678_ '3))
                   (_dispatch14703_ _e1467514700_)
                   (_e1467614705_ (##vector-ref _self1466914678_ '4))
                   (_inline14708_ _e1467614705_))
              (_K1467214689_ _inline14708_ _dispatch14703_ _arity14698_))
            (_E1467114682_)))))
  (bind-method! gxc#!lambda::t 'optimize-call gxc#!lambda::optimize-call '#f)
  (define gxc#!case-lambda::optimize-call
    (lambda (_self14505_ _stx14506_ _args14507_)
      (let* ((_self1450814515_ _self14505_)
             (_E1451014519_
              (lambda () (error '"No clause matching" _self1450814515_)))
             (_K1451114533_
              (lambda (_clauses14522_)
                (let ((_$e14528_
                       (find (lambda (_g1452314525_)
                               (gxc#!lambda-arity-match?
                                _g1452314525_
                                _args14507_))
                             _clauses14522_)))
                  (if _$e14528_
                      ((lambda (_clause14531_)
                         (call-method
                          _clause14531_
                          'optimize-call
                          _stx14506_
                          _args14507_))
                       _$e14528_)
                      (gxc#raise-compile-error
                       '"Illegal case-lambda application; arity mismatch"
                       _stx14506_
                       (map gxc#!lambda-arity _clauses14522_)))))))
        (if (##structure-instance-of?
             _self1450814515_
             (##type-id gxc#!case-lambda::t))
            (let* ((_e1451214536_ (##vector-ref _self1450814515_ '1))
                   (_e1451314539_ (##vector-ref _self1450814515_ '2))
                   (_clauses14542_ _e1451314539_))
              (_K1451114533_ _clauses14542_))
            (_E1451014519_)))))
  (bind-method!
   gxc#!case-lambda::t
   'optimize-call
   gxc#!case-lambda::optimize-call
   '#f)
  (define gxc#!lambda-arity-match?
    (lambda (_self14319_ _args14320_)
      (let* ((_self1432114328_ _self14319_)
             (_E1432314332_
              (lambda () (error '"No clause matching" _self1432114328_)))
             (_K1432414372_
              (lambda (_arity14335_)
                (let* ((_arity1433614345_ _arity14335_)
                       (_E1433914349_
                        (lambda ()
                          (error '"No clause matching" _arity1433614345_)))
                       (_try-match1433814365_
                        (lambda ()
                          (let ((_K1434014355_
                                 (lambda (_arity14353_)
                                   (fx>= (length _args14320_) _arity14353_))))
                            (if (##pair? _arity1433614345_)
                                (let ((_hd1434114358_
                                       (##car _arity1433614345_))
                                      (_tl1434214360_
                                       (##cdr _arity1433614345_)))
                                  (let ((_arity14363_ _hd1434114358_))
                                    (if (##null? _tl1434214360_)
                                        (_K1434014355_ _arity14363_)
                                        (_E1433914349_))))
                                (_E1433914349_)))))
                       (_K1434314369_
                        (lambda () (fx= (length _args14320_) _arity14335_))))
                  (if (fixnum? _arity1433614345_)
                      (_K1434314369_)
                      (_try-match1433814365_))))))
        (if (##structure-instance-of?
             _self1432114328_
             (##type-id gxc#!lambda::t))
            (let* ((_e1432514375_ (##vector-ref _self1432114328_ '1))
                   (_e1432614378_ (##vector-ref _self1432114328_ '2))
                   (_arity14381_ _e1432614378_))
              (_K1432414372_ _arity14381_))
            (_E1432314332_)))))
  (define gxc#generate-ssxi-module%
    (lambda (_stx14259_)
      (let* ((_g1426114275_
              (lambda (_g1426214272_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1426214272_)))
             (_g1426014316_
              (lambda (_g1426214278_)
                (if (gx#stx-pair? _g1426214278_)
                    (let ((_e1426514280_ (gx#stx-e _g1426214278_)))
                      (let ((_hd1426614283_ (##car _e1426514280_))
                            (_tl1426714285_ (##cdr _e1426514280_)))
                        (if (gx#stx-pair? _tl1426714285_)
                            (let ((_e1426814288_ (gx#stx-e _tl1426714285_)))
                              (let ((_hd1426914291_ (##car _e1426814288_))
                                    (_tl1427014293_ (##cdr _e1426814288_)))
                                ((lambda (_L14296_ _L14297_)
                                   (let* ((_ctx14310_
                                           (gx#syntax-local-e__0 _L14297_))
                                          (_code14312_
                                           (##structure-ref
                                            _ctx14310_
                                            '11
                                            gx#module-context::t
                                            '#f)))
                                     (call-with-parameters
                                      (lambda () (gxc#compile-e _code14312_))
                                      gx#current-expander-context
                                      _ctx14310_)))
                                 _tl1427014293_
                                 _hd1426914291_)))
                            (_g1426114275_ _g1426214278_))))
                    (_g1426114275_ _g1426214278_)))))
        (_g1426014316_ _stx14259_))))
  (define gxc#generate-ssxi-define-values%
    (lambda (_stx14069_)
      (letrec ((_generate-e14071_
                (lambda (_id14248_)
                  (let* ((_sym14250_
                          (if (gx#identifier? (gx#datum->syntax__0 '#f 'id))
                              (gxc#generate-runtime-binding-id _id14248_)
                              '#f))
                         (_$e14252_
                          (if _sym14250_
                              (gxc#optimizer-lookup-type _sym14250_)
                              '#f)))
                    (if _$e14252_
                        ((lambda (_type14255_)
                           (begin
                             (gxc#verbose '"generate typedecl " _sym14250_)
                             (let ((_typedecl14257_
                                    (call-method _type14255_ 'typedecl)))
                               (cons 'declare-type
                                     (cons _sym14250_
                                           (cons _typedecl14257_ '()))))))
                         _$e14252_)
                        '(begin))))))
        (let* ((_g1407414112_
                (lambda (_g1407514109_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1407514109_)))
               (_g1407314193_
                (lambda (_g1407514115_)
                  (if (gx#stx-pair? _g1407514115_)
                      (let ((_e1409014117_ (gx#stx-e _g1407514115_)))
                        (let ((_hd1409114120_ (##car _e1409014117_))
                              (_tl1409214122_ (##cdr _e1409014117_)))
                          (if (gx#stx-pair? _tl1409214122_)
                              (let ((_e1409314125_ (gx#stx-e _tl1409214122_)))
                                (let ((_hd1409414128_ (##car _e1409314125_))
                                      (_tl1409514130_ (##cdr _e1409314125_)))
                                  (if (gx#stx-pair/null? _hd1409414128_)
                                      (if (fx>= (gx#stx-length _hd1409414128_)
                                                '0)
                                          (let ((_g23723_
                                                 (gx#syntax-split-splice
                                                  _hd1409414128_
                                                  '0)))
                                            (begin
                                              (let ((_g23724_
                                                     (values-count _g23723_)))
                                                (if (not (fx= _g23724_ 2))
                                                    (error "Context expects 2 values"
                                                           _g23724_)))
                                              (let ((_target1409614133_
                                                     (values-ref _g23723_ 0))
                                                    (_tl1409814135_
                                                     (values-ref _g23723_ 1)))
                                                (if (gx#stx-null?
                                                     _tl1409814135_)
                                                    (letrec ((_loop1409914138_
                                                              (lambda (_hd1409714141_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _id1410314143_)
                        (if (gx#stx-pair? _hd1409714141_)
                            (let ((_e1410014146_ (gx#stx-e _hd1409714141_)))
                              (let ((_lp-hd1410114149_ (##car _e1410014146_))
                                    (_lp-tl1410214151_ (##cdr _e1410014146_)))
                                (_loop1409914138_
                                 _lp-tl1410214151_
                                 (cons _lp-hd1410114149_ _id1410314143_))))
                            (let ((_id1410414154_ (reverse _id1410314143_)))
                              (if (gx#stx-pair? _tl1409514130_)
                                  (let ((_e1410514157_
                                         (gx#stx-e _tl1409514130_)))
                                    (let ((_hd1410614160_
                                           (##car _e1410514157_))
                                          (_tl1410714162_
                                           (##cdr _e1410514157_)))
                                      (if (gx#stx-null? _tl1410714162_)
                                          ((lambda (_L14165_)
                                             (let ((_types14191_
                                                    (map _generate-e14071_
                                                         (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g1418314186_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g1418414188_)
                             (cons _g1418314186_ _g1418414188_))
                           '()
                           _L14165_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons 'begin _types14191_)))
                                           _id1410414154_)
                                          (_g1407414112_ _g1407514115_))))
                                  (_g1407414112_ _g1407514115_)))))))
              (_loop1409914138_ _target1409614133_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1407414112_
                                                     _g1407514115_)))))
                                          (_g1407414112_ _g1407514115_))
                                      (_g1407414112_ _g1407514115_))))
                              (_g1407414112_ _g1407514115_))))
                      (_g1407414112_ _g1407514115_))))
               (_g1407214245_
                (lambda (_g1407514196_)
                  (if (gx#stx-pair? _g1407514196_)
                      (let ((_e1407714198_ (gx#stx-e _g1407514196_)))
                        (let ((_hd1407814201_ (##car _e1407714198_))
                              (_tl1407914203_ (##cdr _e1407714198_)))
                          (if (gx#stx-pair? _tl1407914203_)
                              (let ((_e1408014206_ (gx#stx-e _tl1407914203_)))
                                (let ((_hd1408114209_ (##car _e1408014206_))
                                      (_tl1408214211_ (##cdr _e1408014206_)))
                                  (if (gx#stx-pair? _hd1408114209_)
                                      (let ((_e1408314214_
                                             (gx#stx-e _hd1408114209_)))
                                        (let ((_hd1408414217_
                                               (##car _e1408314214_))
                                              (_tl1408514219_
                                               (##cdr _e1408314214_)))
                                          (if (gx#stx-null? _tl1408514219_)
                                              (if (gx#stx-pair? _tl1408214211_)
                                                  (let ((_e1408614222_
                                                         (gx#stx-e
                                                          _tl1408214211_)))
                                                    (let ((_hd1408714225_
                                                           (##car _e1408614222_))
                                                          (_tl1408814227_
                                                           (##cdr _e1408614222_)))
                                                      (if (gx#stx-null?
                                                           _tl1408814227_)
                                                          ((lambda (_L14230_)
                                                             (_generate-e14071_
                                                              _L14230_))
                                                           _hd1408414217_)
                                                          (_g1407314193_
                                                           _g1407514196_))))
                                                  (_g1407314193_
                                                   _g1407514196_))
                                              (_g1407314193_ _g1407514196_))))
                                      (_g1407314193_ _g1407514196_))))
                              (_g1407314193_ _g1407514196_))))
                      (_g1407314193_ _g1407514196_)))))
          (_g1407214245_ _stx14069_)))))
  (define gxc#generate-ssxi-call%
    (lambda (_stx13623_)
      (let* ((_g1362713729_
              (lambda (_g1362813726_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1362813726_)))
             (_g1362613736_ (lambda (_g1362813732_) ((lambda () '(begin)))))
             (_g1362513886_
              (lambda (_g1362813739_)
                (if (gx#stx-pair? _g1362813739_)
                    (let ((_e1368613741_ (gx#stx-e _g1362813739_)))
                      (let ((_hd1368713744_ (##car _e1368613741_))
                            (_tl1368813746_ (##cdr _e1368613741_)))
                        (if (gx#stx-pair? _tl1368813746_)
                            (let ((_e1368913749_ (gx#stx-e _tl1368813746_)))
                              (let ((_hd1369013752_ (##car _e1368913749_))
                                    (_tl1369113754_ (##cdr _e1368913749_)))
                                (if (gx#stx-pair? _hd1369013752_)
                                    (let ((_e1369213757_
                                           (gx#stx-e _hd1369013752_)))
                                      (let ((_hd1369313760_
                                             (##car _e1369213757_))
                                            (_tl1369413762_
                                             (##cdr _e1369213757_)))
                                        (if (gx#identifier? _hd1369313760_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1369313760_)
                                                (if (gx#stx-pair?
                                                     _tl1369413762_)
                                                    (let ((_e1369513765_
                                                           (gx#stx-e
                                                            _tl1369413762_)))
                                                      (let ((_hd1369613768_
                                                             (##car _e1369513765_))
                                                            (_tl1369713770_
                                                             (##cdr _e1369513765_)))
                                                        (if (gx#stx-null?
                                                             _tl1369713770_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1369113754_)
                        (let ((_e1369813773_ (gx#stx-e _tl1369113754_)))
                          (let ((_hd1369913776_ (##car _e1369813773_))
                                (_tl1370013778_ (##cdr _e1369813773_)))
                            (if (gx#stx-pair? _hd1369913776_)
                                (let ((_e1370113781_
                                       (gx#stx-e _hd1369913776_)))
                                  (let ((_hd1370213784_ (##car _e1370113781_))
                                        (_tl1370313786_ (##cdr _e1370113781_)))
                                    (if (gx#identifier? _hd1370213784_)
                                        (if (gx#stx-eq? '%#ref _hd1370213784_)
                                            (if (gx#stx-pair? _tl1370313786_)
                                                (let ((_e1370413789_
                                                       (gx#stx-e
                                                        _tl1370313786_)))
                                                  (let ((_hd1370513792_
                                                         (##car _e1370413789_))
                                                        (_tl1370613794_
                                                         (##cdr _e1370413789_)))
                                                    (if (gx#stx-null?
                                                         _tl1370613794_)
                                                        (if (gx#stx-pair?
                                                             _tl1370013778_)
                                                            (let ((_e1370713797_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1370013778_)))
                      (let ((_hd1370813800_ (##car _e1370713797_))
                            (_tl1370913802_ (##cdr _e1370713797_)))
                        (if (gx#stx-pair? _hd1370813800_)
                            (let ((_e1371013805_ (gx#stx-e _hd1370813800_)))
                              (let ((_hd1371113808_ (##car _e1371013805_))
                                    (_tl1371213810_ (##cdr _e1371013805_)))
                                (if (gx#identifier? _hd1371113808_)
                                    (if (gx#stx-eq? '%#quote _hd1371113808_)
                                        (if (gx#stx-pair? _tl1371213810_)
                                            (let ((_e1371313813_
                                                   (gx#stx-e _tl1371213810_)))
                                              (let ((_hd1371413816_
                                                     (##car _e1371313813_))
                                                    (_tl1371513818_
                                                     (##cdr _e1371313813_)))
                                                (if (gx#stx-null?
                                                     _tl1371513818_)
                                                    (if (gx#stx-pair?
                                                         _tl1370913802_)
                                                        (let ((_e1371613821_
                                                               (gx#stx-e
                                                                _tl1370913802_)))
                                                          (let ((_hd1371713824_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1371613821_))
                        (_tl1371813826_ (##cdr _e1371613821_)))
                    (if (gx#stx-pair? _hd1371713824_)
                        (let ((_e1371913829_ (gx#stx-e _hd1371713824_)))
                          (let ((_hd1372013832_ (##car _e1371913829_))
                                (_tl1372113834_ (##cdr _e1371913829_)))
                            (if (gx#identifier? _hd1372013832_)
                                (if (gx#stx-eq? '%#ref _hd1372013832_)
                                    (if (gx#stx-pair? _tl1372113834_)
                                        (let ((_e1372213837_
                                               (gx#stx-e _tl1372113834_)))
                                          (let ((_hd1372313840_
                                                 (##car _e1372213837_))
                                                (_tl1372413842_
                                                 (##cdr _e1372213837_)))
                                            (if (gx#stx-null? _tl1372413842_)
                                                (if (gx#stx-null?
                                                     _tl1371813826_)
                                                    ((lambda (_L13845_
                                                              _L13846_
                                                              _L13847_
                                                              _L13848_)
                                                       (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax__0 '#f '-bind-method))
                        'bind-method!)
                   (cons 'declare-method
                         (cons (gxc#generate-runtime-binding-id _L13847_)
                               (cons (gx#stx-e _L13846_)
                                     (cons (gxc#generate-runtime-binding-id
                                            _L13845_)
                                           (cons '#f '())))))
                   (_g1362613736_ _g1362813739_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd1372313840_
                                                     _hd1371413816_
                                                     _hd1370513792_
                                                     _hd1369613768_)
                                                    (_g1362613736_
                                                     _g1362813739_))
                                                (_g1362613736_
                                                 _g1362813739_))))
                                        (_g1362613736_ _g1362813739_))
                                    (_g1362613736_ _g1362813739_))
                                (_g1362613736_ _g1362813739_))))
                        (_g1362613736_ _g1362813739_))))
                (_g1362613736_ _g1362813739_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1362613736_
                                                     _g1362813739_))))
                                            (_g1362613736_ _g1362813739_))
                                        (_g1362613736_ _g1362813739_))
                                    (_g1362613736_ _g1362813739_))))
                            (_g1362613736_ _g1362813739_))))
                    (_g1362613736_ _g1362813739_))
                (_g1362613736_ _g1362813739_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1362613736_ _g1362813739_))
                                            (_g1362613736_ _g1362813739_))
                                        (_g1362613736_ _g1362813739_))))
                                (_g1362613736_ _g1362813739_))))
                        (_g1362613736_ _g1362813739_))
                    (_g1362613736_ _g1362813739_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1362613736_
                                                     _g1362813739_))
                                                (_g1362613736_ _g1362813739_))
                                            (_g1362613736_ _g1362813739_))))
                                    (_g1362613736_ _g1362813739_))))
                            (_g1362613736_ _g1362813739_))))
                    (_g1362613736_ _g1362813739_))))
             (_g1362414066_
              (lambda (_g1362813889_)
                (if (gx#stx-pair? _g1362813889_)
                    (let ((_e1363413891_ (gx#stx-e _g1362813889_)))
                      (let ((_hd1363513894_ (##car _e1363413891_))
                            (_tl1363613896_ (##cdr _e1363413891_)))
                        (if (gx#stx-pair? _tl1363613896_)
                            (let ((_e1363713899_ (gx#stx-e _tl1363613896_)))
                              (let ((_hd1363813902_ (##car _e1363713899_))
                                    (_tl1363913904_ (##cdr _e1363713899_)))
                                (if (gx#stx-pair? _hd1363813902_)
                                    (let ((_e1364013907_
                                           (gx#stx-e _hd1363813902_)))
                                      (let ((_hd1364113910_
                                             (##car _e1364013907_))
                                            (_tl1364213912_
                                             (##cdr _e1364013907_)))
                                        (if (gx#identifier? _hd1364113910_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1364113910_)
                                                (if (gx#stx-pair?
                                                     _tl1364213912_)
                                                    (let ((_e1364313915_
                                                           (gx#stx-e
                                                            _tl1364213912_)))
                                                      (let ((_hd1364413918_
                                                             (##car _e1364313915_))
                                                            (_tl1364513920_
                                                             (##cdr _e1364313915_)))
                                                        (if (gx#stx-null?
                                                             _tl1364513920_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1363913904_)
                        (let ((_e1364613923_ (gx#stx-e _tl1363913904_)))
                          (let ((_hd1364713926_ (##car _e1364613923_))
                                (_tl1364813928_ (##cdr _e1364613923_)))
                            (if (gx#stx-pair? _hd1364713926_)
                                (let ((_e1364913931_
                                       (gx#stx-e _hd1364713926_)))
                                  (let ((_hd1365013934_ (##car _e1364913931_))
                                        (_tl1365113936_ (##cdr _e1364913931_)))
                                    (if (gx#identifier? _hd1365013934_)
                                        (if (gx#stx-eq? '%#ref _hd1365013934_)
                                            (if (gx#stx-pair? _tl1365113936_)
                                                (let ((_e1365213939_
                                                       (gx#stx-e
                                                        _tl1365113936_)))
                                                  (let ((_hd1365313942_
                                                         (##car _e1365213939_))
                                                        (_tl1365413944_
                                                         (##cdr _e1365213939_)))
                                                    (if (gx#stx-null?
                                                         _tl1365413944_)
                                                        (if (gx#stx-pair?
                                                             _tl1364813928_)
                                                            (let ((_e1365513947_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1364813928_)))
                      (let ((_hd1365613950_ (##car _e1365513947_))
                            (_tl1365713952_ (##cdr _e1365513947_)))
                        (if (gx#stx-pair? _hd1365613950_)
                            (let ((_e1365813955_ (gx#stx-e _hd1365613950_)))
                              (let ((_hd1365913958_ (##car _e1365813955_))
                                    (_tl1366013960_ (##cdr _e1365813955_)))
                                (if (gx#identifier? _hd1365913958_)
                                    (if (gx#stx-eq? '%#quote _hd1365913958_)
                                        (if (gx#stx-pair? _tl1366013960_)
                                            (let ((_e1366113963_
                                                   (gx#stx-e _tl1366013960_)))
                                              (let ((_hd1366213966_
                                                     (##car _e1366113963_))
                                                    (_tl1366313968_
                                                     (##cdr _e1366113963_)))
                                                (if (gx#stx-null?
                                                     _tl1366313968_)
                                                    (if (gx#stx-pair?
                                                         _tl1365713952_)
                                                        (let ((_e1366413971_
                                                               (gx#stx-e
                                                                _tl1365713952_)))
                                                          (let ((_hd1366513974_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1366413971_))
                        (_tl1366613976_ (##cdr _e1366413971_)))
                    (if (gx#stx-pair? _hd1366513974_)
                        (let ((_e1366713979_ (gx#stx-e _hd1366513974_)))
                          (let ((_hd1366813982_ (##car _e1366713979_))
                                (_tl1366913984_ (##cdr _e1366713979_)))
                            (if (gx#identifier? _hd1366813982_)
                                (if (gx#stx-eq? '%#ref _hd1366813982_)
                                    (if (gx#stx-pair? _tl1366913984_)
                                        (let ((_e1367013987_
                                               (gx#stx-e _tl1366913984_)))
                                          (let ((_hd1367113990_
                                                 (##car _e1367013987_))
                                                (_tl1367213992_
                                                 (##cdr _e1367013987_)))
                                            (if (gx#stx-null? _tl1367213992_)
                                                (if (gx#stx-pair?
                                                     _tl1366613976_)
                                                    (let ((_e1367313995_
                                                           (gx#stx-e
                                                            _tl1366613976_)))
                                                      (let ((_hd1367413998_
                                                             (##car _e1367313995_))
                                                            (_tl1367514000_
                                                             (##cdr _e1367313995_)))
                                                        (if (gx#stx-pair?
                                                             _hd1367413998_)
                                                            (let ((_e1367614003_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1367413998_)))
                      (let ((_hd1367714006_ (##car _e1367614003_))
                            (_tl1367814008_ (##cdr _e1367614003_)))
                        (if (gx#identifier? _hd1367714006_)
                            (if (gx#stx-eq? '%#quote _hd1367714006_)
                                (if (gx#stx-pair? _tl1367814008_)
                                    (let ((_e1367914011_
                                           (gx#stx-e _tl1367814008_)))
                                      (let ((_hd1368014014_
                                             (##car _e1367914011_))
                                            (_tl1368114016_
                                             (##cdr _e1367914011_)))
                                        (if (gx#stx-null? _tl1368114016_)
                                            (if (gx#stx-null? _tl1367514000_)
                                                ((lambda (_L14019_
                                                          _L14020_
                                                          _L14021_
                                                          _L14022_
                                                          _L14023_)
                                                   (if (eq? (gxc#generate-runtime-binding-id
                                                             _L14023_)
                                                            'bind-method!)
                                                       (cons 'declare-method
                                                             (cons (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L14022_)
                           (cons (gx#stx-e _L14021_)
                                 (cons (gxc#generate-runtime-binding-id
                                        _L14020_)
                                       (cons (gx#stx-e _L14019_) '())))))
               (_g1362513886_ _g1362813889_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1368014014_
                                                 _hd1367113990_
                                                 _hd1366213966_
                                                 _hd1365313942_
                                                 _hd1364413918_)
                                                (_g1362513886_ _g1362813889_))
                                            (_g1362513886_ _g1362813889_))))
                                    (_g1362513886_ _g1362813889_))
                                (_g1362513886_ _g1362813889_))
                            (_g1362513886_ _g1362813889_))))
                    (_g1362513886_ _g1362813889_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1362513886_
                                                     _g1362813889_))
                                                (_g1362513886_
                                                 _g1362813889_))))
                                        (_g1362513886_ _g1362813889_))
                                    (_g1362513886_ _g1362813889_))
                                (_g1362513886_ _g1362813889_))))
                        (_g1362513886_ _g1362813889_))))
                (_g1362513886_ _g1362813889_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1362513886_
                                                     _g1362813889_))))
                                            (_g1362513886_ _g1362813889_))
                                        (_g1362513886_ _g1362813889_))
                                    (_g1362513886_ _g1362813889_))))
                            (_g1362513886_ _g1362813889_))))
                    (_g1362513886_ _g1362813889_))
                (_g1362513886_ _g1362813889_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1362513886_ _g1362813889_))
                                            (_g1362513886_ _g1362813889_))
                                        (_g1362513886_ _g1362813889_))))
                                (_g1362513886_ _g1362813889_))))
                        (_g1362513886_ _g1362813889_))
                    (_g1362513886_ _g1362813889_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1362513886_
                                                     _g1362813889_))
                                                (_g1362513886_ _g1362813889_))
                                            (_g1362513886_ _g1362813889_))))
                                    (_g1362513886_ _g1362813889_))))
                            (_g1362513886_ _g1362813889_))))
                    (_g1362513886_ _g1362813889_)))))
        (_g1362414066_ _stx13623_))))
  (define gxc#!alias::typedecl
    (lambda (_self13599_)
      (let* ((_self1360013606_ _self13599_)
             (_E1360213610_
              (lambda () (error '"No clause matching" _self1360013606_)))
             (_K1360313615_
              (lambda (_alias-id13613_)
                (cons '@alias (cons _alias-id13613_ '())))))
        (if (##structure-instance-of?
             _self1360013606_
             (##type-id gxc#!alias::t))
            (let* ((_e1360413618_ (##vector-ref _self1360013606_ '1))
                   (_alias-id13621_ _e1360413618_))
              (_K1360313615_ _alias-id13621_))
            (_E1360213610_)))))
  (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f)
  (define gxc#!struct-type::typedecl
    (lambda (_self13421_)
      (let* ((_self1342213433_ _self13421_)
             (_E1342413437_
              (lambda () (error '"No clause matching" _self1342213433_)))
             (_K1342513446_
              (lambda (_plist13440_
                       _ctor13441_
                       _fields13442_
                       _super13443_
                       _type-id13444_)
                (cons '@struct-type
                      (cons _type-id13444_
                            (cons _super13443_
                                  (cons _fields13442_
                                        (cons _ctor13441_
                                              (cons _plist13440_ '())))))))))
        (if (##structure-instance-of?
             _self1342213433_
             (##type-id gxc#!struct-type::t))
            (let* ((_e1342613449_ (##vector-ref _self1342213433_ '1))
                   (_type-id13452_ _e1342613449_)
                   (_e1342713454_ (##vector-ref _self1342213433_ '2))
                   (_super13457_ _e1342713454_)
                   (_e1342813459_ (##vector-ref _self1342213433_ '3))
                   (_fields13462_ _e1342813459_)
                   (_e1342913464_ (##vector-ref _self1342213433_ '4))
                   (_e1343013467_ (##vector-ref _self1342213433_ '5))
                   (_ctor13470_ _e1343013467_)
                   (_e1343113472_ (##vector-ref _self1342213433_ '6))
                   (_plist13475_ _e1343113472_))
              (_K1342513446_
               _plist13475_
               _ctor13470_
               _fields13462_
               _super13457_
               _type-id13452_))
            (_E1342413437_)))))
  (bind-method! gxc#!struct-type::t 'typedecl gxc#!struct-type::typedecl '#f)
  (define gxc#!struct-pred::typedecl
    (lambda (_self13275_)
      (let* ((_self1327613282_ _self13275_)
             (_E1327813286_
              (lambda () (error '"No clause matching" _self1327613282_)))
             (_K1327913291_
              (lambda (_struct-t13289_)
                (cons '@struct-pred (cons _struct-t13289_ '())))))
        (if (##structure-instance-of?
             _self1327613282_
             (##type-id gxc#!struct-pred::t))
            (let* ((_e1328013294_ (##vector-ref _self1327613282_ '1))
                   (_struct-t13297_ _e1328013294_))
              (_K1327913291_ _struct-t13297_))
            (_E1327813286_)))))
  (bind-method! gxc#!struct-pred::t 'typedecl gxc#!struct-pred::typedecl '#f)
  (define gxc#!struct-cons::typedecl
    (lambda (_self13129_)
      (let* ((_self1313013136_ _self13129_)
             (_E1313213140_
              (lambda () (error '"No clause matching" _self1313013136_)))
             (_K1313313145_
              (lambda (_struct-t13143_)
                (cons '@struct-cons (cons _struct-t13143_ '())))))
        (if (##structure-instance-of?
             _self1313013136_
             (##type-id gxc#!struct-cons::t))
            (let* ((_e1313413148_ (##vector-ref _self1313013136_ '1))
                   (_struct-t13151_ _e1313413148_))
              (_K1313313145_ _struct-t13151_))
            (_E1313213140_)))))
  (bind-method! gxc#!struct-cons::t 'typedecl gxc#!struct-cons::typedecl '#f)
  (define gxc#!struct-getf::typedecl
    (lambda (_self12969_)
      (let* ((_self1297012978_ _self12969_)
             (_E1297212982_
              (lambda () (error '"No clause matching" _self1297012978_)))
             (_K1297312989_
              (lambda (_unchecked?12985_ _off12986_ _struct-t12987_)
                (cons '@struct-getf
                      (cons _struct-t12987_
                            (cons _off12986_ (cons _unchecked?12985_ '())))))))
        (if (##structure-instance-of?
             _self1297012978_
             (##type-id gxc#!struct-getf::t))
            (let* ((_e1297412992_ (##vector-ref _self1297012978_ '1))
                   (_struct-t12995_ _e1297412992_)
                   (_e1297512997_ (##vector-ref _self1297012978_ '2))
                   (_off13000_ _e1297512997_)
                   (_e1297613002_ (##vector-ref _self1297012978_ '3))
                   (_unchecked?13005_ _e1297613002_))
              (_K1297312989_ _unchecked?13005_ _off13000_ _struct-t12995_))
            (_E1297212982_)))))
  (bind-method! gxc#!struct-getf::t 'typedecl gxc#!struct-getf::typedecl '#f)
  (define gxc#!struct-setf::typedecl
    (lambda (_self12809_)
      (let* ((_self1281012818_ _self12809_)
             (_E1281212822_
              (lambda () (error '"No clause matching" _self1281012818_)))
             (_K1281312829_
              (lambda (_unchecked?12825_ _off12826_ _struct-t12827_)
                (cons '@struct-setf
                      (cons _struct-t12827_
                            (cons _off12826_ (cons _unchecked?12825_ '())))))))
        (if (##structure-instance-of?
             _self1281012818_
             (##type-id gxc#!struct-setf::t))
            (let* ((_e1281412832_ (##vector-ref _self1281012818_ '1))
                   (_struct-t12835_ _e1281412832_)
                   (_e1281512837_ (##vector-ref _self1281012818_ '2))
                   (_off12840_ _e1281512837_)
                   (_e1281612842_ (##vector-ref _self1281012818_ '3))
                   (_unchecked?12845_ _e1281612842_))
              (_K1281312829_ _unchecked?12845_ _off12840_ _struct-t12835_))
            (_E1281212822_)))))
  (bind-method! gxc#!struct-setf::t 'typedecl gxc#!struct-setf::typedecl '#f)
  (define gxc#!lambda::typedecl
    (lambda (_self12635_)
      (let* ((_self1263612646_ _self12635_)
             (_E1263812650_
              (lambda () (error '"No clause matching" _self1263612646_)))
             (_K1263912661_
              (lambda (_typedecl12653_
                       _inline12654_
                       _dispatch12655_
                       _arity12656_)
                (if _inline12654_
                    (let ((_$e12658_ _typedecl12653_))
                      (if _$e12658_
                          _$e12658_
                          (error '"Cannot generate typedecl for inline rules")))
                    (cons '@lambda
                          (cons _arity12656_ (cons _dispatch12655_ '())))))))
        (if (##structure-instance-of?
             _self1263612646_
             (##type-id gxc#!lambda::t))
            (let* ((_e1264012664_ (##vector-ref _self1263612646_ '1))
                   (_e1264112667_ (##vector-ref _self1263612646_ '2))
                   (_arity12670_ _e1264112667_)
                   (_e1264212672_ (##vector-ref _self1263612646_ '3))
                   (_dispatch12675_ _e1264212672_)
                   (_e1264312677_ (##vector-ref _self1263612646_ '4))
                   (_inline12680_ _e1264312677_)
                   (_e1264412682_ (##vector-ref _self1263612646_ '5))
                   (_typedecl12685_ _e1264412682_))
              (_K1263912661_
               _typedecl12685_
               _inline12680_
               _dispatch12675_
               _arity12670_))
            (_E1263812650_)))))
  (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f)
  (define gxc#!case-lambda::typedecl
    (lambda (_self12446_)
      (letrec ((_clause-e12448_
                (lambda (_clause12478_)
                  (let* ((_clause1247912487_ _clause12478_)
                         (_E1248112491_
                          (lambda ()
                            (error '"No clause matching" _clause1247912487_)))
                         (_K1248212497_
                          (lambda (_dispatch12494_ _arity12495_)
                            (cons _arity12495_ (cons _dispatch12494_ '())))))
                    (if (##structure-instance-of?
                         _clause1247912487_
                         (##type-id gxc#!lambda::t))
                        (let* ((_e1248312500_
                                (##vector-ref _clause1247912487_ '1))
                               (_e1248412503_
                                (##vector-ref _clause1247912487_ '2))
                               (_arity12506_ _e1248412503_)
                               (_e1248512508_
                                (##vector-ref _clause1247912487_ '3))
                               (_dispatch12511_ _e1248512508_))
                          (_K1248212497_ _dispatch12511_ _arity12506_))
                        (_E1248112491_))))))
        (let* ((_self1244912456_ _self12446_)
               (_E1245112460_
                (lambda () (error '"No clause matching" _self1244912456_)))
               (_K1245212467_
                (lambda (_clauses12463_)
                  (let ((_clauses12465_ (map _clause-e12448_ _clauses12463_)))
                    (cons '@case-lambda _clauses12465_)))))
          (if (##structure-instance-of?
               _self1244912456_
               (##type-id gxc#!case-lambda::t))
              (let* ((_e1245312470_ (##vector-ref _self1244912456_ '1))
                     (_e1245412473_ (##vector-ref _self1244912456_ '2))
                     (_clauses12476_ _e1245412473_))
                (_K1245212467_ _clauses12476_))
              (_E1245112460_))))))
  (bind-method! gxc#!case-lambda::t 'typedecl gxc#!case-lambda::typedecl '#f)
  (define gxc#identifier-symbol
    (lambda (_stx12322_) (gxc#generate-runtime-binding-id _stx12322_))))
