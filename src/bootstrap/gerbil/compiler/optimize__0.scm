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
     ':init!
     '(type ssxi)))
  (define gxc#optimizer-info? (make-struct-predicate gxc#optimizer-info::t))
  (define gxc#make-optimizer-info
    (lambda _$args23626_
      (apply make-struct-instance gxc#optimizer-info::t _$args23626_)))
  (define gxc#optimizer-info-type
    (make-struct-field-accessor gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi
    (make-struct-field-accessor gxc#optimizer-info::t '1))
  (define gxc#optimizer-info-type-set!
    (make-struct-field-mutator gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi-set!
    (make-struct-field-mutator gxc#optimizer-info::t '1))
  (define gxc#optimizer-info:::init!
    (lambda (_self23624_)
      (if (##fx< '2 (##vector-length _self23624_))
          (begin
            (##vector-set! _self23624_ '1 (make-hash-table-eq))
            (##vector-set! _self23624_ '2 (make-hash-table-eq)))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self23624_))))
  (bind-method! gxc#optimizer-info::t ':init! gxc#optimizer-info:::init! '#f)
  (define gxc#optimizer-info-init!
    (lambda ()
      (if (gxc#current-compile-optimizer-info)
          '#!void
          (gxc#current-compile-optimizer-info
           (let ((__obj23638 (make-object gxc#optimizer-info::t '2)))
             (begin (gxc#optimizer-info:::init! __obj23638) __obj23638))))))
  (define gxc#optimize!
    (lambda (_ctx23496_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#optimizer-load-ssxi-deps _ctx23496_)
           (table-set!
            (##structure-ref
             (gxc#current-compile-optimizer-info)
             '2
             gxc#optimizer-info::t
             '#f)
            (##structure-ref _ctx23496_ '1 gx#expander-context::t '#f)
            '#t)
           (let ((_code23499_
                  (gxc#optimize-source
                   (##structure-ref _ctx23496_ '11 gx#module-context::t '#f))))
             (##structure-set!
              _ctx23496_
              _code23499_
              '11
              gx#module-context::t
              '#f))))
       gxc#current-compile-mutators
       (make-hash-table-eq)
       gxc#current-compile-local-type
       (make-hash-table-eq))))
  (define gxc#optimizer-load-ssxi-deps
    (lambda (_ctx23441_)
      (letrec* ((_deps23443_
                 (let* ((_imports23487_
                         (##structure-ref
                          _ctx23441_
                          '8
                          gx#module-context::t
                          '#f))
                        (_$e23489_ (gx#core-context-prelude__% _ctx23441_)))
                   (if _$e23489_
                       ((lambda (_g2349123493_)
                          (cons _g2349123493_ _imports23487_))
                        _$e23489_)
                       _imports23487_))))
        (let _lp23445_ ((_rest23447_ _deps23443_))
          (let* ((_rest2344823456_ _rest23447_)
                 (_E2345123460_
                  (lambda () (error '"No clause matching" _rest2344823456_)))
                 (_else2345023464_ (lambda () '#!void))
                 (_K2345223475_
                  (lambda (_rest23467_ _hd23468_)
                    (if (##structure-instance-of?
                         _hd23468_
                         'gx#module-context::t)
                        (begin
                          (if (table-ref
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)
                               (##structure-ref
                                _hd23468_
                                '1
                                gx#expander-context::t
                                '#f)
                               '#f)
                              '#!void
                              (begin
                                (let ((_$e23470_
                                       (gx#core-context-prelude__% _hd23468_)))
                                  (if _$e23470_
                                      ((lambda (_pre23473_)
                                         (_lp23445_
                                          (cons _pre23473_
                                                (##structure-ref
                                                 _hd23468_
                                                 '8
                                                 gx#module-context::t
                                                 '#f))))
                                       _$e23470_)
                                      (_lp23445_
                                       (##structure-ref
                                        _hd23468_
                                        '8
                                        gx#module-context::t
                                        '#f))))
                                (gxc#optimizer-load-ssxi _hd23468_)))
                          (_lp23445_ _rest23467_))
                        (if (##structure-instance-of?
                             _hd23468_
                             'gx#prelude-context::t)
                            (begin
                              (if (table-ref
                                   (##structure-ref
                                    (gxc#current-compile-optimizer-info)
                                    '2
                                    gxc#optimizer-info::t
                                    '#f)
                                   (##structure-ref
                                    _hd23468_
                                    '1
                                    gx#expander-context::t
                                    '#f)
                                   '#f)
                                  '#!void
                                  (begin
                                    (_lp23445_
                                     (##structure-ref
                                      _hd23468_
                                      '7
                                      gx#prelude-context::t
                                      '#f))
                                    (gxc#optimizer-load-ssxi _hd23468_)))
                              (_lp23445_ _rest23467_))
                            (if (##structure-direct-instance-of?
                                 _hd23468_
                                 'gx#module-import::t)
                                (_lp23445_
                                 (cons (##direct-structure-ref
                                        _hd23468_
                                        '1
                                        gx#module-import::t
                                        '#f)
                                       _rest23467_))
                                (if (##structure-direct-instance-of?
                                     _hd23468_
                                     'gx#module-export::t)
                                    (_lp23445_
                                     (cons (##direct-structure-ref
                                            _hd23468_
                                            '1
                                            gx#module-export::t
                                            '#f)
                                           _rest23467_))
                                    (if (##structure-direct-instance-of?
                                         _hd23468_
                                         'gx#import-set::t)
                                        (_lp23445_
                                         (cons (##direct-structure-ref
                                                _hd23468_
                                                '1
                                                gx#import-set::t
                                                '#f)
                                               _rest23467_))
                                        (error '"Unexpected module import"
                                               _hd23468_)))))))))
            (if (##pair? _rest2344823456_)
                (let ((_hd2345323478_ (##car _rest2344823456_))
                      (_tl2345423480_ (##cdr _rest2344823456_)))
                  (let* ((_hd23483_ _hd2345323478_)
                         (_rest23485_ _tl2345423480_))
                    (_K2345223475_ _rest23485_ _hd23483_)))
                (_else2345023464_)))))))
  (define gxc#optimizer-load-ssxi
    (lambda (_ctx23421_)
      (if (if (##structure-instance-of? _ctx23421_ 'gx#module-context::t)
              (list? (##structure-ref _ctx23421_ '7 gx#module-context::t '#f))
              '#f)
          '#!void
          (let* ((_ht23423_
                  (##structure-ref
                   (gxc#current-compile-optimizer-info)
                   '2
                   gxc#optimizer-info::t
                   '#f))
                 (_id23425_
                  (##structure-ref _ctx23421_ '1 gx#expander-context::t '#f))
                 (_mod23427_ (table-ref _ht23423_ _id23425_ '#f)))
            (let ((_$e23430_ _mod23427_))
              (if _$e23430_
                  _$e23430_
                  (let* ((_mod23433_ (gxc#optimizer-import-ssxi _ctx23421_))
                         (_val23438_
                          (let ((_$e23435_ _mod23433_))
                            (if _$e23435_ _$e23435_ '#!void))))
                    (begin
                      (table-set! _ht23423_ _id23425_ _val23438_)
                      _val23438_))))))))
  (define gxc#optimizer-import-ssxi
    (lambda (_ctx23398_)
      (letrec ((_catch-e23400_
                (lambda (_exn23419_)
                  (begin
                    (if (gxc#current-compile-verbose)
                        (begin
                          (displayln
                           '"Failed to load ssxi module for "
                           (##structure-ref
                            _ctx23398_
                            '1
                            gx#expander-context::t
                            '#f))
                          (display-exception _exn23419_))
                        '#!void)
                    '#f)))
               (_import-e23401_
                (lambda ()
                  (let* ((_str-id23404_
                          (string-append
                           (symbol->string
                            (##structure-ref
                             _ctx23398_
                             '1
                             gx#expander-context::t
                             '#f))
                           '".ssxi"))
                         (_artefact-path23412_
                          (let ((_odir2340523407_
                                 (gxc#current-compile-output-dir)))
                            (if _odir2340523407_
                                (let ((_odir23410_ _odir2340523407_))
                                  (path-expand
                                   (string-append _str-id23404_ '".ss")
                                   _odir23410_))
                                '#f)))
                         (_library-path23414_
                          (string->symbol
                           (string-append '":" _str-id23404_ '".ss")))
                         (_ssxi-path23416_
                          (if (if _artefact-path23412_
                                  (file-exists? _artefact-path23412_)
                                  '#f)
                              _artefact-path23412_
                              _library-path23414_)))
                    (begin
                      (gxc#verbose '"Loading ssxi module " _ssxi-path23416_)
                      (gx#import-module__% _ssxi-path23416_ '#t '#t))))))
        (if (##structure-ref _ctx23398_ '1 gx#expander-context::t '#f)
            (with-exception-catcher _catch-e23400_ _import-e23401_)
            '#f))))
  (define gxc#!type::t
    (make-struct-type 'gxc#!type::t '#f '1 '!type '() '#f '(id)))
  (define gxc#!type? (make-struct-predicate gxc#!type::t))
  (define gxc#make-!type
    (lambda _$args23395_
      (apply make-struct-instance gxc#!type::t _$args23395_)))
  (define gxc#!type-id (make-struct-field-accessor gxc#!type::t '0))
  (define gxc#!type-id-set! (make-struct-field-mutator gxc#!type::t '0))
  (define gxc#!alias::t
    (make-struct-type 'gxc#!alias::t gxc#!type::t '0 '!alias '() '#f '()))
  (define gxc#!alias? (make-struct-predicate gxc#!alias::t))
  (define gxc#make-!alias
    (lambda _$args23392_
      (apply make-struct-instance gxc#!alias::t _$args23392_)))
  (define gxc#!struct-type::t
    (make-struct-type
     'gxc#!struct-type::t
     gxc#!type::t
     '6
     '!struct-type
     '()
     ':init!
     '(super fields xfields ctor plist methods)))
  (define gxc#!struct-type? (make-struct-predicate gxc#!struct-type::t))
  (define gxc#make-!struct-type
    (lambda _$args23389_
      (apply make-struct-instance gxc#!struct-type::t _$args23389_)))
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
    (make-struct-type
     'gxc#!procedure::t
     gxc#!type::t
     '0
     '!procedure
     '()
     '#f
     '()))
  (define gxc#!procedure? (make-struct-predicate gxc#!procedure::t))
  (define gxc#make-!procedure
    (lambda _$args23386_
      (apply make-struct-instance gxc#!procedure::t _$args23386_)))
  (define gxc#!struct-pred::t
    (make-struct-type
     'gxc#!struct-pred::t
     gxc#!procedure::t
     '0
     '!struct-pred
     '()
     '#f
     '()))
  (define gxc#!struct-pred? (make-struct-predicate gxc#!struct-pred::t))
  (define gxc#make-!struct-pred
    (lambda _$args23383_
      (apply make-struct-instance gxc#!struct-pred::t _$args23383_)))
  (define gxc#!struct-cons::t
    (make-struct-type
     'gxc#!struct-cons::t
     gxc#!procedure::t
     '0
     '!struct-cons
     '()
     '#f
     '()))
  (define gxc#!struct-cons? (make-struct-predicate gxc#!struct-cons::t))
  (define gxc#make-!struct-cons
    (lambda _$args23380_
      (apply make-struct-instance gxc#!struct-cons::t _$args23380_)))
  (define gxc#!struct-getf::t
    (make-struct-type
     'gxc#!struct-getf::t
     gxc#!procedure::t
     '2
     '!struct-getf
     '()
     '#f
     '(off unchecked?)))
  (define gxc#!struct-getf? (make-struct-predicate gxc#!struct-getf::t))
  (define gxc#make-!struct-getf
    (lambda _$args23377_
      (apply make-struct-instance gxc#!struct-getf::t _$args23377_)))
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
     '#f
     '(off unchecked?)))
  (define gxc#!struct-setf? (make-struct-predicate gxc#!struct-setf::t))
  (define gxc#make-!struct-setf
    (lambda _$args23374_
      (apply make-struct-instance gxc#!struct-setf::t _$args23374_)))
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
     ':init!
     '(arity dispatch inline inline-typedecl)))
  (define gxc#!lambda? (make-struct-predicate gxc#!lambda::t))
  (define gxc#make-!lambda
    (lambda _$args23371_
      (apply make-struct-instance gxc#!lambda::t _$args23371_)))
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
     '#f
     '(clauses)))
  (define gxc#!case-lambda? (make-struct-predicate gxc#!case-lambda::t))
  (define gxc#make-!case-lambda
    (lambda _$args23368_
      (apply make-struct-instance gxc#!case-lambda::t _$args23368_)))
  (define gxc#!case-lambda-clauses
    (make-struct-field-accessor gxc#!case-lambda::t '0))
  (define gxc#!case-lambda-clauses-set!
    (make-struct-field-mutator gxc#!case-lambda::t '0))
  (define gxc#!struct-type:::init!
    (lambda (_self23360_
             _id23361_
             _super23362_
             _fields23363_
             _xfields23364_
             _ctor23365_
             _plist23366_)
      (if (##fx< '7 (##vector-length _self23360_))
          (begin
            (##vector-set! _self23360_ '1 _id23361_)
            (##vector-set! _self23360_ '2 _super23362_)
            (##vector-set! _self23360_ '3 _fields23363_)
            (##vector-set! _self23360_ '4 _xfields23364_)
            (##vector-set! _self23360_ '5 _ctor23365_)
            (##vector-set! _self23360_ '6 _plist23366_)
            (##vector-set! _self23360_ '7 '#f))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self23360_))))
  (bind-method! gxc#!struct-type::t ':init! gxc#!struct-type:::init! '#f)
  (begin
    (define gxc#!lambda:::init!__%
      (lambda (_self23204_
               _id23205_
               _arity23206_
               _dispatch23207_
               _inline23208_
               _typedecl23209_)
        (if (##fx< '5 (##vector-length _self23204_))
            (begin
              (##vector-set! _self23204_ '1 _id23205_)
              (##vector-set! _self23204_ '2 _arity23206_)
              (##vector-set! _self23204_ '3 _dispatch23207_)
              (##vector-set! _self23204_ '4 _inline23208_)
              (##vector-set! _self23204_ '5 _typedecl23209_))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self23204_))))
    (begin
      (define gxc#!lambda:::init!__0
        (lambda (_self23214_ _id23215_ _arity23216_ _dispatch23217_)
          (let* ((_inline23219_ '#f) (_typedecl23221_ '#f))
            (if (##fx< '5 (##vector-length _self23214_))
                (begin
                  (##vector-set! _self23214_ '1 _id23215_)
                  (##vector-set! _self23214_ '2 _arity23216_)
                  (##vector-set! _self23214_ '3 _dispatch23217_)
                  (##vector-set! _self23214_ '4 _inline23219_)
                  (##vector-set! _self23214_ '5 _typedecl23221_))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self23214_)))))
      (define gxc#!lambda:::init!__1
        (lambda (_self23223_
                 _id23224_
                 _arity23225_
                 _dispatch23226_
                 _inline23227_)
          (let ((_typedecl23229_ '#f))
            (if (##fx< '5 (##vector-length _self23223_))
                (begin
                  (##vector-set! _self23223_ '1 _id23224_)
                  (##vector-set! _self23223_ '2 _arity23225_)
                  (##vector-set! _self23223_ '3 _dispatch23226_)
                  (##vector-set! _self23223_ '4 _inline23227_)
                  (##vector-set! _self23223_ '5 _typedecl23229_))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self23223_)))))
      (define gxc#!lambda:::init!
        (lambda _g23646_
          (let ((_g23645_ (length _g23646_)))
            (cond ((fx= _g23645_ 4) (apply gxc#!lambda:::init!__0 _g23646_))
                  ((fx= _g23645_ 5) (apply gxc#!lambda:::init!__1 _g23646_))
                  ((fx= _g23645_ 6)
                   (apply (lambda (_self23231_
                                   _id23232_
                                   _arity23233_
                                   _dispatch23234_
                                   _inline23235_
                                   _typedecl23236_)
                            (if (##fx< '5 (##vector-length _self23231_))
                                (begin
                                  (##vector-set! _self23231_ '1 _id23232_)
                                  (##vector-set! _self23231_ '2 _arity23233_)
                                  (##vector-set!
                                   _self23231_
                                   '3
                                   _dispatch23234_)
                                  (##vector-set! _self23231_ '4 _inline23235_)
                                  (##vector-set!
                                   _self23231_
                                   '5
                                   _typedecl23236_))
                                (error '"struct-instance-init!: too many arguments for struct"
                                       _self23231_)))
                          _g23646_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#!lambda:::init!
                    _g23646_))))))))
  (bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f)
  (define gxc#!struct-type-vtab
    (lambda (_type23074_)
      (let ((_$e23076_
             (##structure-ref _type23074_ '7 gxc#!struct-type::t '#f)))
        (if _$e23076_
            (values _$e23076_)
            (let ((_vtab23079_ (make-hash-table-eq)))
              (begin
                (##structure-set!
                 _type23074_
                 _vtab23079_
                 '7
                 gxc#!struct-type::t
                 '#f)
                _vtab23079_))))))
  (define gxc#!struct-type-lookup-method
    (lambda (_type23065_ _method23066_)
      (let ((_vtab2306723069_
             (##structure-ref _type23065_ '7 gxc#!struct-type::t '#f)))
        (if _vtab2306723069_
            (let ((_vtab23072_ _vtab2306723069_))
              (table-ref _vtab23072_ _method23066_ '#f))
            '#f))))
  (begin
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym23049_ _type23050_ _local?23051_)
        (begin
          (if (##structure-instance-of? _type23050_ 'gxc#!type::t)
              '#!void
              (error '"bad declaration: expected !type"
                     _sym23049_
                     _type23050_))
          (gxc#verbose
           '"declare-type "
           _sym23049_
           '" "
           (struct->list _type23050_))
          (table-set!
           (if _local?23051_
               (gxc#current-compile-local-type)
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '1
                gxc#optimizer-info::t
                '#f))
           _sym23049_
           _type23050_))))
    (begin
      (define gxc#optimizer-declare-type!__0
        (lambda (_sym23056_ _type23057_)
          (let ((_local?23059_ '#f))
            (gxc#optimizer-declare-type!__%
             _sym23056_
             _type23057_
             _local?23059_))))
      (define gxc#optimizer-declare-type!
        (lambda _g23648_
          (let ((_g23647_ (length _g23648_)))
            (cond ((fx= _g23647_ 2)
                   (apply gxc#optimizer-declare-type!__0 _g23648_))
                  ((fx= _g23647_ 3)
                   (apply gxc#optimizer-declare-type!__% _g23648_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-declare-type!
                    _g23648_))))))))
  (begin
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t23025_ _method23026_ _sym23027_ _rebind?23028_)
        (let ((_type23030_ (gxc#optimizer-resolve-type _type-t23025_)))
          (if (##structure-instance-of? _type23030_ 'gxc#!struct-type::t)
              (let ((_vtab23032_ (gxc#!struct-type-vtab _type23030_)))
                (if _rebind?23028_
                    (if (hash-key? _vtab23032_ _method23026_)
                        (gxc#verbose
                         '"declare-method: [warning] skip rebind on existing method"
                         _type-t23025_
                         '" "
                         _method23026_)
                        (gxc#verbose
                         '"declare-method: skip rebind method "
                         _type-t23025_
                         '" "
                         _method23026_))
                    (if (hash-key? _vtab23032_ _method23026_)
                        (error '"declare-method: duplicate method declaration")
                        (begin
                          (gxc#verbose
                           '"declare-method "
                           _type-t23025_
                           '" "
                           _method23026_
                           '" => "
                           _sym23027_)
                          (table-set! _vtab23032_ _method23026_ _sym23027_)))))
              (if (not _type23030_)
                  (gxc#verbose '"declare-method: unknown type " _type-t23025_)
                  (error '"declare-method: bad method declaration; no method table"
                         _type-t23025_
                         _type23030_))))))
    (begin
      (define gxc#optimizer-declare-method!__0
        (lambda (_type-t23037_ _method23038_ _sym23039_)
          (let ((_rebind?23041_ '#f))
            (gxc#optimizer-declare-method!__%
             _type-t23037_
             _method23038_
             _sym23039_
             _rebind?23041_))))
      (define gxc#optimizer-declare-method!
        (lambda _g23650_
          (let ((_g23649_ (length _g23650_)))
            (cond ((fx= _g23649_ 3)
                   (apply gxc#optimizer-declare-method!__0 _g23650_))
                  ((fx= _g23649_ 4)
                   (apply gxc#optimizer-declare-method!__% _g23650_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-declare-method!
                    _g23650_))))))))
  (define gxc#optimizer-lookup-type
    (lambda (_sym23013_)
      (let ((_$e23021_
             (let ((_ht2301423016_ (gxc#current-compile-local-type)))
               (if _ht2301423016_
                   (let ((_ht23019_ _ht2301423016_))
                     (table-ref _ht23019_ _sym23013_ '#f))
                   '#f))))
        (if _$e23021_
            _$e23021_
            (table-ref
             (##structure-ref
              (gxc#current-compile-optimizer-info)
              '1
              gxc#optimizer-info::t
              '#f)
             _sym23013_
             '#f)))))
  (define gxc#optimizer-resolve-type
    (lambda (_sym23005_)
      (let ((_type2300623008_ (gxc#optimizer-lookup-type _sym23005_)))
        (if _type2300623008_
            (let ((_type23011_ _type2300623008_))
              (if (##structure-instance-of? _type23011_ 'gxc#!alias::t)
                  (gxc#optimizer-resolve-type
                   (##structure-ref _type23011_ '1 gxc#!type::t '#f))
                  _type23011_))
            '#f))))
  (define gxc#optimizer-lookup-method
    (lambda (_type-t23000_ _method23001_)
      (let ((_type23003_ (gxc#optimizer-resolve-type _type-t23000_)))
        (if (##structure-instance-of? _type23003_ 'gxc#!struct-type::t)
            (gxc#!struct-type-lookup-method _type23003_ _method23001_)
            '#f))))
  (define gxc#optimize-source
    (lambda (_stx22996_)
      (begin
        (gxc#apply-collect-mutators _stx22996_)
        (let ((_stx22998_ (gxc#apply-lift-top-lambdas _stx22996_)))
          (begin
            (gxc#apply-collect-type-info _stx22998_)
            (gxc#apply-optimize-call _stx22998_))))))
  (define gxc#&identity-expression
    (make-promise
     (lambda ()
       (let ((_tbl22993_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl22993_ '%#begin-annotation gxc#xform-identity)
           (table-set! _tbl22993_ '%#lambda gxc#xform-identity)
           (table-set! _tbl22993_ '%#case-lambda gxc#xform-identity)
           (table-set! _tbl22993_ '%#let-values gxc#xform-identity)
           (table-set! _tbl22993_ '%#letrec-values gxc#xform-identity)
           (table-set! _tbl22993_ '%#letrec*-values gxc#xform-identity)
           (table-set! _tbl22993_ '%#quote gxc#xform-identity)
           (table-set! _tbl22993_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl22993_ '%#call gxc#xform-identity)
           (table-set! _tbl22993_ '%#if gxc#xform-identity)
           (table-set! _tbl22993_ '%#ref gxc#xform-identity)
           (table-set! _tbl22993_ '%#set! gxc#xform-identity)
           (table-set! _tbl22993_ '%#struct-instance? gxc#xform-identity)
           (table-set!
            _tbl22993_
            '%#struct-direct-instance?
            gxc#xform-identity)
           (table-set! _tbl22993_ '%#struct-ref gxc#xform-identity)
           (table-set! _tbl22993_ '%#struct-set! gxc#xform-identity)
           (table-set! _tbl22993_ '%#struct-direct-ref gxc#xform-identity)
           (table-set! _tbl22993_ '%#struct-direct-set! gxc#xform-identity)
           (table-set! _tbl22993_ '%#struct-unchecked-ref gxc#xform-identity)
           (table-set! _tbl22993_ '%#struct-unchecked-set! gxc#xform-identity)
           _tbl22993_)))))
  (define gxc#&identity-special-form
    (make-promise
     (lambda ()
       (let ((_tbl22989_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl22989_ '%#begin gxc#xform-identity)
           (table-set! _tbl22989_ '%#begin-syntax gxc#xform-identity)
           (table-set! _tbl22989_ '%#begin-foreign gxc#xform-identity)
           (table-set! _tbl22989_ '%#module gxc#xform-identity)
           (table-set! _tbl22989_ '%#import gxc#xform-identity)
           (table-set! _tbl22989_ '%#export gxc#xform-identity)
           (table-set! _tbl22989_ '%#provide gxc#xform-identity)
           (table-set! _tbl22989_ '%#extern gxc#xform-identity)
           (table-set! _tbl22989_ '%#define-values gxc#xform-identity)
           (table-set! _tbl22989_ '%#define-syntax gxc#xform-identity)
           (table-set! _tbl22989_ '%#define-alias gxc#xform-identity)
           (table-set! _tbl22989_ '%#declare gxc#xform-identity)
           _tbl22989_)))))
  (define gxc#&identity
    (make-promise
     (lambda ()
       (let ((_tbl22985_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl22985_ (force gxc#&identity-special-form))
           (hash-copy! _tbl22985_ (force gxc#&identity-expression))
           _tbl22985_)))))
  (define gxc#&basic-xform-expression
    (make-promise
     (lambda ()
       (let ((_tbl22981_ (make-hash-table-eq)))
         (begin
           (table-set!
            _tbl22981_
            '%#begin-annotation
            gxc#xform-begin-annotation%)
           (table-set! _tbl22981_ '%#lambda gxc#xform-lambda%)
           (table-set! _tbl22981_ '%#case-lambda gxc#xform-case-lambda%)
           (table-set! _tbl22981_ '%#let-values gxc#xform-let-values%)
           (table-set! _tbl22981_ '%#letrec-values gxc#xform-let-values%)
           (table-set! _tbl22981_ '%#letrec*-values gxc#xform-let-values%)
           (table-set! _tbl22981_ '%#quote gxc#xform-identity)
           (table-set! _tbl22981_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl22981_ '%#call gxc#xform-operands)
           (table-set! _tbl22981_ '%#if gxc#xform-operands)
           (table-set! _tbl22981_ '%#ref gxc#xform-identity)
           (table-set! _tbl22981_ '%#set! gxc#xform-setq%)
           (table-set! _tbl22981_ '%#struct-instance? gxc#xform-operands)
           (table-set!
            _tbl22981_
            '%#struct-direct-instance?
            gxc#xform-operands)
           (table-set! _tbl22981_ '%#struct-ref gxc#xform-operands)
           (table-set! _tbl22981_ '%#struct-set! gxc#xform-operands)
           (table-set! _tbl22981_ '%#struct-direct-ref gxc#xform-operands)
           (table-set! _tbl22981_ '%#struct-direct-set! gxc#xform-operands)
           (table-set! _tbl22981_ '%#struct-unchecked-ref gxc#xform-operands)
           (table-set! _tbl22981_ '%#struct-unchecked-set! gxc#xform-operands)
           _tbl22981_)))))
  (define gxc#&basic-xform
    (make-promise
     (lambda ()
       (let ((_tbl22977_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl22977_ (force gxc#&basic-xform-expression))
           (hash-copy! _tbl22977_ (force gxc#&identity))
           (table-set! _tbl22977_ '%#begin gxc#xform-begin%)
           (table-set! _tbl22977_ '%#module gxc#xform-module%)
           (table-set! _tbl22977_ '%#define-values gxc#xform-define-values%)
           _tbl22977_)))))
  (define gxc#&collect-mutators
    (make-promise
     (lambda ()
       (let ((_tbl22973_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl22973_ (force gxc#&void))
           (table-set! _tbl22973_ '%#begin gxc#collect-begin%)
           (table-set! _tbl22973_ '%#module gxc#collect-module%)
           (table-set!
            _tbl22973_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl22973_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl22973_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl22973_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl22973_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl22973_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl22973_ '%#call gxc#collect-operands)
           (table-set! _tbl22973_ '%#if gxc#collect-operands)
           (table-set! _tbl22973_ '%#set! gxc#collect-mutators-setq%)
           (table-set! _tbl22973_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl22973_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl22973_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl22973_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl22973_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl22973_ '%#struct-direct-set! gxc#collect-operands)
           (table-set! _tbl22973_ '%#struct-unchecked-ref gxc#collect-operands)
           (table-set!
            _tbl22973_
            '%#struct-unchecked-set!
            gxc#collect-operands)
           _tbl22973_)))))
  (define gxc#apply-collect-mutators
    (lambda (_stx22966_ . _args22968_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx22966_ _args22968_))
       gxc#current-compile-methods
       (force gxc#&collect-mutators))))
  (define gxc#&lift-top-lambdas
    (make-promise
     (lambda ()
       (let ((_tbl22963_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl22963_ (force gxc#&basic-xform))
           (table-set!
            _tbl22963_
            '%#define-values
            gxc#lift-top-lambda-define-values%)
           (table-set!
            _tbl22963_
            '%#let-values
            gxc#lift-top-lambda-let-values%)
           (table-set!
            _tbl22963_
            '%#letrec-values
            gxc#lift-top-lambda-letrec-values%)
           (table-set!
            _tbl22963_
            '%#letrec*-values
            gxc#lift-top-lambda-letrec-values%)
           _tbl22963_)))))
  (define gxc#apply-lift-top-lambdas
    (lambda (_stx22956_ . _args22958_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx22956_ _args22958_))
       gxc#current-compile-methods
       (force gxc#&lift-top-lambdas))))
  (define gxc#&expression-subst
    (make-promise
     (lambda ()
       (let ((_tbl22953_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl22953_ (force gxc#&basic-xform-expression))
           (table-set! _tbl22953_ '%#begin gxc#xform-begin%)
           (table-set! _tbl22953_ '%#ref gxc#expression-subst-ref%)
           _tbl22953_)))))
  (define gxc#apply-expression-subst
    (lambda (_stx22946_ . _args22948_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx22946_ _args22948_))
       gxc#current-compile-methods
       (force gxc#&expression-subst))))
  (define gxc#&collect-type-info
    (make-promise
     (lambda ()
       (let ((_tbl22943_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl22943_ (force gxc#&void))
           (table-set! _tbl22943_ '%#begin gxc#collect-begin%)
           (table-set! _tbl22943_ '%#module gxc#collect-module%)
           (table-set!
            _tbl22943_
            '%#define-values
            gxc#collect-type-define-values%)
           (table-set!
            _tbl22943_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl22943_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl22943_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl22943_ '%#let-values gxc#collect-type-let-values%)
           (table-set!
            _tbl22943_
            '%#letrec-values
            gxc#collect-type-let-values%)
           (table-set!
            _tbl22943_
            '%#letrec*-values
            gxc#collect-type-let-values%)
           (table-set! _tbl22943_ '%#call gxc#collect-type-call%)
           (table-set! _tbl22943_ '%#if gxc#collect-operands)
           (table-set! _tbl22943_ '%#set! gxc#collect-body-setq%)
           _tbl22943_)))))
  (define gxc#apply-collect-type-info
    (lambda (_stx22936_ . _args22938_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx22936_ _args22938_))
       gxc#current-compile-methods
       (force gxc#&collect-type-info))))
  (define gxc#&basic-expression-type
    (make-promise
     (lambda ()
       (let ((_tbl22933_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl22933_ (force gxc#&false))
           (table-set! _tbl22933_ '%#begin gxc#basic-expression-type-begin%)
           (table-set!
            _tbl22933_
            '%#begin-annotation
            gxc#basic-expression-type-begin-annotation%)
           (table-set! _tbl22933_ '%#lambda gxc#basic-expression-type-lambda%)
           (table-set!
            _tbl22933_
            '%#case-lambda
            gxc#basic-expression-type-case-lambda%)
           (table-set! _tbl22933_ '%#call gxc#basic-expression-type-call%)
           (table-set! _tbl22933_ '%#ref gxc#basic-expression-type-ref%)
           _tbl22933_)))))
  (define gxc#apply-basic-expression-type
    (lambda (_stx22926_ . _args22928_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx22926_ _args22928_))
       gxc#current-compile-methods
       (force gxc#&basic-expression-type))))
  (define gxc#&optimize-call
    (make-promise
     (lambda ()
       (let ((_tbl22923_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl22923_ (force gxc#&basic-xform))
           (table-set! _tbl22923_ '%#call gxc#optimize-call%)
           _tbl22923_)))))
  (define gxc#apply-optimize-call
    (lambda (_stx22916_ . _args22918_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx22916_ _args22918_))
       gxc#current-compile-methods
       (force gxc#&optimize-call))))
  (define gxc#&generate-ssxi
    (make-promise
     (lambda ()
       (let ((_tbl22913_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl22913_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl22913_ '%#begin gxc#generate-runtime-begin%)
           (table-set! _tbl22913_ '%#module gxc#generate-ssxi-module%)
           (table-set!
            _tbl22913_
            '%#define-values
            gxc#generate-ssxi-define-values%)
           (table-set! _tbl22913_ '%#call gxc#generate-ssxi-call%)
           _tbl22913_)))))
  (define gxc#apply-generate-ssxi
    (lambda (_stx22906_ . _args22908_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx22906_ _args22908_))
       gxc#current-compile-methods
       (force gxc#&generate-ssxi))))
  (define gxc#xform-identity (lambda (_stx22903_ . _args22904_) _stx22903_))
  (define gxc#xform-wrap-source
    (lambda (_stx22900_ _src-stx22901_)
      (gx#stx-wrap-source _stx22900_ (gx#stx-source _src-stx22901_))))
  (define gxc#xform-apply-compile-e
    (lambda (_args22894_)
      (lambda (_g2289522897_)
        (apply gxc#compile-e _g2289522897_ _args22894_))))
  (define gxc#xform-begin%
    (lambda (_stx22853_ . _args22854_)
      (let* ((_g2285622866_
              (lambda (_g2285722863_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2285722863_)))
             (_g2285522891_
              (lambda (_g2285722869_)
                (if (gx#stx-pair? _g2285722869_)
                    (let ((_e2285922871_ (gx#stx-e _g2285722869_)))
                      (let ((_hd2286022874_ (##car _e2285922871_))
                            (_tl2286122876_ (##cdr _e2285922871_)))
                        ((lambda (_L22879_)
                           (let ((_forms22889_
                                  (map (gxc#xform-apply-compile-e _args22854_)
                                       _L22879_)))
                             (gxc#xform-wrap-source
                              (cons '%#begin _forms22889_)
                              _stx22853_)))
                         _tl2286122876_)))
                    (_g2285622866_ _g2285722869_)))))
        (_g2285522891_ _stx22853_))))
  (define gxc#xform-module%
    (lambda (_stx22790_ . _args22791_)
      (let* ((_g2279322807_
              (lambda (_g2279422804_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2279422804_)))
             (_g2279222850_
              (lambda (_g2279422810_)
                (if (gx#stx-pair? _g2279422810_)
                    (let ((_e2279722812_ (gx#stx-e _g2279422810_)))
                      (let ((_hd2279822815_ (##car _e2279722812_))
                            (_tl2279922817_ (##cdr _e2279722812_)))
                        (if (gx#stx-pair? _tl2279922817_)
                            (let ((_e2280022820_ (gx#stx-e _tl2279922817_)))
                              (let ((_hd2280122823_ (##car _e2280022820_))
                                    (_tl2280222825_ (##cdr _e2280022820_)))
                                ((lambda (_L22828_ _L22829_)
                                   (let* ((_ctx22842_
                                           (gx#syntax-local-e__0 _L22829_))
                                          (_code22844_
                                           (##structure-ref
                                            _ctx22842_
                                            '11
                                            gx#module-context::t
                                            '#f))
                                          (_code22847_
                                           (call-with-parameters
                                            (lambda ()
                                              (apply gxc#compile-e
                                                     _code22844_
                                                     _args22791_))
                                            gx#current-expander-context
                                            _ctx22842_)))
                                     (begin
                                       (##structure-set!
                                        _ctx22842_
                                        _code22847_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _L22829_
                                                    (cons _code22847_ '())))
                                        _stx22790_))))
                                 _tl2280222825_
                                 _hd2280122823_)))
                            (_g2279322807_ _g2279422810_))))
                    (_g2279322807_ _g2279422810_)))))
        (_g2279222850_ _stx22790_))))
  (define gxc#xform-define-values%
    (lambda (_stx22720_ . _args22721_)
      (let* ((_g2272322740_
              (lambda (_g2272422737_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2272422737_)))
             (_g2272222787_
              (lambda (_g2272422743_)
                (if (gx#stx-pair? _g2272422743_)
                    (let ((_e2272722745_ (gx#stx-e _g2272422743_)))
                      (let ((_hd2272822748_ (##car _e2272722745_))
                            (_tl2272922750_ (##cdr _e2272722745_)))
                        (if (gx#stx-pair? _tl2272922750_)
                            (let ((_e2273022753_ (gx#stx-e _tl2272922750_)))
                              (let ((_hd2273122756_ (##car _e2273022753_))
                                    (_tl2273222758_ (##cdr _e2273022753_)))
                                (if (gx#stx-pair? _tl2273222758_)
                                    (let ((_e2273322761_
                                           (gx#stx-e _tl2273222758_)))
                                      (let ((_hd2273422764_
                                             (##car _e2273322761_))
                                            (_tl2273522766_
                                             (##cdr _e2273322761_)))
                                        (if (gx#stx-null? _tl2273522766_)
                                            ((lambda (_L22769_ _L22770_)
                                               (let ((_expr22785_
                                                      (apply gxc#compile-e
                                                             _L22769_
                                                             _args22721_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#define-values
                                                        (cons _L22770_
                                                              (cons _expr22785_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx22720_)))
                                             _hd2273422764_
                                             _hd2273122756_)
                                            (_g2272322740_ _g2272422743_))))
                                    (_g2272322740_ _g2272422743_))))
                            (_g2272322740_ _g2272422743_))))
                    (_g2272322740_ _g2272422743_)))))
        (_g2272222787_ _stx22720_))))
  (define gxc#xform-begin-annotation%
    (lambda (_stx22650_ . _args22651_)
      (let* ((_g2265322670_
              (lambda (_g2265422667_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2265422667_)))
             (_g2265222717_
              (lambda (_g2265422673_)
                (if (gx#stx-pair? _g2265422673_)
                    (let ((_e2265722675_ (gx#stx-e _g2265422673_)))
                      (let ((_hd2265822678_ (##car _e2265722675_))
                            (_tl2265922680_ (##cdr _e2265722675_)))
                        (if (gx#stx-pair? _tl2265922680_)
                            (let ((_e2266022683_ (gx#stx-e _tl2265922680_)))
                              (let ((_hd2266122686_ (##car _e2266022683_))
                                    (_tl2266222688_ (##cdr _e2266022683_)))
                                (if (gx#stx-pair? _tl2266222688_)
                                    (let ((_e2266322691_
                                           (gx#stx-e _tl2266222688_)))
                                      (let ((_hd2266422694_
                                             (##car _e2266322691_))
                                            (_tl2266522696_
                                             (##cdr _e2266322691_)))
                                        (if (gx#stx-null? _tl2266522696_)
                                            ((lambda (_L22699_ _L22700_)
                                               (let ((_expr22715_
                                                      (apply gxc#compile-e
                                                             _L22699_
                                                             _args22651_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#begin-annotation
                                                        (cons _L22700_
                                                              (cons _expr22715_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx22650_)))
                                             _hd2266422694_
                                             _hd2266122686_)
                                            (_g2265322670_ _g2265422673_))))
                                    (_g2265322670_ _g2265422673_))))
                            (_g2265322670_ _g2265422673_))))
                    (_g2265322670_ _g2265422673_)))))
        (_g2265222717_ _stx22650_))))
  (define gxc#xform-lambda%
    (lambda (_stx22593_ . _args22594_)
      (let* ((_g2259622610_
              (lambda (_g2259722607_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2259722607_)))
             (_g2259522647_
              (lambda (_g2259722613_)
                (if (gx#stx-pair? _g2259722613_)
                    (let ((_e2260022615_ (gx#stx-e _g2259722613_)))
                      (let ((_hd2260122618_ (##car _e2260022615_))
                            (_tl2260222620_ (##cdr _e2260022615_)))
                        (if (gx#stx-pair? _tl2260222620_)
                            (let ((_e2260322623_ (gx#stx-e _tl2260222620_)))
                              (let ((_hd2260422626_ (##car _e2260322623_))
                                    (_tl2260522628_ (##cdr _e2260322623_)))
                                ((lambda (_L22631_ _L22632_)
                                   (let ((_body22645_
                                          (map (gxc#xform-apply-compile-e
                                                _args22594_)
                                               _L22631_)))
                                     (gxc#xform-wrap-source
                                      (cons '%#lambda
                                            (cons _L22632_ _body22645_))
                                      _stx22593_)))
                                 _tl2260522628_
                                 _hd2260422626_)))
                            (_g2259622610_ _g2259722613_))))
                    (_g2259622610_ _g2259722613_)))))
        (_g2259522647_ _stx22593_))))
  (define gxc#xform-case-lambda%
    (lambda (_stx22506_ . _args22507_)
      (letrec ((_clause-e22509_
                (lambda (_clause22550_)
                  (let* ((_g2255222563_
                          (lambda (_g2255322560_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g2255322560_)))
                         (_g2255122590_
                          (lambda (_g2255322566_)
                            (if (gx#stx-pair? _g2255322566_)
                                (let ((_e2255622568_ (gx#stx-e _g2255322566_)))
                                  (let ((_hd2255722571_ (##car _e2255622568_))
                                        (_tl2255822573_ (##cdr _e2255622568_)))
                                    ((lambda (_L22576_ _L22577_)
                                       (let ((_body22588_
                                              (map (gxc#xform-apply-compile-e
                                                    _args22507_)
                                                   _L22576_)))
                                         (cons _L22577_ _body22588_)))
                                     _tl2255822573_
                                     _hd2255722571_)))
                                (_g2255222563_ _g2255322566_)))))
                    (_g2255122590_ _clause22550_)))))
        (let* ((_g2251122521_
                (lambda (_g2251222518_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2251222518_)))
               (_g2251022547_
                (lambda (_g2251222524_)
                  (if (gx#stx-pair? _g2251222524_)
                      (let ((_e2251422526_ (gx#stx-e _g2251222524_)))
                        (let ((_hd2251522529_ (##car _e2251422526_))
                              (_tl2251622531_ (##cdr _e2251422526_)))
                          ((lambda (_L22534_)
                             (let ((_clauses22545_
                                    (map _clause-e22509_ _L22534_)))
                               (gxc#xform-wrap-source
                                (cons '%#case-lambda _clauses22545_)
                                _stx22506_)))
                           _tl2251622531_)))
                      (_g2251122521_ _g2251222524_)))))
          (_g2251022547_ _stx22506_)))))
  (define gxc#xform-let-values%
    (lambda (_stx22300_ . _args22301_)
      (let* ((_g2230322336_
              (lambda (_g2230422333_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2230422333_)))
             (_g2230222503_
              (lambda (_g2230422339_)
                (if (gx#stx-pair? _g2230422339_)
                    (let ((_e2230922341_ (gx#stx-e _g2230422339_)))
                      (let ((_hd2231022344_ (##car _e2230922341_))
                            (_tl2231122346_ (##cdr _e2230922341_)))
                        (if (gx#stx-pair? _tl2231122346_)
                            (let ((_e2231222349_ (gx#stx-e _tl2231122346_)))
                              (let ((_hd2231322352_ (##car _e2231222349_))
                                    (_tl2231422354_ (##cdr _e2231222349_)))
                                (if (gx#stx-pair/null? _hd2231322352_)
                                    (if (fx>= (gx#stx-length _hd2231322352_)
                                              '0)
                                        (let ((_g23651_
                                               (gx#syntax-split-splice
                                                _hd2231322352_
                                                '0)))
                                          (begin
                                            (let ((_g23652_
                                                   (values-count _g23651_)))
                                              (if (not (fx= _g23652_ 2))
                                                  (error "Context expects 2 values"
                                                         _g23652_)))
                                            (let ((_target2231522357_
                                                   (values-ref _g23651_ 0))
                                                  (_tl2231722359_
                                                   (values-ref _g23651_ 1)))
                                              (if (gx#stx-null? _tl2231722359_)
                                                  (letrec ((_loop2231822362_
                                                            (lambda (_hd2231622365_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr2232222367_
                             _hd2232322369_)
                      (if (gx#stx-pair? _hd2231622365_)
                          (let ((_e2231922372_ (gx#stx-e _hd2231622365_)))
                            (let ((_lp-hd2232022375_ (##car _e2231922372_))
                                  (_lp-tl2232122377_ (##cdr _e2231922372_)))
                              (if (gx#stx-pair? _lp-hd2232022375_)
                                  (let ((_e2232622380_
                                         (gx#stx-e _lp-hd2232022375_)))
                                    (let ((_hd2232722383_
                                           (##car _e2232622380_))
                                          (_tl2232822385_
                                           (##cdr _e2232622380_)))
                                      (if (gx#stx-pair? _tl2232822385_)
                                          (let ((_e2232922388_
                                                 (gx#stx-e _tl2232822385_)))
                                            (let ((_hd2233022391_
                                                   (##car _e2232922388_))
                                                  (_tl2233122393_
                                                   (##cdr _e2232922388_)))
                                              (if (gx#stx-null? _tl2233122393_)
                                                  (_loop2231822362_
                                                   _lp-tl2232122377_
                                                   (cons _hd2233022391_
                                                         _expr2232222367_)
                                                   (cons _hd2232722383_
                                                         _hd2232322369_))
                                                  (_g2230322336_
                                                   _g2230422339_))))
                                          (_g2230322336_ _g2230422339_))))
                                  (_g2230322336_ _g2230422339_))))
                          (let ((_expr2232422396_ (reverse _expr2232222367_))
                                (_hd2232522398_ (reverse _hd2232322369_)))
                            ((lambda (_L22401_ _L22402_ _L22403_ _L22404_)
                               (let* ((_g2242322439_
                                       (lambda (_g2242422436_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2242422436_)))
                                      (_g2242222493_
                                       (lambda (_g2242422442_)
                                         (if (gx#stx-pair/null? _g2242422442_)
                                             (if (fx>= (gx#stx-length
                                                        _g2242422442_)
                                                       '0)
                                                 (let ((_g23653_
                                                        (gx#syntax-split-splice
                                                         _g2242422442_
                                                         '0)))
                                                   (begin
                                                     (let ((_g23654_
                                                            (values-count
                                                             _g23653_)))
                                                       (if (not (fx= _g23654_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g23654_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2242622444_
                                                            (values-ref
                                                             _g23653_
                                                             0))
                                                           (_tl2242822446_
                                                            (values-ref
                                                             _g23653_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2242822446_)
                                                           (letrec ((_loop2242922449_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2242722452_ _expr2243322454_)
                               (if (gx#stx-pair? _hd2242722452_)
                                   (let ((_e2243022457_
                                          (gx#syntax-e _hd2242722452_)))
                                     (let ((_lp-hd2243122460_
                                            (##car _e2243022457_))
                                           (_lp-tl2243222462_
                                            (##cdr _e2243022457_)))
                                       (_loop2242922449_
                                        _lp-tl2243222462_
                                        (cons _lp-hd2243122460_
                                              _expr2243322454_))))
                                   (let ((_expr2243422465_
                                          (reverse _expr2243322454_)))
                                     ((lambda (_L22468_)
                                        (let ()
                                          (let ((_body22481_
                                                 (map (gxc#xform-apply-compile-e
                                                       _args22301_)
                                                      _L22401_)))
                                            (gxc#xform-wrap-source
                                             (cons _L22404_
                                                   (cons (begin
                                                           (gx#syntax-check-splice-targets
                                                            _L22468_
                                                            _L22403_)
                                                           (foldr (lambda (_g2248222486_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g2248322488_
                                   _g2248422490_)
                            (cons (cons _g2248322488_ (cons _g2248222486_ '()))
                                  _g2248422490_))
                          '()
                          _L22468_
                          _L22403_))
                 _body22481_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _stx22300_))))
                                      _expr2243422465_))))))
                     (_loop2242922449_ _target2242622444_ '()))
                   (_g2242322439_ _g2242422442_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2242322439_ _g2242422442_))
                                             (_g2242322439_ _g2242422442_)))))
                                 (_g2242222493_
                                  (map (gxc#xform-apply-compile-e _args22301_)
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g2249522498_
                                                          _g2249622500_)
                                                   (cons _g2249522498_
                                                         _g2249622500_))
                                                 '()
                                                 _L22402_))))))
                             _tl2231422354_
                             _expr2232422396_
                             _hd2232522398_
                             _hd2231022344_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop2231822362_
                                                     _target2231522357_
                                                     '()
                                                     '()))
                                                  (_g2230322336_
                                                   _g2230422339_)))))
                                        (_g2230322336_ _g2230422339_))
                                    (_g2230322336_ _g2230422339_))))
                            (_g2230322336_ _g2230422339_))))
                    (_g2230322336_ _g2230422339_)))))
        (_g2230222503_ _stx22300_))))
  (define gxc#xform-operands
    (lambda (_stx22256_ . _args22257_)
      (let* ((_g2225922270_
              (lambda (_g2226022267_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2226022267_)))
             (_g2225822297_
              (lambda (_g2226022273_)
                (if (gx#stx-pair? _g2226022273_)
                    (let ((_e2226322275_ (gx#stx-e _g2226022273_)))
                      (let ((_hd2226422278_ (##car _e2226322275_))
                            (_tl2226522280_ (##cdr _e2226322275_)))
                        ((lambda (_L22283_ _L22284_)
                           (let ((_rands22295_
                                  (map (gxc#xform-apply-compile-e _args22257_)
                                       _L22283_)))
                             (gxc#xform-wrap-source
                              (cons _L22284_ _rands22295_)
                              _stx22256_)))
                         _tl2226522280_
                         _hd2226422278_)))
                    (_g2225922270_ _g2226022273_)))))
        (_g2225822297_ _stx22256_))))
  (define gxc#xform-call% gxc#xform-operands)
  (define gxc#xform-setq%
    (lambda (_stx22186_ . _args22187_)
      (let* ((_g2218922206_
              (lambda (_g2219022203_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2219022203_)))
             (_g2218822253_
              (lambda (_g2219022209_)
                (if (gx#stx-pair? _g2219022209_)
                    (let ((_e2219322211_ (gx#stx-e _g2219022209_)))
                      (let ((_hd2219422214_ (##car _e2219322211_))
                            (_tl2219522216_ (##cdr _e2219322211_)))
                        (if (gx#stx-pair? _tl2219522216_)
                            (let ((_e2219622219_ (gx#stx-e _tl2219522216_)))
                              (let ((_hd2219722222_ (##car _e2219622219_))
                                    (_tl2219822224_ (##cdr _e2219622219_)))
                                (if (gx#stx-pair? _tl2219822224_)
                                    (let ((_e2219922227_
                                           (gx#stx-e _tl2219822224_)))
                                      (let ((_hd2220022230_
                                             (##car _e2219922227_))
                                            (_tl2220122232_
                                             (##cdr _e2219922227_)))
                                        (if (gx#stx-null? _tl2220122232_)
                                            ((lambda (_L22235_ _L22236_)
                                               (let ((_expr22251_
                                                      (apply gxc#compile-e
                                                             _L22235_
                                                             _args22187_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#set!
                                                        (cons _L22236_
                                                              (cons _expr22251_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx22186_)))
                                             _hd2220022230_
                                             _hd2219722222_)
                                            (_g2218922206_ _g2219022209_))))
                                    (_g2218922206_ _g2219022209_))))
                            (_g2218922206_ _g2219022209_))))
                    (_g2218922206_ _g2219022209_)))))
        (_g2218822253_ _stx22186_))))
  (define gxc#collect-mutators-setq%
    (lambda (_stx22117_)
      (let* ((_g2211922136_
              (lambda (_g2212022133_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2212022133_)))
             (_g2211822183_
              (lambda (_g2212022139_)
                (if (gx#stx-pair? _g2212022139_)
                    (let ((_e2212322141_ (gx#stx-e _g2212022139_)))
                      (let ((_hd2212422144_ (##car _e2212322141_))
                            (_tl2212522146_ (##cdr _e2212322141_)))
                        (if (gx#stx-pair? _tl2212522146_)
                            (let ((_e2212622149_ (gx#stx-e _tl2212522146_)))
                              (let ((_hd2212722152_ (##car _e2212622149_))
                                    (_tl2212822154_ (##cdr _e2212622149_)))
                                (if (gx#stx-pair? _tl2212822154_)
                                    (let ((_e2212922157_
                                           (gx#stx-e _tl2212822154_)))
                                      (let ((_hd2213022160_
                                             (##car _e2212922157_))
                                            (_tl2213122162_
                                             (##cdr _e2212922157_)))
                                        (if (gx#stx-null? _tl2213122162_)
                                            ((lambda (_L22165_ _L22166_)
                                               (let ((_sym22181_
                                                      (gxc#generate-runtime-binding-id
                                                       _L22166_)))
                                                 (begin
                                                   (gxc#verbose
                                                    '"collect mutator "
                                                    _sym22181_)
                                                   (table-set!
                                                    (gxc#current-compile-mutators)
                                                    _sym22181_
                                                    '#t)
                                                   (gxc#compile-e _L22165_))))
                                             _hd2213022160_
                                             _hd2212722152_)
                                            (_g2211922136_ _g2212022139_))))
                                    (_g2211922136_ _g2212022139_))))
                            (_g2211922136_ _g2212022139_))))
                    (_g2211922136_ _g2212022139_)))))
        (_g2211822183_ _stx22117_))))
  (define gxc#dispatch-lambda-form?
    (lambda (_form21351_)
      (let* ((_g2135621513_
              (lambda (_g2135721510_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2135721510_)))
             (_g2135521520_ (lambda (_g2135721516_) ((lambda () '#f))))
             (_g2135421660_
              (lambda (_g2135721523_)
                (if (gx#stx-pair? _g2135721523_)
                    (let ((_e2147321525_ (gx#stx-e _g2135721523_)))
                      (let ((_hd2147421528_ (##car _e2147321525_))
                            (_tl2147521530_ (##cdr _e2147321525_)))
                        (if (gx#stx-pair? _tl2147521530_)
                            (let ((_e2147621533_ (gx#stx-e _tl2147521530_)))
                              (let ((_hd2147721536_ (##car _e2147621533_))
                                    (_tl2147821538_ (##cdr _e2147621533_)))
                                (if (gx#stx-pair? _hd2147721536_)
                                    (let ((_e2147921541_
                                           (gx#stx-e _hd2147721536_)))
                                      (let ((_hd2148021544_
                                             (##car _e2147921541_))
                                            (_tl2148121546_
                                             (##cdr _e2147921541_)))
                                        (if (gx#identifier? _hd2148021544_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd2148021544_)
                                                (if (gx#stx-pair?
                                                     _tl2148121546_)
                                                    (let ((_e2148221549_
                                                           (gx#stx-e
                                                            _tl2148121546_)))
                                                      (let ((_hd2148321552_
                                                             (##car _e2148221549_))
                                                            (_tl2148421554_
                                                             (##cdr _e2148221549_)))
                                                        (if (gx#stx-pair?
                                                             _hd2148321552_)
                                                            (let ((_e2148521557_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2148321552_)))
                      (let ((_hd2148621560_ (##car _e2148521557_))
                            (_tl2148721562_ (##cdr _e2148521557_)))
                        (if (gx#identifier? _hd2148621560_)
                            (if (gx#stx-eq? '%#ref _hd2148621560_)
                                (if (gx#stx-pair? _tl2148721562_)
                                    (let ((_e2148821565_
                                           (gx#stx-e _tl2148721562_)))
                                      (let ((_hd2148921568_
                                             (##car _e2148821565_))
                                            (_tl2149021570_
                                             (##cdr _e2148821565_)))
                                        (if (gx#stx-null? _tl2149021570_)
                                            (if (gx#stx-pair? _tl2148421554_)
                                                (let ((_e2149121573_
                                                       (gx#stx-e
                                                        _tl2148421554_)))
                                                  (let ((_hd2149221576_
                                                         (##car _e2149121573_))
                                                        (_tl2149321578_
                                                         (##cdr _e2149121573_)))
                                                    (if (gx#stx-pair?
                                                         _hd2149221576_)
                                                        (let ((_e2149421581_
                                                               (gx#stx-e
                                                                _hd2149221576_)))
                                                          (let ((_hd2149521584_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2149421581_))
                        (_tl2149621586_ (##cdr _e2149421581_)))
                    (if (gx#identifier? _hd2149521584_)
                        (if (gx#stx-eq? '%#ref _hd2149521584_)
                            (if (gx#stx-pair? _tl2149621586_)
                                (let ((_e2149721589_
                                       (gx#stx-e _tl2149621586_)))
                                  (let ((_hd2149821592_ (##car _e2149721589_))
                                        (_tl2149921594_ (##cdr _e2149721589_)))
                                    (if (gx#stx-null? _tl2149921594_)
                                        (if (gx#stx-pair? _tl2149321578_)
                                            (let ((_e2150021597_
                                                   (gx#stx-e _tl2149321578_)))
                                              (let ((_hd2150121600_
                                                     (##car _e2150021597_))
                                                    (_tl2150221602_
                                                     (##cdr _e2150021597_)))
                                                (if (gx#stx-pair?
                                                     _hd2150121600_)
                                                    (let ((_e2150321605_
                                                           (gx#stx-e
                                                            _hd2150121600_)))
                                                      (let ((_hd2150421608_
                                                             (##car _e2150321605_))
                                                            (_tl2150521610_
                                                             (##cdr _e2150321605_)))
                                                        (if (gx#identifier?
                                                             _hd2150421608_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2150421608_)
                        (if (gx#stx-pair? _tl2150521610_)
                            (let ((_e2150621613_ (gx#stx-e _tl2150521610_)))
                              (let ((_hd2150721616_ (##car _e2150621613_))
                                    (_tl2150821618_ (##cdr _e2150621613_)))
                                (if (gx#stx-null? _tl2150821618_)
                                    (if (gx#stx-null? _tl2150221602_)
                                        (if (gx#stx-null? _tl2147821538_)
                                            ((lambda (_L21621_
                                                      _L21622_
                                                      _L21623_
                                                      _L21624_)
                                               (if (if (gx#identifier?
                                                        _L21624_)
                                                       (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L21623_)
                        'apply)
                   (if (gx#free-identifier=? _L21624_ _L21621_)
                       (not (gx#free-identifier=? _L21622_ _L21624_))
                       '#f)
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#t
                                                   (_g2135521520_
                                                    _g2135721523_)))
                                             _hd2150721616_
                                             _hd2149821592_
                                             _hd2148921568_
                                             _hd2147421528_)
                                            (_g2135521520_ _g2135721523_))
                                        (_g2135521520_ _g2135721523_))
                                    (_g2135521520_ _g2135721523_))))
                            (_g2135521520_ _g2135721523_))
                        (_g2135521520_ _g2135721523_))
                    (_g2135521520_ _g2135721523_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2135521520_
                                                     _g2135721523_))))
                                            (_g2135521520_ _g2135721523_))
                                        (_g2135521520_ _g2135721523_))))
                                (_g2135521520_ _g2135721523_))
                            (_g2135521520_ _g2135721523_))
                        (_g2135521520_ _g2135721523_))))
                (_g2135521520_ _g2135721523_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2135521520_ _g2135721523_))
                                            (_g2135521520_ _g2135721523_))))
                                    (_g2135521520_ _g2135721523_))
                                (_g2135521520_ _g2135721523_))
                            (_g2135521520_ _g2135721523_))))
                    (_g2135521520_ _g2135721523_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2135521520_
                                                     _g2135721523_))
                                                (_g2135521520_ _g2135721523_))
                                            (_g2135521520_ _g2135721523_))))
                                    (_g2135521520_ _g2135721523_))))
                            (_g2135521520_ _g2135721523_))))
                    (_g2135521520_ _g2135721523_))))
             (_g2135321920_
              (lambda (_g2135721663_)
                (if (gx#stx-pair? _g2135721663_)
                    (let ((_e2140921665_ (gx#stx-e _g2135721663_)))
                      (let ((_hd2141021668_ (##car _e2140921665_))
                            (_tl2141121670_ (##cdr _e2140921665_)))
                        (if (gx#stx-pair/null? _hd2141021668_)
                            (if (fx>= (gx#stx-length _hd2141021668_) '0)
                                (let ((_g23655_
                                       (gx#syntax-split-splice
                                        _hd2141021668_
                                        '0)))
                                  (begin
                                    (let ((_g23656_ (values-count _g23655_)))
                                      (if (not (fx= _g23656_ 2))
                                          (error "Context expects 2 values"
                                                 _g23656_)))
                                    (let ((_target2141221673_
                                           (values-ref _g23655_ 0))
                                          (_tl2141421675_
                                           (values-ref _g23655_ 1)))
                                      (letrec ((_loop2141521678_
                                                (lambda (_hd2141321681_
                                                         _arg2141921683_)
                                                  (if (gx#stx-pair?
                                                       _hd2141321681_)
                                                      (let ((_e2141621686_
                                                             (gx#stx-e
                                                              _hd2141321681_)))
                                                        (let ((_lp-hd2141721689_
                                                               (##car _e2141621686_))
                                                              (_lp-tl2141821691_
                                                               (##cdr _e2141621686_)))
                                                          (_loop2141521678_
                                                           _lp-tl2141821691_
                                                           (cons _lp-hd2141721689_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _arg2141921683_))))
              (let ((_arg2142021694_ (reverse _arg2141921683_)))
                (if (gx#stx-pair? _tl2141121670_)
                    (let ((_e2142121697_ (gx#stx-e _tl2141121670_)))
                      (let ((_hd2142221700_ (##car _e2142121697_))
                            (_tl2142321702_ (##cdr _e2142121697_)))
                        (if (gx#stx-pair? _hd2142221700_)
                            (let ((_e2142421705_ (gx#stx-e _hd2142221700_)))
                              (let ((_hd2142521708_ (##car _e2142421705_))
                                    (_tl2142621710_ (##cdr _e2142421705_)))
                                (if (gx#identifier? _hd2142521708_)
                                    (if (gx#stx-eq? '%#call _hd2142521708_)
                                        (if (gx#stx-pair? _tl2142621710_)
                                            (let ((_e2142721713_
                                                   (gx#stx-e _tl2142621710_)))
                                              (let ((_hd2142821716_
                                                     (##car _e2142721713_))
                                                    (_tl2142921718_
                                                     (##cdr _e2142721713_)))
                                                (if (gx#stx-pair?
                                                     _hd2142821716_)
                                                    (let ((_e2143021721_
                                                           (gx#stx-e
                                                            _hd2142821716_)))
                                                      (let ((_hd2143121724_
                                                             (##car _e2143021721_))
                                                            (_tl2143221726_
                                                             (##cdr _e2143021721_)))
                                                        (if (gx#identifier?
                                                             _hd2143121724_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2143121724_)
                        (if (gx#stx-pair? _tl2143221726_)
                            (let ((_e2143321729_ (gx#stx-e _tl2143221726_)))
                              (let ((_hd2143421732_ (##car _e2143321729_))
                                    (_tl2143521734_ (##cdr _e2143321729_)))
                                (if (gx#stx-null? _tl2143521734_)
                                    (if (gx#stx-pair? _tl2142921718_)
                                        (let ((_e2143621737_
                                               (gx#stx-e _tl2142921718_)))
                                          (let ((_hd2143721740_
                                                 (##car _e2143621737_))
                                                (_tl2143821742_
                                                 (##cdr _e2143621737_)))
                                            (if (gx#stx-pair? _hd2143721740_)
                                                (let ((_e2143921745_
                                                       (gx#stx-e
                                                        _hd2143721740_)))
                                                  (let ((_hd2144021748_
                                                         (##car _e2143921745_))
                                                        (_tl2144121750_
                                                         (##cdr _e2143921745_)))
                                                    (if (gx#identifier?
                                                         _hd2144021748_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd2144021748_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2144121750_)
                        (let ((_e2144221753_ (gx#stx-e _tl2144121750_)))
                          (let ((_hd2144321756_ (##car _e2144221753_))
                                (_tl2144421758_ (##cdr _e2144221753_)))
                            (if (gx#stx-null? _tl2144421758_)
                                (if (gx#stx-pair/null? _tl2143821742_)
                                    (if (fx>= (gx#stx-length _tl2143821742_)
                                              '1)
                                        (let ((_g23657_
                                               (gx#syntax-split-splice
                                                _tl2143821742_
                                                '1)))
                                          (begin
                                            (let ((_g23658_
                                                   (values-count _g23657_)))
                                              (if (not (fx= _g23658_ 2))
                                                  (error "Context expects 2 values"
                                                         _g23658_)))
                                            (let ((_target2144521761_
                                                   (values-ref _g23657_ 0))
                                                  (_tl2144721763_
                                                   (values-ref _g23657_ 1)))
                                              (if (gx#stx-pair? _tl2144721763_)
                                                  (let ((_e2145421766_
                                                         (gx#stx-e
                                                          _tl2144721763_)))
                                                    (let ((_hd2145521769_
                                                           (##car _e2145421766_))
                                                          (_tl2145621771_
                                                           (##cdr _e2145421766_)))
                                                      (if (gx#stx-pair?
                                                           _hd2145521769_)
                                                          (let ((_e2145721774_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2145521769_)))
                    (let ((_hd2145821777_ (##car _e2145721774_))
                          (_tl2145921779_ (##cdr _e2145721774_)))
                      (if (gx#identifier? _hd2145821777_)
                          (if (gx#stx-eq? '%#ref _hd2145821777_)
                              (if (gx#stx-pair? _tl2145921779_)
                                  (let ((_e2146021782_
                                         (gx#stx-e _tl2145921779_)))
                                    (let ((_hd2146121785_
                                           (##car _e2146021782_))
                                          (_tl2146221787_
                                           (##cdr _e2146021782_)))
                                      (if (gx#stx-null? _tl2146221787_)
                                          (if (gx#stx-null? _tl2145621771_)
                                              (letrec ((_loop2144821790_
                                                        (lambda (_hd2144621793_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _xarg2145221795_)
                  (if (gx#stx-pair? _hd2144621793_)
                      (let ((_e2144921798_ (gx#stx-e _hd2144621793_)))
                        (let ((_lp-hd2145021801_ (##car _e2144921798_))
                              (_lp-tl2145121803_ (##cdr _e2144921798_)))
                          (if (gx#stx-pair? _lp-hd2145021801_)
                              (let ((_e2146321806_
                                     (gx#stx-e _lp-hd2145021801_)))
                                (let ((_hd2146421809_ (##car _e2146321806_))
                                      (_tl2146521811_ (##cdr _e2146321806_)))
                                  (if (gx#identifier? _hd2146421809_)
                                      (if (gx#stx-eq? '%#ref _hd2146421809_)
                                          (if (gx#stx-pair? _tl2146521811_)
                                              (let ((_e2146621814_
                                                     (gx#stx-e
                                                      _tl2146521811_)))
                                                (let ((_hd2146721817_
                                                       (##car _e2146621814_))
                                                      (_tl2146821819_
                                                       (##cdr _e2146621814_)))
                                                  (if (gx#stx-null?
                                                       _tl2146821819_)
                                                      (_loop2144821790_
                                                       _lp-tl2145121803_
                                                       (cons _hd2146721817_
                                                             _xarg2145221795_))
                                                      (_g2135421660_
                                                       _g2135721663_))))
                                              (_g2135421660_ _g2135721663_))
                                          (_g2135421660_ _g2135721663_))
                                      (_g2135421660_ _g2135721663_))))
                              (_g2135421660_ _g2135721663_))))
                      (let ((_xarg2145321822_ (reverse _xarg2145221795_)))
                        (if (gx#stx-null? _tl2142321702_)
                            ((lambda (_L21825_
                                      _L21826_
                                      _L21827_
                                      _L21828_
                                      _L21829_
                                      _L21830_)
                               (if (if (gx#identifier-list?
                                        (begin
                                          '#!void
                                          (foldr1 (lambda (_g2187321876_
                                                           _g2187421878_)
                                                    (cons _g2187321876_
                                                          _g2187421878_))
                                                  '()
                                                  _L21830_)))
                                       (if (gx#identifier? _L21829_)
                                           (if (eq? (gxc#generate-runtime-binding-id
                                                     _L21828_)
                                                    'apply)
                                               (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr1 (lambda (_g2188021883_ _g2188121885_)
                                    (cons _g2188021883_ _g2188121885_))
                                  '()
                                  _L21830_)))
                (length (begin
                          '#!void
                          (foldr1 (lambda (_g2188721890_ _g2188821892_)
                                    (cons _g2188721890_ _g2188821892_))
                                  '()
                                  _L21826_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (andmap gx#free-identifier=?
                                                               (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#!void
                         (foldr1 (lambda (_g2189421897_ _g2189521899_)
                                   (cons _g2189421897_ _g2189521899_))
                                 '()
                                 _L21830_))
                       (begin
                         '#!void
                         (foldr1 (lambda (_g2190121904_ _g2190221906_)
                                   (cons _g2190121904_ _g2190221906_))
                                 '()
                                 _L21826_)))
               (if (gx#free-identifier=? _L21829_ _L21825_)
                   (not (find (lambda (_g2190821910_)
                                (gx#free-identifier=? _g2190821910_ _L21827_))
                              (begin
                                '#!void
                                (foldr1 (lambda (_g2191221915_ _g2191321917_)
                                          (cons _g2191221915_ _g2191321917_))
                                        (cons _L21829_ '())
                                        _L21830_))))
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#f)
                                               '#f)
                                           '#f)
                                       '#f)
                                   '#t
                                   (_g2135421660_ _g2135721663_)))
                             _hd2146121785_
                             _xarg2145321822_
                             _hd2144321756_
                             _hd2143421732_
                             _tl2141421675_
                             _arg2142021694_)
                            (_g2135421660_ _g2135721663_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop2144821790_
                                                 _target2144521761_
                                                 '()))
                                              (_g2135421660_ _g2135721663_))
                                          (_g2135421660_ _g2135721663_))))
                                  (_g2135421660_ _g2135721663_))
                              (_g2135421660_ _g2135721663_))
                          (_g2135421660_ _g2135721663_))))
                  (_g2135421660_ _g2135721663_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2135421660_
                                                   _g2135721663_)))))
                                        (_g2135421660_ _g2135721663_))
                                    (_g2135421660_ _g2135721663_))
                                (_g2135421660_ _g2135721663_))))
                        (_g2135421660_ _g2135721663_))
                    (_g2135421660_ _g2135721663_))
                (_g2135421660_ _g2135721663_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2135421660_
                                                 _g2135721663_))))
                                        (_g2135421660_ _g2135721663_))
                                    (_g2135421660_ _g2135721663_))))
                            (_g2135421660_ _g2135721663_))
                        (_g2135421660_ _g2135721663_))
                    (_g2135421660_ _g2135721663_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2135421660_
                                                     _g2135721663_))))
                                            (_g2135421660_ _g2135721663_))
                                        (_g2135421660_ _g2135721663_))
                                    (_g2135421660_ _g2135721663_))))
                            (_g2135421660_ _g2135721663_))))
                    (_g2135421660_ _g2135721663_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop2141521678_
                                         _target2141221673_
                                         '())))))
                                (_g2135421660_ _g2135721663_))
                            (_g2135421660_ _g2135721663_))))
                    (_g2135421660_ _g2135721663_))))
             (_g2135222114_
              (lambda (_g2135721923_)
                (if (gx#stx-pair? _g2135721923_)
                    (let ((_e2136121925_ (gx#stx-e _g2135721923_)))
                      (let ((_hd2136221928_ (##car _e2136121925_))
                            (_tl2136321930_ (##cdr _e2136121925_)))
                        (if (gx#stx-pair/null? _hd2136221928_)
                            (if (fx>= (gx#stx-length _hd2136221928_) '0)
                                (let ((_g23659_
                                       (gx#syntax-split-splice
                                        _hd2136221928_
                                        '0)))
                                  (begin
                                    (let ((_g23660_ (values-count _g23659_)))
                                      (if (not (fx= _g23660_ 2))
                                          (error "Context expects 2 values"
                                                 _g23660_)))
                                    (let ((_target2136421933_
                                           (values-ref _g23659_ 0))
                                          (_tl2136621935_
                                           (values-ref _g23659_ 1)))
                                      (if (gx#stx-null? _tl2136621935_)
                                          (letrec ((_loop2136721938_
                                                    (lambda (_hd2136521941_
                                                             _arg2137121943_)
                                                      (if (gx#stx-pair?
                                                           _hd2136521941_)
                                                          (let ((_e2136821946_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2136521941_)))
                    (let ((_lp-hd2136921949_ (##car _e2136821946_))
                          (_lp-tl2137021951_ (##cdr _e2136821946_)))
                      (_loop2136721938_
                       _lp-tl2137021951_
                       (cons _lp-hd2136921949_ _arg2137121943_))))
                  (let ((_arg2137221954_ (reverse _arg2137121943_)))
                    (if (gx#stx-pair? _tl2136321930_)
                        (let ((_e2137321957_ (gx#stx-e _tl2136321930_)))
                          (let ((_hd2137421960_ (##car _e2137321957_))
                                (_tl2137521962_ (##cdr _e2137321957_)))
                            (if (gx#stx-pair? _hd2137421960_)
                                (let ((_e2137621965_
                                       (gx#stx-e _hd2137421960_)))
                                  (let ((_hd2137721968_ (##car _e2137621965_))
                                        (_tl2137821970_ (##cdr _e2137621965_)))
                                    (if (gx#identifier? _hd2137721968_)
                                        (if (gx#stx-eq? '%#call _hd2137721968_)
                                            (if (gx#stx-pair? _tl2137821970_)
                                                (let ((_e2137921973_
                                                       (gx#stx-e
                                                        _tl2137821970_)))
                                                  (let ((_hd2138021976_
                                                         (##car _e2137921973_))
                                                        (_tl2138121978_
                                                         (##cdr _e2137921973_)))
                                                    (if (gx#stx-pair?
                                                         _hd2138021976_)
                                                        (let ((_e2138221981_
                                                               (gx#stx-e
                                                                _hd2138021976_)))
                                                          (let ((_hd2138321984_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2138221981_))
                        (_tl2138421986_ (##cdr _e2138221981_)))
                    (if (gx#identifier? _hd2138321984_)
                        (if (gx#stx-eq? '%#ref _hd2138321984_)
                            (if (gx#stx-pair? _tl2138421986_)
                                (let ((_e2138521989_
                                       (gx#stx-e _tl2138421986_)))
                                  (let ((_hd2138621992_ (##car _e2138521989_))
                                        (_tl2138721994_ (##cdr _e2138521989_)))
                                    (if (gx#stx-null? _tl2138721994_)
                                        (if (gx#stx-pair/null? _tl2138121978_)
                                            (if (fx>= (gx#stx-length
                                                       _tl2138121978_)
                                                      '0)
                                                (let ((_g23661_
                                                       (gx#syntax-split-splice
                                                        _tl2138121978_
                                                        '0)))
                                                  (begin
                                                    (let ((_g23662_
                                                           (values-count
                                                            _g23661_)))
                                                      (if (not (fx= _g23662_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g23662_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2138821997_
                                                           (values-ref
                                                            _g23661_
                                                            0))
                                                          (_tl2139021999_
                                                           (values-ref
                                                            _g23661_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl2139021999_)
                                                          (letrec ((_loop2139122002_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd2138922005_ _xarg2139522007_)
                              (if (gx#stx-pair? _hd2138922005_)
                                  (let ((_e2139222010_
                                         (gx#stx-e _hd2138922005_)))
                                    (let ((_lp-hd2139322013_
                                           (##car _e2139222010_))
                                          (_lp-tl2139422015_
                                           (##cdr _e2139222010_)))
                                      (if (gx#stx-pair? _lp-hd2139322013_)
                                          (let ((_e2139722018_
                                                 (gx#stx-e _lp-hd2139322013_)))
                                            (let ((_hd2139822021_
                                                   (##car _e2139722018_))
                                                  (_tl2139922023_
                                                   (##cdr _e2139722018_)))
                                              (if (gx#identifier?
                                                   _hd2139822021_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd2139822021_)
                                                      (if (gx#stx-pair?
                                                           _tl2139922023_)
                                                          (let ((_e2140022026_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2139922023_)))
                    (let ((_hd2140122029_ (##car _e2140022026_))
                          (_tl2140222031_ (##cdr _e2140022026_)))
                      (if (gx#stx-null? _tl2140222031_)
                          (_loop2139122002_
                           _lp-tl2139422015_
                           (cons _hd2140122029_ _xarg2139522007_))
                          (_g2135321920_ _g2135721923_))))
                  (_g2135321920_ _g2135721923_))
              (_g2135321920_ _g2135721923_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2135321920_
                                                   _g2135721923_))))
                                          (_g2135321920_ _g2135721923_))))
                                  (let ((_xarg2139622034_
                                         (reverse _xarg2139522007_)))
                                    (if (gx#stx-null? _tl2137521962_)
                                        ((lambda (_L22037_ _L22038_ _L22039_)
                                           (if (if (gx#identifier-list?
                                                    (begin
                                                      '#!void
                                                      (foldr1 (lambda (_g2206722070_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2206822072_)
                        (cons _g2206722070_ _g2206822072_))
                      '()
                      _L22039_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#!void
                              (foldr1 (lambda (_g2207422077_ _g2207522079_)
                                        (cons _g2207422077_ _g2207522079_))
                                      '()
                                      _L22039_)))
                    (length (begin
                              '#!void
                              (foldr1 (lambda (_g2208122084_ _g2208222086_)
                                        (cons _g2208122084_ _g2208222086_))
                                      '()
                                      _L22037_))))
               (if (andmap gx#free-identifier=?
                           (begin
                             '#!void
                             (foldr1 (lambda (_g2208822091_ _g2208922093_)
                                       (cons _g2208822091_ _g2208922093_))
                                     '()
                                     _L22039_))
                           (begin
                             '#!void
                             (foldr1 (lambda (_g2209522098_ _g2209622100_)
                                       (cons _g2209522098_ _g2209622100_))
                                     '()
                                     _L22037_)))
                   (not (find (lambda (_g2210222104_)
                                (gx#free-identifier=? _g2210222104_ _L22038_))
                              (begin
                                '#!void
                                (foldr1 (lambda (_g2210622109_ _g2210722111_)
                                          (cons _g2210622109_ _g2210722111_))
                                        '()
                                        _L22039_))))
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#f)
                                               '#t
                                               (_g2135321920_ _g2135721923_)))
                                         _xarg2139622034_
                                         _hd2138621992_
                                         _arg2137221954_)
                                        (_g2135321920_ _g2135721923_)))))))
                    (_loop2139122002_ _target2138821997_ '()))
                  (_g2135321920_ _g2135721923_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2135321920_ _g2135721923_))
                                            (_g2135321920_ _g2135721923_))
                                        (_g2135321920_ _g2135721923_))))
                                (_g2135321920_ _g2135721923_))
                            (_g2135321920_ _g2135721923_))
                        (_g2135321920_ _g2135721923_))))
                (_g2135321920_ _g2135721923_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2135321920_ _g2135721923_))
                                            (_g2135321920_ _g2135721923_))
                                        (_g2135321920_ _g2135721923_))))
                                (_g2135321920_ _g2135721923_))))
                        (_g2135321920_ _g2135721923_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop2136721938_
                                             _target2136421933_
                                             '()))
                                          (_g2135321920_ _g2135721923_)))))
                                (_g2135321920_ _g2135721923_))
                            (_g2135321920_ _g2135721923_))))
                    (_g2135321920_ _g2135721923_)))))
        (_g2135222114_ _form21351_))))
  (define gxc#dispatch-lambda-form-delegate
    (lambda (_form20819_)
      (let* ((_g2082320947_
              (lambda (_g2082420944_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2082420944_)))
             (_g2082221064_
              (lambda (_g2082420950_)
                (if (gx#stx-pair? _g2082420950_)
                    (let ((_e2091320952_ (gx#stx-e _g2082420950_)))
                      (let ((_hd2091420955_ (##car _e2091320952_))
                            (_tl2091520957_ (##cdr _e2091320952_)))
                        (if (gx#stx-pair? _tl2091520957_)
                            (let ((_e2091620960_ (gx#stx-e _tl2091520957_)))
                              (let ((_hd2091720963_ (##car _e2091620960_))
                                    (_tl2091820965_ (##cdr _e2091620960_)))
                                (if (gx#stx-pair? _hd2091720963_)
                                    (let ((_e2091920968_
                                           (gx#stx-e _hd2091720963_)))
                                      (let ((_hd2092020971_
                                             (##car _e2091920968_))
                                            (_tl2092120973_
                                             (##cdr _e2091920968_)))
                                        (if (gx#identifier? _hd2092020971_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd2092020971_)
                                                (if (gx#stx-pair?
                                                     _tl2092120973_)
                                                    (let ((_e2092220976_
                                                           (gx#stx-e
                                                            _tl2092120973_)))
                                                      (let ((_hd2092320979_
                                                             (##car _e2092220976_))
                                                            (_tl2092420981_
                                                             (##cdr _e2092220976_)))
                                                        (if (gx#stx-pair?
                                                             _hd2092320979_)
                                                            (let ((_e2092520984_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2092320979_)))
                      (let ((_hd2092620987_ (##car _e2092520984_))
                            (_tl2092720989_ (##cdr _e2092520984_)))
                        (if (gx#identifier? _hd2092620987_)
                            (if (gx#stx-eq? '%#ref _hd2092620987_)
                                (if (gx#stx-pair? _tl2092720989_)
                                    (let ((_e2092820992_
                                           (gx#stx-e _tl2092720989_)))
                                      (let ((_hd2092920995_
                                             (##car _e2092820992_))
                                            (_tl2093020997_
                                             (##cdr _e2092820992_)))
                                        (if (gx#stx-null? _tl2093020997_)
                                            (if (gx#stx-pair? _tl2092420981_)
                                                (let ((_e2093121000_
                                                       (gx#stx-e
                                                        _tl2092420981_)))
                                                  (let ((_hd2093221003_
                                                         (##car _e2093121000_))
                                                        (_tl2093321005_
                                                         (##cdr _e2093121000_)))
                                                    (if (gx#stx-pair?
                                                         _hd2093221003_)
                                                        (let ((_e2093421008_
                                                               (gx#stx-e
                                                                _hd2093221003_)))
                                                          (let ((_hd2093521011_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2093421008_))
                        (_tl2093621013_ (##cdr _e2093421008_)))
                    (if (gx#identifier? _hd2093521011_)
                        (if (gx#stx-eq? '%#ref _hd2093521011_)
                            (if (gx#stx-pair? _tl2093621013_)
                                (let ((_e2093721016_
                                       (gx#stx-e _tl2093621013_)))
                                  (let ((_hd2093821019_ (##car _e2093721016_))
                                        (_tl2093921021_ (##cdr _e2093721016_)))
                                    (if (gx#stx-null? _tl2093921021_)
                                        (if (gx#stx-pair? _tl2093321005_)
                                            (let ((_e2094021024_
                                                   (gx#stx-e _tl2093321005_)))
                                              (let ((_hd2094121027_
                                                     (##car _e2094021024_))
                                                    (_tl2094221029_
                                                     (##cdr _e2094021024_)))
                                                (if (gx#stx-null?
                                                     _tl2094221029_)
                                                    (if (gx#stx-null?
                                                         _tl2091820965_)
                                                        ((lambda (_L21032_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L21033_
                          _L21034_)
                   (gxc#generate-runtime-binding-id _L21032_))
                 _hd2093821019_
                 _hd2092920995_
                 _hd2091420955_)
                (_g2082320947_ _g2082420950_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2082320947_
                                                     _g2082420950_))))
                                            (_g2082320947_ _g2082420950_))
                                        (_g2082320947_ _g2082420950_))))
                                (_g2082320947_ _g2082420950_))
                            (_g2082320947_ _g2082420950_))
                        (_g2082320947_ _g2082420950_))))
                (_g2082320947_ _g2082420950_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2082320947_ _g2082420950_))
                                            (_g2082320947_ _g2082420950_))))
                                    (_g2082320947_ _g2082420950_))
                                (_g2082320947_ _g2082420950_))
                            (_g2082320947_ _g2082420950_))))
                    (_g2082320947_ _g2082420950_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2082320947_
                                                     _g2082420950_))
                                                (_g2082320947_ _g2082420950_))
                                            (_g2082320947_ _g2082420950_))))
                                    (_g2082320947_ _g2082420950_))))
                            (_g2082320947_ _g2082420950_))))
                    (_g2082320947_ _g2082420950_))))
             (_g2082121200_
              (lambda (_g2082421067_)
                (if (gx#stx-pair? _g2082421067_)
                    (let ((_e2087421069_ (gx#stx-e _g2082421067_)))
                      (let ((_hd2087521072_ (##car _e2087421069_))
                            (_tl2087621074_ (##cdr _e2087421069_)))
                        (if (gx#stx-pair/null? _hd2087521072_)
                            (if (fx>= (gx#stx-length _hd2087521072_) '0)
                                (let ((_g23663_
                                       (gx#syntax-split-splice
                                        _hd2087521072_
                                        '0)))
                                  (begin
                                    (let ((_g23664_ (values-count _g23663_)))
                                      (if (not (fx= _g23664_ 2))
                                          (error "Context expects 2 values"
                                                 _g23664_)))
                                    (let ((_target2087721077_
                                           (values-ref _g23663_ 0))
                                          (_tl2087921079_
                                           (values-ref _g23663_ 1)))
                                      (letrec ((_loop2088021082_
                                                (lambda (_hd2087821085_
                                                         _arg2088421087_)
                                                  (if (gx#stx-pair?
                                                       _hd2087821085_)
                                                      (let ((_e2088121090_
                                                             (gx#stx-e
                                                              _hd2087821085_)))
                                                        (let ((_lp-hd2088221093_
                                                               (##car _e2088121090_))
                                                              (_lp-tl2088321095_
                                                               (##cdr _e2088121090_)))
                                                          (_loop2088021082_
                                                           _lp-tl2088321095_
                                                           (cons _lp-hd2088221093_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _arg2088421087_))))
              (let ((_arg2088521098_ (reverse _arg2088421087_)))
                (if (gx#stx-pair? _tl2087621074_)
                    (let ((_e2088621101_ (gx#stx-e _tl2087621074_)))
                      (let ((_hd2088721104_ (##car _e2088621101_))
                            (_tl2088821106_ (##cdr _e2088621101_)))
                        (if (gx#stx-pair? _hd2088721104_)
                            (let ((_e2088921109_ (gx#stx-e _hd2088721104_)))
                              (let ((_hd2089021112_ (##car _e2088921109_))
                                    (_tl2089121114_ (##cdr _e2088921109_)))
                                (if (gx#identifier? _hd2089021112_)
                                    (if (gx#stx-eq? '%#call _hd2089021112_)
                                        (if (gx#stx-pair? _tl2089121114_)
                                            (let ((_e2089221117_
                                                   (gx#stx-e _tl2089121114_)))
                                              (let ((_hd2089321120_
                                                     (##car _e2089221117_))
                                                    (_tl2089421122_
                                                     (##cdr _e2089221117_)))
                                                (if (gx#stx-pair?
                                                     _hd2089321120_)
                                                    (let ((_e2089521125_
                                                           (gx#stx-e
                                                            _hd2089321120_)))
                                                      (let ((_hd2089621128_
                                                             (##car _e2089521125_))
                                                            (_tl2089721130_
                                                             (##cdr _e2089521125_)))
                                                        (if (gx#identifier?
                                                             _hd2089621128_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2089621128_)
                        (if (gx#stx-pair? _tl2089721130_)
                            (let ((_e2089821133_ (gx#stx-e _tl2089721130_)))
                              (let ((_hd2089921136_ (##car _e2089821133_))
                                    (_tl2090021138_ (##cdr _e2089821133_)))
                                (if (gx#stx-null? _tl2090021138_)
                                    (if (gx#stx-pair? _tl2089421122_)
                                        (let ((_e2090121141_
                                               (gx#stx-e _tl2089421122_)))
                                          (let ((_hd2090221144_
                                                 (##car _e2090121141_))
                                                (_tl2090321146_
                                                 (##cdr _e2090121141_)))
                                            (if (gx#stx-pair? _hd2090221144_)
                                                (let ((_e2090421149_
                                                       (gx#stx-e
                                                        _hd2090221144_)))
                                                  (let ((_hd2090521152_
                                                         (##car _e2090421149_))
                                                        (_tl2090621154_
                                                         (##cdr _e2090421149_)))
                                                    (if (gx#identifier?
                                                         _hd2090521152_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd2090521152_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2090621154_)
                        (let ((_e2090721157_ (gx#stx-e _tl2090621154_)))
                          (let ((_hd2090821160_ (##car _e2090721157_))
                                (_tl2090921162_ (##cdr _e2090721157_)))
                            (if (gx#stx-null? _tl2090921162_)
                                (if (gx#stx-null? _tl2088821106_)
                                    ((lambda (_L21165_
                                              _L21166_
                                              _L21167_
                                              _L21168_)
                                       (gxc#generate-runtime-binding-id
                                        _L21165_))
                                     _hd2090821160_
                                     _hd2089921136_
                                     _tl2087921079_
                                     _arg2088521098_)
                                    (_g2082221064_ _g2082421067_))
                                (_g2082221064_ _g2082421067_))))
                        (_g2082221064_ _g2082421067_))
                    (_g2082221064_ _g2082421067_))
                (_g2082221064_ _g2082421067_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2082221064_
                                                 _g2082421067_))))
                                        (_g2082221064_ _g2082421067_))
                                    (_g2082221064_ _g2082421067_))))
                            (_g2082221064_ _g2082421067_))
                        (_g2082221064_ _g2082421067_))
                    (_g2082221064_ _g2082421067_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2082221064_
                                                     _g2082421067_))))
                                            (_g2082221064_ _g2082421067_))
                                        (_g2082221064_ _g2082421067_))
                                    (_g2082221064_ _g2082421067_))))
                            (_g2082221064_ _g2082421067_))))
                    (_g2082221064_ _g2082421067_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop2088021082_
                                         _target2087721077_
                                         '())))))
                                (_g2082221064_ _g2082421067_))
                            (_g2082221064_ _g2082421067_))))
                    (_g2082221064_ _g2082421067_))))
             (_g2082021348_
              (lambda (_g2082421203_)
                (if (gx#stx-pair? _g2082421203_)
                    (let ((_e2082821205_ (gx#stx-e _g2082421203_)))
                      (let ((_hd2082921208_ (##car _e2082821205_))
                            (_tl2083021210_ (##cdr _e2082821205_)))
                        (if (gx#stx-pair/null? _hd2082921208_)
                            (if (fx>= (gx#stx-length _hd2082921208_) '0)
                                (let ((_g23665_
                                       (gx#syntax-split-splice
                                        _hd2082921208_
                                        '0)))
                                  (begin
                                    (let ((_g23666_ (values-count _g23665_)))
                                      (if (not (fx= _g23666_ 2))
                                          (error "Context expects 2 values"
                                                 _g23666_)))
                                    (let ((_target2083121213_
                                           (values-ref _g23665_ 0))
                                          (_tl2083321215_
                                           (values-ref _g23665_ 1)))
                                      (if (gx#stx-null? _tl2083321215_)
                                          (letrec ((_loop2083421218_
                                                    (lambda (_hd2083221221_
                                                             _arg2083821223_)
                                                      (if (gx#stx-pair?
                                                           _hd2083221221_)
                                                          (let ((_e2083521226_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2083221221_)))
                    (let ((_lp-hd2083621229_ (##car _e2083521226_))
                          (_lp-tl2083721231_ (##cdr _e2083521226_)))
                      (_loop2083421218_
                       _lp-tl2083721231_
                       (cons _lp-hd2083621229_ _arg2083821223_))))
                  (let ((_arg2083921234_ (reverse _arg2083821223_)))
                    (if (gx#stx-pair? _tl2083021210_)
                        (let ((_e2084021237_ (gx#stx-e _tl2083021210_)))
                          (let ((_hd2084121240_ (##car _e2084021237_))
                                (_tl2084221242_ (##cdr _e2084021237_)))
                            (if (gx#stx-pair? _hd2084121240_)
                                (let ((_e2084321245_
                                       (gx#stx-e _hd2084121240_)))
                                  (let ((_hd2084421248_ (##car _e2084321245_))
                                        (_tl2084521250_ (##cdr _e2084321245_)))
                                    (if (gx#identifier? _hd2084421248_)
                                        (if (gx#stx-eq? '%#call _hd2084421248_)
                                            (if (gx#stx-pair? _tl2084521250_)
                                                (let ((_e2084621253_
                                                       (gx#stx-e
                                                        _tl2084521250_)))
                                                  (let ((_hd2084721256_
                                                         (##car _e2084621253_))
                                                        (_tl2084821258_
                                                         (##cdr _e2084621253_)))
                                                    (if (gx#stx-pair?
                                                         _hd2084721256_)
                                                        (let ((_e2084921261_
                                                               (gx#stx-e
                                                                _hd2084721256_)))
                                                          (let ((_hd2085021264_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2084921261_))
                        (_tl2085121266_ (##cdr _e2084921261_)))
                    (if (gx#identifier? _hd2085021264_)
                        (if (gx#stx-eq? '%#ref _hd2085021264_)
                            (if (gx#stx-pair? _tl2085121266_)
                                (let ((_e2085221269_
                                       (gx#stx-e _tl2085121266_)))
                                  (let ((_hd2085321272_ (##car _e2085221269_))
                                        (_tl2085421274_ (##cdr _e2085221269_)))
                                    (if (gx#stx-null? _tl2085421274_)
                                        (if (gx#stx-pair/null? _tl2084821258_)
                                            (if (fx>= (gx#stx-length
                                                       _tl2084821258_)
                                                      '0)
                                                (let ((_g23667_
                                                       (gx#syntax-split-splice
                                                        _tl2084821258_
                                                        '0)))
                                                  (begin
                                                    (let ((_g23668_
                                                           (values-count
                                                            _g23667_)))
                                                      (if (not (fx= _g23668_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g23668_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2085521277_
                                                           (values-ref
                                                            _g23667_
                                                            0))
                                                          (_tl2085721279_
                                                           (values-ref
                                                            _g23667_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl2085721279_)
                                                          (letrec ((_loop2085821282_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd2085621285_ _xarg2086221287_)
                              (if (gx#stx-pair? _hd2085621285_)
                                  (let ((_e2085921290_
                                         (gx#stx-e _hd2085621285_)))
                                    (let ((_lp-hd2086021293_
                                           (##car _e2085921290_))
                                          (_lp-tl2086121295_
                                           (##cdr _e2085921290_)))
                                      (if (gx#stx-pair? _lp-hd2086021293_)
                                          (let ((_e2086421298_
                                                 (gx#stx-e _lp-hd2086021293_)))
                                            (let ((_hd2086521301_
                                                   (##car _e2086421298_))
                                                  (_tl2086621303_
                                                   (##cdr _e2086421298_)))
                                              (if (gx#identifier?
                                                   _hd2086521301_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd2086521301_)
                                                      (if (gx#stx-pair?
                                                           _tl2086621303_)
                                                          (let ((_e2086721306_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2086621303_)))
                    (let ((_hd2086821309_ (##car _e2086721306_))
                          (_tl2086921311_ (##cdr _e2086721306_)))
                      (if (gx#stx-null? _tl2086921311_)
                          (_loop2085821282_
                           _lp-tl2086121295_
                           (cons _hd2086821309_ _xarg2086221287_))
                          (_g2082121200_ _g2082421203_))))
                  (_g2082121200_ _g2082421203_))
              (_g2082121200_ _g2082421203_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2082121200_
                                                   _g2082421203_))))
                                          (_g2082121200_ _g2082421203_))))
                                  (let ((_xarg2086321314_
                                         (reverse _xarg2086221287_)))
                                    (if (gx#stx-null? _tl2084221242_)
                                        ((lambda (_L21317_ _L21318_ _L21319_)
                                           (gxc#generate-runtime-binding-id
                                            _L21318_))
                                         _xarg2086321314_
                                         _hd2085321272_
                                         _arg2083921234_)
                                        (_g2082121200_ _g2082421203_)))))))
                    (_loop2085821282_ _target2085521277_ '()))
                  (_g2082121200_ _g2082421203_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2082121200_ _g2082421203_))
                                            (_g2082121200_ _g2082421203_))
                                        (_g2082121200_ _g2082421203_))))
                                (_g2082121200_ _g2082421203_))
                            (_g2082121200_ _g2082421203_))
                        (_g2082121200_ _g2082421203_))))
                (_g2082121200_ _g2082421203_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2082121200_ _g2082421203_))
                                            (_g2082121200_ _g2082421203_))
                                        (_g2082121200_ _g2082421203_))))
                                (_g2082121200_ _g2082421203_))))
                        (_g2082121200_ _g2082421203_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop2083421218_
                                             _target2083121213_
                                             '()))
                                          (_g2082121200_ _g2082421203_)))))
                                (_g2082121200_ _g2082421203_))
                            (_g2082121200_ _g2082421203_))))
                    (_g2082121200_ _g2082421203_)))))
        (_g2082021348_ _form20819_))))
  (define gxc#lambda-form-arity
    (lambda (_form20623_)
      (let* ((_g2062520639_
              (lambda (_g2062620636_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2062620636_)))
             (_g2062420816_
              (lambda (_g2062620642_)
                (if (gx#stx-pair? _g2062620642_)
                    (let ((_e2062920644_ (gx#stx-e _g2062620642_)))
                      (let ((_hd2063020647_ (##car _e2062920644_))
                            (_tl2063120649_ (##cdr _e2062920644_)))
                        (if (gx#stx-pair? _tl2063120649_)
                            (let ((_e2063220652_ (gx#stx-e _tl2063120649_)))
                              (let ((_hd2063320655_ (##car _e2063220652_))
                                    (_tl2063420657_ (##cdr _e2063220652_)))
                                (if (gx#stx-null? _tl2063420657_)
                                    ((lambda (_L20660_ _L20661_)
                                       (let* ((_g2067620704_
                                               (lambda (_g2067720701_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g2067720701_)))
                                              (_g2067520717_
                                               (lambda (_g2067720707_)
                                                 ((lambda (_L20709_)
                                                    (cons '0 '()))
                                                  _g2067720707_)))
                                              (_g2067420766_
                                               (lambda (_g2067720720_)
                                                 (if (gx#stx-pair/null?
                                                      _g2067720720_)
                                                     (if (fx>= (gx#stx-length
                                                                _g2067720720_)
                                                               '0)
                                                         (let ((_g23669_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2067720720_
                         '0)))
                   (begin
                     (let ((_g23670_ (values-count _g23669_)))
                       (if (not (fx= _g23670_ 2))
                           (error "Context expects 2 values" _g23670_)))
                     (let ((_target2069020722_ (values-ref _g23669_ 0))
                           (_tl2069220724_ (values-ref _g23669_ 1)))
                       (letrec ((_loop2069320727_
                                 (lambda (_hd2069120730_ _arg2069720732_)
                                   (if (gx#stx-pair? _hd2069120730_)
                                       (let ((_e2069420735_
                                              (gx#stx-e _hd2069120730_)))
                                         (let ((_lp-hd2069520738_
                                                (##car _e2069420735_))
                                               (_lp-tl2069620740_
                                                (##cdr _e2069420735_)))
                                           (_loop2069320727_
                                            _lp-tl2069620740_
                                            (cons _lp-hd2069520738_
                                                  _arg2069720732_))))
                                       (let ((_arg2069820743_
                                              (reverse _arg2069720732_)))
                                         ((lambda (_L20746_ _L20747_)
                                            (cons (length (begin
                                                            '#!void
                                                            (foldr1 (lambda (_g2075820761_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g2075920763_)
                              (cons _g2075820761_ _g2075920763_))
                            '()
                            _L20747_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                          _tl2069220724_
                                          _arg2069820743_))))))
                         (_loop2069320727_ _target2069020722_ '())))))
                 (_g2067520717_ _g2067720720_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2067520717_
                                                      _g2067720720_))))
                                              (_g2067320813_
                                               (lambda (_g2067720769_)
                                                 (if (gx#stx-pair/null?
                                                      _g2067720769_)
                                                     (if (fx>= (gx#stx-length
                                                                _g2067720769_)
                                                               '0)
                                                         (let ((_g23671_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2067720769_
                         '0)))
                   (begin
                     (let ((_g23672_ (values-count _g23671_)))
                       (if (not (fx= _g23672_ 2))
                           (error "Context expects 2 values" _g23672_)))
                     (let ((_target2067920771_ (values-ref _g23671_ 0))
                           (_tl2068120773_ (values-ref _g23671_ 1)))
                       (if (gx#stx-null? _tl2068120773_)
                           (letrec ((_loop2068220776_
                                     (lambda (_hd2068020779_ _arg2068620781_)
                                       (if (gx#stx-pair? _hd2068020779_)
                                           (let ((_e2068320784_
                                                  (gx#stx-e _hd2068020779_)))
                                             (let ((_lp-hd2068420787_
                                                    (##car _e2068320784_))
                                                   (_lp-tl2068520789_
                                                    (##cdr _e2068320784_)))
                                               (_loop2068220776_
                                                _lp-tl2068520789_
                                                (cons _lp-hd2068420787_
                                                      _arg2068620781_))))
                                           (let ((_arg2068720792_
                                                  (reverse _arg2068620781_)))
                                             ((lambda (_L20795_)
                                                (length (begin
                                                          '#!void
                                                          (foldr1 (lambda (_g2080520808_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g2080620810_)
                            (cons _g2080520808_ _g2080620810_))
                          '()
                          _L20795_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _arg2068720792_))))))
                             (_loop2068220776_ _target2067920771_ '()))
                           (_g2067420766_ _g2067720769_)))))
                 (_g2067420766_ _g2067720769_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2067420766_
                                                      _g2067720769_)))))
                                         (_g2067320813_ _L20661_)))
                                     _hd2063320655_
                                     _hd2063020647_)
                                    (_g2062520639_ _g2062620642_))))
                            (_g2062520639_ _g2062620642_))))
                    (_g2062520639_ _g2062620642_)))))
        (_g2062420816_ _form20623_))))
  (define gxc#lambda-expr?
    (lambda (_expr20576_)
      (let* ((_g2057920589_
              (lambda (_g2058020586_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2058020586_)))
             (_g2057820596_ (lambda (_g2058020592_) ((lambda () '#f))))
             (_g2057720620_
              (lambda (_g2058020599_)
                (if (gx#stx-pair? _g2058020599_)
                    (let ((_e2058220601_ (gx#stx-e _g2058020599_)))
                      (let ((_hd2058320604_ (##car _e2058220601_))
                            (_tl2058420606_ (##cdr _e2058220601_)))
                        (if (gx#identifier? _hd2058320604_)
                            (if (gx#stx-eq? '%#lambda _hd2058320604_)
                                ((lambda (_L20609_) '#t) _tl2058420606_)
                                (_g2057820596_ _g2058020599_))
                            (_g2057820596_ _g2058020599_))))
                    (_g2057820596_ _g2058020599_)))))
        (_g2057720620_ _expr20576_))))
  (define gxc#case-lambda-expr?
    (lambda (_expr20529_)
      (let* ((_g2053220542_
              (lambda (_g2053320539_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2053320539_)))
             (_g2053120549_ (lambda (_g2053320545_) ((lambda () '#f))))
             (_g2053020573_
              (lambda (_g2053320552_)
                (if (gx#stx-pair? _g2053320552_)
                    (let ((_e2053520554_ (gx#stx-e _g2053320552_)))
                      (let ((_hd2053620557_ (##car _e2053520554_))
                            (_tl2053720559_ (##cdr _e2053520554_)))
                        (if (gx#identifier? _hd2053620557_)
                            (if (gx#stx-eq? '%#case-lambda _hd2053620557_)
                                ((lambda (_L20562_) '#t) _tl2053720559_)
                                (_g2053120549_ _g2053320552_))
                            (_g2053120549_ _g2053320552_))))
                    (_g2053120549_ _g2053320552_)))))
        (_g2053020573_ _expr20529_))))
  (define gxc#opt-lambda-expr?
    (lambda (_expr20398_)
      (let* ((_g2040120431_
              (lambda (_g2040220428_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2040220428_)))
             (_g2040020438_ (lambda (_g2040220434_) ((lambda () '#f))))
             (_g2039920526_
              (lambda (_g2040220441_)
                (if (gx#stx-pair? _g2040220441_)
                    (let ((_e2040620443_ (gx#stx-e _g2040220441_)))
                      (let ((_hd2040720446_ (##car _e2040620443_))
                            (_tl2040820448_ (##cdr _e2040620443_)))
                        (if (gx#identifier? _hd2040720446_)
                            (if (gx#stx-eq? '%#let-values _hd2040720446_)
                                (if (gx#stx-pair? _tl2040820448_)
                                    (let ((_e2040920451_
                                           (gx#stx-e _tl2040820448_)))
                                      (let ((_hd2041020454_
                                             (##car _e2040920451_))
                                            (_tl2041120456_
                                             (##cdr _e2040920451_)))
                                        (if (gx#stx-pair? _hd2041020454_)
                                            (let ((_e2041220459_
                                                   (gx#stx-e _hd2041020454_)))
                                              (let ((_hd2041320462_
                                                     (##car _e2041220459_))
                                                    (_tl2041420464_
                                                     (##cdr _e2041220459_)))
                                                (if (gx#stx-pair?
                                                     _hd2041320462_)
                                                    (let ((_e2041520467_
                                                           (gx#stx-e
                                                            _hd2041320462_)))
                                                      (let ((_hd2041620470_
                                                             (##car _e2041520467_))
                                                            (_tl2041720472_
                                                             (##cdr _e2041520467_)))
                                                        (if (gx#stx-pair?
                                                             _hd2041620470_)
                                                            (let ((_e2041820475_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2041620470_)))
                      (let ((_hd2041920478_ (##car _e2041820475_))
                            (_tl2042020480_ (##cdr _e2041820475_)))
                        (if (gx#stx-null? _tl2042020480_)
                            (if (gx#stx-pair? _tl2041720472_)
                                (let ((_e2042120483_
                                       (gx#stx-e _tl2041720472_)))
                                  (let ((_hd2042220486_ (##car _e2042120483_))
                                        (_tl2042320488_ (##cdr _e2042120483_)))
                                    (if (gx#stx-null? _tl2042320488_)
                                        (if (gx#stx-null? _tl2041420464_)
                                            (if (gx#stx-pair? _tl2041120456_)
                                                (let ((_e2042420491_
                                                       (gx#stx-e
                                                        _tl2041120456_)))
                                                  (let ((_hd2042520494_
                                                         (##car _e2042420491_))
                                                        (_tl2042620496_
                                                         (##cdr _e2042420491_)))
                                                    (if (gx#stx-null?
                                                         _tl2042620496_)
                                                        ((lambda (_L20499_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L20500_
                          _L20501_)
                   (if (gx#identifier? _L20501_)
                       (if (gxc#lambda-expr? _L20500_)
                           (gxc#case-lambda-expr? _L20499_)
                           '#f)
                       '#f))
                 _hd2042520494_
                 _hd2042220486_
                 _hd2041920478_)
                (_g2040020438_ _g2040220441_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2040020438_ _g2040220441_))
                                            (_g2040020438_ _g2040220441_))
                                        (_g2040020438_ _g2040220441_))))
                                (_g2040020438_ _g2040220441_))
                            (_g2040020438_ _g2040220441_))))
                    (_g2040020438_ _g2040220441_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2040020438_
                                                     _g2040220441_))))
                                            (_g2040020438_ _g2040220441_))))
                                    (_g2040020438_ _g2040220441_))
                                (_g2040020438_ _g2040220441_))
                            (_g2040020438_ _g2040220441_))))
                    (_g2040020438_ _g2040220441_)))))
        (_g2039920526_ _expr20398_))))
  (begin
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx20140_ _id20141_ _clauses20142_ _gensym?20143_)
        (let _lp20145_ ((_rest20147_ _clauses20142_)
                        (_ids20148_ '())
                        (_impls20149_ '())
                        (_clauses20150_ '()))
          (let* ((_rest2015120159_ _rest20147_)
                 (_E2015420163_
                  (lambda () (error '"No clause matching" _rest2015120159_)))
                 (_else2015320167_
                  (lambda ()
                    (values (reverse _ids20148_)
                            (reverse _impls20149_)
                            (reverse _clauses20150_))))
                 (_K2015520372_
                  (lambda (_rest20170_ _clause20171_)
                    (if (gxc#dispatch-lambda-form? _clause20171_)
                        (_lp20145_
                         _rest20170_
                         _ids20148_
                         _impls20149_
                         (cons _clause20171_ _clauses20150_))
                        (let* ((_g2017320184_
                                (lambda (_g2017420181_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2017420181_)))
                               (_g2017220369_
                                (lambda (_g2017420187_)
                                  (if (gx#stx-pair? _g2017420187_)
                                      (let ((_e2017720189_
                                             (gx#stx-e _g2017420187_)))
                                        (let ((_hd2017820192_
                                               (##car _e2017720189_))
                                              (_tl2017920194_
                                               (##cdr _e2017720189_)))
                                          ((lambda (_L20197_ _L20198_)
                                             (let* ((_id20215_
                                                     (make-symbol
                                                      (gx#stx-e _id20141_)
                                                      '"__"
                                                      (length _clauses20150_)
                                                      (if _gensym?20143_
                                                          (gensym '__)
                                                          '"")))
                                                    (_id20217_
                                                     (gx#core-quote-syntax__1
                                                      _id20215_
                                                      (gx#stx-source
                                                       _stx20140_)))
                                                    (_impl20219_
                                                     (gxc#xform-wrap-source
                                                      (cons (gx#datum->syntax__0
                                                             '#f
                                                             '%#lambda)
                                                            (cons _L20198_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L20197_))
              _stx20140_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause20366_
                                                     (let* ((_g2022320251_
                                                             (lambda (_g2022420248_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2022420248_)))
                                                            (_g2022220267_
                                                             (lambda (_g2022420254_)
                                                               ((lambda (_L20256_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L20198_
                                (cons (gxc#xform-wrap-source
                                       (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'apply '()))
                                                   (cons (cons '%#ref
                                                               (cons _id20217_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                             (cons _L20256_ '()))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _stx20140_)
                                      '())))
                        _g2022420254_)))
                    (_g2022120316_
                     (lambda (_g2022420270_)
                       (if (gx#stx-pair/null? _g2022420270_)
                           (if (fx>= (gx#stx-length _g2022420270_) '0)
                               (let ((_g23673_
                                      (gx#syntax-split-splice
                                       _g2022420270_
                                       '0)))
                                 (begin
                                   (let ((_g23674_ (values-count _g23673_)))
                                     (if (not (fx= _g23674_ 2))
                                         (error "Context expects 2 values"
                                                _g23674_)))
                                   (let ((_target2023720272_
                                          (values-ref _g23673_ 0))
                                         (_tl2023920274_
                                          (values-ref _g23673_ 1)))
                                     (letrec ((_loop2024020277_
                                               (lambda (_hd2023820280_
                                                        _arg2024420282_)
                                                 (if (gx#stx-pair?
                                                      _hd2023820280_)
                                                     (let ((_e2024120285_
                                                            (gx#stx-e
                                                             _hd2023820280_)))
                                                       (let ((_lp-hd2024220288_
                                                              (##car _e2024120285_))
                                                             (_lp-tl2024320290_
                                                              (##cdr _e2024120285_)))
                                                         (_loop2024020277_
                                                          _lp-tl2024320290_
                                                          (cons _lp-hd2024220288_
                                                                _arg2024420282_))))
                                                     (let ((_arg2024520293_
                                                            (reverse _arg2024420282_)))
                                                       ((lambda (_L20296_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L20297_)
                  (cons _L20198_
                        (cons (gxc#xform-wrap-source
                               (cons '%#call
                                     (cons (cons '%#ref (cons 'apply '()))
                                           (cons (cons '%#ref
                                                       (cons _id20217_ '()))
                                                 (foldr1 cons
                                                         (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '%#ref)
                             (cons _L20296_ '()))
                       '())
                 (begin
                   '#!void
                   (foldr1 (lambda (_g2030820311_ _g2030920313_)
                             (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                         (cons _g2030820311_ '()))
                                   _g2030920313_))
                           '()
                           _L20297_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _stx20140_)
                              '())))
                _tl2023920274_
                _arg2024520293_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop2024020277_
                                        _target2023720272_
                                        '())))))
                               (_g2022220267_ _g2022420270_))
                           (_g2022220267_ _g2022420270_))))
                    (_g2022020363_
                     (lambda (_g2022420319_)
                       (if (gx#stx-pair/null? _g2022420319_)
                           (if (fx>= (gx#stx-length _g2022420319_) '0)
                               (let ((_g23675_
                                      (gx#syntax-split-splice
                                       _g2022420319_
                                       '0)))
                                 (begin
                                   (let ((_g23676_ (values-count _g23675_)))
                                     (if (not (fx= _g23676_ 2))
                                         (error "Context expects 2 values"
                                                _g23676_)))
                                   (let ((_target2022620321_
                                          (values-ref _g23675_ 0))
                                         (_tl2022820323_
                                          (values-ref _g23675_ 1)))
                                     (if (gx#stx-null? _tl2022820323_)
                                         (letrec ((_loop2022920326_
                                                   (lambda (_hd2022720329_
                                                            _arg2023320331_)
                                                     (if (gx#stx-pair?
                                                          _hd2022720329_)
                                                         (let ((_e2023020334_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd2022720329_)))
                   (let ((_lp-hd2023120337_ (##car _e2023020334_))
                         (_lp-tl2023220339_ (##cdr _e2023020334_)))
                     (_loop2022920326_
                      _lp-tl2023220339_
                      (cons _lp-hd2023120337_ _arg2023320331_))))
                 (let ((_arg2023420342_ (reverse _arg2023320331_)))
                   ((lambda (_L20345_)
                      (cons _L20198_
                            (cons (gxc#xform-wrap-source
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _id20217_ '()))
                                               (begin
                                                 '#!void
                                                 (foldr1 (lambda (_g2035520358_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g2035620360_)
                   (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                               (cons _g2035520358_ '()))
                         _g2035620360_))
                 '()
                 _L20345_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _stx20140_)
                                  '())))
                    _arg2023420342_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop2022920326_
                                            _target2022620321_
                                            '()))
                                         (_g2022120316_ _g2022420319_)))))
                               (_g2022120316_ _g2022420319_))
                           (_g2022120316_ _g2022420319_)))))
               (_g2022020363_ _L20198_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_lp20145_
                                                _rest20170_
                                                (cons _id20217_ _ids20148_)
                                                (cons _impl20219_ _impls20149_)
                                                (cons _clause20366_
                                                      _clauses20150_))))
                                           _tl2017920194_
                                           _hd2017820192_)))
                                      (_g2017320184_ _g2017420187_)))))
                          (_g2017220369_ _clause20171_))))))
            (if (##pair? _rest2015120159_)
                (let ((_hd2015620375_ (##car _rest2015120159_))
                      (_tl2015720377_ (##cdr _rest2015120159_)))
                  (let* ((_clause20380_ _hd2015620375_)
                         (_rest20382_ _tl2015720377_))
                    (_K2015520372_ _rest20382_ _clause20380_)))
                (_else2015320167_))))))
    (begin
      (define gxc#lift-case-lambda-clauses__0
        (lambda (_stx20387_ _id20388_ _clauses20389_)
          (let ((_gensym?20391_ '#f))
            (gxc#lift-case-lambda-clauses__%
             _stx20387_
             _id20388_
             _clauses20389_
             _gensym?20391_))))
      (define gxc#lift-case-lambda-clauses
        (lambda _g23678_
          (let ((_g23677_ (length _g23678_)))
            (cond ((fx= _g23677_ 3)
                   (apply gxc#lift-case-lambda-clauses__0 _g23678_))
                  ((fx= _g23677_ 4)
                   (apply gxc#lift-case-lambda-clauses__% _g23678_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#lift-case-lambda-clauses
                    _g23678_))))))))
  (define gxc#lift-top-lambda-define-values%
    (lambda (_stx19724_)
      (letrec ((_case-lambda-clause-def19726_
                (lambda (_id20136_ _impl20137_)
                  (gxc#xform-wrap-source
                   (cons '%#define-values
                         (cons (cons _id20136_ '())
                               (cons (gxc#compile-e _impl20137_) '())))
                   _stx19724_)))
               (_opt-lambda-dispatch-name19727_
                (lambda (_id20132_)
                  (if (uninterned-symbol? _id20132_)
                      (let ((_str20134_ (symbol->string _id20132_)))
                        (if (string-prefix? _str20134_ '"opt-lambda")
                            '"%"
                            _id20132_))
                      _id20132_))))
        (let* ((_g1973119776_
                (lambda (_g1973219773_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1973219773_)))
               (_g1973019822_
                (lambda (_g1973219779_)
                  (if (gx#stx-pair? _g1973219779_)
                      (let ((_e1976319781_ (gx#stx-e _g1973219779_)))
                        (let ((_hd1976419784_ (##car _e1976319781_))
                              (_tl1976519786_ (##cdr _e1976319781_)))
                          (if (gx#stx-pair? _tl1976519786_)
                              (let ((_e1976619789_ (gx#stx-e _tl1976519786_)))
                                (let ((_hd1976719792_ (##car _e1976619789_))
                                      (_tl1976819794_ (##cdr _e1976619789_)))
                                  (if (gx#stx-pair? _tl1976819794_)
                                      (let ((_e1976919797_
                                             (gx#stx-e _tl1976819794_)))
                                        (let ((_hd1977019800_
                                               (##car _e1976919797_))
                                              (_tl1977119802_
                                               (##cdr _e1976919797_)))
                                          (if (gx#stx-null? _tl1977119802_)
                                              ((lambda (_L19805_ _L19806_)
                                                 (gxc#xform-wrap-source
                                                  (cons '%#define-values
                                                        (cons _L19806_
                                                              (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L19805_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx19724_))
                                               _hd1977019800_
                                               _hd1976719792_)
                                              (_g1973119776_ _g1973219779_))))
                                      (_g1973119776_ _g1973219779_))))
                              (_g1973119776_ _g1973219779_))))
                      (_g1973119776_ _g1973219779_))))
               (_g1972920004_
                (lambda (_g1973219825_)
                  (if (gx#stx-pair? _g1973219825_)
                      (let ((_e1974919827_ (gx#stx-e _g1973219825_)))
                        (let ((_hd1975019830_ (##car _e1974919827_))
                              (_tl1975119832_ (##cdr _e1974919827_)))
                          (if (gx#stx-pair? _tl1975119832_)
                              (let ((_e1975219835_ (gx#stx-e _tl1975119832_)))
                                (let ((_hd1975319838_ (##car _e1975219835_))
                                      (_tl1975419840_ (##cdr _e1975219835_)))
                                  (if (gx#stx-pair? _hd1975319838_)
                                      (let ((_e1975519843_
                                             (gx#stx-e _hd1975319838_)))
                                        (let ((_hd1975619846_
                                               (##car _e1975519843_))
                                              (_tl1975719848_
                                               (##cdr _e1975519843_)))
                                          (if (gx#stx-null? _tl1975719848_)
                                              (if (gx#stx-pair? _tl1975419840_)
                                                  (let ((_e1975819851_
                                                         (gx#stx-e
                                                          _tl1975419840_)))
                                                    (let ((_hd1975919854_
                                                           (##car _e1975819851_))
                                                          (_tl1976019856_
                                                           (##cdr _e1975819851_)))
                                                      (if (gx#stx-null?
                                                           _tl1976019856_)
                                                          ((lambda (_L19859_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L19860_)
                     (if (if (gx#identifier? _L19860_)
                             (gxc#opt-lambda-expr? _L19859_)
                             '#f)
                         (let* ((_g1987619906_
                                 (lambda (_g1987719903_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1987719903_)))
                                (_g1987520001_
                                 (lambda (_g1987719909_)
                                   (if (gx#stx-pair? _g1987719909_)
                                       (let ((_e1988119911_
                                              (gx#stx-e _g1987719909_)))
                                         (let ((_hd1988219914_
                                                (##car _e1988119911_))
                                               (_tl1988319916_
                                                (##cdr _e1988119911_)))
                                           (if (gx#stx-pair? _tl1988319916_)
                                               (let ((_e1988419919_
                                                      (gx#stx-e
                                                       _tl1988319916_)))
                                                 (let ((_hd1988519922_
                                                        (##car _e1988419919_))
                                                       (_tl1988619924_
                                                        (##cdr _e1988419919_)))
                                                   (if (gx#stx-pair?
                                                        _hd1988519922_)
                                                       (let ((_e1988719927_
                                                              (gx#stx-e
                                                               _hd1988519922_)))
                                                         (let ((_hd1988819930_
                                                                (##car _e1988719927_))
                                                               (_tl1988919932_
                                                                (##cdr _e1988719927_)))
                                                           (if (gx#stx-pair?
                                                                _hd1988819930_)
                                                               (let ((_e1989019935_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1988819930_)))
                         (let ((_hd1989119938_ (##car _e1989019935_))
                               (_tl1989219940_ (##cdr _e1989019935_)))
                           (if (gx#stx-pair? _hd1989119938_)
                               (let ((_e1989319943_ (gx#stx-e _hd1989119938_)))
                                 (let ((_hd1989419946_ (##car _e1989319943_))
                                       (_tl1989519948_ (##cdr _e1989319943_)))
                                   (if (gx#stx-null? _tl1989519948_)
                                       (if (gx#stx-pair? _tl1989219940_)
                                           (let ((_e1989619951_
                                                  (gx#stx-e _tl1989219940_)))
                                             (let ((_hd1989719954_
                                                    (##car _e1989619951_))
                                                   (_tl1989819956_
                                                    (##cdr _e1989619951_)))
                                               (if (gx#stx-null?
                                                    _tl1989819956_)
                                                   (if (gx#stx-null?
                                                        _tl1988919932_)
                                                       (if (gx#stx-pair?
                                                            _tl1988619924_)
                                                           (let ((_e1989919959_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1988619924_)))
                     (let ((_hd1990019962_ (##car _e1989919959_))
                           (_tl1990119964_ (##cdr _e1989919959_)))
                       (if (gx#stx-null? _tl1990119964_)
                           ((lambda (_L19967_ _L19968_ _L19969_)
                              (let* ((_lambda-id19993_
                                      (make-symbol
                                       (gx#stx-e _L19860_)
                                       '"__"
                                       (_opt-lambda-dispatch-name19727_
                                        (gx#stx-e _L19969_))))
                                     (_lambda-id19995_
                                      (gx#core-quote-syntax__1
                                       _lambda-id19993_
                                       (gx#stx-source _stx19724_)))
                                     (_g23679_
                                      (gx#core-bind-runtime!__0
                                       _lambda-id19995_))
                                     (_new-case-lambda-expr19998_
                                      (gxc#apply-expression-subst
                                       _L19967_
                                       _L19969_
                                       _lambda-id19995_)))
                                (begin
                                  (gxc#verbose
                                   '"lift opt-lambda dispatch "
                                   (gxc#generate-runtime-binding-id _L19860_)
                                   '" => "
                                   (gxc#generate-runtime-binding-id
                                    _lambda-id19995_))
                                  (gxc#xform-wrap-source
                                   (cons '%#begin
                                         (cons (gxc#xform-wrap-source
                                                (cons '%#define-values
                                                      (cons (cons _lambda-id19995_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (gxc#compile-e _L19968_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _stx19724_)
                                               (cons (gxc#lift-top-lambda-define-values%
                                                      (gxc#xform-wrap-source
                                                       (cons '%#define-values
                                                             (cons (cons _L19860_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons _new-case-lambda-expr19998_ '())))
               _stx19724_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   _stx19724_))))
                            _hd1990019962_
                            _hd1989719954_
                            _hd1989419946_)
                           (_g1987619906_ _g1987719909_))))
                   (_g1987619906_ _g1987719909_))
               (_g1987619906_ _g1987719909_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1987619906_
                                                    _g1987719909_))))
                                           (_g1987619906_ _g1987719909_))
                                       (_g1987619906_ _g1987719909_))))
                               (_g1987619906_ _g1987719909_))))
                       (_g1987619906_ _g1987719909_))))
               (_g1987619906_ _g1987719909_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1987619906_ _g1987719909_))))
                                       (_g1987619906_ _g1987719909_)))))
                           (_g1987520001_ _L19859_))
                         (_g1973019822_ _g1973219825_)))
                   _hd1975919854_
                   _hd1975619846_)
                  (_g1973019822_ _g1973219825_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1973019822_
                                                   _g1973219825_))
                                              (_g1973019822_ _g1973219825_))))
                                      (_g1973019822_ _g1973219825_))))
                              (_g1973019822_ _g1973219825_))))
                      (_g1973019822_ _g1973219825_))))
               (_g1972820129_
                (lambda (_g1973220007_)
                  (if (gx#stx-pair? _g1973220007_)
                      (let ((_e1973520009_ (gx#stx-e _g1973220007_)))
                        (let ((_hd1973620012_ (##car _e1973520009_))
                              (_tl1973720014_ (##cdr _e1973520009_)))
                          (if (gx#stx-pair? _tl1973720014_)
                              (let ((_e1973820017_ (gx#stx-e _tl1973720014_)))
                                (let ((_hd1973920020_ (##car _e1973820017_))
                                      (_tl1974020022_ (##cdr _e1973820017_)))
                                  (if (gx#stx-pair? _hd1973920020_)
                                      (let ((_e1974120025_
                                             (gx#stx-e _hd1973920020_)))
                                        (let ((_hd1974220028_
                                               (##car _e1974120025_))
                                              (_tl1974320030_
                                               (##cdr _e1974120025_)))
                                          (if (gx#stx-null? _tl1974320030_)
                                              (if (gx#stx-pair? _tl1974020022_)
                                                  (let ((_e1974420033_
                                                         (gx#stx-e
                                                          _tl1974020022_)))
                                                    (let ((_hd1974520036_
                                                           (##car _e1974420033_))
                                                          (_tl1974620038_
                                                           (##cdr _e1974420033_)))
                                                      (if (gx#stx-null?
                                                           _tl1974620038_)
                                                          ((lambda (_L20041_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L20042_)
                     (if (if (gx#identifier? _L20042_)
                             (gxc#case-lambda-expr? _L20041_)
                             '#f)
                         (let* ((_g2005920073_
                                 (lambda (_g2006020070_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g2006020070_)))
                                (_g2005820104_
                                 (lambda (_g2006020076_)
                                   (if (gx#stx-pair? _g2006020076_)
                                       (let ((_e2006620078_
                                              (gx#stx-e _g2006020076_)))
                                         (let ((_hd2006720081_
                                                (##car _e2006620078_))
                                               (_tl2006820083_
                                                (##cdr _e2006620078_)))
                                           ((lambda (_L20086_)
                                              (let ((_g23680_
                                                     (gxc#lift-case-lambda-clauses__0
                                                      _stx19724_
                                                      _L20042_
                                                      _L20086_)))
                                                (begin
                                                  (let ((_g23681_
                                                         (values-count
                                                          _g23680_)))
                                                    (if (not (fx= _g23681_ 3))
                                                        (error "Context expects 3 values"
                                                               _g23681_)))
                                                  (let ((_ids20096_
                                                         (values-ref
                                                          _g23680_
                                                          0))
                                                        (_impls20097_
                                                         (values-ref
                                                          _g23680_
                                                          1))
                                                        (_clauses20098_
                                                         (values-ref
                                                          _g23680_
                                                          2)))
                                                    (let* ((_g23682_
                                                            (for-each
                                                             gx#core-bind-runtime!
                                                             _ids20096_))
                                                           (_defs20101_
                                                            (map _case-lambda-clause-def19726_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _ids20096_
                         _impls20097_)))
              (begin
                (gxc#verbose
                 '"lift case-lambda clauses "
                 (gxc#generate-runtime-binding-id _L20042_)
                 '" => "
                 (map gxc#identifier-symbol _ids20096_))
                (gxc#xform-wrap-source
                 (cons '%#begin
                       (foldr1 cons
                               (cons (gxc#xform-wrap-source
                                      (cons '%#define-values
                                            (cons (cons _L20042_ '())
                                                  (cons (gxc#xform-wrap-source
                                                         (cons '%#case-lambda
                                                               _clauses20098_)
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'case-lambda-expr))
                                                        '())))
                                      _stx19724_)
                                     '())
                               _defs20101_))
                 _stx19724_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _tl2006820083_)))
                                       (_g2005920073_ _g2006020076_))))
                                (_g2005720126_
                                 (lambda (_g2006020107_)
                                   (if (gx#stx-pair? _g2006020107_)
                                       (let ((_e2006220109_
                                              (gx#stx-e _g2006020107_)))
                                         (let ((_hd2006320112_
                                                (##car _e2006220109_))
                                               (_tl2006420114_
                                                (##cdr _e2006220109_)))
                                           ((lambda (_L20117_)
                                              (if (andmap1 gxc#dispatch-lambda-form?
                                                           _L20117_)
                                                  _stx19724_
                                                  (_g2005820104_
                                                   _g2006020107_)))
                                            _tl2006420114_)))
                                       (_g2005820104_ _g2006020107_)))))
                           (_g2005720126_ _L20041_))
                         (_g1972920004_ _g1973220007_)))
                   _hd1974520036_
                   _hd1974220028_)
                  (_g1972920004_ _g1973220007_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1972920004_
                                                   _g1973220007_))
                                              (_g1972920004_ _g1973220007_))))
                                      (_g1972920004_ _g1973220007_))))
                              (_g1972920004_ _g1973220007_))))
                      (_g1972920004_ _g1973220007_)))))
          (_g1972820129_ _stx19724_)))))
  (define gxc#lift-top-lambda-let-values%
    (lambda (_stx19147_)
      (letrec* ((_bind-e__opt-lambda19706__2362923630_
                 (lambda (_id19708_ _expr19709_ _compile?19710_)
                   (cons (cons _id19708_ '())
                         (cons (if _compile?19710_
                                   (gxc#compile-e _expr19709_)
                                   _expr19709_)
                               '()))))
                (_bind-e__0__2363123632_
                 (lambda (_id19715_ _expr19716_)
                   (let ((_compile?19718_ '#t))
                     (_bind-e__opt-lambda19706__2362923630_
                      _id19715_
                      _expr19716_
                      _compile?19718_))))
                (_bind-e19149_
                 (lambda _g23684_
                   (let ((_g23683_ (length _g23684_)))
                     (cond ((fx= _g23683_ 2)
                            (apply _bind-e__0__2363123632_ _g23684_))
                           ((fx= _g23683_ 3)
                            (apply _bind-e__opt-lambda19706__2362923630_
                                   _g23684_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g23684_))))))
                (_compile-bindings19150_
                 (lambda (_rest19292_)
                   (let _lp19294_ ((_rest19296_ _rest19292_)
                                   (_lift119297_ '())
                                   (_lift219298_ '())
                                   (_bind19299_ '()))
                     (let* ((_rest1930019308_ _rest19296_)
                            (_E1930319312_
                             (lambda ()
                               (error '"No clause matching" _rest1930019308_)))
                            (_else1930219316_
                             (lambda ()
                               (values (reverse _lift119297_)
                                       (reverse _lift219298_)
                                       (reverse _bind19299_))))
                            (_K1930419695_
                             (lambda (_rest19319_ _hd19320_)
                               (let* ((_g1932419360_
                                       (lambda (_g1932519357_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1932519357_)))
                                      (_g1932319401_
                                       (lambda (_g1932519363_)
                                         (if (gx#stx-pair? _g1932519363_)
                                             (let ((_e1935019365_
                                                    (gx#stx-e _g1932519363_)))
                                               (let ((_hd1935119368_
                                                      (##car _e1935019365_))
                                                     (_tl1935219370_
                                                      (##cdr _e1935019365_)))
                                                 (if (gx#stx-pair?
                                                      _tl1935219370_)
                                                     (let ((_e1935319373_
                                                            (gx#stx-e
                                                             _tl1935219370_)))
                                                       (let ((_hd1935419376_
                                                              (##car _e1935319373_))
                                                             (_tl1935519378_
                                                              (##cdr _e1935319373_)))
                                                         (if (gx#stx-null?
                                                              _tl1935519378_)
                                                             ((lambda (_L19381_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L19382_)
                        (_lp19294_
                         _rest19319_
                         _lift119297_
                         _lift219298_
                         (cons (cons _L19382_
                                     (cons (gxc#compile-e _L19381_) '()))
                               _bind19299_)))
                      _hd1935419376_
                      _hd1935119368_)
                     (_g1932419360_ _g1932519363_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1932419360_
                                                      _g1932519363_))))
                                             (_g1932419360_ _g1932519363_))))
                                      (_g1932219573_
                                       (lambda (_g1932519404_)
                                         (if (gx#stx-pair? _g1932519404_)
                                             (let ((_e1933919406_
                                                    (gx#stx-e _g1932519404_)))
                                               (let ((_hd1934019409_
                                                      (##car _e1933919406_))
                                                     (_tl1934119411_
                                                      (##cdr _e1933919406_)))
                                                 (if (gx#stx-pair?
                                                      _hd1934019409_)
                                                     (let ((_e1934219414_
                                                            (gx#stx-e
                                                             _hd1934019409_)))
                                                       (let ((_hd1934319417_
                                                              (##car _e1934219414_))
                                                             (_tl1934419419_
                                                              (##cdr _e1934219414_)))
                                                         (if (gx#stx-null?
                                                              _tl1934419419_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1934119411_)
                         (let ((_e1934519422_ (gx#stx-e _tl1934119411_)))
                           (let ((_hd1934619425_ (##car _e1934519422_))
                                 (_tl1934719427_ (##cdr _e1934519422_)))
                             (if (gx#stx-null? _tl1934719427_)
                                 ((lambda (_L19430_ _L19431_)
                                    (if (if (gx#identifier? _L19431_)
                                            (gxc#opt-lambda-expr? _L19430_)
                                            '#f)
                                        (let* ((_g1944519475_
                                                (lambda (_g1944619472_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1944619472_)))
                                               (_g1944419570_
                                                (lambda (_g1944619478_)
                                                  (if (gx#stx-pair?
                                                       _g1944619478_)
                                                      (let ((_e1945019480_
                                                             (gx#stx-e
                                                              _g1944619478_)))
                                                        (let ((_hd1945119483_
                                                               (##car _e1945019480_))
                                                              (_tl1945219485_
                                                               (##cdr _e1945019480_)))
                                                          (if (gx#stx-pair?
                                                               _tl1945219485_)
                                                              (let ((_e1945319488_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1945219485_)))
                        (let ((_hd1945419491_ (##car _e1945319488_))
                              (_tl1945519493_ (##cdr _e1945319488_)))
                          (if (gx#stx-pair? _hd1945419491_)
                              (let ((_e1945619496_ (gx#stx-e _hd1945419491_)))
                                (let ((_hd1945719499_ (##car _e1945619496_))
                                      (_tl1945819501_ (##cdr _e1945619496_)))
                                  (if (gx#stx-pair? _hd1945719499_)
                                      (let ((_e1945919504_
                                             (gx#stx-e _hd1945719499_)))
                                        (let ((_hd1946019507_
                                               (##car _e1945919504_))
                                              (_tl1946119509_
                                               (##cdr _e1945919504_)))
                                          (if (gx#stx-pair? _hd1946019507_)
                                              (let ((_e1946219512_
                                                     (gx#stx-e
                                                      _hd1946019507_)))
                                                (let ((_hd1946319515_
                                                       (##car _e1946219512_))
                                                      (_tl1946419517_
                                                       (##cdr _e1946219512_)))
                                                  (if (gx#stx-null?
                                                       _tl1946419517_)
                                                      (if (gx#stx-pair?
                                                           _tl1946119509_)
                                                          (let ((_e1946519520_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1946119509_)))
                    (let ((_hd1946619523_ (##car _e1946519520_))
                          (_tl1946719525_ (##cdr _e1946519520_)))
                      (if (gx#stx-null? _tl1946719525_)
                          (if (gx#stx-null? _tl1945819501_)
                              (if (gx#stx-pair? _tl1945519493_)
                                  (let ((_e1946819528_
                                         (gx#stx-e _tl1945519493_)))
                                    (let ((_hd1946919531_
                                           (##car _e1946819528_))
                                          (_tl1947019533_
                                           (##cdr _e1946819528_)))
                                      (if (gx#stx-null? _tl1947019533_)
                                          ((lambda (_L19536_ _L19537_ _L19538_)
                                             (let* ((_lambda-id19562_
                                                     (make-symbol
                                                      (gx#stx-e _L19431_)
                                                      '"__"
                                                      (gx#stx-e _L19538_)
                                                      (gensym '__)))
                                                    (_lambda-id19564_
                                                     (gx#core-quote-syntax__1
                                                      _lambda-id19562_
                                                      (gx#stx-source
                                                       _stx19147_)))
                                                    (_g23685_
                                                     (gx#core-bind-runtime!__0
                                                      _lambda-id19564_))
                                                    (_new-case-lambda-expr19567_
                                                     (gxc#apply-expression-subst
                                                      _L19536_
                                                      _L19538_
                                                      _lambda-id19564_)))
                                               (begin
                                                 (gxc#verbose
                                                  '"lift opt-lambda dispatch "
                                                  (gxc#generate-runtime-binding-id
                                                   _L19431_)
                                                  '" => "
                                                  (gxc#generate-runtime-binding-id
                                                   _lambda-id19564_))
                                                 (_lp19294_
                                                  (cons (_bind-e__opt-lambda19706__2362923630_
                                                         _L19431_
                                                         _new-case-lambda-expr19567_
                                                         '#f)
                                                        _rest19319_)
                                                  (cons (_bind-e__0__2363123632_
                                                         _lambda-id19564_
                                                         _L19537_)
                                                        _lift119297_)
                                                  _lift219298_
                                                  _bind19299_))))
                                           _hd1946919531_
                                           _hd1946619523_
                                           _hd1946319515_)
                                          (_g1944519475_ _g1944619478_))))
                                  (_g1944519475_ _g1944619478_))
                              (_g1944519475_ _g1944619478_))
                          (_g1944519475_ _g1944619478_))))
                  (_g1944519475_ _g1944619478_))
              (_g1944519475_ _g1944619478_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1944519475_ _g1944619478_))))
                                      (_g1944519475_ _g1944619478_))))
                              (_g1944519475_ _g1944619478_))))
                      (_g1944519475_ _g1944619478_))))
              (_g1944519475_ _g1944619478_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g1944419570_ _L19430_))
                                        (_g1932319401_ _g1932519404_)))
                                  _hd1934619425_
                                  _hd1934319417_)
                                 (_g1932319401_ _g1932519404_))))
                         (_g1932319401_ _g1932519404_))
                     (_g1932319401_ _g1932519404_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1932319401_
                                                      _g1932519404_))))
                                             (_g1932319401_ _g1932519404_))))
                                      (_g1932119692_
                                       (lambda (_g1932519576_)
                                         (if (gx#stx-pair? _g1932519576_)
                                             (let ((_e1932819578_
                                                    (gx#stx-e _g1932519576_)))
                                               (let ((_hd1932919581_
                                                      (##car _e1932819578_))
                                                     (_tl1933019583_
                                                      (##cdr _e1932819578_)))
                                                 (if (gx#stx-pair?
                                                      _hd1932919581_)
                                                     (let ((_e1933119586_
                                                            (gx#stx-e
                                                             _hd1932919581_)))
                                                       (let ((_hd1933219589_
                                                              (##car _e1933119586_))
                                                             (_tl1933319591_
                                                              (##cdr _e1933119586_)))
                                                         (if (gx#stx-null?
                                                              _tl1933319591_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1933019583_)
                         (let ((_e1933419594_ (gx#stx-e _tl1933019583_)))
                           (let ((_hd1933519597_ (##car _e1933419594_))
                                 (_tl1933619599_ (##cdr _e1933419594_)))
                             (if (gx#stx-null? _tl1933619599_)
                                 ((lambda (_L19602_ _L19603_)
                                    (if (if (gx#identifier? _L19603_)
                                            (gxc#case-lambda-expr? _L19602_)
                                            '#f)
                                        (let* ((_g1961819632_
                                                (lambda (_g1961919629_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1961919629_)))
                                               (_g1961719667_
                                                (lambda (_g1961919635_)
                                                  (if (gx#stx-pair?
                                                       _g1961919635_)
                                                      (let ((_e1962519637_
                                                             (gx#stx-e
                                                              _g1961919635_)))
                                                        (let ((_hd1962619640_
                                                               (##car _e1962519637_))
                                                              (_tl1962719642_
                                                               (##cdr _e1962519637_)))
                                                          ((lambda (_L19645_)
                                                             (let ((_g23686_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#lift-case-lambda-clauses__%
                             _stx19147_
                             _L19603_
                             _L19645_
                             '#t)))
                       (begin
                         (let ((_g23687_ (values-count _g23686_)))
                           (if (not (fx= _g23687_ 3))
                               (error "Context expects 3 values" _g23687_)))
                         (let ((_ids19655_ (values-ref _g23686_ 0))
                               (_impls19656_ (values-ref _g23686_ 1))
                               (_clauses19657_ (values-ref _g23686_ 2)))
                           (let* ((_g23688_
                                   (for-each gx#core-bind-runtime! _ids19655_))
                                  (_xbind19660_
                                   (map _bind-e19149_ _ids19655_ _impls19656_))
                                  (_expr*19662_
                                   (gxc#xform-wrap-source
                                    (cons '%#case-lambda _clauses19657_)
                                    (gx#datum->syntax__0
                                     '#f
                                     'case-lambda-expr)))
                                  (_bind*19664_
                                   (_bind-e__opt-lambda19706__2362923630_
                                    _L19603_
                                    _expr*19662_
                                    '#f)))
                             (begin
                               (gxc#verbose
                                '"lift case-lambda clauses "
                                (gxc#generate-runtime-binding-id _L19603_)
                                '" => "
                                (map gxc#identifier-symbol _ids19655_))
                               (_lp19294_
                                _rest19319_
                                _lift119297_
                                (foldl1 cons _lift219298_ _xbind19660_)
                                (cons _bind*19664_ _bind19299_))))))))
                   _tl1962719642_)))
              (_g1961819632_ _g1961919635_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1961619689_
                                                (lambda (_g1961919670_)
                                                  (if (gx#stx-pair?
                                                       _g1961919670_)
                                                      (let ((_e1962119672_
                                                             (gx#stx-e
                                                              _g1961919670_)))
                                                        (let ((_hd1962219675_
                                                               (##car _e1962119672_))
                                                              (_tl1962319677_
                                                               (##cdr _e1962119672_)))
                                                          ((lambda (_L19680_)
                                                             (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _L19680_)
                         (_lp19294_
                          _rest19319_
                          _lift119297_
                          _lift219298_
                          (cons (_bind-e__opt-lambda19706__2362923630_
                                 _L19603_
                                 _L19602_
                                 '#f)
                                _bind19299_))
                         (_g1961719667_ _g1961919670_)))
                   _tl1962319677_)))
              (_g1961719667_ _g1961919670_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g1961619689_ _L19602_))
                                        (_g1932219573_ _g1932519576_)))
                                  _hd1933519597_
                                  _hd1933219589_)
                                 (_g1932219573_ _g1932519576_))))
                         (_g1932219573_ _g1932519576_))
                     (_g1932219573_ _g1932519576_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1932219573_
                                                      _g1932519576_))))
                                             (_g1932219573_ _g1932519576_)))))
                                 (_g1932119692_ _hd19320_)))))
                       (if (##pair? _rest1930019308_)
                           (let ((_hd1930519698_ (##car _rest1930019308_))
                                 (_tl1930619700_ (##cdr _rest1930019308_)))
                             (let* ((_hd19703_ _hd1930519698_)
                                    (_rest19705_ _tl1930619700_))
                               (_K1930419695_ _rest19705_ _hd19703_)))
                           (_else1930219316_)))))))
        (let* ((_g1915319179_
                (lambda (_g1915419176_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1915419176_)))
               (_g1915219186_
                (lambda (_g1915419182_)
                  ((lambda () (gxc#xform-let-values% _stx19147_)))))
               (_g1915119289_
                (lambda (_g1915419189_)
                  (if (gx#stx-pair? _g1915419189_)
                      (let ((_e1915719191_ (gx#stx-e _g1915419189_)))
                        (let ((_hd1915819194_ (##car _e1915719191_))
                              (_tl1915919196_ (##cdr _e1915719191_)))
                          (if (gx#stx-pair? _tl1915919196_)
                              (let ((_e1916019199_ (gx#stx-e _tl1915919196_)))
                                (let ((_hd1916119202_ (##car _e1916019199_))
                                      (_tl1916219204_ (##cdr _e1916019199_)))
                                  (if (gx#stx-pair/null? _hd1916119202_)
                                      (if (fx>= (gx#stx-length _hd1916119202_)
                                                '0)
                                          (let ((_g23689_
                                                 (gx#syntax-split-splice
                                                  _hd1916119202_
                                                  '0)))
                                            (begin
                                              (let ((_g23690_
                                                     (values-count _g23689_)))
                                                (if (not (fx= _g23690_ 2))
                                                    (error "Context expects 2 values"
                                                           _g23690_)))
                                              (let ((_target1916319207_
                                                     (values-ref _g23689_ 0))
                                                    (_tl1916519209_
                                                     (values-ref _g23689_ 1)))
                                                (if (gx#stx-null?
                                                     _tl1916519209_)
                                                    (letrec ((_loop1916619212_
                                                              (lambda (_hd1916419215_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind1917019217_)
                        (if (gx#stx-pair? _hd1916419215_)
                            (let ((_e1916719220_ (gx#stx-e _hd1916419215_)))
                              (let ((_lp-hd1916819223_ (##car _e1916719220_))
                                    (_lp-tl1916919225_ (##cdr _e1916719220_)))
                                (_loop1916619212_
                                 _lp-tl1916919225_
                                 (cons _lp-hd1916819223_ _bind1917019217_))))
                            (let ((_bind1917119228_
                                   (reverse _bind1917019217_)))
                              (if (gx#stx-pair? _tl1916219204_)
                                  (let ((_e1917219231_
                                         (gx#stx-e _tl1916219204_)))
                                    (let ((_hd1917319234_
                                           (##car _e1917219231_))
                                          (_tl1917419236_
                                           (##cdr _e1917219231_)))
                                      (if (gx#stx-null? _tl1917419236_)
                                          ((lambda (_L19239_ _L19240_)
                                             (if (ormap1 gxc#lift-top-lambda-binding?
                                                         (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g1926019263_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g1926119265_)
                             (cons _g1926019263_ _g1926119265_))
                           '()
                           _L19240_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (call-with-parameters
                                                  (lambda ()
                                                    (let ((_g23691_
                                                           (_compile-bindings19150_
                                                            (begin
                                                              '#!void
                                                              (foldr1 (lambda (_g1926819271_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1926919273_)
                                (cons _g1926819271_ _g1926919273_))
                              '()
                              _L19240_)))))
              (begin
                (let ((_g23692_ (values-count _g23691_)))
                  (if (not (fx= _g23692_ 3))
                      (error "Context expects 3 values" _g23692_)))
                (let ((_lift119276_ (values-ref _g23691_ 0))
                      (_lift219277_ (values-ref _g23691_ 1))
                      (_hd19278_ (values-ref _g23691_ 2)))
                  (let* ((_body19280_ (gxc#compile-e _L19239_))
                         (_expr19282_
                          (gxc#xform-wrap-source
                           (cons '%#let-values
                                 (cons _hd19278_ (cons _body19280_ '())))
                           _stx19147_))
                         (_expr19284_
                          (if (null? _lift219277_)
                              _expr19282_
                              (gxc#xform-wrap-source
                               (cons '%#let-values
                                     (cons _lift219277_
                                           (cons _expr19282_ '())))
                               _stx19147_)))
                         (_expr19286_
                          (if (null? _lift119276_)
                              _expr19284_
                              (gxc#xform-wrap-source
                               (cons '%#let-values
                                     (cons _lift119276_
                                           (cons _expr19284_ '())))
                               _stx19147_))))
                    _expr19286_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  gx#current-expander-context
                                                  (let ((__obj23639
                                                         (make-object
                                                          gx#local-context::t
                                                          '5)))
                                                    (begin
                                                      (gx#local-context:::init!__0
                                                       __obj23639)
                                                      __obj23639)))
                                                 (_g1915219186_
                                                  _g1915419189_)))
                                           _hd1917319234_
                                           _bind1917119228_)
                                          (_g1915219186_ _g1915419189_))))
                                  (_g1915219186_ _g1915419189_)))))))
              (_loop1916619212_ _target1916319207_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1915219186_
                                                     _g1915419189_)))))
                                          (_g1915219186_ _g1915419189_))
                                      (_g1915219186_ _g1915419189_))))
                              (_g1915219186_ _g1915419189_))))
                      (_g1915219186_ _g1915419189_)))))
          (_g1915119289_ _stx19147_)))))
  (define gxc#lift-top-lambda-letrec-values%
    (lambda (_stx18579_)
      (letrec* ((_bind-e__opt-lambda19129__2363423635_
                 (lambda (_id19131_ _expr19132_ _compile?19133_)
                   (cons (cons _id19131_ '())
                         (cons (if _compile?19133_
                                   (gxc#compile-e _expr19132_)
                                   _expr19132_)
                               '()))))
                (_bind-e__0__2363623637_
                 (lambda (_id19138_ _expr19139_)
                   (let ((_compile?19141_ '#t))
                     (_bind-e__opt-lambda19129__2363423635_
                      _id19138_
                      _expr19139_
                      _compile?19141_))))
                (_bind-e18581_
                 (lambda _g23694_
                   (let ((_g23693_ (length _g23694_)))
                     (cond ((fx= _g23693_ 2)
                            (apply _bind-e__0__2363623637_ _g23694_))
                           ((fx= _g23693_ 3)
                            (apply _bind-e__opt-lambda19129__2363423635_
                                   _g23694_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g23694_))))))
                (_compile-bindings18582_
                 (lambda (_rest18717_)
                   (let _lp18719_ ((_rest18721_ _rest18717_) (_bind18722_ '()))
                     (let* ((_rest1872318731_ _rest18721_)
                            (_E1872618735_
                             (lambda ()
                               (error '"No clause matching" _rest1872318731_)))
                            (_else1872518739_
                             (lambda () (reverse _bind18722_)))
                            (_K1872719118_
                             (lambda (_rest18742_ _hd18743_)
                               (let* ((_g1874718783_
                                       (lambda (_g1874818780_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1874818780_)))
                                      (_g1874618824_
                                       (lambda (_g1874818786_)
                                         (if (gx#stx-pair? _g1874818786_)
                                             (let ((_e1877318788_
                                                    (gx#stx-e _g1874818786_)))
                                               (let ((_hd1877418791_
                                                      (##car _e1877318788_))
                                                     (_tl1877518793_
                                                      (##cdr _e1877318788_)))
                                                 (if (gx#stx-pair?
                                                      _tl1877518793_)
                                                     (let ((_e1877618796_
                                                            (gx#stx-e
                                                             _tl1877518793_)))
                                                       (let ((_hd1877718799_
                                                              (##car _e1877618796_))
                                                             (_tl1877818801_
                                                              (##cdr _e1877618796_)))
                                                         (if (gx#stx-null?
                                                              _tl1877818801_)
                                                             ((lambda (_L18804_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L18805_)
                        (_lp18719_
                         _rest18742_
                         (cons (cons _L18805_
                                     (cons (gxc#compile-e _L18804_) '()))
                               _bind18722_)))
                      _hd1877718799_
                      _hd1877418791_)
                     (_g1874718783_ _g1874818786_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1874718783_
                                                      _g1874818786_))))
                                             (_g1874718783_ _g1874818786_))))
                                      (_g1874518996_
                                       (lambda (_g1874818827_)
                                         (if (gx#stx-pair? _g1874818827_)
                                             (let ((_e1876218829_
                                                    (gx#stx-e _g1874818827_)))
                                               (let ((_hd1876318832_
                                                      (##car _e1876218829_))
                                                     (_tl1876418834_
                                                      (##cdr _e1876218829_)))
                                                 (if (gx#stx-pair?
                                                      _hd1876318832_)
                                                     (let ((_e1876518837_
                                                            (gx#stx-e
                                                             _hd1876318832_)))
                                                       (let ((_hd1876618840_
                                                              (##car _e1876518837_))
                                                             (_tl1876718842_
                                                              (##cdr _e1876518837_)))
                                                         (if (gx#stx-null?
                                                              _tl1876718842_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1876418834_)
                         (let ((_e1876818845_ (gx#stx-e _tl1876418834_)))
                           (let ((_hd1876918848_ (##car _e1876818845_))
                                 (_tl1877018850_ (##cdr _e1876818845_)))
                             (if (gx#stx-null? _tl1877018850_)
                                 ((lambda (_L18853_ _L18854_)
                                    (if (if (gx#identifier? _L18854_)
                                            (gxc#opt-lambda-expr? _L18853_)
                                            '#f)
                                        (let* ((_g1886818898_
                                                (lambda (_g1886918895_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1886918895_)))
                                               (_g1886718993_
                                                (lambda (_g1886918901_)
                                                  (if (gx#stx-pair?
                                                       _g1886918901_)
                                                      (let ((_e1887318903_
                                                             (gx#stx-e
                                                              _g1886918901_)))
                                                        (let ((_hd1887418906_
                                                               (##car _e1887318903_))
                                                              (_tl1887518908_
                                                               (##cdr _e1887318903_)))
                                                          (if (gx#stx-pair?
                                                               _tl1887518908_)
                                                              (let ((_e1887618911_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1887518908_)))
                        (let ((_hd1887718914_ (##car _e1887618911_))
                              (_tl1887818916_ (##cdr _e1887618911_)))
                          (if (gx#stx-pair? _hd1887718914_)
                              (let ((_e1887918919_ (gx#stx-e _hd1887718914_)))
                                (let ((_hd1888018922_ (##car _e1887918919_))
                                      (_tl1888118924_ (##cdr _e1887918919_)))
                                  (if (gx#stx-pair? _hd1888018922_)
                                      (let ((_e1888218927_
                                             (gx#stx-e _hd1888018922_)))
                                        (let ((_hd1888318930_
                                               (##car _e1888218927_))
                                              (_tl1888418932_
                                               (##cdr _e1888218927_)))
                                          (if (gx#stx-pair? _hd1888318930_)
                                              (let ((_e1888518935_
                                                     (gx#stx-e
                                                      _hd1888318930_)))
                                                (let ((_hd1888618938_
                                                       (##car _e1888518935_))
                                                      (_tl1888718940_
                                                       (##cdr _e1888518935_)))
                                                  (if (gx#stx-null?
                                                       _tl1888718940_)
                                                      (if (gx#stx-pair?
                                                           _tl1888418932_)
                                                          (let ((_e1888818943_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1888418932_)))
                    (let ((_hd1888918946_ (##car _e1888818943_))
                          (_tl1889018948_ (##cdr _e1888818943_)))
                      (if (gx#stx-null? _tl1889018948_)
                          (if (gx#stx-null? _tl1888118924_)
                              (if (gx#stx-pair? _tl1887818916_)
                                  (let ((_e1889118951_
                                         (gx#stx-e _tl1887818916_)))
                                    (let ((_hd1889218954_
                                           (##car _e1889118951_))
                                          (_tl1889318956_
                                           (##cdr _e1889118951_)))
                                      (if (gx#stx-null? _tl1889318956_)
                                          ((lambda (_L18959_ _L18960_ _L18961_)
                                             (let* ((_lambda-id18985_
                                                     (make-symbol
                                                      (gx#stx-e _L18854_)
                                                      '"__"
                                                      (gx#stx-e _L18961_)
                                                      (gensym '__)))
                                                    (_lambda-id18987_
                                                     (gx#core-quote-syntax__1
                                                      _lambda-id18985_
                                                      (gx#stx-source
                                                       _stx18579_)))
                                                    (_g23695_
                                                     (gx#core-bind-runtime!__0
                                                      _lambda-id18987_))
                                                    (_new-case-lambda-expr18990_
                                                     (gxc#apply-expression-subst
                                                      _L18959_
                                                      _L18961_
                                                      _lambda-id18987_)))
                                               (begin
                                                 (gxc#verbose
                                                  '"lift opt-lambda dispatch "
                                                  (gxc#generate-runtime-binding-id
                                                   _L18854_)
                                                  '" => "
                                                  (gxc#generate-runtime-binding-id
                                                   _lambda-id18987_))
                                                 (_lp18719_
                                                  (cons (_bind-e__opt-lambda19129__2363423635_
                                                         _L18854_
                                                         _new-case-lambda-expr18990_
                                                         '#f)
                                                        _rest18742_)
                                                  (cons (_bind-e__0__2363623637_
                                                         _lambda-id18987_
                                                         _L18960_)
                                                        _bind18722_)))))
                                           _hd1889218954_
                                           _hd1888918946_
                                           _hd1888618938_)
                                          (_g1886818898_ _g1886918901_))))
                                  (_g1886818898_ _g1886918901_))
                              (_g1886818898_ _g1886918901_))
                          (_g1886818898_ _g1886918901_))))
                  (_g1886818898_ _g1886918901_))
              (_g1886818898_ _g1886918901_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1886818898_ _g1886918901_))))
                                      (_g1886818898_ _g1886918901_))))
                              (_g1886818898_ _g1886918901_))))
                      (_g1886818898_ _g1886918901_))))
              (_g1886818898_ _g1886918901_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g1886718993_ _L18853_))
                                        (_g1874618824_ _g1874818827_)))
                                  _hd1876918848_
                                  _hd1876618840_)
                                 (_g1874618824_ _g1874818827_))))
                         (_g1874618824_ _g1874818827_))
                     (_g1874618824_ _g1874818827_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1874618824_
                                                      _g1874818827_))))
                                             (_g1874618824_ _g1874818827_))))
                                      (_g1874419115_
                                       (lambda (_g1874818999_)
                                         (if (gx#stx-pair? _g1874818999_)
                                             (let ((_e1875119001_
                                                    (gx#stx-e _g1874818999_)))
                                               (let ((_hd1875219004_
                                                      (##car _e1875119001_))
                                                     (_tl1875319006_
                                                      (##cdr _e1875119001_)))
                                                 (if (gx#stx-pair?
                                                      _hd1875219004_)
                                                     (let ((_e1875419009_
                                                            (gx#stx-e
                                                             _hd1875219004_)))
                                                       (let ((_hd1875519012_
                                                              (##car _e1875419009_))
                                                             (_tl1875619014_
                                                              (##cdr _e1875419009_)))
                                                         (if (gx#stx-null?
                                                              _tl1875619014_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1875319006_)
                         (let ((_e1875719017_ (gx#stx-e _tl1875319006_)))
                           (let ((_hd1875819020_ (##car _e1875719017_))
                                 (_tl1875919022_ (##cdr _e1875719017_)))
                             (if (gx#stx-null? _tl1875919022_)
                                 ((lambda (_L19025_ _L19026_)
                                    (if (if (gx#identifier? _L19026_)
                                            (gxc#case-lambda-expr? _L19025_)
                                            '#f)
                                        (let* ((_g1904119055_
                                                (lambda (_g1904219052_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1904219052_)))
                                               (_g1904019090_
                                                (lambda (_g1904219058_)
                                                  (if (gx#stx-pair?
                                                       _g1904219058_)
                                                      (let ((_e1904819060_
                                                             (gx#stx-e
                                                              _g1904219058_)))
                                                        (let ((_hd1904919063_
                                                               (##car _e1904819060_))
                                                              (_tl1905019065_
                                                               (##cdr _e1904819060_)))
                                                          ((lambda (_L19068_)
                                                             (let ((_g23696_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#lift-case-lambda-clauses__%
                             _stx18579_
                             _L19026_
                             _L19068_
                             '#t)))
                       (begin
                         (let ((_g23697_ (values-count _g23696_)))
                           (if (not (fx= _g23697_ 3))
                               (error "Context expects 3 values" _g23697_)))
                         (let ((_ids19078_ (values-ref _g23696_ 0))
                               (_impls19079_ (values-ref _g23696_ 1))
                               (_clauses19080_ (values-ref _g23696_ 2)))
                           (let* ((_g23698_
                                   (for-each gx#core-bind-runtime! _ids19078_))
                                  (_xbind19083_
                                   (map _bind-e18581_ _ids19078_ _impls19079_))
                                  (_expr*19085_
                                   (gxc#xform-wrap-source
                                    (cons '%#case-lambda _clauses19080_)
                                    (gx#datum->syntax__0
                                     '#f
                                     'case-lambda-expr)))
                                  (_bind*19087_
                                   (_bind-e__opt-lambda19129__2363423635_
                                    _L19026_
                                    _expr*19085_
                                    '#f)))
                             (begin
                               (gxc#verbose
                                '"lift case-lambda clauses "
                                (gxc#generate-runtime-binding-id _L19026_)
                                '" => "
                                (map gxc#identifier-symbol _ids19078_))
                               (_lp18719_
                                _rest18742_
                                (cons _bind*19087_
                                      (foldl1 cons
                                              _bind18722_
                                              _xbind19083_)))))))))
                   _tl1905019065_)))
              (_g1904119055_ _g1904219058_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1903919112_
                                                (lambda (_g1904219093_)
                                                  (if (gx#stx-pair?
                                                       _g1904219093_)
                                                      (let ((_e1904419095_
                                                             (gx#stx-e
                                                              _g1904219093_)))
                                                        (let ((_hd1904519098_
                                                               (##car _e1904419095_))
                                                              (_tl1904619100_
                                                               (##cdr _e1904419095_)))
                                                          ((lambda (_L19103_)
                                                             (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _L19103_)
                         (_lp18719_
                          _rest18742_
                          (cons (_bind-e__opt-lambda19129__2363423635_
                                 _L19026_
                                 _L19025_
                                 '#f)
                                _bind18722_))
                         (_g1904019090_ _g1904219093_)))
                   _tl1904619100_)))
              (_g1904019090_ _g1904219093_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g1903919112_ _L19025_))
                                        (_g1874518996_ _g1874818999_)))
                                  _hd1875819020_
                                  _hd1875519012_)
                                 (_g1874518996_ _g1874818999_))))
                         (_g1874518996_ _g1874818999_))
                     (_g1874518996_ _g1874818999_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1874518996_
                                                      _g1874818999_))))
                                             (_g1874518996_ _g1874818999_)))))
                                 (_g1874419115_ _hd18743_)))))
                       (if (##pair? _rest1872318731_)
                           (let ((_hd1872819121_ (##car _rest1872318731_))
                                 (_tl1872919123_ (##cdr _rest1872318731_)))
                             (let* ((_hd19126_ _hd1872819121_)
                                    (_rest19128_ _tl1872919123_))
                               (_K1872719118_ _rest19128_ _hd19126_)))
                           (_else1872518739_)))))))
        (let* ((_g1858518612_
                (lambda (_g1858618609_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1858618609_)))
               (_g1858418619_
                (lambda (_g1858618615_)
                  ((lambda () (gxc#xform-let-values% _stx18579_)))))
               (_g1858318714_
                (lambda (_g1858618622_)
                  (if (gx#stx-pair? _g1858618622_)
                      (let ((_e1859018624_ (gx#stx-e _g1858618622_)))
                        (let ((_hd1859118627_ (##car _e1859018624_))
                              (_tl1859218629_ (##cdr _e1859018624_)))
                          (if (gx#stx-pair? _tl1859218629_)
                              (let ((_e1859318632_ (gx#stx-e _tl1859218629_)))
                                (let ((_hd1859418635_ (##car _e1859318632_))
                                      (_tl1859518637_ (##cdr _e1859318632_)))
                                  (if (gx#stx-pair/null? _hd1859418635_)
                                      (if (fx>= (gx#stx-length _hd1859418635_)
                                                '0)
                                          (let ((_g23699_
                                                 (gx#syntax-split-splice
                                                  _hd1859418635_
                                                  '0)))
                                            (begin
                                              (let ((_g23700_
                                                     (values-count _g23699_)))
                                                (if (not (fx= _g23700_ 2))
                                                    (error "Context expects 2 values"
                                                           _g23700_)))
                                              (let ((_target1859618640_
                                                     (values-ref _g23699_ 0))
                                                    (_tl1859818642_
                                                     (values-ref _g23699_ 1)))
                                                (if (gx#stx-null?
                                                     _tl1859818642_)
                                                    (letrec ((_loop1859918645_
                                                              (lambda (_hd1859718648_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind1860318650_)
                        (if (gx#stx-pair? _hd1859718648_)
                            (let ((_e1860018653_ (gx#stx-e _hd1859718648_)))
                              (let ((_lp-hd1860118656_ (##car _e1860018653_))
                                    (_lp-tl1860218658_ (##cdr _e1860018653_)))
                                (_loop1859918645_
                                 _lp-tl1860218658_
                                 (cons _lp-hd1860118656_ _bind1860318650_))))
                            (let ((_bind1860418661_
                                   (reverse _bind1860318650_)))
                              (if (gx#stx-pair? _tl1859518637_)
                                  (let ((_e1860518664_
                                         (gx#stx-e _tl1859518637_)))
                                    (let ((_hd1860618667_
                                           (##car _e1860518664_))
                                          (_tl1860718669_
                                           (##cdr _e1860518664_)))
                                      (if (gx#stx-null? _tl1860718669_)
                                          ((lambda (_L18672_ _L18673_ _L18674_)
                                             (if (ormap1 gxc#lift-top-lambda-binding?
                                                         (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g1869518698_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g1869618700_)
                             (cons _g1869518698_ _g1869618700_))
                           '()
                           _L18673_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (call-with-parameters
                                                  (lambda ()
                                                    (let ((_hd18711_
                                                           (_compile-bindings18582_
                                                            (begin
                                                              '#!void
                                                              (foldr1 (lambda (_g1870318706_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1870418708_)
                                (cons _g1870318706_ _g1870418708_))
                              '()
                              _L18673_))))
                  (_body18712_ (gxc#compile-e _L18672_)))
              (gxc#xform-wrap-source
               (cons _L18674_ (cons _hd18711_ (cons _body18712_ '())))
               _stx18579_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  gx#current-expander-context
                                                  (let ((__obj23640
                                                         (make-object
                                                          gx#local-context::t
                                                          '5)))
                                                    (begin
                                                      (gx#local-context:::init!__0
                                                       __obj23640)
                                                      __obj23640)))
                                                 (_g1858418619_
                                                  _g1858618622_)))
                                           _hd1860618667_
                                           _bind1860418661_
                                           _hd1859118627_)
                                          (_g1858418619_ _g1858618622_))))
                                  (_g1858418619_ _g1858618622_)))))))
              (_loop1859918645_ _target1859618640_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1858418619_
                                                     _g1858618622_)))))
                                          (_g1858418619_ _g1858618622_))
                                      (_g1858418619_ _g1858618622_))))
                              (_g1858418619_ _g1858618622_))))
                      (_g1858418619_ _g1858618622_)))))
          (_g1858318714_ _stx18579_)))))
  (define gxc#lift-top-lambda-binding?
    (lambda (_bind18500_)
      (let* ((_g1850318520_
              (lambda (_g1850418517_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1850418517_)))
             (_g1850218527_ (lambda (_g1850418523_) ((lambda () '#f))))
             (_g1850118576_
              (lambda (_g1850418530_)
                (if (gx#stx-pair? _g1850418530_)
                    (let ((_e1850718532_ (gx#stx-e _g1850418530_)))
                      (let ((_hd1850818535_ (##car _e1850718532_))
                            (_tl1850918537_ (##cdr _e1850718532_)))
                        (if (gx#stx-pair? _hd1850818535_)
                            (let ((_e1851018540_ (gx#stx-e _hd1850818535_)))
                              (let ((_hd1851118543_ (##car _e1851018540_))
                                    (_tl1851218545_ (##cdr _e1851018540_)))
                                (if (gx#stx-null? _tl1851218545_)
                                    (if (gx#stx-pair? _tl1850918537_)
                                        (let ((_e1851318548_
                                               (gx#stx-e _tl1850918537_)))
                                          (let ((_hd1851418551_
                                                 (##car _e1851318548_))
                                                (_tl1851518553_
                                                 (##cdr _e1851318548_)))
                                            (if (gx#stx-null? _tl1851518553_)
                                                ((lambda (_L18556_ _L18557_)
                                                   (if (gx#identifier?
                                                        _L18557_)
                                                       (let ((_$e18573_
                                                              (gxc#case-lambda-expr?
                                                               _L18556_)))
                                                         (if _$e18573_
                                                             _$e18573_
                                                             (gxc#opt-lambda-expr?
                                                              _L18556_)))
                                                       '#f))
                                                 _hd1851418551_
                                                 _hd1851118543_)
                                                (_g1850218527_
                                                 _g1850418530_))))
                                        (_g1850218527_ _g1850418530_))
                                    (_g1850218527_ _g1850418530_))))
                            (_g1850218527_ _g1850418530_))))
                    (_g1850218527_ _g1850418530_)))))
        (_g1850118576_ _bind18500_))))
  (define gxc#expression-subst-ref%
    (lambda (_stx18438_ _id18439_ _new-id18440_)
      (let* ((_g1844318456_
              (lambda (_g1844418453_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1844418453_)))
             (_g1844218463_ (lambda (_g1844418459_) ((lambda () _stx18438_))))
             (_g1844118497_
              (lambda (_g1844418466_)
                (if (gx#stx-pair? _g1844418466_)
                    (let ((_e1844618468_ (gx#stx-e _g1844418466_)))
                      (let ((_hd1844718471_ (##car _e1844618468_))
                            (_tl1844818473_ (##cdr _e1844618468_)))
                        (if (gx#stx-pair? _tl1844818473_)
                            (let ((_e1844918476_ (gx#stx-e _tl1844818473_)))
                              (let ((_hd1845018479_ (##car _e1844918476_))
                                    (_tl1845118481_ (##cdr _e1844918476_)))
                                (if (gx#stx-null? _tl1845118481_)
                                    ((lambda (_L18484_)
                                       (if (gx#free-identifier=?
                                            _L18484_
                                            _id18439_)
                                           (gxc#xform-wrap-source
                                            (cons '%#ref
                                                  (cons _new-id18440_ '()))
                                            _stx18438_)
                                           (_g1844218463_ _g1844418466_)))
                                     _hd1845018479_)
                                    (_g1844218463_ _g1844418466_))))
                            (_g1844218463_ _g1844418466_))))
                    (_g1844218463_ _g1844418466_)))))
        (_g1844118497_ _stx18438_))))
  (define gxc#collect-type-define-values%
    (lambda (_stx18294_)
      (let* ((_g1829718328_
              (lambda (_g1829818325_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1829818325_)))
             (_g1829618373_
              (lambda (_g1829818331_)
                (if (gx#stx-pair? _g1829818331_)
                    (let ((_e1831518333_ (gx#stx-e _g1829818331_)))
                      (let ((_hd1831618336_ (##car _e1831518333_))
                            (_tl1831718338_ (##cdr _e1831518333_)))
                        (if (gx#stx-pair? _tl1831718338_)
                            (let ((_e1831818341_ (gx#stx-e _tl1831718338_)))
                              (let ((_hd1831918344_ (##car _e1831818341_))
                                    (_tl1832018346_ (##cdr _e1831818341_)))
                                (if (gx#stx-pair? _tl1832018346_)
                                    (let ((_e1832118349_
                                           (gx#stx-e _tl1832018346_)))
                                      (let ((_hd1832218352_
                                             (##car _e1832118349_))
                                            (_tl1832318354_
                                             (##cdr _e1832118349_)))
                                        (if (gx#stx-null? _tl1832318354_)
                                            ((lambda (_L18357_ _L18358_)
                                               (gxc#compile-e _L18357_))
                                             _hd1832218352_
                                             _hd1831918344_)
                                            (_g1829718328_ _g1829818331_))))
                                    (_g1829718328_ _g1829818331_))))
                            (_g1829718328_ _g1829818331_))))
                    (_g1829718328_ _g1829818331_))))
             (_g1829518435_
              (lambda (_g1829818376_)
                (if (gx#stx-pair? _g1829818376_)
                    (let ((_e1830118378_ (gx#stx-e _g1829818376_)))
                      (let ((_hd1830218381_ (##car _e1830118378_))
                            (_tl1830318383_ (##cdr _e1830118378_)))
                        (if (gx#stx-pair? _tl1830318383_)
                            (let ((_e1830418386_ (gx#stx-e _tl1830318383_)))
                              (let ((_hd1830518389_ (##car _e1830418386_))
                                    (_tl1830618391_ (##cdr _e1830418386_)))
                                (if (gx#stx-pair? _hd1830518389_)
                                    (let ((_e1830718394_
                                           (gx#stx-e _hd1830518389_)))
                                      (let ((_hd1830818397_
                                             (##car _e1830718394_))
                                            (_tl1830918399_
                                             (##cdr _e1830718394_)))
                                        (if (gx#stx-null? _tl1830918399_)
                                            (if (gx#stx-pair? _tl1830618391_)
                                                (let ((_e1831018402_
                                                       (gx#stx-e
                                                        _tl1830618391_)))
                                                  (let ((_hd1831118405_
                                                         (##car _e1831018402_))
                                                        (_tl1831218407_
                                                         (##cdr _e1831018402_)))
                                                    (if (gx#stx-null?
                                                         _tl1831218407_)
                                                        ((lambda (_L18410_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L18411_)
                   (if (gx#identifier? _L18411_)
                       (let ((_sym18427_
                              (gxc#generate-runtime-binding-id _L18411_)))
                         (begin
                           (if (table-ref
                                (gxc#current-compile-mutators)
                                _sym18427_
                                '#f)
                               (gxc#verbose
                                '"skipping type declaration for mutable binding "
                                _sym18427_)
                               (let ((_type1842818430_
                                      (gxc#apply-basic-expression-type
                                       _L18410_)))
                                 (if _type1842818430_
                                     (let ((_type18433_ _type1842818430_))
                                       (gxc#optimizer-declare-type!__0
                                        _sym18427_
                                        _type18433_))
                                     '#f)))
                           (gxc#compile-e _L18410_)))
                       (_g1829618373_ _g1829818376_)))
                 _hd1831118405_
                 _hd1830818397_)
                (_g1829618373_ _g1829818376_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1829618373_ _g1829818376_))
                                            (_g1829618373_ _g1829818376_))))
                                    (_g1829618373_ _g1829818376_))))
                            (_g1829618373_ _g1829818376_))))
                    (_g1829618373_ _g1829818376_)))))
        (_g1829518435_ _stx18294_))))
  (define gxc#collect-type-let-values%
    (lambda (_stx18079_)
      (letrec ((_collect-e18081_
                (lambda (_hd18238_ _expr18239_)
                  (let* ((_g1824218252_
                          (lambda (_g1824318249_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1824318249_)))
                         (_g1824118259_
                          (lambda (_g1824318255_) ((lambda () '#!void))))
                         (_g1824018291_
                          (lambda (_g1824318262_)
                            (if (gx#stx-pair? _g1824318262_)
                                (let ((_e1824518264_ (gx#stx-e _g1824318262_)))
                                  (let ((_hd1824618267_ (##car _e1824518264_))
                                        (_tl1824718269_ (##cdr _e1824518264_)))
                                    (if (gx#stx-null? _tl1824718269_)
                                        ((lambda (_L18272_)
                                           (if (gx#identifier? _L18272_)
                                               (let ((_sym18283_
                                                      (gxc#generate-runtime-binding-id
                                                       _L18272_)))
                                                 (if (table-ref
                                                      (gxc#current-compile-mutators)
                                                      _sym18283_
                                                      '#f)
                                                     (gxc#verbose
                                                      '"skipping type declaration for mutable binding "
                                                      _sym18283_)
                                                     (let ((_type1828418286_
                                                            (gxc#apply-basic-expression-type
                                                             _expr18239_)))
                                                       (if _type1828418286_
                                                           (let ((_type18289_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _type1828418286_))
                     (gxc#optimizer-declare-type!__%
                      _sym18283_
                      _type18289_
                      '#t))
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1824118259_ _g1824318262_)))
                                         _hd1824618267_)
                                        (_g1824118259_ _g1824318262_))))
                                (_g1824118259_ _g1824318262_)))))
                    (_g1824018291_ _hd18238_)))))
        (let* ((_g1808318118_
                (lambda (_g1808418115_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1808418115_)))
               (_g1808218235_
                (lambda (_g1808418121_)
                  (if (gx#stx-pair? _g1808418121_)
                      (let ((_e1808818123_ (gx#stx-e _g1808418121_)))
                        (let ((_hd1808918126_ (##car _e1808818123_))
                              (_tl1809018128_ (##cdr _e1808818123_)))
                          (if (gx#stx-pair? _tl1809018128_)
                              (let ((_e1809118131_ (gx#stx-e _tl1809018128_)))
                                (let ((_hd1809218134_ (##car _e1809118131_))
                                      (_tl1809318136_ (##cdr _e1809118131_)))
                                  (if (gx#stx-pair/null? _hd1809218134_)
                                      (if (fx>= (gx#stx-length _hd1809218134_)
                                                '0)
                                          (let ((_g23701_
                                                 (gx#syntax-split-splice
                                                  _hd1809218134_
                                                  '0)))
                                            (begin
                                              (let ((_g23702_
                                                     (values-count _g23701_)))
                                                (if (not (fx= _g23702_ 2))
                                                    (error "Context expects 2 values"
                                                           _g23702_)))
                                              (let ((_target1809418139_
                                                     (values-ref _g23701_ 0))
                                                    (_tl1809618141_
                                                     (values-ref _g23701_ 1)))
                                                (if (gx#stx-null?
                                                     _tl1809618141_)
                                                    (letrec ((_loop1809718144_
                                                              (lambda (_hd1809518147_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _expr1810118149_
                               _hd1810218151_)
                        (if (gx#stx-pair? _hd1809518147_)
                            (let ((_e1809818154_ (gx#stx-e _hd1809518147_)))
                              (let ((_lp-hd1809918157_ (##car _e1809818154_))
                                    (_lp-tl1810018159_ (##cdr _e1809818154_)))
                                (if (gx#stx-pair? _lp-hd1809918157_)
                                    (let ((_e1810518162_
                                           (gx#stx-e _lp-hd1809918157_)))
                                      (let ((_hd1810618165_
                                             (##car _e1810518162_))
                                            (_tl1810718167_
                                             (##cdr _e1810518162_)))
                                        (if (gx#stx-pair? _tl1810718167_)
                                            (let ((_e1810818170_
                                                   (gx#stx-e _tl1810718167_)))
                                              (let ((_hd1810918173_
                                                     (##car _e1810818170_))
                                                    (_tl1811018175_
                                                     (##cdr _e1810818170_)))
                                                (if (gx#stx-null?
                                                     _tl1811018175_)
                                                    (_loop1809718144_
                                                     _lp-tl1810018159_
                                                     (cons _hd1810918173_
                                                           _expr1810118149_)
                                                     (cons _hd1810618165_
                                                           _hd1810218151_))
                                                    (_g1808318118_
                                                     _g1808418121_))))
                                            (_g1808318118_ _g1808418121_))))
                                    (_g1808318118_ _g1808418121_))))
                            (let ((_expr1810318178_ (reverse _expr1810118149_))
                                  (_hd1810418180_ (reverse _hd1810218151_)))
                              (if (gx#stx-pair? _tl1809318136_)
                                  (let ((_e1811118183_
                                         (gx#stx-e _tl1809318136_)))
                                    (let ((_hd1811218186_
                                           (##car _e1811118183_))
                                          (_tl1811318188_
                                           (##cdr _e1811118183_)))
                                      (if (gx#stx-null? _tl1811318188_)
                                          ((lambda (_L18191_ _L18192_ _L18193_)
                                             (begin
                                               (for-each
                                                _collect-e18081_
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g1821318216_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1821418218_)
                    (cons _g1821318216_ _g1821418218_))
                  '()
                  _L18193_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g1822018223_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1822118225_)
                    (cons _g1822018223_ _g1822118225_))
                  '()
                  _L18192_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (for-each
                                                gxc#compile-e
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g1822718230_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1822818232_)
                    (cons _g1822718230_ _g1822818232_))
                  '()
                  _L18192_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gxc#compile-e _L18191_)))
                                           _hd1811218186_
                                           _expr1810318178_
                                           _hd1810418180_)
                                          (_g1808318118_ _g1808418121_))))
                                  (_g1808318118_ _g1808418121_)))))))
              (_loop1809718144_ _target1809418139_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1808318118_
                                                     _g1808418121_)))))
                                          (_g1808318118_ _g1808418121_))
                                      (_g1808318118_ _g1808418121_))))
                              (_g1808318118_ _g1808418121_))))
                      (_g1808318118_ _g1808418121_)))))
          (_g1808218235_ _stx18079_)))))
  (define gxc#collect-type-call%
    (lambda (_stx17633_)
      (let* ((_g1763717739_
              (lambda (_g1763817736_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1763817736_)))
             (_g1763617746_ (lambda (_g1763817742_) ((lambda () '#!void))))
             (_g1763517896_
              (lambda (_g1763817749_)
                (if (gx#stx-pair? _g1763817749_)
                    (let ((_e1769617751_ (gx#stx-e _g1763817749_)))
                      (let ((_hd1769717754_ (##car _e1769617751_))
                            (_tl1769817756_ (##cdr _e1769617751_)))
                        (if (gx#stx-pair? _tl1769817756_)
                            (let ((_e1769917759_ (gx#stx-e _tl1769817756_)))
                              (let ((_hd1770017762_ (##car _e1769917759_))
                                    (_tl1770117764_ (##cdr _e1769917759_)))
                                (if (gx#stx-pair? _hd1770017762_)
                                    (let ((_e1770217767_
                                           (gx#stx-e _hd1770017762_)))
                                      (let ((_hd1770317770_
                                             (##car _e1770217767_))
                                            (_tl1770417772_
                                             (##cdr _e1770217767_)))
                                        (if (gx#identifier? _hd1770317770_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1770317770_)
                                                (if (gx#stx-pair?
                                                     _tl1770417772_)
                                                    (let ((_e1770517775_
                                                           (gx#stx-e
                                                            _tl1770417772_)))
                                                      (let ((_hd1770617778_
                                                             (##car _e1770517775_))
                                                            (_tl1770717780_
                                                             (##cdr _e1770517775_)))
                                                        (if (gx#stx-null?
                                                             _tl1770717780_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1770117764_)
                        (let ((_e1770817783_ (gx#stx-e _tl1770117764_)))
                          (let ((_hd1770917786_ (##car _e1770817783_))
                                (_tl1771017788_ (##cdr _e1770817783_)))
                            (if (gx#stx-pair? _hd1770917786_)
                                (let ((_e1771117791_
                                       (gx#stx-e _hd1770917786_)))
                                  (let ((_hd1771217794_ (##car _e1771117791_))
                                        (_tl1771317796_ (##cdr _e1771117791_)))
                                    (if (gx#identifier? _hd1771217794_)
                                        (if (gx#stx-eq? '%#ref _hd1771217794_)
                                            (if (gx#stx-pair? _tl1771317796_)
                                                (let ((_e1771417799_
                                                       (gx#stx-e
                                                        _tl1771317796_)))
                                                  (let ((_hd1771517802_
                                                         (##car _e1771417799_))
                                                        (_tl1771617804_
                                                         (##cdr _e1771417799_)))
                                                    (if (gx#stx-null?
                                                         _tl1771617804_)
                                                        (if (gx#stx-pair?
                                                             _tl1771017788_)
                                                            (let ((_e1771717807_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1771017788_)))
                      (let ((_hd1771817810_ (##car _e1771717807_))
                            (_tl1771917812_ (##cdr _e1771717807_)))
                        (if (gx#stx-pair? _hd1771817810_)
                            (let ((_e1772017815_ (gx#stx-e _hd1771817810_)))
                              (let ((_hd1772117818_ (##car _e1772017815_))
                                    (_tl1772217820_ (##cdr _e1772017815_)))
                                (if (gx#identifier? _hd1772117818_)
                                    (if (gx#stx-eq? '%#quote _hd1772117818_)
                                        (if (gx#stx-pair? _tl1772217820_)
                                            (let ((_e1772317823_
                                                   (gx#stx-e _tl1772217820_)))
                                              (let ((_hd1772417826_
                                                     (##car _e1772317823_))
                                                    (_tl1772517828_
                                                     (##cdr _e1772317823_)))
                                                (if (gx#stx-null?
                                                     _tl1772517828_)
                                                    (if (gx#stx-pair?
                                                         _tl1771917812_)
                                                        (let ((_e1772617831_
                                                               (gx#stx-e
                                                                _tl1771917812_)))
                                                          (let ((_hd1772717834_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1772617831_))
                        (_tl1772817836_ (##cdr _e1772617831_)))
                    (if (gx#stx-pair? _hd1772717834_)
                        (let ((_e1772917839_ (gx#stx-e _hd1772717834_)))
                          (let ((_hd1773017842_ (##car _e1772917839_))
                                (_tl1773117844_ (##cdr _e1772917839_)))
                            (if (gx#identifier? _hd1773017842_)
                                (if (gx#stx-eq? '%#ref _hd1773017842_)
                                    (if (gx#stx-pair? _tl1773117844_)
                                        (let ((_e1773217847_
                                               (gx#stx-e _tl1773117844_)))
                                          (let ((_hd1773317850_
                                                 (##car _e1773217847_))
                                                (_tl1773417852_
                                                 (##cdr _e1773217847_)))
                                            (if (gx#stx-null? _tl1773417852_)
                                                (if (gx#stx-null?
                                                     _tl1772817836_)
                                                    ((lambda (_L17855_
                                                              _L17856_
                                                              _L17857_
                                                              _L17858_)
                                                       (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax__0 '#f '-bind-method))
                        'bind-method!)
                   (gxc#optimizer-declare-method!__%
                    (gxc#generate-runtime-binding-id _L17857_)
                    (gx#stx-e _L17856_)
                    (gxc#generate-runtime-binding-id _L17855_)
                    '#f)
                   (_g1763617746_ _g1763817749_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd1773317850_
                                                     _hd1772417826_
                                                     _hd1771517802_
                                                     _hd1770617778_)
                                                    (_g1763617746_
                                                     _g1763817749_))
                                                (_g1763617746_
                                                 _g1763817749_))))
                                        (_g1763617746_ _g1763817749_))
                                    (_g1763617746_ _g1763817749_))
                                (_g1763617746_ _g1763817749_))))
                        (_g1763617746_ _g1763817749_))))
                (_g1763617746_ _g1763817749_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1763617746_
                                                     _g1763817749_))))
                                            (_g1763617746_ _g1763817749_))
                                        (_g1763617746_ _g1763817749_))
                                    (_g1763617746_ _g1763817749_))))
                            (_g1763617746_ _g1763817749_))))
                    (_g1763617746_ _g1763817749_))
                (_g1763617746_ _g1763817749_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1763617746_ _g1763817749_))
                                            (_g1763617746_ _g1763817749_))
                                        (_g1763617746_ _g1763817749_))))
                                (_g1763617746_ _g1763817749_))))
                        (_g1763617746_ _g1763817749_))
                    (_g1763617746_ _g1763817749_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1763617746_
                                                     _g1763817749_))
                                                (_g1763617746_ _g1763817749_))
                                            (_g1763617746_ _g1763817749_))))
                                    (_g1763617746_ _g1763817749_))))
                            (_g1763617746_ _g1763817749_))))
                    (_g1763617746_ _g1763817749_))))
             (_g1763418076_
              (lambda (_g1763817899_)
                (if (gx#stx-pair? _g1763817899_)
                    (let ((_e1764417901_ (gx#stx-e _g1763817899_)))
                      (let ((_hd1764517904_ (##car _e1764417901_))
                            (_tl1764617906_ (##cdr _e1764417901_)))
                        (if (gx#stx-pair? _tl1764617906_)
                            (let ((_e1764717909_ (gx#stx-e _tl1764617906_)))
                              (let ((_hd1764817912_ (##car _e1764717909_))
                                    (_tl1764917914_ (##cdr _e1764717909_)))
                                (if (gx#stx-pair? _hd1764817912_)
                                    (let ((_e1765017917_
                                           (gx#stx-e _hd1764817912_)))
                                      (let ((_hd1765117920_
                                             (##car _e1765017917_))
                                            (_tl1765217922_
                                             (##cdr _e1765017917_)))
                                        (if (gx#identifier? _hd1765117920_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1765117920_)
                                                (if (gx#stx-pair?
                                                     _tl1765217922_)
                                                    (let ((_e1765317925_
                                                           (gx#stx-e
                                                            _tl1765217922_)))
                                                      (let ((_hd1765417928_
                                                             (##car _e1765317925_))
                                                            (_tl1765517930_
                                                             (##cdr _e1765317925_)))
                                                        (if (gx#stx-null?
                                                             _tl1765517930_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1764917914_)
                        (let ((_e1765617933_ (gx#stx-e _tl1764917914_)))
                          (let ((_hd1765717936_ (##car _e1765617933_))
                                (_tl1765817938_ (##cdr _e1765617933_)))
                            (if (gx#stx-pair? _hd1765717936_)
                                (let ((_e1765917941_
                                       (gx#stx-e _hd1765717936_)))
                                  (let ((_hd1766017944_ (##car _e1765917941_))
                                        (_tl1766117946_ (##cdr _e1765917941_)))
                                    (if (gx#identifier? _hd1766017944_)
                                        (if (gx#stx-eq? '%#ref _hd1766017944_)
                                            (if (gx#stx-pair? _tl1766117946_)
                                                (let ((_e1766217949_
                                                       (gx#stx-e
                                                        _tl1766117946_)))
                                                  (let ((_hd1766317952_
                                                         (##car _e1766217949_))
                                                        (_tl1766417954_
                                                         (##cdr _e1766217949_)))
                                                    (if (gx#stx-null?
                                                         _tl1766417954_)
                                                        (if (gx#stx-pair?
                                                             _tl1765817938_)
                                                            (let ((_e1766517957_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1765817938_)))
                      (let ((_hd1766617960_ (##car _e1766517957_))
                            (_tl1766717962_ (##cdr _e1766517957_)))
                        (if (gx#stx-pair? _hd1766617960_)
                            (let ((_e1766817965_ (gx#stx-e _hd1766617960_)))
                              (let ((_hd1766917968_ (##car _e1766817965_))
                                    (_tl1767017970_ (##cdr _e1766817965_)))
                                (if (gx#identifier? _hd1766917968_)
                                    (if (gx#stx-eq? '%#quote _hd1766917968_)
                                        (if (gx#stx-pair? _tl1767017970_)
                                            (let ((_e1767117973_
                                                   (gx#stx-e _tl1767017970_)))
                                              (let ((_hd1767217976_
                                                     (##car _e1767117973_))
                                                    (_tl1767317978_
                                                     (##cdr _e1767117973_)))
                                                (if (gx#stx-null?
                                                     _tl1767317978_)
                                                    (if (gx#stx-pair?
                                                         _tl1766717962_)
                                                        (let ((_e1767417981_
                                                               (gx#stx-e
                                                                _tl1766717962_)))
                                                          (let ((_hd1767517984_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1767417981_))
                        (_tl1767617986_ (##cdr _e1767417981_)))
                    (if (gx#stx-pair? _hd1767517984_)
                        (let ((_e1767717989_ (gx#stx-e _hd1767517984_)))
                          (let ((_hd1767817992_ (##car _e1767717989_))
                                (_tl1767917994_ (##cdr _e1767717989_)))
                            (if (gx#identifier? _hd1767817992_)
                                (if (gx#stx-eq? '%#ref _hd1767817992_)
                                    (if (gx#stx-pair? _tl1767917994_)
                                        (let ((_e1768017997_
                                               (gx#stx-e _tl1767917994_)))
                                          (let ((_hd1768118000_
                                                 (##car _e1768017997_))
                                                (_tl1768218002_
                                                 (##cdr _e1768017997_)))
                                            (if (gx#stx-null? _tl1768218002_)
                                                (if (gx#stx-pair?
                                                     _tl1767617986_)
                                                    (let ((_e1768318005_
                                                           (gx#stx-e
                                                            _tl1767617986_)))
                                                      (let ((_hd1768418008_
                                                             (##car _e1768318005_))
                                                            (_tl1768518010_
                                                             (##cdr _e1768318005_)))
                                                        (if (gx#stx-pair?
                                                             _hd1768418008_)
                                                            (let ((_e1768618013_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1768418008_)))
                      (let ((_hd1768718016_ (##car _e1768618013_))
                            (_tl1768818018_ (##cdr _e1768618013_)))
                        (if (gx#identifier? _hd1768718016_)
                            (if (gx#stx-eq? '%#quote _hd1768718016_)
                                (if (gx#stx-pair? _tl1768818018_)
                                    (let ((_e1768918021_
                                           (gx#stx-e _tl1768818018_)))
                                      (let ((_hd1769018024_
                                             (##car _e1768918021_))
                                            (_tl1769118026_
                                             (##cdr _e1768918021_)))
                                        (if (gx#stx-null? _tl1769118026_)
                                            (if (gx#stx-null? _tl1768518010_)
                                                ((lambda (_L18029_
                                                          _L18030_
                                                          _L18031_
                                                          _L18032_
                                                          _L18033_)
                                                   (if (eq? (gxc#generate-runtime-binding-id
                                                             _L18033_)
                                                            'bind-method!)
                                                       (gxc#optimizer-declare-method!__%
                                                        (gxc#generate-runtime-binding-id
                                                         _L18032_)
                                                        (gx#stx-e _L18031_)
                                                        (gxc#generate-runtime-binding-id
                                                         _L18030_)
                                                        (gx#stx-e _L18029_))
                                                       (_g1763517896_
                                                        _g1763817899_)))
                                                 _hd1769018024_
                                                 _hd1768118000_
                                                 _hd1767217976_
                                                 _hd1766317952_
                                                 _hd1765417928_)
                                                (_g1763517896_ _g1763817899_))
                                            (_g1763517896_ _g1763817899_))))
                                    (_g1763517896_ _g1763817899_))
                                (_g1763517896_ _g1763817899_))
                            (_g1763517896_ _g1763817899_))))
                    (_g1763517896_ _g1763817899_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1763517896_
                                                     _g1763817899_))
                                                (_g1763517896_
                                                 _g1763817899_))))
                                        (_g1763517896_ _g1763817899_))
                                    (_g1763517896_ _g1763817899_))
                                (_g1763517896_ _g1763817899_))))
                        (_g1763517896_ _g1763817899_))))
                (_g1763517896_ _g1763817899_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1763517896_
                                                     _g1763817899_))))
                                            (_g1763517896_ _g1763817899_))
                                        (_g1763517896_ _g1763817899_))
                                    (_g1763517896_ _g1763817899_))))
                            (_g1763517896_ _g1763817899_))))
                    (_g1763517896_ _g1763817899_))
                (_g1763517896_ _g1763817899_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1763517896_ _g1763817899_))
                                            (_g1763517896_ _g1763817899_))
                                        (_g1763517896_ _g1763817899_))))
                                (_g1763517896_ _g1763817899_))))
                        (_g1763517896_ _g1763817899_))
                    (_g1763517896_ _g1763817899_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1763517896_
                                                     _g1763817899_))
                                                (_g1763517896_ _g1763817899_))
                                            (_g1763517896_ _g1763817899_))))
                                    (_g1763517896_ _g1763817899_))))
                            (_g1763517896_ _g1763817899_))))
                    (_g1763517896_ _g1763817899_)))))
        (_g1763418076_ _stx17633_))))
  (define gxc#basic-expression-type-begin%
    (lambda (_stx17573_)
      (let* ((_g1757617589_
              (lambda (_g1757717586_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1757717586_)))
             (_g1757517596_ (lambda (_g1757717592_) ((lambda () '#f))))
             (_g1757417630_
              (lambda (_g1757717599_)
                (if (gx#stx-pair? _g1757717599_)
                    (let ((_e1757917601_ (gx#stx-e _g1757717599_)))
                      (let ((_hd1758017604_ (##car _e1757917601_))
                            (_tl1758117606_ (##cdr _e1757917601_)))
                        (if (gx#stx-pair? _tl1758117606_)
                            (let ((_e1758217609_ (gx#stx-e _tl1758117606_)))
                              (let ((_hd1758317612_ (##car _e1758217609_))
                                    (_tl1758417614_ (##cdr _e1758217609_)))
                                (if (gx#stx-null? _tl1758417614_)
                                    ((lambda (_L17617_)
                                       (gxc#compile-e _L17617_))
                                     _hd1758317612_)
                                    (_g1757517596_ _g1757717599_))))
                            (_g1757517596_ _g1757717599_))))
                    (_g1757517596_ _g1757717599_)))))
        (_g1757417630_ _stx17573_))))
  (define gxc#basic-expression-type-begin-annotation%
    (lambda (_stx17506_)
      (let* ((_g1750817525_
              (lambda (_g1750917522_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1750917522_)))
             (_g1750717570_
              (lambda (_g1750917528_)
                (if (gx#stx-pair? _g1750917528_)
                    (let ((_e1751217530_ (gx#stx-e _g1750917528_)))
                      (let ((_hd1751317533_ (##car _e1751217530_))
                            (_tl1751417535_ (##cdr _e1751217530_)))
                        (if (gx#stx-pair? _tl1751417535_)
                            (let ((_e1751517538_ (gx#stx-e _tl1751417535_)))
                              (let ((_hd1751617541_ (##car _e1751517538_))
                                    (_tl1751717543_ (##cdr _e1751517538_)))
                                (if (gx#stx-pair? _tl1751717543_)
                                    (let ((_e1751817546_
                                           (gx#stx-e _tl1751717543_)))
                                      (let ((_hd1751917549_
                                             (##car _e1751817546_))
                                            (_tl1752017551_
                                             (##cdr _e1751817546_)))
                                        (if (gx#stx-null? _tl1752017551_)
                                            ((lambda (_L17554_ _L17555_)
                                               (gxc#compile-e _L17554_))
                                             _hd1751917549_
                                             _hd1751617541_)
                                            (_g1750817525_ _g1750917528_))))
                                    (_g1750817525_ _g1750917528_))))
                            (_g1750817525_ _g1750917528_))))
                    (_g1750817525_ _g1750917528_)))))
        (_g1750717570_ _stx17506_))))
  (define gxc#basic-expression-type-lambda%
    (lambda (_stx16931_)
      (let* ((_g1693617057_
              (lambda (_g1693717054_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1693717054_)))
             (_g1693517064_ (lambda (_g1693717060_) ((lambda () '#f))))
             (_g1693417088_
              (lambda (_g1693717067_)
                (if (gx#stx-pair? _g1693717067_)
                    (let ((_e1705017069_ (gx#stx-e _g1693717067_)))
                      (let ((_hd1705117072_ (##car _e1705017069_))
                            (_tl1705217074_ (##cdr _e1705017069_)))
                        ((lambda (_L17077_)
                           (if (gxc#dispatch-lambda-form? _L17077_)
                               (let ((__obj23641
                                      (make-object gxc#!lambda::t '5)))
                                 (begin
                                   (gxc#!lambda:::init!__0
                                    __obj23641
                                    'lambda
                                    (gxc#lambda-form-arity _L17077_)
                                    (gxc#dispatch-lambda-form-delegate
                                     _L17077_))
                                   __obj23641))
                               (_g1693517064_ _g1693717067_)))
                         _tl1705217074_)))
                    (_g1693517064_ _g1693717067_))))
             (_g1693317318_
              (lambda (_g1693717091_)
                (if (gx#stx-pair? _g1693717091_)
                    (let ((_e1699517093_ (gx#stx-e _g1693717091_)))
                      (let ((_hd1699617096_ (##car _e1699517093_))
                            (_tl1699717098_ (##cdr _e1699517093_)))
                        (if (gx#stx-pair? _tl1699717098_)
                            (let ((_e1699817101_ (gx#stx-e _tl1699717098_)))
                              (let ((_hd1699917104_ (##car _e1699817101_))
                                    (_tl1700017106_ (##cdr _e1699817101_)))
                                (if (gx#stx-pair/null? _hd1699917104_)
                                    (if (fx>= (gx#stx-length _hd1699917104_)
                                              '0)
                                        (let ((_g23703_
                                               (gx#syntax-split-splice
                                                _hd1699917104_
                                                '0)))
                                          (begin
                                            (let ((_g23704_
                                                   (values-count _g23703_)))
                                              (if (not (fx= _g23704_ 2))
                                                  (error "Context expects 2 values"
                                                         _g23704_)))
                                            (let ((_target1700117109_
                                                   (values-ref _g23703_ 0))
                                                  (_tl1700317111_
                                                   (values-ref _g23703_ 1)))
                                              (if (gx#stx-null? _tl1700317111_)
                                                  (letrec ((_loop1700417114_
                                                            (lambda (_hd1700217117_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _arg1700817119_)
                      (if (gx#stx-pair? _hd1700217117_)
                          (let ((_e1700517122_ (gx#stx-e _hd1700217117_)))
                            (let ((_lp-hd1700617125_ (##car _e1700517122_))
                                  (_lp-tl1700717127_ (##cdr _e1700517122_)))
                              (_loop1700417114_
                               _lp-tl1700717127_
                               (cons _lp-hd1700617125_ _arg1700817119_))))
                          (let ((_arg1700917130_ (reverse _arg1700817119_)))
                            (if (gx#stx-pair? _tl1700017106_)
                                (let ((_e1701017133_
                                       (gx#stx-e _tl1700017106_)))
                                  (let ((_hd1701117136_ (##car _e1701017133_))
                                        (_tl1701217138_ (##cdr _e1701017133_)))
                                    (if (gx#stx-pair? _hd1701117136_)
                                        (let ((_e1701317141_
                                               (gx#stx-e _hd1701117136_)))
                                          (let ((_hd1701417144_
                                                 (##car _e1701317141_))
                                                (_tl1701517146_
                                                 (##cdr _e1701317141_)))
                                            (if (gx#identifier? _hd1701417144_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd1701417144_)
                                                    (if (gx#stx-pair?
                                                         _tl1701517146_)
                                                        (let ((_e1701617149_
                                                               (gx#stx-e
                                                                _tl1701517146_)))
                                                          (let ((_hd1701717152_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1701617149_))
                        (_tl1701817154_ (##cdr _e1701617149_)))
                    (if (gx#stx-pair? _hd1701717152_)
                        (let ((_e1701917157_ (gx#stx-e _hd1701717152_)))
                          (let ((_hd1702017160_ (##car _e1701917157_))
                                (_tl1702117162_ (##cdr _e1701917157_)))
                            (if (gx#identifier? _hd1702017160_)
                                (if (gx#stx-eq? '%#ref _hd1702017160_)
                                    (if (gx#stx-pair? _tl1702117162_)
                                        (let ((_e1702217165_
                                               (gx#stx-e _tl1702117162_)))
                                          (let ((_hd1702317168_
                                                 (##car _e1702217165_))
                                                (_tl1702417170_
                                                 (##cdr _e1702217165_)))
                                            (if (gx#stx-null? _tl1702417170_)
                                                (if (gx#stx-pair?
                                                     _tl1701817154_)
                                                    (let ((_e1702517173_
                                                           (gx#stx-e
                                                            _tl1701817154_)))
                                                      (let ((_hd1702617176_
                                                             (##car _e1702517173_))
                                                            (_tl1702717178_
                                                             (##cdr _e1702517173_)))
                                                        (if (gx#stx-pair?
                                                             _hd1702617176_)
                                                            (let ((_e1702817181_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1702617176_)))
                      (let ((_hd1702917184_ (##car _e1702817181_))
                            (_tl1703017186_ (##cdr _e1702817181_)))
                        (if (gx#identifier? _hd1702917184_)
                            (if (gx#stx-eq? '%#ref _hd1702917184_)
                                (if (gx#stx-pair? _tl1703017186_)
                                    (let ((_e1703117189_
                                           (gx#stx-e _tl1703017186_)))
                                      (let ((_hd1703217192_
                                             (##car _e1703117189_))
                                            (_tl1703317194_
                                             (##cdr _e1703117189_)))
                                        (if (gx#stx-null? _tl1703317194_)
                                            (if (gx#stx-pair/null?
                                                 _tl1702717178_)
                                                (if (fx>= (gx#stx-length
                                                           _tl1702717178_)
                                                          '0)
                                                    (let ((_g23705_
                                                           (gx#syntax-split-splice
                                                            _tl1702717178_
                                                            '0)))
                                                      (begin
                                                        (let ((_g23706_
                                                               (values-count
                                                                _g23705_)))
                                                          (if (not (fx= _g23706_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                2))
                      (error "Context expects 2 values" _g23706_)))
                (let ((_target1703417197_ (values-ref _g23705_ 0))
                      (_tl1703617199_ (values-ref _g23705_ 1)))
                  (if (gx#stx-null? _tl1703617199_)
                      (letrec ((_loop1703717202_
                                (lambda (_hd1703517205_ _xarg1704117207_)
                                  (if (gx#stx-pair? _hd1703517205_)
                                      (let ((_e1703817210_
                                             (gx#stx-e _hd1703517205_)))
                                        (let ((_lp-hd1703917213_
                                               (##car _e1703817210_))
                                              (_lp-tl1704017215_
                                               (##cdr _e1703817210_)))
                                          (if (gx#stx-pair? _lp-hd1703917213_)
                                              (let ((_e1704317218_
                                                     (gx#stx-e
                                                      _lp-hd1703917213_)))
                                                (let ((_hd1704417221_
                                                       (##car _e1704317218_))
                                                      (_tl1704517223_
                                                       (##cdr _e1704317218_)))
                                                  (if (gx#identifier?
                                                       _hd1704417221_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd1704417221_)
                                                          (if (gx#stx-pair?
                                                               _tl1704517223_)
                                                              (let ((_e1704617226_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1704517223_)))
                        (let ((_hd1704717229_ (##car _e1704617226_))
                              (_tl1704817231_ (##cdr _e1704617226_)))
                          (if (gx#stx-null? _tl1704817231_)
                              (_loop1703717202_
                               _lp-tl1704017215_
                               (cons _hd1704717229_ _xarg1704117207_))
                              (_g1693417088_ _g1693717091_))))
                      (_g1693417088_ _g1693717091_))
                  (_g1693417088_ _g1693717091_))
              (_g1693417088_ _g1693717091_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1693417088_ _g1693717091_))))
                                      (let ((_xarg1704217234_
                                             (reverse _xarg1704117207_)))
                                        (if (gx#stx-null? _tl1701217138_)
                                            ((lambda (_L17237_
                                                      _L17238_
                                                      _L17239_
                                                      _L17240_)
                                               (if (if (gx#identifier-list?
                                                        (begin
                                                          '#!void
                                                          (foldr1 (lambda (_g1727717280_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g1727817282_)
                            (cons _g1727717280_ _g1727817282_))
                          '()
                          _L17240_)))
               (if (eq? (gxc#generate-runtime-binding-id _L17239_)
                        'make-struct-instance)
                   (if (fx= (length (begin
                                      '#!void
                                      (foldr1 (lambda (_g1728417287_
                                                       _g1728517289_)
                                                (cons _g1728417287_
                                                      _g1728517289_))
                                              '()
                                              _L17240_)))
                            (length (begin
                                      '#!void
                                      (foldr1 (lambda (_g1729117294_
                                                       _g1729217296_)
                                                (cons _g1729117294_
                                                      _g1729217296_))
                                              '()
                                              _L17237_))))
                       (andmap gx#free-identifier=?
                               (begin
                                 '#!void
                                 (foldr1 (lambda (_g1729817301_ _g1729917303_)
                                           (cons _g1729817301_ _g1729917303_))
                                         '()
                                         _L17240_))
                               (begin
                                 '#!void
                                 (foldr1 (lambda (_g1730517308_ _g1730617310_)
                                           (cons _g1730517308_ _g1730617310_))
                                         '()
                                         _L17237_)))
                       '#f)
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_type-t17313_
                                                           (gxc#generate-runtime-binding-id
                                                            _L17238_))
                                                          (_type17315_
                                                           (gxc#optimizer-resolve-type
                                                            _type-t17313_)))
                                                     (if (##structure-instance-of?
                                                          _type17315_
                                                          'gxc#!struct-type::t)
                                                         (##structure
                                                          gxc#!struct-cons::t
                                                          _type-t17313_)
                                                         '#f))
                                                   (_g1693417088_
                                                    _g1693717091_)))
                                             _xarg1704217234_
                                             _hd1703217192_
                                             _hd1702317168_
                                             _arg1700917130_)
                                            (_g1693417088_ _g1693717091_)))))))
                        (_loop1703717202_ _target1703417197_ '()))
                      (_g1693417088_ _g1693717091_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1693417088_
                                                     _g1693717091_))
                                                (_g1693417088_ _g1693717091_))
                                            (_g1693417088_ _g1693717091_))))
                                    (_g1693417088_ _g1693717091_))
                                (_g1693417088_ _g1693717091_))
                            (_g1693417088_ _g1693717091_))))
                    (_g1693417088_ _g1693717091_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1693417088_
                                                     _g1693717091_))
                                                (_g1693417088_
                                                 _g1693717091_))))
                                        (_g1693417088_ _g1693717091_))
                                    (_g1693417088_ _g1693717091_))
                                (_g1693417088_ _g1693717091_))))
                        (_g1693417088_ _g1693717091_))))
                (_g1693417088_ _g1693717091_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1693417088_
                                                     _g1693717091_))
                                                (_g1693417088_
                                                 _g1693717091_))))
                                        (_g1693417088_ _g1693717091_))))
                                (_g1693417088_ _g1693717091_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1700417114_
                                                     _target1700117109_
                                                     '()))
                                                  (_g1693417088_
                                                   _g1693717091_)))))
                                        (_g1693417088_ _g1693717091_))
                                    (_g1693417088_ _g1693717091_))))
                            (_g1693417088_ _g1693717091_))))
                    (_g1693417088_ _g1693717091_))))
             (_g1693217503_
              (lambda (_g1693717321_)
                (if (gx#stx-pair? _g1693717321_)
                    (let ((_e1694317323_ (gx#stx-e _g1693717321_)))
                      (let ((_hd1694417326_ (##car _e1694317323_))
                            (_tl1694517328_ (##cdr _e1694317323_)))
                        (if (gx#stx-pair? _tl1694517328_)
                            (let ((_e1694617331_ (gx#stx-e _tl1694517328_)))
                              (let ((_hd1694717334_ (##car _e1694617331_))
                                    (_tl1694817336_ (##cdr _e1694617331_)))
                                (if (gx#stx-pair? _tl1694817336_)
                                    (let ((_e1694917339_
                                           (gx#stx-e _tl1694817336_)))
                                      (let ((_hd1695017342_
                                             (##car _e1694917339_))
                                            (_tl1695117344_
                                             (##cdr _e1694917339_)))
                                        (if (gx#stx-pair? _hd1695017342_)
                                            (let ((_e1695217347_
                                                   (gx#stx-e _hd1695017342_)))
                                              (let ((_hd1695317350_
                                                     (##car _e1695217347_))
                                                    (_tl1695417352_
                                                     (##cdr _e1695217347_)))
                                                (if (gx#identifier?
                                                     _hd1695317350_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd1695317350_)
                                                        (if (gx#stx-pair?
                                                             _tl1695417352_)
                                                            (let ((_e1695517355_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1695417352_)))
                      (let ((_hd1695617358_ (##car _e1695517355_))
                            (_tl1695717360_ (##cdr _e1695517355_)))
                        (if (gx#stx-pair? _hd1695617358_)
                            (let ((_e1695817363_ (gx#stx-e _hd1695617358_)))
                              (let ((_hd1695917366_ (##car _e1695817363_))
                                    (_tl1696017368_ (##cdr _e1695817363_)))
                                (if (gx#identifier? _hd1695917366_)
                                    (if (gx#stx-eq? '%#ref _hd1695917366_)
                                        (if (gx#stx-pair? _tl1696017368_)
                                            (let ((_e1696117371_
                                                   (gx#stx-e _tl1696017368_)))
                                              (let ((_hd1696217374_
                                                     (##car _e1696117371_))
                                                    (_tl1696317376_
                                                     (##cdr _e1696117371_)))
                                                (if (gx#stx-null?
                                                     _tl1696317376_)
                                                    (if (gx#stx-pair?
                                                         _tl1695717360_)
                                                        (let ((_e1696417379_
                                                               (gx#stx-e
                                                                _tl1695717360_)))
                                                          (let ((_hd1696517382_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1696417379_))
                        (_tl1696617384_ (##cdr _e1696417379_)))
                    (if (gx#stx-pair? _hd1696517382_)
                        (let ((_e1696717387_ (gx#stx-e _hd1696517382_)))
                          (let ((_hd1696817390_ (##car _e1696717387_))
                                (_tl1696917392_ (##cdr _e1696717387_)))
                            (if (gx#identifier? _hd1696817390_)
                                (if (gx#stx-eq? '%#ref _hd1696817390_)
                                    (if (gx#stx-pair? _tl1696917392_)
                                        (let ((_e1697017395_
                                               (gx#stx-e _tl1696917392_)))
                                          (let ((_hd1697117398_
                                                 (##car _e1697017395_))
                                                (_tl1697217400_
                                                 (##cdr _e1697017395_)))
                                            (if (gx#stx-null? _tl1697217400_)
                                                (if (gx#stx-pair?
                                                     _tl1696617384_)
                                                    (let ((_e1697317403_
                                                           (gx#stx-e
                                                            _tl1696617384_)))
                                                      (let ((_hd1697417406_
                                                             (##car _e1697317403_))
                                                            (_tl1697517408_
                                                             (##cdr _e1697317403_)))
                                                        (if (gx#stx-pair?
                                                             _hd1697417406_)
                                                            (let ((_e1697617411_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1697417406_)))
                      (let ((_hd1697717414_ (##car _e1697617411_))
                            (_tl1697817416_ (##cdr _e1697617411_)))
                        (if (gx#identifier? _hd1697717414_)
                            (if (gx#stx-eq? '%#ref _hd1697717414_)
                                (if (gx#stx-pair? _tl1697817416_)
                                    (let ((_e1697917419_
                                           (gx#stx-e _tl1697817416_)))
                                      (let ((_hd1698017422_
                                             (##car _e1697917419_))
                                            (_tl1698117424_
                                             (##cdr _e1697917419_)))
                                        (if (gx#stx-null? _tl1698117424_)
                                            (if (gx#stx-pair? _tl1697517408_)
                                                (let ((_e1698217427_
                                                       (gx#stx-e
                                                        _tl1697517408_)))
                                                  (let ((_hd1698317430_
                                                         (##car _e1698217427_))
                                                        (_tl1698417432_
                                                         (##cdr _e1698217427_)))
                                                    (if (gx#stx-pair?
                                                         _hd1698317430_)
                                                        (let ((_e1698517435_
                                                               (gx#stx-e
                                                                _hd1698317430_)))
                                                          (let ((_hd1698617438_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1698517435_))
                        (_tl1698717440_ (##cdr _e1698517435_)))
                    (if (gx#identifier? _hd1698617438_)
                        (if (gx#stx-eq? '%#ref _hd1698617438_)
                            (if (gx#stx-pair? _tl1698717440_)
                                (let ((_e1698817443_
                                       (gx#stx-e _tl1698717440_)))
                                  (let ((_hd1698917446_ (##car _e1698817443_))
                                        (_tl1699017448_ (##cdr _e1698817443_)))
                                    (if (gx#stx-null? _tl1699017448_)
                                        (if (gx#stx-null? _tl1698417432_)
                                            (if (gx#stx-null? _tl1695117344_)
                                                ((lambda (_L17451_
                                                          _L17452_
                                                          _L17453_
                                                          _L17454_
                                                          _L17455_)
                                                   (if (if (gx#identifier?
                                                            _L17455_)
                                                           (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L17454_)
                            'apply)
                       (if (eq? (gxc#generate-runtime-binding-id _L17453_)
                                'make-struct-instance)
                           (gx#free-identifier=? _L17455_ _L17451_)
                           '#f)
                       '#f)
                   '#f)
               (let* ((_type-t17498_
                       (gxc#generate-runtime-binding-id _L17452_))
                      (_type17500_ (gxc#optimizer-resolve-type _type-t17498_)))
                 (if (##structure-instance-of?
                      _type17500_
                      'gxc#!struct-type::t)
                     (##structure gxc#!struct-cons::t _type-t17498_)
                     '#f))
               (_g1693317318_ _g1693717321_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1698917446_
                                                 _hd1698017422_
                                                 _hd1697117398_
                                                 _hd1696217374_
                                                 _hd1694717334_)
                                                (_g1693317318_ _g1693717321_))
                                            (_g1693317318_ _g1693717321_))
                                        (_g1693317318_ _g1693717321_))))
                                (_g1693317318_ _g1693717321_))
                            (_g1693317318_ _g1693717321_))
                        (_g1693317318_ _g1693717321_))))
                (_g1693317318_ _g1693717321_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1693317318_ _g1693717321_))
                                            (_g1693317318_ _g1693717321_))))
                                    (_g1693317318_ _g1693717321_))
                                (_g1693317318_ _g1693717321_))
                            (_g1693317318_ _g1693717321_))))
                    (_g1693317318_ _g1693717321_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1693317318_
                                                     _g1693717321_))
                                                (_g1693317318_
                                                 _g1693717321_))))
                                        (_g1693317318_ _g1693717321_))
                                    (_g1693317318_ _g1693717321_))
                                (_g1693317318_ _g1693717321_))))
                        (_g1693317318_ _g1693717321_))))
                (_g1693317318_ _g1693717321_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1693317318_
                                                     _g1693717321_))))
                                            (_g1693317318_ _g1693717321_))
                                        (_g1693317318_ _g1693717321_))
                                    (_g1693317318_ _g1693717321_))))
                            (_g1693317318_ _g1693717321_))))
                    (_g1693317318_ _g1693717321_))
                (_g1693317318_ _g1693717321_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1693317318_
                                                     _g1693717321_))))
                                            (_g1693317318_ _g1693717321_))))
                                    (_g1693317318_ _g1693717321_))))
                            (_g1693317318_ _g1693717321_))))
                    (_g1693317318_ _g1693717321_)))))
        (_g1693217503_ _stx16931_))))
  (define gxc#basic-expression-type-case-lambda%
    (lambda (_stx16877_)
      (letrec ((_clause-e16879_
                (lambda (_form16929_)
                  (let ((__obj23642 (make-object gxc#!lambda::t '5)))
                    (begin
                      (gxc#!lambda:::init!__0
                       __obj23642
                       'case-lambda-clause
                       (gxc#lambda-form-arity _form16929_)
                       (gxc#dispatch-lambda-form-delegate _form16929_))
                      __obj23642)))))
        (let* ((_g1688216892_
                (lambda (_g1688316889_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1688316889_)))
               (_g1688116899_ (lambda (_g1688316895_) ((lambda () '#f))))
               (_g1688016926_
                (lambda (_g1688316902_)
                  (if (gx#stx-pair? _g1688316902_)
                      (let ((_e1688516904_ (gx#stx-e _g1688316902_)))
                        (let ((_hd1688616907_ (##car _e1688516904_))
                              (_tl1688716909_ (##cdr _e1688516904_)))
                          ((lambda (_L16912_)
                             (if (andmap1 gxc#dispatch-lambda-form? _L16912_)
                                 (let ((_clauses16924_
                                        (map _clause-e16879_ _L16912_)))
                                   (##structure
                                    gxc#!case-lambda::t
                                    'case-lambda
                                    _clauses16924_))
                                 (_g1688116899_ _g1688316902_)))
                           _tl1688716909_)))
                      (_g1688116899_ _g1688316902_)))))
          (_g1688016926_ _stx16877_)))))
  (define gxc#basic-expression-type-builtin (make-hash-table-eq))
  (define gxc#basic-expression-type-call%
    (lambda (_stx16782_)
      (let* ((_g1678516805_
              (lambda (_g1678616802_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1678616802_)))
             (_g1678416812_ (lambda (_g1678616808_) ((lambda () '#f))))
             (_g1678316874_
              (lambda (_g1678616815_)
                (if (gx#stx-pair? _g1678616815_)
                    (let ((_e1678916817_ (gx#stx-e _g1678616815_)))
                      (let ((_hd1679016820_ (##car _e1678916817_))
                            (_tl1679116822_ (##cdr _e1678916817_)))
                        (if (gx#stx-pair? _tl1679116822_)
                            (let ((_e1679216825_ (gx#stx-e _tl1679116822_)))
                              (let ((_hd1679316828_ (##car _e1679216825_))
                                    (_tl1679416830_ (##cdr _e1679216825_)))
                                (if (gx#stx-pair? _hd1679316828_)
                                    (let ((_e1679516833_
                                           (gx#stx-e _hd1679316828_)))
                                      (let ((_hd1679616836_
                                             (##car _e1679516833_))
                                            (_tl1679716838_
                                             (##cdr _e1679516833_)))
                                        (if (gx#identifier? _hd1679616836_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1679616836_)
                                                (if (gx#stx-pair?
                                                     _tl1679716838_)
                                                    (let ((_e1679816841_
                                                           (gx#stx-e
                                                            _tl1679716838_)))
                                                      (let ((_hd1679916844_
                                                             (##car _e1679816841_))
                                                            (_tl1680016846_
                                                             (##cdr _e1679816841_)))
                                                        (if (gx#stx-null?
                                                             _tl1680016846_)
                                                            ((lambda (_L16849_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L16850_)
                       (let ((_type-e1686716869_
                              (table-ref
                               gxc#basic-expression-type-builtin
                               (gxc#generate-runtime-binding-id _L16850_)
                               '#f)))
                         (if _type-e1686716869_
                             (let ((_type-e16872_ _type-e1686716869_))
                               (_type-e16872_ _stx16782_ _L16849_))
                             '#f)))
                     _tl1679416830_
                     _hd1679916844_)
                    (_g1678416812_ _g1678616815_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1678416812_
                                                     _g1678616815_))
                                                (_g1678416812_ _g1678616815_))
                                            (_g1678416812_ _g1678616815_))))
                                    (_g1678416812_ _g1678616815_))))
                            (_g1678416812_ _g1678616815_))))
                    (_g1678416812_ _g1678616815_)))))
        (_g1678316874_ _stx16782_))))
  (define gxc#basic-expression-type-make-struct-type
    (lambda (_stx16267_ _args16268_)
      (let* ((_g1627216385_
              (lambda (_g1627316382_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1627316382_)))
             (_g1627116392_
              (lambda (_g1627316388_)
                ((lambda ()
                   (begin
                     (gxc#verbose
                      '"make-struct-type: can't infer type "
                      (gx#syntax->datum _stx16267_))
                     '#f)))))
             (_g1627016599_
              (lambda (_g1627316395_)
                (if (gx#stx-pair? _g1627316395_)
                    (let ((_e1633316397_ (gx#stx-e _g1627316395_)))
                      (let ((_hd1633416400_ (##car _e1633316397_))
                            (_tl1633516402_ (##cdr _e1633316397_)))
                        (if (gx#stx-pair? _hd1633416400_)
                            (let ((_e1633616405_ (gx#stx-e _hd1633416400_)))
                              (let ((_hd1633716408_ (##car _e1633616405_))
                                    (_tl1633816410_ (##cdr _e1633616405_)))
                                (if (gx#identifier? _hd1633716408_)
                                    (if (gx#stx-eq? '%#quote _hd1633716408_)
                                        (if (gx#stx-pair? _tl1633816410_)
                                            (let ((_e1633916413_
                                                   (gx#stx-e _tl1633816410_)))
                                              (let ((_hd1634016416_
                                                     (##car _e1633916413_))
                                                    (_tl1634116418_
                                                     (##cdr _e1633916413_)))
                                                (if (gx#stx-null?
                                                     _tl1634116418_)
                                                    (if (gx#stx-pair?
                                                         _tl1633516402_)
                                                        (let ((_e1634216421_
                                                               (gx#stx-e
                                                                _tl1633516402_)))
                                                          (let ((_hd1634316424_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1634216421_))
                        (_tl1634416426_ (##cdr _e1634216421_)))
                    (if (gx#stx-pair? _hd1634316424_)
                        (let ((_e1634516429_ (gx#stx-e _hd1634316424_)))
                          (let ((_hd1634616432_ (##car _e1634516429_))
                                (_tl1634716434_ (##cdr _e1634516429_)))
                            (if (gx#identifier? _hd1634616432_)
                                (if (gx#stx-eq? '%#ref _hd1634616432_)
                                    (if (gx#stx-pair? _tl1634716434_)
                                        (let ((_e1634816437_
                                               (gx#stx-e _tl1634716434_)))
                                          (let ((_hd1634916440_
                                                 (##car _e1634816437_))
                                                (_tl1635016442_
                                                 (##cdr _e1634816437_)))
                                            (if (gx#stx-null? _tl1635016442_)
                                                (if (gx#stx-pair?
                                                     _tl1634416426_)
                                                    (let ((_e1635116445_
                                                           (gx#stx-e
                                                            _tl1634416426_)))
                                                      (let ((_hd1635216448_
                                                             (##car _e1635116445_))
                                                            (_tl1635316450_
                                                             (##cdr _e1635116445_)))
                                                        (if (gx#stx-pair?
                                                             _hd1635216448_)
                                                            (let ((_e1635416453_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1635216448_)))
                      (let ((_hd1635516456_ (##car _e1635416453_))
                            (_tl1635616458_ (##cdr _e1635416453_)))
                        (if (gx#identifier? _hd1635516456_)
                            (if (gx#stx-eq? '%#quote _hd1635516456_)
                                (if (gx#stx-pair? _tl1635616458_)
                                    (let ((_e1635716461_
                                           (gx#stx-e _tl1635616458_)))
                                      (let ((_hd1635816464_
                                             (##car _e1635716461_))
                                            (_tl1635916466_
                                             (##cdr _e1635716461_)))
                                        (if (gx#stx-null? _tl1635916466_)
                                            (if (gx#stx-pair? _tl1635316450_)
                                                (let ((_e1636016469_
                                                       (gx#stx-e
                                                        _tl1635316450_)))
                                                  (let ((_hd1636116472_
                                                         (##car _e1636016469_))
                                                        (_tl1636216474_
                                                         (##cdr _e1636016469_)))
                                                    (if (gx#stx-pair?
                                                         _tl1636216474_)
                                                        (let ((_e1636316477_
                                                               (gx#stx-e
                                                                _tl1636216474_)))
                                                          (let ((_hd1636416480_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1636316477_))
                        (_tl1636516482_ (##cdr _e1636316477_)))
                    (if (gx#stx-pair? _hd1636416480_)
                        (let ((_e1636616485_ (gx#stx-e _hd1636416480_)))
                          (let ((_hd1636716488_ (##car _e1636616485_))
                                (_tl1636816490_ (##cdr _e1636616485_)))
                            (if (gx#identifier? _hd1636716488_)
                                (if (gx#stx-eq? '%#quote _hd1636716488_)
                                    (if (gx#stx-pair? _tl1636816490_)
                                        (let ((_e1636916493_
                                               (gx#stx-e _tl1636816490_)))
                                          (let ((_hd1637016496_
                                                 (##car _e1636916493_))
                                                (_tl1637116498_
                                                 (##cdr _e1636916493_)))
                                            (if (gx#stx-null? _tl1637116498_)
                                                (if (gx#stx-pair?
                                                     _tl1636516482_)
                                                    (let ((_e1637216501_
                                                           (gx#stx-e
                                                            _tl1636516482_)))
                                                      (let ((_hd1637316504_
                                                             (##car _e1637216501_))
                                                            (_tl1637416506_
                                                             (##cdr _e1637216501_)))
                                                        (if (gx#stx-pair?
                                                             _hd1637316504_)
                                                            (let ((_e1637516509_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1637316504_)))
                      (let ((_hd1637616512_ (##car _e1637516509_))
                            (_tl1637716514_ (##cdr _e1637516509_)))
                        (if (gx#identifier? _hd1637616512_)
                            (if (gx#stx-eq? '%#quote _hd1637616512_)
                                (if (gx#stx-pair? _tl1637716514_)
                                    (let ((_e1637816517_
                                           (gx#stx-e _tl1637716514_)))
                                      (let ((_hd1637916520_
                                             (##car _e1637816517_))
                                            (_tl1638016522_
                                             (##cdr _e1637816517_)))
                                        (if (gx#stx-null? _tl1638016522_)
                                            ((lambda (_L16525_
                                                      _L16526_
                                                      _L16527_
                                                      _L16528_
                                                      _L16529_
                                                      _L16530_)
                                               (let* ((_super-t16576_
                                                       (if (gx#stx-e _L16529_)
                                                           (gxc#generate-runtime-binding-id
                                                            _L16529_)
                                                           '#f))
                                                      (_super-type16578_
                                                       (if _super-t16576_
                                                           (gxc#optimizer-resolve-type
                                                            _super-t16576_)
                                                           '#f)))
                                                 (begin
                                                   (if (if _super-type16578_
                                                           (not (##structure-instance-of?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _super-type16578_
                         'gxc#!struct-type::t))
                   '#f)
               (gxc#raise-compile-error
                '"Illegal struct-type construction; invalid super type"
                _stx16267_
                _L16529_)
               '#!void)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_fields16594_
                                                          (gx#stx-e _L16528_))
                                                         (_xfields16595_
                                                          (if _super-type16578_
                                                              (let ((_super-fields1658016583_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##structure-ref
                              _super-type16578_
                              '3
                              gxc#!struct-type::t
                              '#f))
                            (_super-xfields1658116585_
                             (##structure-ref
                              _super-type16578_
                              '4
                              gxc#!struct-type::t
                              '#f)))
                        (if _super-fields1658016583_
                            (if _super-xfields1658116585_
                                (let ((_super-fields16588_
                                       _super-fields1658016583_)
                                      (_super-xfields16589_
                                       _super-xfields1658116585_))
                                  (fx+ _super-fields16588_
                                       _super-xfields16589_))
                                '#f)
                            '#f))
                      '#f))
                 (_plist16596_ (gx#stx-e _L16526_))
                 (_ctor16597_
                  (let ((_$e16591_ (gx#stx-e _L16525_)))
                    (if _$e16591_
                        (values _$e16591_)
                        (if _super-type16578_
                            (##structure-ref
                             _super-type16578_
                             '5
                             gxc#!struct-type::t
                             '#f)
                            (if _super-t16576_ '#!void '#f))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__obj23643
                                                            (make-object
                                                             gxc#!struct-type::t
                                                             '7)))
                                                       (begin
                                                         (gxc#!struct-type:::init!
                                                          __obj23643
                                                          (gx#stx-e _L16530_)
                                                          _super-t16576_
                                                          _fields16594_
                                                          _xfields16595_
                                                          _ctor16597_
                                                          _plist16596_)
                                                         __obj23643))))))
                                             _hd1637916520_
                                             _hd1637016496_
                                             _hd1636116472_
                                             _hd1635816464_
                                             _hd1634916440_
                                             _hd1634016416_)
                                            (_g1627116392_ _g1627316395_))))
                                    (_g1627116392_ _g1627316395_))
                                (_g1627116392_ _g1627316395_))
                            (_g1627116392_ _g1627316395_))))
                    (_g1627116392_ _g1627316395_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1627116392_
                                                     _g1627316395_))
                                                (_g1627116392_
                                                 _g1627316395_))))
                                        (_g1627116392_ _g1627316395_))
                                    (_g1627116392_ _g1627316395_))
                                (_g1627116392_ _g1627316395_))))
                        (_g1627116392_ _g1627316395_))))
                (_g1627116392_ _g1627316395_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1627116392_ _g1627316395_))
                                            (_g1627116392_ _g1627316395_))))
                                    (_g1627116392_ _g1627316395_))
                                (_g1627116392_ _g1627316395_))
                            (_g1627116392_ _g1627316395_))))
                    (_g1627116392_ _g1627316395_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1627116392_
                                                     _g1627316395_))
                                                (_g1627116392_
                                                 _g1627316395_))))
                                        (_g1627116392_ _g1627316395_))
                                    (_g1627116392_ _g1627316395_))
                                (_g1627116392_ _g1627316395_))))
                        (_g1627116392_ _g1627316395_))))
                (_g1627116392_ _g1627316395_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1627116392_
                                                     _g1627316395_))))
                                            (_g1627116392_ _g1627316395_))
                                        (_g1627116392_ _g1627316395_))
                                    (_g1627116392_ _g1627316395_))))
                            (_g1627116392_ _g1627316395_))))
                    (_g1627116392_ _g1627316395_))))
             (_g1626916779_
              (lambda (_g1627316602_)
                (if (gx#stx-pair? _g1627316602_)
                    (let ((_e1627916604_ (gx#stx-e _g1627316602_)))
                      (let ((_hd1628016607_ (##car _e1627916604_))
                            (_tl1628116609_ (##cdr _e1627916604_)))
                        (if (gx#stx-pair? _hd1628016607_)
                            (let ((_e1628216612_ (gx#stx-e _hd1628016607_)))
                              (let ((_hd1628316615_ (##car _e1628216612_))
                                    (_tl1628416617_ (##cdr _e1628216612_)))
                                (if (gx#identifier? _hd1628316615_)
                                    (if (gx#stx-eq? '%#quote _hd1628316615_)
                                        (if (gx#stx-pair? _tl1628416617_)
                                            (let ((_e1628516620_
                                                   (gx#stx-e _tl1628416617_)))
                                              (let ((_hd1628616623_
                                                     (##car _e1628516620_))
                                                    (_tl1628716625_
                                                     (##cdr _e1628516620_)))
                                                (if (gx#stx-null?
                                                     _tl1628716625_)
                                                    (if (gx#stx-pair?
                                                         _tl1628116609_)
                                                        (let ((_e1628816628_
                                                               (gx#stx-e
                                                                _tl1628116609_)))
                                                          (let ((_hd1628916631_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1628816628_))
                        (_tl1629016633_ (##cdr _e1628816628_)))
                    (if (gx#stx-pair? _hd1628916631_)
                        (let ((_e1629116636_ (gx#stx-e _hd1628916631_)))
                          (let ((_hd1629216639_ (##car _e1629116636_))
                                (_tl1629316641_ (##cdr _e1629116636_)))
                            (if (gx#identifier? _hd1629216639_)
                                (if (gx#stx-eq? '%#quote _hd1629216639_)
                                    (if (gx#stx-pair? _tl1629316641_)
                                        (let ((_e1629416644_
                                               (gx#stx-e _tl1629316641_)))
                                          (let ((_hd1629516647_
                                                 (##car _e1629416644_))
                                                (_tl1629616649_
                                                 (##cdr _e1629416644_)))
                                            (if (gx#stx-datum? _hd1629516647_)
                                                (if (equal? (gx#stx-e
                                                             _hd1629516647_)
                                                            '#f)
                                                    (if (gx#stx-null?
                                                         _tl1629616649_)
                                                        (if (gx#stx-pair?
                                                             _tl1629016633_)
                                                            (let ((_e1629716652_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1629016633_)))
                      (let ((_hd1629816655_ (##car _e1629716652_))
                            (_tl1629916657_ (##cdr _e1629716652_)))
                        (if (gx#stx-pair? _hd1629816655_)
                            (let ((_e1630016660_ (gx#stx-e _hd1629816655_)))
                              (let ((_hd1630116663_ (##car _e1630016660_))
                                    (_tl1630216665_ (##cdr _e1630016660_)))
                                (if (gx#identifier? _hd1630116663_)
                                    (if (gx#stx-eq? '%#quote _hd1630116663_)
                                        (if (gx#stx-pair? _tl1630216665_)
                                            (let ((_e1630316668_
                                                   (gx#stx-e _tl1630216665_)))
                                              (let ((_hd1630416671_
                                                     (##car _e1630316668_))
                                                    (_tl1630516673_
                                                     (##cdr _e1630316668_)))
                                                (if (gx#stx-null?
                                                     _tl1630516673_)
                                                    (if (gx#stx-pair?
                                                         _tl1629916657_)
                                                        (let ((_e1630616676_
                                                               (gx#stx-e
                                                                _tl1629916657_)))
                                                          (let ((_hd1630716679_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1630616676_))
                        (_tl1630816681_ (##cdr _e1630616676_)))
                    (if (gx#stx-pair? _tl1630816681_)
                        (let ((_e1630916684_ (gx#stx-e _tl1630816681_)))
                          (let ((_hd1631016687_ (##car _e1630916684_))
                                (_tl1631116689_ (##cdr _e1630916684_)))
                            (if (gx#stx-pair? _hd1631016687_)
                                (let ((_e1631216692_
                                       (gx#stx-e _hd1631016687_)))
                                  (let ((_hd1631316695_ (##car _e1631216692_))
                                        (_tl1631416697_ (##cdr _e1631216692_)))
                                    (if (gx#identifier? _hd1631316695_)
                                        (if (gx#stx-eq?
                                             '%#quote
                                             _hd1631316695_)
                                            (if (gx#stx-pair? _tl1631416697_)
                                                (let ((_e1631516700_
                                                       (gx#stx-e
                                                        _tl1631416697_)))
                                                  (let ((_hd1631616703_
                                                         (##car _e1631516700_))
                                                        (_tl1631716705_
                                                         (##cdr _e1631516700_)))
                                                    (if (gx#stx-null?
                                                         _tl1631716705_)
                                                        (if (gx#stx-pair?
                                                             _tl1631116689_)
                                                            (let ((_e1631816708_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1631116689_)))
                      (let ((_hd1631916711_ (##car _e1631816708_))
                            (_tl1632016713_ (##cdr _e1631816708_)))
                        (if (gx#stx-pair? _hd1631916711_)
                            (let ((_e1632116716_ (gx#stx-e _hd1631916711_)))
                              (let ((_hd1632216719_ (##car _e1632116716_))
                                    (_tl1632316721_ (##cdr _e1632116716_)))
                                (if (gx#identifier? _hd1632216719_)
                                    (if (gx#stx-eq? '%#quote _hd1632216719_)
                                        (if (gx#stx-pair? _tl1632316721_)
                                            (let ((_e1632416724_
                                                   (gx#stx-e _tl1632316721_)))
                                              (let ((_hd1632516727_
                                                     (##car _e1632416724_))
                                                    (_tl1632616729_
                                                     (##cdr _e1632416724_)))
                                                (if (gx#stx-null?
                                                     _tl1632616729_)
                                                    ((lambda (_L16732_
                                                              _L16733_
                                                              _L16734_
                                                              _L16735_
                                                              _L16736_)
                                                       (let ((__obj23644
                                                              (make-object
                                                               gxc#!struct-type::t
                                                               '7)))
                                                         (begin
                                                           (gxc#!struct-type:::init!
                                                            __obj23644
                                                            (gx#stx-e _L16736_)
                                                            '#f
                                                            (gx#stx-e _L16735_)
                                                            '0
                                                            (gx#stx-e _L16732_)
                                                            (gx#stx-e
                                                             _L16733_))
                                                           __obj23644)))
                                                     _hd1632516727_
                                                     _hd1631616703_
                                                     _hd1630716679_
                                                     _hd1630416671_
                                                     _hd1628616623_)
                                                    (_g1627016599_
                                                     _g1627316602_))))
                                            (_g1627016599_ _g1627316602_))
                                        (_g1627016599_ _g1627316602_))
                                    (_g1627016599_ _g1627316602_))))
                            (_g1627016599_ _g1627316602_))))
                    (_g1627016599_ _g1627316602_))
                (_g1627016599_ _g1627316602_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1627016599_ _g1627316602_))
                                            (_g1627016599_ _g1627316602_))
                                        (_g1627016599_ _g1627316602_))))
                                (_g1627016599_ _g1627316602_))))
                        (_g1627016599_ _g1627316602_))))
                (_g1627016599_ _g1627316602_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1627016599_
                                                     _g1627316602_))))
                                            (_g1627016599_ _g1627316602_))
                                        (_g1627016599_ _g1627316602_))
                                    (_g1627016599_ _g1627316602_))))
                            (_g1627016599_ _g1627316602_))))
                    (_g1627016599_ _g1627316602_))
                (_g1627016599_ _g1627316602_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1627016599_
                                                     _g1627316602_))
                                                (_g1627016599_
                                                 _g1627316602_))))
                                        (_g1627016599_ _g1627316602_))
                                    (_g1627016599_ _g1627316602_))
                                (_g1627016599_ _g1627316602_))))
                        (_g1627016599_ _g1627316602_))))
                (_g1627016599_ _g1627316602_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1627016599_
                                                     _g1627316602_))))
                                            (_g1627016599_ _g1627316602_))
                                        (_g1627016599_ _g1627316602_))
                                    (_g1627016599_ _g1627316602_))))
                            (_g1627016599_ _g1627316602_))))
                    (_g1627016599_ _g1627316602_)))))
        (_g1626916779_ _args16268_))))
  (define gxc#basic-expression-type-make-struct-predicate
    (lambda (_stx16193_ _args16194_)
      (let* ((_g1619716213_
              (lambda (_g1619816210_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1619816210_)))
             (_g1619616220_ (lambda (_g1619816216_) ((lambda () '#f))))
             (_g1619516264_
              (lambda (_g1619816223_)
                (if (gx#stx-pair? _g1619816223_)
                    (let ((_e1620016225_ (gx#stx-e _g1619816223_)))
                      (let ((_hd1620116228_ (##car _e1620016225_))
                            (_tl1620216230_ (##cdr _e1620016225_)))
                        (if (gx#stx-pair? _hd1620116228_)
                            (let ((_e1620316233_ (gx#stx-e _hd1620116228_)))
                              (let ((_hd1620416236_ (##car _e1620316233_))
                                    (_tl1620516238_ (##cdr _e1620316233_)))
                                (if (gx#identifier? _hd1620416236_)
                                    (if (gx#stx-eq? '%#ref _hd1620416236_)
                                        (if (gx#stx-pair? _tl1620516238_)
                                            (let ((_e1620616241_
                                                   (gx#stx-e _tl1620516238_)))
                                              (let ((_hd1620716244_
                                                     (##car _e1620616241_))
                                                    (_tl1620816246_
                                                     (##cdr _e1620616241_)))
                                                (if (gx#stx-null?
                                                     _tl1620816246_)
                                                    (if (gx#stx-null?
                                                         _tl1620216230_)
                                                        ((lambda (_L16249_)
                                                           (##structure
                                                            gxc#!struct-pred::t
                                                            (gxc#generate-runtime-binding-id
                                                             _L16249_)))
                                                         _hd1620716244_)
                                                        (_g1619616220_
                                                         _g1619816223_))
                                                    (_g1619616220_
                                                     _g1619816223_))))
                                            (_g1619616220_ _g1619816223_))
                                        (_g1619616220_ _g1619816223_))
                                    (_g1619616220_ _g1619816223_))))
                            (_g1619616220_ _g1619816223_))))
                    (_g1619616220_ _g1619816223_)))))
        (_g1619516264_ _args16194_))))
  (begin
    (define gxc#basic-expression-type-make-struct-field-accessor__%
      (lambda (_stx16064_ _args16065_ _unchecked?16066_)
        (let* ((_g1606916095_
                (lambda (_g1607016092_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1607016092_)))
               (_g1606816102_ (lambda (_g1607016098_) ((lambda () '#f))))
               (_g1606716178_
                (lambda (_g1607016105_)
                  (if (gx#stx-pair? _g1607016105_)
                      (let ((_e1607316107_ (gx#stx-e _g1607016105_)))
                        (let ((_hd1607416110_ (##car _e1607316107_))
                              (_tl1607516112_ (##cdr _e1607316107_)))
                          (if (gx#stx-pair? _hd1607416110_)
                              (let ((_e1607616115_ (gx#stx-e _hd1607416110_)))
                                (let ((_hd1607716118_ (##car _e1607616115_))
                                      (_tl1607816120_ (##cdr _e1607616115_)))
                                  (if (gx#identifier? _hd1607716118_)
                                      (if (gx#stx-eq? '%#ref _hd1607716118_)
                                          (if (gx#stx-pair? _tl1607816120_)
                                              (let ((_e1607916123_
                                                     (gx#stx-e
                                                      _tl1607816120_)))
                                                (let ((_hd1608016126_
                                                       (##car _e1607916123_))
                                                      (_tl1608116128_
                                                       (##cdr _e1607916123_)))
                                                  (if (gx#stx-null?
                                                       _tl1608116128_)
                                                      (if (gx#stx-pair?
                                                           _tl1607516112_)
                                                          (let ((_e1608216131_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1607516112_)))
                    (let ((_hd1608316134_ (##car _e1608216131_))
                          (_tl1608416136_ (##cdr _e1608216131_)))
                      (if (gx#stx-pair? _hd1608316134_)
                          (let ((_e1608516139_ (gx#stx-e _hd1608316134_)))
                            (let ((_hd1608616142_ (##car _e1608516139_))
                                  (_tl1608716144_ (##cdr _e1608516139_)))
                              (if (gx#identifier? _hd1608616142_)
                                  (if (gx#stx-eq? '%#quote _hd1608616142_)
                                      (if (gx#stx-pair? _tl1608716144_)
                                          (let ((_e1608816147_
                                                 (gx#stx-e _tl1608716144_)))
                                            (let ((_hd1608916150_
                                                   (##car _e1608816147_))
                                                  (_tl1609016152_
                                                   (##cdr _e1608816147_)))
                                              (if (gx#stx-null? _tl1609016152_)
                                                  (if (gx#stx-null?
                                                       _tl1608416136_)
                                                      ((lambda (_L16155_
                                                                _L16156_)
                                                         (##structure
                                                          gxc#!struct-getf::t
                                                          (gxc#generate-runtime-binding-id
                                                           _L16156_)
                                                          (gx#stx-e _L16155_)
                                                          _unchecked?16066_))
                                                       _hd1608916150_
                                                       _hd1608016126_)
                                                      (_g1606816102_
                                                       _g1607016105_))
                                                  (_g1606816102_
                                                   _g1607016105_))))
                                          (_g1606816102_ _g1607016105_))
                                      (_g1606816102_ _g1607016105_))
                                  (_g1606816102_ _g1607016105_))))
                          (_g1606816102_ _g1607016105_))))
                  (_g1606816102_ _g1607016105_))
              (_g1606816102_ _g1607016105_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1606816102_ _g1607016105_))
                                          (_g1606816102_ _g1607016105_))
                                      (_g1606816102_ _g1607016105_))))
                              (_g1606816102_ _g1607016105_))))
                      (_g1606816102_ _g1607016105_)))))
          (_g1606716178_ _args16065_))))
    (begin
      (define gxc#basic-expression-type-make-struct-field-accessor__0
        (lambda (_stx16184_ _args16185_)
          (let ((_unchecked?16187_ '#f))
            (gxc#basic-expression-type-make-struct-field-accessor__%
             _stx16184_
             _args16185_
             _unchecked?16187_))))
      (define gxc#basic-expression-type-make-struct-field-accessor
        (lambda _g23708_
          (let ((_g23707_ (length _g23708_)))
            (cond ((fx= _g23707_ 2)
                   (apply gxc#basic-expression-type-make-struct-field-accessor__0
                          _g23708_))
                  ((fx= _g23707_ 3)
                   (apply gxc#basic-expression-type-make-struct-field-accessor__%
                          _g23708_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#basic-expression-type-make-struct-field-accessor
                    _g23708_))))))))
  (begin
    (define gxc#basic-expression-type-make-struct-field-mutator__%
      (lambda (_stx15934_ _args15935_ _unchecked?15936_)
        (let* ((_g1593915965_
                (lambda (_g1594015962_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1594015962_)))
               (_g1593815972_ (lambda (_g1594015968_) ((lambda () '#f))))
               (_g1593716048_
                (lambda (_g1594015975_)
                  (if (gx#stx-pair? _g1594015975_)
                      (let ((_e1594315977_ (gx#stx-e _g1594015975_)))
                        (let ((_hd1594415980_ (##car _e1594315977_))
                              (_tl1594515982_ (##cdr _e1594315977_)))
                          (if (gx#stx-pair? _hd1594415980_)
                              (let ((_e1594615985_ (gx#stx-e _hd1594415980_)))
                                (let ((_hd1594715988_ (##car _e1594615985_))
                                      (_tl1594815990_ (##cdr _e1594615985_)))
                                  (if (gx#identifier? _hd1594715988_)
                                      (if (gx#stx-eq? '%#ref _hd1594715988_)
                                          (if (gx#stx-pair? _tl1594815990_)
                                              (let ((_e1594915993_
                                                     (gx#stx-e
                                                      _tl1594815990_)))
                                                (let ((_hd1595015996_
                                                       (##car _e1594915993_))
                                                      (_tl1595115998_
                                                       (##cdr _e1594915993_)))
                                                  (if (gx#stx-null?
                                                       _tl1595115998_)
                                                      (if (gx#stx-pair?
                                                           _tl1594515982_)
                                                          (let ((_e1595216001_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1594515982_)))
                    (let ((_hd1595316004_ (##car _e1595216001_))
                          (_tl1595416006_ (##cdr _e1595216001_)))
                      (if (gx#stx-pair? _hd1595316004_)
                          (let ((_e1595516009_ (gx#stx-e _hd1595316004_)))
                            (let ((_hd1595616012_ (##car _e1595516009_))
                                  (_tl1595716014_ (##cdr _e1595516009_)))
                              (if (gx#identifier? _hd1595616012_)
                                  (if (gx#stx-eq? '%#quote _hd1595616012_)
                                      (if (gx#stx-pair? _tl1595716014_)
                                          (let ((_e1595816017_
                                                 (gx#stx-e _tl1595716014_)))
                                            (let ((_hd1595916020_
                                                   (##car _e1595816017_))
                                                  (_tl1596016022_
                                                   (##cdr _e1595816017_)))
                                              (if (gx#stx-null? _tl1596016022_)
                                                  (if (gx#stx-null?
                                                       _tl1595416006_)
                                                      ((lambda (_L16025_
                                                                _L16026_)
                                                         (##structure
                                                          gxc#!struct-setf::t
                                                          (gxc#generate-runtime-binding-id
                                                           _L16026_)
                                                          (gx#stx-e _L16025_)
                                                          _unchecked?15936_))
                                                       _hd1595916020_
                                                       _hd1595015996_)
                                                      (_g1593815972_
                                                       _g1594015975_))
                                                  (_g1593815972_
                                                   _g1594015975_))))
                                          (_g1593815972_ _g1594015975_))
                                      (_g1593815972_ _g1594015975_))
                                  (_g1593815972_ _g1594015975_))))
                          (_g1593815972_ _g1594015975_))))
                  (_g1593815972_ _g1594015975_))
              (_g1593815972_ _g1594015975_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1593815972_ _g1594015975_))
                                          (_g1593815972_ _g1594015975_))
                                      (_g1593815972_ _g1594015975_))))
                              (_g1593815972_ _g1594015975_))))
                      (_g1593815972_ _g1594015975_)))))
          (_g1593716048_ _args15935_))))
    (begin
      (define gxc#basic-expression-type-make-struct-field-mutator__0
        (lambda (_stx16054_ _args16055_)
          (let ((_unchecked?16057_ '#f))
            (gxc#basic-expression-type-make-struct-field-mutator__%
             _stx16054_
             _args16055_
             _unchecked?16057_))))
      (define gxc#basic-expression-type-make-struct-field-mutator
        (lambda _g23710_
          (let ((_g23709_ (length _g23710_)))
            (cond ((fx= _g23709_ 2)
                   (apply gxc#basic-expression-type-make-struct-field-mutator__0
                          _g23710_))
                  ((fx= _g23709_ 3)
                   (apply gxc#basic-expression-type-make-struct-field-mutator__%
                          _g23710_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#basic-expression-type-make-struct-field-mutator
                    _g23710_))))))))
  (define gxc#basic-expression-type-make-struct-field-unchecked-accessor
    (lambda (_stx15930_ _args15931_)
      (gxc#basic-expression-type-make-struct-field-accessor__%
       _stx15930_
       _args15931_
       '#t)))
  (define gxc#basic-expression-type-make-struct-field-unchecked-mutator
    (lambda (_stx15927_ _args15928_)
      (gxc#basic-expression-type-make-struct-field-mutator__%
       _stx15927_
       _args15928_
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
    (lambda (_stx15876_)
      (let* ((_g1587815891_
              (lambda (_g1587915888_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1587915888_)))
             (_g1587715924_
              (lambda (_g1587915894_)
                (if (gx#stx-pair? _g1587915894_)
                    (let ((_e1588115896_ (gx#stx-e _g1587915894_)))
                      (let ((_hd1588215899_ (##car _e1588115896_))
                            (_tl1588315901_ (##cdr _e1588115896_)))
                        (if (gx#stx-pair? _tl1588315901_)
                            (let ((_e1588415904_ (gx#stx-e _tl1588315901_)))
                              (let ((_hd1588515907_ (##car _e1588415904_))
                                    (_tl1588615909_ (##cdr _e1588415904_)))
                                (if (gx#stx-null? _tl1588615909_)
                                    ((lambda (_L15912_)
                                       (gxc#optimizer-lookup-type
                                        (gxc#generate-runtime-binding-id
                                         _L15912_)))
                                     _hd1588515907_)
                                    (_g1587815891_ _g1587915894_))))
                            (_g1587815891_ _g1587915894_))))
                    (_g1587815891_ _g1587915894_)))))
        (_g1587715924_ _stx15876_))))
  (define gxc#optimize-call%
    (lambda (_stx15782_)
      (let* ((_g1578515805_
              (lambda (_g1578615802_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1578615802_)))
             (_g1578415812_
              (lambda (_g1578615808_)
                ((lambda () (gxc#xform-call% _stx15782_)))))
             (_g1578315873_
              (lambda (_g1578615815_)
                (if (gx#stx-pair? _g1578615815_)
                    (let ((_e1578915817_ (gx#stx-e _g1578615815_)))
                      (let ((_hd1579015820_ (##car _e1578915817_))
                            (_tl1579115822_ (##cdr _e1578915817_)))
                        (if (gx#stx-pair? _tl1579115822_)
                            (let ((_e1579215825_ (gx#stx-e _tl1579115822_)))
                              (let ((_hd1579315828_ (##car _e1579215825_))
                                    (_tl1579415830_ (##cdr _e1579215825_)))
                                (if (gx#stx-pair? _hd1579315828_)
                                    (let ((_e1579515833_
                                           (gx#stx-e _hd1579315828_)))
                                      (let ((_hd1579615836_
                                             (##car _e1579515833_))
                                            (_tl1579715838_
                                             (##cdr _e1579515833_)))
                                        (if (gx#identifier? _hd1579615836_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1579615836_)
                                                (if (gx#stx-pair?
                                                     _tl1579715838_)
                                                    (let ((_e1579815841_
                                                           (gx#stx-e
                                                            _tl1579715838_)))
                                                      (let ((_hd1579915844_
                                                             (##car _e1579815841_))
                                                            (_tl1580015846_
                                                             (##cdr _e1579815841_)))
                                                        (if (gx#stx-null?
                                                             _tl1580015846_)
                                                            ((lambda (_L15849_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L15850_)
                       (let* ((_rator-id15868_
                               (gxc#generate-runtime-binding-id _L15850_))
                              (_rator-type15870_
                               (gxc#optimizer-resolve-type _rator-id15868_)))
                         (if (##structure-instance-of?
                              _rator-type15870_
                              'gxc#!procedure::t)
                             (begin
                               (gxc#verbose
                                '"optimize-call "
                                _rator-id15868_
                                '" => "
                                _rator-type15870_
                                '" "
                                (##structure-ref
                                 _rator-type15870_
                                 '1
                                 gxc#!type::t
                                 '#f))
                               (call-method
                                _rator-type15870_
                                'optimize-call
                                _stx15782_
                                _L15849_))
                             (if (not _rator-type15870_)
                                 (gxc#xform-call% _stx15782_)
                                 (gxc#raise-compile-error
                                  '"Illegal application; not a procedure"
                                  _stx15782_
                                  _rator-type15870_)))))
                     _tl1579415830_
                     _hd1579915844_)
                    (_g1578415812_ _g1578615815_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1578415812_
                                                     _g1578615815_))
                                                (_g1578415812_ _g1578615815_))
                                            (_g1578415812_ _g1578615815_))))
                                    (_g1578415812_ _g1578615815_))))
                            (_g1578415812_ _g1578615815_))))
                    (_g1578415812_ _g1578615815_)))))
        (_g1578315873_ _stx15782_))))
  (define gxc#!struct-pred::optimize-call
    (lambda (_self15636_ _stx15637_ _args15638_)
      (let* ((_self1563915645_ _self15636_)
             (_E1564115649_
              (lambda () (error '"No clause matching" _self1563915645_)))
             (_K1564215774_
              (lambda (_struct-t15652_)
                (let* ((_struct-type15654_
                        (gxc#optimizer-resolve-type _struct-t15652_))
                       (_struct-type1565515669_ _struct-type15654_)
                       (_E1565915673_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1565515669_)))
                       (_else1565815677_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx15637_
                           _struct-t15652_
                           _struct-type15654_)))
                       (_try-match1565715685_
                        (lambda ()
                          (let ((_K1566015682_
                                 (lambda () (gxc#xform-call% _stx15637_))))
                            (if (##eq? _struct-type1565515669_ '#f)
                                (_K1566015682_)
                                (_else1565815677_)))))
                       (_K1566115749_
                        (lambda (_plist15688_ _struct-type-id15689_)
                          (let* ((_g1569215702_
                                  (lambda (_g1569315699_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1569315699_)))
                                 (_g1569115709_
                                  (lambda (_g1569315705_)
                                    ((lambda ()
                                       (gxc#raise-compile-error
                                        '"Illegal struct predicate application"
                                        _stx15637_)))))
                                 (_g1569015746_
                                  (lambda (_g1569315712_)
                                    (if (gx#stx-pair? _g1569315712_)
                                        (let ((_e1569515714_
                                               (gx#stx-e _g1569315712_)))
                                          (let ((_hd1569615717_
                                                 (##car _e1569515714_))
                                                (_tl1569715719_
                                                 (##cdr _e1569515714_)))
                                            (if (gx#stx-null? _tl1569715719_)
                                                ((lambda (_L15722_)
                                                   (let ((_expr15743_
                                                          (gxc#compile-e
                                                           _L15722_))
                                                         (_op15744_
                                                          (if (if _plist15688_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (assgetq 'final: _plist15688_)
                          '#f)
                      '%#struct-direct-instance?
                      '%#struct-instance?)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gxc#xform-wrap-source
                                                      (cons _op15744_
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _struct-type-id15689_ '()))
                          (cons _expr15743_ '())))
              _stx15637_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1569615717_)
                                                (_g1569115709_
                                                 _g1569315712_))))
                                        (_g1569115709_ _g1569315712_)))))
                            (_g1569015746_ _args15638_)))))
                  (if (##structure-instance-of?
                       _struct-type1565515669_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1566215752_
                              (##vector-ref _struct-type1565515669_ '1))
                             (_struct-type-id15755_ _e1566215752_)
                             (_e1566315757_
                              (##vector-ref _struct-type1565515669_ '2))
                             (_e1566415760_
                              (##vector-ref _struct-type1565515669_ '3))
                             (_e1566515763_
                              (##vector-ref _struct-type1565515669_ '4))
                             (_e1566615766_
                              (##vector-ref _struct-type1565515669_ '5))
                             (_e1566715769_
                              (##vector-ref _struct-type1565515669_ '6))
                             (_plist15772_ _e1566715769_))
                        (_K1566115749_ _plist15772_ _struct-type-id15755_))
                      (_try-match1565715685_))))))
        (if (##structure-instance-of?
             _self1563915645_
             (##type-id gxc#!struct-pred::t))
            (let* ((_e1564315777_ (##vector-ref _self1563915645_ '1))
                   (_struct-t15780_ _e1564315777_))
              (_K1564215774_ _struct-t15780_))
            (_E1564115649_)))))
  (bind-method!
   gxc#!struct-pred::t
   'optimize-call
   gxc#!struct-pred::optimize-call
   '#f)
  (define gxc#!struct-cons::optimize-call
    (lambda (_self15410_ _stx15411_ _args15412_)
      (let* ((_self1541315419_ _self15410_)
             (_E1541515423_
              (lambda () (error '"No clause matching" _self1541315419_)))
             (_K1541615506_
              (lambda (_struct-t15426_)
                (let* ((_struct-type15428_
                        (gxc#optimizer-resolve-type _struct-t15426_))
                       (_struct-type1542915442_ _struct-type15428_)
                       (_E1543315446_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1542915442_)))
                       (_else1543215450_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct constructor application; not a struct type"
                           _stx15411_
                           _struct-t15426_
                           _struct-type15428_)))
                       (_try-match1543115458_
                        (lambda ()
                          (let ((_K1543415455_
                                 (lambda ()
                                   (begin
                                     (gxc#verbose
                                      '"cannot inline struct constructor; unknown struct type "
                                      _struct-t15426_)
                                     (gxc#xform-call% _stx15411_)))))
                            (if (##eq? _struct-type1542915442_ '#f)
                                (_K1543415455_)
                                (_else1543215450_)))))
                       (_K1543515480_
                        (lambda (_ctor15461_
                                 _xfields15462_
                                 _fields15463_
                                 _type-id15464_)
                          (let* ((_args15466_ (map gxc#compile-e _args15412_))
                                 (_$e15468_
                                  (if _ctor15461_
                                      (if _xfields15462_
                                          (gxc#!struct-type-lookup-method
                                           _struct-type15428_
                                           _ctor15461_)
                                          '#f)
                                      '#f)))
                            (if _$e15468_
                                ((lambda (_kons15471_)
                                   (let ((_$obj15473_
                                          (make-symbol (gensym '__obj))))
                                     (gxc#xform-wrap-source
                                      (cons '%#let-values
                                            (cons (cons (cons (cons _$obj15473_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (cons '%#call
                                  (cons (cons '%#ref (cons 'make-object '()))
                                        (cons (cons '%#ref
                                                    (cons _struct-t15426_ '()))
                                              (cons (cons '%#quote
                                                          (cons (fx+ _fields15463_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _xfields15462_)
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
                                    (cons (cons '%#ref (cons _kons15471_ '()))
                                          (cons (cons '%#ref
                                                      (cons _$obj15473_ '()))
                                                _args15466_)))
                              _stx15411_))
                            (cons (cons '%#ref (cons _$obj15473_ '())) '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _stx15411_)))
                                 _$e15468_)
                                (if (let ((_$e15475_ _ctor15461_))
                                      (if _$e15475_
                                          _$e15475_
                                          (not _xfields15462_)))
                                    (gxc#xform-wrap-source
                                     (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons 'make-struct-instance
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _struct-t15426_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _args15466_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _stx15411_)
                                    (let ((_arity15478_
                                           (fx+ _fields15463_ _xfields15462_)))
                                      (if (fx= _arity15478_
                                               (length _args15466_))
                                          (gxc#xform-wrap-source
                                           (cons '%#call
                                                 (cons (cons '%#ref
                                                             (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons '%#ref (cons _struct-t15426_ '())) _args15466_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _stx15411_)
                                          (gxc#raise-compile-error
                                           '"Illegal struct constructor application; arity mismatch"
                                           _stx15411_
                                           _struct-t15426_
                                           _arity15478_)))))))))
                  (if (##structure-instance-of?
                       _struct-type1542915442_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1543615483_
                              (##vector-ref _struct-type1542915442_ '1))
                             (_type-id15486_ _e1543615483_)
                             (_e1543715488_
                              (##vector-ref _struct-type1542915442_ '2))
                             (_e1543815491_
                              (##vector-ref _struct-type1542915442_ '3))
                             (_fields15494_ _e1543815491_)
                             (_e1543915496_
                              (##vector-ref _struct-type1542915442_ '4))
                             (_xfields15499_ _e1543915496_)
                             (_e1544015501_
                              (##vector-ref _struct-type1542915442_ '5))
                             (_ctor15504_ _e1544015501_))
                        (_K1543515480_
                         _ctor15504_
                         _xfields15499_
                         _fields15494_
                         _type-id15486_))
                      (_try-match1543115458_))))))
        (if (##structure-instance-of?
             _self1541315419_
             (##type-id gxc#!struct-cons::t))
            (let* ((_e1541715509_ (##vector-ref _self1541315419_ '1))
                   (_struct-t15512_ _e1541715509_))
              (_K1541615506_ _struct-t15512_))
            (_E1541515423_)))))
  (bind-method!
   gxc#!struct-cons::t
   'optimize-call
   gxc#!struct-cons::optimize-call
   '#f)
  (define gxc#!struct-getf::optimize-call
    (lambda (_self15121_ _stx15122_ _args15123_)
      (let* ((_self1512415132_ _self15121_)
             (_E1512615136_
              (lambda () (error '"No clause matching" _self1512415132_)))
             (_K1512715270_
              (lambda (_unchecked?15139_ _off15140_ _struct-t15141_)
                (let* ((_struct-type15143_
                        (gxc#optimizer-resolve-type _struct-t15141_))
                       (_struct-type1514415158_ _struct-type15143_)
                       (_E1514815162_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1514415158_)))
                       (_else1514715166_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx15122_
                           _struct-t15141_
                           _struct-type15143_)))
                       (_try-match1514615174_
                        (lambda ()
                          (let ((_K1514915171_
                                 (lambda () (gxc#xform-call% _stx15122_))))
                            (if (##eq? _struct-type1514415158_ '#f)
                                (_K1514915171_)
                                (_else1514715166_)))))
                       (_K1515015241_
                        (lambda (_plist15177_
                                 _xfields15178_
                                 _fields15179_
                                 _struct-type-id15180_)
                          (if _xfields15178_
                              (let* ((_g1518315193_
                                      (lambda (_g1518415190_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g1518415190_)))
                                     (_g1518215200_
                                      (lambda (_g1518415196_)
                                        ((lambda ()
                                           (gxc#raise-compile-error
                                            '"Illegal struct accessor application"
                                            _stx15122_)))))
                                     (_g1518115238_
                                      (lambda (_g1518415203_)
                                        (if (gx#stx-pair? _g1518415203_)
                                            (let ((_e1518615205_
                                                   (gx#stx-e _g1518415203_)))
                                              (let ((_hd1518715208_
                                                     (##car _e1518615205_))
                                                    (_tl1518815210_
                                                     (##cdr _e1518615205_)))
                                                (if (gx#stx-null?
                                                     _tl1518815210_)
                                                    ((lambda (_L15213_)
                                                       (let ((_expr15234_
                                                              (gxc#compile-e
                                                               _L15213_))
                                                             (_off15235_
                                                              (fx+ _off15140_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xfields15178_
                           '1))
                     (_op15236_
                      (if _unchecked?15139_
                          '%#struct-unchecked-ref
                          (if (if _plist15177_
                                  (assgetq 'final: _plist15177_)
                                  '#f)
                              '%#struct-direct-ref
                              '%#struct-ref))))
                 (gxc#xform-wrap-source
                  (cons _op15236_
                        (cons (cons '%#ref (cons _struct-t15141_ '()))
                              (cons (cons '%#quote (cons _off15235_ '()))
                                    (cons _expr15234_ '()))))
                  _stx15122_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd1518715208_)
                                                    (_g1518215200_
                                                     _g1518415203_))))
                                            (_g1518215200_ _g1518415203_)))))
                                (_g1518115238_ _args15123_))
                              (begin
                                (gxc#verbose
                                 '"struct-getf: incomplete struct "
                                 _struct-type-id15180_)
                                (gxc#xform-call% _stx15122_))))))
                  (if (##structure-instance-of?
                       _struct-type1514415158_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1515115244_
                              (##vector-ref _struct-type1514415158_ '1))
                             (_struct-type-id15247_ _e1515115244_)
                             (_e1515215249_
                              (##vector-ref _struct-type1514415158_ '2))
                             (_e1515315252_
                              (##vector-ref _struct-type1514415158_ '3))
                             (_fields15255_ _e1515315252_)
                             (_e1515415257_
                              (##vector-ref _struct-type1514415158_ '4))
                             (_xfields15260_ _e1515415257_)
                             (_e1515515262_
                              (##vector-ref _struct-type1514415158_ '5))
                             (_e1515615265_
                              (##vector-ref _struct-type1514415158_ '6))
                             (_plist15268_ _e1515615265_))
                        (_K1515015241_
                         _plist15268_
                         _xfields15260_
                         _fields15255_
                         _struct-type-id15247_))
                      (_try-match1514615174_))))))
        (if (##structure-instance-of?
             _self1512415132_
             (##type-id gxc#!struct-getf::t))
            (let* ((_e1512815273_ (##vector-ref _self1512415132_ '1))
                   (_struct-t15276_ _e1512815273_)
                   (_e1512915278_ (##vector-ref _self1512415132_ '2))
                   (_off15281_ _e1512915278_)
                   (_e1513015283_ (##vector-ref _self1512415132_ '3))
                   (_unchecked?15286_ _e1513015283_))
              (_K1512715270_ _unchecked?15286_ _off15281_ _struct-t15276_))
            (_E1512615136_)))))
  (bind-method!
   gxc#!struct-getf::t
   'optimize-call
   gxc#!struct-getf::optimize-call
   '#f)
  (define gxc#!struct-setf::optimize-call
    (lambda (_self14815_ _stx14816_ _args14817_)
      (let* ((_self1481814826_ _self14815_)
             (_E1482014830_
              (lambda () (error '"No clause matching" _self1481814826_)))
             (_K1482114981_
              (lambda (_unchecked?14833_ _off14834_ _struct-t14835_)
                (let* ((_struct-type14837_
                        (gxc#optimizer-resolve-type _struct-t14835_))
                       (_struct-type1483814852_ _struct-type14837_)
                       (_E1484214856_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1483814852_)))
                       (_else1484114860_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx14816_
                           _struct-t14835_
                           _struct-type14837_)))
                       (_try-match1484014868_
                        (lambda ()
                          (let ((_K1484314865_
                                 (lambda () (gxc#xform-call% _stx14816_))))
                            (if (##eq? _struct-type1483814852_ '#f)
                                (_K1484314865_)
                                (_else1484114860_)))))
                       (_K1484414952_
                        (lambda (_plist14871_
                                 _xfields14872_
                                 _fields14873_
                                 _struct-type-id14874_)
                          (if _xfields14872_
                              (let* ((_g1487714891_
                                      (lambda (_g1487814888_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g1487814888_)))
                                     (_g1487614898_
                                      (lambda (_g1487814894_)
                                        ((lambda ()
                                           (gxc#raise-compile-error
                                            '"Illegal struct mutator application"
                                            _stx14816_)))))
                                     (_g1487514949_
                                      (lambda (_g1487814901_)
                                        (if (gx#stx-pair? _g1487814901_)
                                            (let ((_e1488114903_
                                                   (gx#stx-e _g1487814901_)))
                                              (let ((_hd1488214906_
                                                     (##car _e1488114903_))
                                                    (_tl1488314908_
                                                     (##cdr _e1488114903_)))
                                                (if (gx#stx-pair?
                                                     _tl1488314908_)
                                                    (let ((_e1488414911_
                                                           (gx#stx-e
                                                            _tl1488314908_)))
                                                      (let ((_hd1488514914_
                                                             (##car _e1488414911_))
                                                            (_tl1488614916_
                                                             (##cdr _e1488414911_)))
                                                        (if (gx#stx-null?
                                                             _tl1488614916_)
                                                            ((lambda (_L14919_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L14920_)
                       (let ((_expr14944_ (gxc#compile-e _L14920_))
                             (_val14945_ (gxc#compile-e _L14919_))
                             (_off14946_ (fx+ _off14834_ _xfields14872_ '1))
                             (_op14947_
                              (if _unchecked?14833_
                                  '%#struct-unchecked-set!
                                  (if (if _plist14871_
                                          (assgetq 'final: _plist14871_)
                                          '#f)
                                      '%#struct-direct-set!
                                      '%#struct-set!))))
                         (gxc#xform-wrap-source
                          (cons _op14947_
                                (cons (cons '%#ref (cons _struct-t14835_ '()))
                                      (cons (cons '%#quote
                                                  (cons _off14946_ '()))
                                            (cons _expr14944_
                                                  (cons _val14945_ '())))))
                          _stx14816_)))
                     _hd1488514914_
                     _hd1488214906_)
                    (_g1487614898_ _g1487814901_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1487614898_
                                                     _g1487814901_))))
                                            (_g1487614898_ _g1487814901_)))))
                                (_g1487514949_ _args14817_))
                              (begin
                                (gxc#verbose
                                 '"struct-setf: incomplete struct "
                                 _struct-type-id14874_)
                                (gxc#xform-call% _stx14816_))))))
                  (if (##structure-instance-of?
                       _struct-type1483814852_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1484514955_
                              (##vector-ref _struct-type1483814852_ '1))
                             (_struct-type-id14958_ _e1484514955_)
                             (_e1484614960_
                              (##vector-ref _struct-type1483814852_ '2))
                             (_e1484714963_
                              (##vector-ref _struct-type1483814852_ '3))
                             (_fields14966_ _e1484714963_)
                             (_e1484814968_
                              (##vector-ref _struct-type1483814852_ '4))
                             (_xfields14971_ _e1484814968_)
                             (_e1484914973_
                              (##vector-ref _struct-type1483814852_ '5))
                             (_e1485014976_
                              (##vector-ref _struct-type1483814852_ '6))
                             (_plist14979_ _e1485014976_))
                        (_K1484414952_
                         _plist14979_
                         _xfields14971_
                         _fields14966_
                         _struct-type-id14958_))
                      (_try-match1484014868_))))))
        (if (##structure-instance-of?
             _self1481814826_
             (##type-id gxc#!struct-setf::t))
            (let* ((_e1482214984_ (##vector-ref _self1481814826_ '1))
                   (_struct-t14987_ _e1482214984_)
                   (_e1482314989_ (##vector-ref _self1481814826_ '2))
                   (_off14992_ _e1482314989_)
                   (_e1482414994_ (##vector-ref _self1481814826_ '3))
                   (_unchecked?14997_ _e1482414994_))
              (_K1482114981_ _unchecked?14997_ _off14992_ _struct-t14987_))
            (_E1482014830_)))))
  (bind-method!
   gxc#!struct-setf::t
   'optimize-call
   gxc#!struct-setf::optimize-call
   '#f)
  (define gxc#!lambda::optimize-call
    (lambda (_self14649_ _stx14650_ _args14651_)
      (let* ((_self1465214661_ _self14649_)
             (_E1465414665_
              (lambda () (error '"No clause matching" _self1465214661_)))
             (_K1465514672_
              (lambda (_inline14668_ _dispatch14669_ _arity14670_)
                (begin
                  (if (gxc#!lambda-arity-match? _self14649_ _args14651_)
                      '#!void
                      (gxc#raise-compile-error
                       '"Illegal lambda application; arity mismatch"
                       _stx14650_
                       _arity14670_))
                  (if _inline14668_
                      (begin
                        (gxc#verbose '"inline lambda")
                        (gxc#compile-e
                         (gxc#xform-wrap-source
                          (_inline14668_ _stx14650_)
                          _stx14650_)))
                      (if _dispatch14669_
                          (begin
                            (gxc#verbose
                             '"dispatch lambda => "
                             _dispatch14669_)
                            (gxc#compile-e
                             (gxc#xform-wrap-source
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons _dispatch14669_ '()))
                                          _args14651_))
                              _stx14650_)))
                          (gxc#xform-call% _stx14650_)))))))
        (if (##structure-instance-of?
             _self1465214661_
             (##type-id gxc#!lambda::t))
            (let* ((_e1465614675_ (##vector-ref _self1465214661_ '1))
                   (_e1465714678_ (##vector-ref _self1465214661_ '2))
                   (_arity14681_ _e1465714678_)
                   (_e1465814683_ (##vector-ref _self1465214661_ '3))
                   (_dispatch14686_ _e1465814683_)
                   (_e1465914688_ (##vector-ref _self1465214661_ '4))
                   (_inline14691_ _e1465914688_))
              (_K1465514672_ _inline14691_ _dispatch14686_ _arity14681_))
            (_E1465414665_)))))
  (bind-method! gxc#!lambda::t 'optimize-call gxc#!lambda::optimize-call '#f)
  (define gxc#!case-lambda::optimize-call
    (lambda (_self14488_ _stx14489_ _args14490_)
      (let* ((_self1449114498_ _self14488_)
             (_E1449314502_
              (lambda () (error '"No clause matching" _self1449114498_)))
             (_K1449414516_
              (lambda (_clauses14505_)
                (let ((_$e14511_
                       (find (lambda (_g1450614508_)
                               (gxc#!lambda-arity-match?
                                _g1450614508_
                                _args14490_))
                             _clauses14505_)))
                  (if _$e14511_
                      ((lambda (_clause14514_)
                         (call-method
                          _clause14514_
                          'optimize-call
                          _stx14489_
                          _args14490_))
                       _$e14511_)
                      (gxc#raise-compile-error
                       '"Illegal case-lambda application; arity mismatch"
                       _stx14489_
                       (map gxc#!lambda-arity _clauses14505_)))))))
        (if (##structure-instance-of?
             _self1449114498_
             (##type-id gxc#!case-lambda::t))
            (let* ((_e1449514519_ (##vector-ref _self1449114498_ '1))
                   (_e1449614522_ (##vector-ref _self1449114498_ '2))
                   (_clauses14525_ _e1449614522_))
              (_K1449414516_ _clauses14525_))
            (_E1449314502_)))))
  (bind-method!
   gxc#!case-lambda::t
   'optimize-call
   gxc#!case-lambda::optimize-call
   '#f)
  (define gxc#!lambda-arity-match?
    (lambda (_self14302_ _args14303_)
      (let* ((_self1430414311_ _self14302_)
             (_E1430614315_
              (lambda () (error '"No clause matching" _self1430414311_)))
             (_K1430714355_
              (lambda (_arity14318_)
                (let* ((_arity1431914328_ _arity14318_)
                       (_E1432214332_
                        (lambda ()
                          (error '"No clause matching" _arity1431914328_)))
                       (_try-match1432114348_
                        (lambda ()
                          (let ((_K1432314338_
                                 (lambda (_arity14336_)
                                   (fx>= (length _args14303_) _arity14336_))))
                            (if (##pair? _arity1431914328_)
                                (let ((_hd1432414341_
                                       (##car _arity1431914328_))
                                      (_tl1432514343_
                                       (##cdr _arity1431914328_)))
                                  (let ((_arity14346_ _hd1432414341_))
                                    (if (##null? _tl1432514343_)
                                        (_K1432314338_ _arity14346_)
                                        (_E1432214332_))))
                                (_E1432214332_)))))
                       (_K1432614352_
                        (lambda () (fx= (length _args14303_) _arity14318_))))
                  (if (fixnum? _arity1431914328_)
                      (_K1432614352_)
                      (_try-match1432114348_))))))
        (if (##structure-instance-of?
             _self1430414311_
             (##type-id gxc#!lambda::t))
            (let* ((_e1430814358_ (##vector-ref _self1430414311_ '1))
                   (_e1430914361_ (##vector-ref _self1430414311_ '2))
                   (_arity14364_ _e1430914361_))
              (_K1430714355_ _arity14364_))
            (_E1430614315_)))))
  (define gxc#generate-ssxi-module%
    (lambda (_stx14242_)
      (let* ((_g1424414258_
              (lambda (_g1424514255_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1424514255_)))
             (_g1424314299_
              (lambda (_g1424514261_)
                (if (gx#stx-pair? _g1424514261_)
                    (let ((_e1424814263_ (gx#stx-e _g1424514261_)))
                      (let ((_hd1424914266_ (##car _e1424814263_))
                            (_tl1425014268_ (##cdr _e1424814263_)))
                        (if (gx#stx-pair? _tl1425014268_)
                            (let ((_e1425114271_ (gx#stx-e _tl1425014268_)))
                              (let ((_hd1425214274_ (##car _e1425114271_))
                                    (_tl1425314276_ (##cdr _e1425114271_)))
                                ((lambda (_L14279_ _L14280_)
                                   (let* ((_ctx14293_
                                           (gx#syntax-local-e__0 _L14280_))
                                          (_code14295_
                                           (##structure-ref
                                            _ctx14293_
                                            '11
                                            gx#module-context::t
                                            '#f)))
                                     (call-with-parameters
                                      (lambda () (gxc#compile-e _code14295_))
                                      gx#current-expander-context
                                      _ctx14293_)))
                                 _tl1425314276_
                                 _hd1425214274_)))
                            (_g1424414258_ _g1424514261_))))
                    (_g1424414258_ _g1424514261_)))))
        (_g1424314299_ _stx14242_))))
  (define gxc#generate-ssxi-define-values%
    (lambda (_stx14052_)
      (letrec ((_generate-e14054_
                (lambda (_id14231_)
                  (let* ((_sym14233_
                          (if (gx#identifier? (gx#datum->syntax__0 '#f 'id))
                              (gxc#generate-runtime-binding-id _id14231_)
                              '#f))
                         (_$e14235_
                          (if _sym14233_
                              (gxc#optimizer-lookup-type _sym14233_)
                              '#f)))
                    (if _$e14235_
                        ((lambda (_type14238_)
                           (begin
                             (gxc#verbose '"generate typedecl " _sym14233_)
                             (let ((_typedecl14240_
                                    (call-method _type14238_ 'typedecl)))
                               (cons 'declare-type
                                     (cons _sym14233_
                                           (cons _typedecl14240_ '()))))))
                         _$e14235_)
                        '(begin))))))
        (let* ((_g1405714095_
                (lambda (_g1405814092_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1405814092_)))
               (_g1405614176_
                (lambda (_g1405814098_)
                  (if (gx#stx-pair? _g1405814098_)
                      (let ((_e1407314100_ (gx#stx-e _g1405814098_)))
                        (let ((_hd1407414103_ (##car _e1407314100_))
                              (_tl1407514105_ (##cdr _e1407314100_)))
                          (if (gx#stx-pair? _tl1407514105_)
                              (let ((_e1407614108_ (gx#stx-e _tl1407514105_)))
                                (let ((_hd1407714111_ (##car _e1407614108_))
                                      (_tl1407814113_ (##cdr _e1407614108_)))
                                  (if (gx#stx-pair/null? _hd1407714111_)
                                      (if (fx>= (gx#stx-length _hd1407714111_)
                                                '0)
                                          (let ((_g23711_
                                                 (gx#syntax-split-splice
                                                  _hd1407714111_
                                                  '0)))
                                            (begin
                                              (let ((_g23712_
                                                     (values-count _g23711_)))
                                                (if (not (fx= _g23712_ 2))
                                                    (error "Context expects 2 values"
                                                           _g23712_)))
                                              (let ((_target1407914116_
                                                     (values-ref _g23711_ 0))
                                                    (_tl1408114118_
                                                     (values-ref _g23711_ 1)))
                                                (if (gx#stx-null?
                                                     _tl1408114118_)
                                                    (letrec ((_loop1408214121_
                                                              (lambda (_hd1408014124_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _id1408614126_)
                        (if (gx#stx-pair? _hd1408014124_)
                            (let ((_e1408314129_ (gx#stx-e _hd1408014124_)))
                              (let ((_lp-hd1408414132_ (##car _e1408314129_))
                                    (_lp-tl1408514134_ (##cdr _e1408314129_)))
                                (_loop1408214121_
                                 _lp-tl1408514134_
                                 (cons _lp-hd1408414132_ _id1408614126_))))
                            (let ((_id1408714137_ (reverse _id1408614126_)))
                              (if (gx#stx-pair? _tl1407814113_)
                                  (let ((_e1408814140_
                                         (gx#stx-e _tl1407814113_)))
                                    (let ((_hd1408914143_
                                           (##car _e1408814140_))
                                          (_tl1409014145_
                                           (##cdr _e1408814140_)))
                                      (if (gx#stx-null? _tl1409014145_)
                                          ((lambda (_L14148_)
                                             (let ((_types14174_
                                                    (map _generate-e14054_
                                                         (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g1416614169_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g1416714171_)
                             (cons _g1416614169_ _g1416714171_))
                           '()
                           _L14148_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons 'begin _types14174_)))
                                           _id1408714137_)
                                          (_g1405714095_ _g1405814098_))))
                                  (_g1405714095_ _g1405814098_)))))))
              (_loop1408214121_ _target1407914116_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1405714095_
                                                     _g1405814098_)))))
                                          (_g1405714095_ _g1405814098_))
                                      (_g1405714095_ _g1405814098_))))
                              (_g1405714095_ _g1405814098_))))
                      (_g1405714095_ _g1405814098_))))
               (_g1405514228_
                (lambda (_g1405814179_)
                  (if (gx#stx-pair? _g1405814179_)
                      (let ((_e1406014181_ (gx#stx-e _g1405814179_)))
                        (let ((_hd1406114184_ (##car _e1406014181_))
                              (_tl1406214186_ (##cdr _e1406014181_)))
                          (if (gx#stx-pair? _tl1406214186_)
                              (let ((_e1406314189_ (gx#stx-e _tl1406214186_)))
                                (let ((_hd1406414192_ (##car _e1406314189_))
                                      (_tl1406514194_ (##cdr _e1406314189_)))
                                  (if (gx#stx-pair? _hd1406414192_)
                                      (let ((_e1406614197_
                                             (gx#stx-e _hd1406414192_)))
                                        (let ((_hd1406714200_
                                               (##car _e1406614197_))
                                              (_tl1406814202_
                                               (##cdr _e1406614197_)))
                                          (if (gx#stx-null? _tl1406814202_)
                                              (if (gx#stx-pair? _tl1406514194_)
                                                  (let ((_e1406914205_
                                                         (gx#stx-e
                                                          _tl1406514194_)))
                                                    (let ((_hd1407014208_
                                                           (##car _e1406914205_))
                                                          (_tl1407114210_
                                                           (##cdr _e1406914205_)))
                                                      (if (gx#stx-null?
                                                           _tl1407114210_)
                                                          ((lambda (_L14213_)
                                                             (_generate-e14054_
                                                              _L14213_))
                                                           _hd1406714200_)
                                                          (_g1405614176_
                                                           _g1405814179_))))
                                                  (_g1405614176_
                                                   _g1405814179_))
                                              (_g1405614176_ _g1405814179_))))
                                      (_g1405614176_ _g1405814179_))))
                              (_g1405614176_ _g1405814179_))))
                      (_g1405614176_ _g1405814179_)))))
          (_g1405514228_ _stx14052_)))))
  (define gxc#generate-ssxi-call%
    (lambda (_stx13606_)
      (let* ((_g1361013712_
              (lambda (_g1361113709_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1361113709_)))
             (_g1360913719_ (lambda (_g1361113715_) ((lambda () '(begin)))))
             (_g1360813869_
              (lambda (_g1361113722_)
                (if (gx#stx-pair? _g1361113722_)
                    (let ((_e1366913724_ (gx#stx-e _g1361113722_)))
                      (let ((_hd1367013727_ (##car _e1366913724_))
                            (_tl1367113729_ (##cdr _e1366913724_)))
                        (if (gx#stx-pair? _tl1367113729_)
                            (let ((_e1367213732_ (gx#stx-e _tl1367113729_)))
                              (let ((_hd1367313735_ (##car _e1367213732_))
                                    (_tl1367413737_ (##cdr _e1367213732_)))
                                (if (gx#stx-pair? _hd1367313735_)
                                    (let ((_e1367513740_
                                           (gx#stx-e _hd1367313735_)))
                                      (let ((_hd1367613743_
                                             (##car _e1367513740_))
                                            (_tl1367713745_
                                             (##cdr _e1367513740_)))
                                        (if (gx#identifier? _hd1367613743_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1367613743_)
                                                (if (gx#stx-pair?
                                                     _tl1367713745_)
                                                    (let ((_e1367813748_
                                                           (gx#stx-e
                                                            _tl1367713745_)))
                                                      (let ((_hd1367913751_
                                                             (##car _e1367813748_))
                                                            (_tl1368013753_
                                                             (##cdr _e1367813748_)))
                                                        (if (gx#stx-null?
                                                             _tl1368013753_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1367413737_)
                        (let ((_e1368113756_ (gx#stx-e _tl1367413737_)))
                          (let ((_hd1368213759_ (##car _e1368113756_))
                                (_tl1368313761_ (##cdr _e1368113756_)))
                            (if (gx#stx-pair? _hd1368213759_)
                                (let ((_e1368413764_
                                       (gx#stx-e _hd1368213759_)))
                                  (let ((_hd1368513767_ (##car _e1368413764_))
                                        (_tl1368613769_ (##cdr _e1368413764_)))
                                    (if (gx#identifier? _hd1368513767_)
                                        (if (gx#stx-eq? '%#ref _hd1368513767_)
                                            (if (gx#stx-pair? _tl1368613769_)
                                                (let ((_e1368713772_
                                                       (gx#stx-e
                                                        _tl1368613769_)))
                                                  (let ((_hd1368813775_
                                                         (##car _e1368713772_))
                                                        (_tl1368913777_
                                                         (##cdr _e1368713772_)))
                                                    (if (gx#stx-null?
                                                         _tl1368913777_)
                                                        (if (gx#stx-pair?
                                                             _tl1368313761_)
                                                            (let ((_e1369013780_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1368313761_)))
                      (let ((_hd1369113783_ (##car _e1369013780_))
                            (_tl1369213785_ (##cdr _e1369013780_)))
                        (if (gx#stx-pair? _hd1369113783_)
                            (let ((_e1369313788_ (gx#stx-e _hd1369113783_)))
                              (let ((_hd1369413791_ (##car _e1369313788_))
                                    (_tl1369513793_ (##cdr _e1369313788_)))
                                (if (gx#identifier? _hd1369413791_)
                                    (if (gx#stx-eq? '%#quote _hd1369413791_)
                                        (if (gx#stx-pair? _tl1369513793_)
                                            (let ((_e1369613796_
                                                   (gx#stx-e _tl1369513793_)))
                                              (let ((_hd1369713799_
                                                     (##car _e1369613796_))
                                                    (_tl1369813801_
                                                     (##cdr _e1369613796_)))
                                                (if (gx#stx-null?
                                                     _tl1369813801_)
                                                    (if (gx#stx-pair?
                                                         _tl1369213785_)
                                                        (let ((_e1369913804_
                                                               (gx#stx-e
                                                                _tl1369213785_)))
                                                          (let ((_hd1370013807_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1369913804_))
                        (_tl1370113809_ (##cdr _e1369913804_)))
                    (if (gx#stx-pair? _hd1370013807_)
                        (let ((_e1370213812_ (gx#stx-e _hd1370013807_)))
                          (let ((_hd1370313815_ (##car _e1370213812_))
                                (_tl1370413817_ (##cdr _e1370213812_)))
                            (if (gx#identifier? _hd1370313815_)
                                (if (gx#stx-eq? '%#ref _hd1370313815_)
                                    (if (gx#stx-pair? _tl1370413817_)
                                        (let ((_e1370513820_
                                               (gx#stx-e _tl1370413817_)))
                                          (let ((_hd1370613823_
                                                 (##car _e1370513820_))
                                                (_tl1370713825_
                                                 (##cdr _e1370513820_)))
                                            (if (gx#stx-null? _tl1370713825_)
                                                (if (gx#stx-null?
                                                     _tl1370113809_)
                                                    ((lambda (_L13828_
                                                              _L13829_
                                                              _L13830_
                                                              _L13831_)
                                                       (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax__0 '#f '-bind-method))
                        'bind-method!)
                   (cons 'declare-method
                         (cons (gxc#generate-runtime-binding-id _L13830_)
                               (cons (gx#stx-e _L13829_)
                                     (cons (gxc#generate-runtime-binding-id
                                            _L13828_)
                                           (cons '#f '())))))
                   (_g1360913719_ _g1361113722_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd1370613823_
                                                     _hd1369713799_
                                                     _hd1368813775_
                                                     _hd1367913751_)
                                                    (_g1360913719_
                                                     _g1361113722_))
                                                (_g1360913719_
                                                 _g1361113722_))))
                                        (_g1360913719_ _g1361113722_))
                                    (_g1360913719_ _g1361113722_))
                                (_g1360913719_ _g1361113722_))))
                        (_g1360913719_ _g1361113722_))))
                (_g1360913719_ _g1361113722_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1360913719_
                                                     _g1361113722_))))
                                            (_g1360913719_ _g1361113722_))
                                        (_g1360913719_ _g1361113722_))
                                    (_g1360913719_ _g1361113722_))))
                            (_g1360913719_ _g1361113722_))))
                    (_g1360913719_ _g1361113722_))
                (_g1360913719_ _g1361113722_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1360913719_ _g1361113722_))
                                            (_g1360913719_ _g1361113722_))
                                        (_g1360913719_ _g1361113722_))))
                                (_g1360913719_ _g1361113722_))))
                        (_g1360913719_ _g1361113722_))
                    (_g1360913719_ _g1361113722_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1360913719_
                                                     _g1361113722_))
                                                (_g1360913719_ _g1361113722_))
                                            (_g1360913719_ _g1361113722_))))
                                    (_g1360913719_ _g1361113722_))))
                            (_g1360913719_ _g1361113722_))))
                    (_g1360913719_ _g1361113722_))))
             (_g1360714049_
              (lambda (_g1361113872_)
                (if (gx#stx-pair? _g1361113872_)
                    (let ((_e1361713874_ (gx#stx-e _g1361113872_)))
                      (let ((_hd1361813877_ (##car _e1361713874_))
                            (_tl1361913879_ (##cdr _e1361713874_)))
                        (if (gx#stx-pair? _tl1361913879_)
                            (let ((_e1362013882_ (gx#stx-e _tl1361913879_)))
                              (let ((_hd1362113885_ (##car _e1362013882_))
                                    (_tl1362213887_ (##cdr _e1362013882_)))
                                (if (gx#stx-pair? _hd1362113885_)
                                    (let ((_e1362313890_
                                           (gx#stx-e _hd1362113885_)))
                                      (let ((_hd1362413893_
                                             (##car _e1362313890_))
                                            (_tl1362513895_
                                             (##cdr _e1362313890_)))
                                        (if (gx#identifier? _hd1362413893_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1362413893_)
                                                (if (gx#stx-pair?
                                                     _tl1362513895_)
                                                    (let ((_e1362613898_
                                                           (gx#stx-e
                                                            _tl1362513895_)))
                                                      (let ((_hd1362713901_
                                                             (##car _e1362613898_))
                                                            (_tl1362813903_
                                                             (##cdr _e1362613898_)))
                                                        (if (gx#stx-null?
                                                             _tl1362813903_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1362213887_)
                        (let ((_e1362913906_ (gx#stx-e _tl1362213887_)))
                          (let ((_hd1363013909_ (##car _e1362913906_))
                                (_tl1363113911_ (##cdr _e1362913906_)))
                            (if (gx#stx-pair? _hd1363013909_)
                                (let ((_e1363213914_
                                       (gx#stx-e _hd1363013909_)))
                                  (let ((_hd1363313917_ (##car _e1363213914_))
                                        (_tl1363413919_ (##cdr _e1363213914_)))
                                    (if (gx#identifier? _hd1363313917_)
                                        (if (gx#stx-eq? '%#ref _hd1363313917_)
                                            (if (gx#stx-pair? _tl1363413919_)
                                                (let ((_e1363513922_
                                                       (gx#stx-e
                                                        _tl1363413919_)))
                                                  (let ((_hd1363613925_
                                                         (##car _e1363513922_))
                                                        (_tl1363713927_
                                                         (##cdr _e1363513922_)))
                                                    (if (gx#stx-null?
                                                         _tl1363713927_)
                                                        (if (gx#stx-pair?
                                                             _tl1363113911_)
                                                            (let ((_e1363813930_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1363113911_)))
                      (let ((_hd1363913933_ (##car _e1363813930_))
                            (_tl1364013935_ (##cdr _e1363813930_)))
                        (if (gx#stx-pair? _hd1363913933_)
                            (let ((_e1364113938_ (gx#stx-e _hd1363913933_)))
                              (let ((_hd1364213941_ (##car _e1364113938_))
                                    (_tl1364313943_ (##cdr _e1364113938_)))
                                (if (gx#identifier? _hd1364213941_)
                                    (if (gx#stx-eq? '%#quote _hd1364213941_)
                                        (if (gx#stx-pair? _tl1364313943_)
                                            (let ((_e1364413946_
                                                   (gx#stx-e _tl1364313943_)))
                                              (let ((_hd1364513949_
                                                     (##car _e1364413946_))
                                                    (_tl1364613951_
                                                     (##cdr _e1364413946_)))
                                                (if (gx#stx-null?
                                                     _tl1364613951_)
                                                    (if (gx#stx-pair?
                                                         _tl1364013935_)
                                                        (let ((_e1364713954_
                                                               (gx#stx-e
                                                                _tl1364013935_)))
                                                          (let ((_hd1364813957_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1364713954_))
                        (_tl1364913959_ (##cdr _e1364713954_)))
                    (if (gx#stx-pair? _hd1364813957_)
                        (let ((_e1365013962_ (gx#stx-e _hd1364813957_)))
                          (let ((_hd1365113965_ (##car _e1365013962_))
                                (_tl1365213967_ (##cdr _e1365013962_)))
                            (if (gx#identifier? _hd1365113965_)
                                (if (gx#stx-eq? '%#ref _hd1365113965_)
                                    (if (gx#stx-pair? _tl1365213967_)
                                        (let ((_e1365313970_
                                               (gx#stx-e _tl1365213967_)))
                                          (let ((_hd1365413973_
                                                 (##car _e1365313970_))
                                                (_tl1365513975_
                                                 (##cdr _e1365313970_)))
                                            (if (gx#stx-null? _tl1365513975_)
                                                (if (gx#stx-pair?
                                                     _tl1364913959_)
                                                    (let ((_e1365613978_
                                                           (gx#stx-e
                                                            _tl1364913959_)))
                                                      (let ((_hd1365713981_
                                                             (##car _e1365613978_))
                                                            (_tl1365813983_
                                                             (##cdr _e1365613978_)))
                                                        (if (gx#stx-pair?
                                                             _hd1365713981_)
                                                            (let ((_e1365913986_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1365713981_)))
                      (let ((_hd1366013989_ (##car _e1365913986_))
                            (_tl1366113991_ (##cdr _e1365913986_)))
                        (if (gx#identifier? _hd1366013989_)
                            (if (gx#stx-eq? '%#quote _hd1366013989_)
                                (if (gx#stx-pair? _tl1366113991_)
                                    (let ((_e1366213994_
                                           (gx#stx-e _tl1366113991_)))
                                      (let ((_hd1366313997_
                                             (##car _e1366213994_))
                                            (_tl1366413999_
                                             (##cdr _e1366213994_)))
                                        (if (gx#stx-null? _tl1366413999_)
                                            (if (gx#stx-null? _tl1365813983_)
                                                ((lambda (_L14002_
                                                          _L14003_
                                                          _L14004_
                                                          _L14005_
                                                          _L14006_)
                                                   (if (eq? (gxc#generate-runtime-binding-id
                                                             _L14006_)
                                                            'bind-method!)
                                                       (cons 'declare-method
                                                             (cons (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L14005_)
                           (cons (gx#stx-e _L14004_)
                                 (cons (gxc#generate-runtime-binding-id
                                        _L14003_)
                                       (cons (gx#stx-e _L14002_) '())))))
               (_g1360813869_ _g1361113872_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1366313997_
                                                 _hd1365413973_
                                                 _hd1364513949_
                                                 _hd1363613925_
                                                 _hd1362713901_)
                                                (_g1360813869_ _g1361113872_))
                                            (_g1360813869_ _g1361113872_))))
                                    (_g1360813869_ _g1361113872_))
                                (_g1360813869_ _g1361113872_))
                            (_g1360813869_ _g1361113872_))))
                    (_g1360813869_ _g1361113872_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1360813869_
                                                     _g1361113872_))
                                                (_g1360813869_
                                                 _g1361113872_))))
                                        (_g1360813869_ _g1361113872_))
                                    (_g1360813869_ _g1361113872_))
                                (_g1360813869_ _g1361113872_))))
                        (_g1360813869_ _g1361113872_))))
                (_g1360813869_ _g1361113872_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1360813869_
                                                     _g1361113872_))))
                                            (_g1360813869_ _g1361113872_))
                                        (_g1360813869_ _g1361113872_))
                                    (_g1360813869_ _g1361113872_))))
                            (_g1360813869_ _g1361113872_))))
                    (_g1360813869_ _g1361113872_))
                (_g1360813869_ _g1361113872_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1360813869_ _g1361113872_))
                                            (_g1360813869_ _g1361113872_))
                                        (_g1360813869_ _g1361113872_))))
                                (_g1360813869_ _g1361113872_))))
                        (_g1360813869_ _g1361113872_))
                    (_g1360813869_ _g1361113872_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1360813869_
                                                     _g1361113872_))
                                                (_g1360813869_ _g1361113872_))
                                            (_g1360813869_ _g1361113872_))))
                                    (_g1360813869_ _g1361113872_))))
                            (_g1360813869_ _g1361113872_))))
                    (_g1360813869_ _g1361113872_)))))
        (_g1360714049_ _stx13606_))))
  (define gxc#!alias::typedecl
    (lambda (_self13582_)
      (let* ((_self1358313589_ _self13582_)
             (_E1358513593_
              (lambda () (error '"No clause matching" _self1358313589_)))
             (_K1358613598_
              (lambda (_alias-id13596_)
                (cons '@alias (cons _alias-id13596_ '())))))
        (if (##structure-instance-of?
             _self1358313589_
             (##type-id gxc#!alias::t))
            (let* ((_e1358713601_ (##vector-ref _self1358313589_ '1))
                   (_alias-id13604_ _e1358713601_))
              (_K1358613598_ _alias-id13604_))
            (_E1358513593_)))))
  (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f)
  (define gxc#!struct-type::typedecl
    (lambda (_self13404_)
      (let* ((_self1340513416_ _self13404_)
             (_E1340713420_
              (lambda () (error '"No clause matching" _self1340513416_)))
             (_K1340813429_
              (lambda (_plist13423_
                       _ctor13424_
                       _fields13425_
                       _super13426_
                       _type-id13427_)
                (cons '@struct-type
                      (cons _type-id13427_
                            (cons _super13426_
                                  (cons _fields13425_
                                        (cons _ctor13424_
                                              (cons _plist13423_ '())))))))))
        (if (##structure-instance-of?
             _self1340513416_
             (##type-id gxc#!struct-type::t))
            (let* ((_e1340913432_ (##vector-ref _self1340513416_ '1))
                   (_type-id13435_ _e1340913432_)
                   (_e1341013437_ (##vector-ref _self1340513416_ '2))
                   (_super13440_ _e1341013437_)
                   (_e1341113442_ (##vector-ref _self1340513416_ '3))
                   (_fields13445_ _e1341113442_)
                   (_e1341213447_ (##vector-ref _self1340513416_ '4))
                   (_e1341313450_ (##vector-ref _self1340513416_ '5))
                   (_ctor13453_ _e1341313450_)
                   (_e1341413455_ (##vector-ref _self1340513416_ '6))
                   (_plist13458_ _e1341413455_))
              (_K1340813429_
               _plist13458_
               _ctor13453_
               _fields13445_
               _super13440_
               _type-id13435_))
            (_E1340713420_)))))
  (bind-method! gxc#!struct-type::t 'typedecl gxc#!struct-type::typedecl '#f)
  (define gxc#!struct-pred::typedecl
    (lambda (_self13258_)
      (let* ((_self1325913265_ _self13258_)
             (_E1326113269_
              (lambda () (error '"No clause matching" _self1325913265_)))
             (_K1326213274_
              (lambda (_struct-t13272_)
                (cons '@struct-pred (cons _struct-t13272_ '())))))
        (if (##structure-instance-of?
             _self1325913265_
             (##type-id gxc#!struct-pred::t))
            (let* ((_e1326313277_ (##vector-ref _self1325913265_ '1))
                   (_struct-t13280_ _e1326313277_))
              (_K1326213274_ _struct-t13280_))
            (_E1326113269_)))))
  (bind-method! gxc#!struct-pred::t 'typedecl gxc#!struct-pred::typedecl '#f)
  (define gxc#!struct-cons::typedecl
    (lambda (_self13112_)
      (let* ((_self1311313119_ _self13112_)
             (_E1311513123_
              (lambda () (error '"No clause matching" _self1311313119_)))
             (_K1311613128_
              (lambda (_struct-t13126_)
                (cons '@struct-cons (cons _struct-t13126_ '())))))
        (if (##structure-instance-of?
             _self1311313119_
             (##type-id gxc#!struct-cons::t))
            (let* ((_e1311713131_ (##vector-ref _self1311313119_ '1))
                   (_struct-t13134_ _e1311713131_))
              (_K1311613128_ _struct-t13134_))
            (_E1311513123_)))))
  (bind-method! gxc#!struct-cons::t 'typedecl gxc#!struct-cons::typedecl '#f)
  (define gxc#!struct-getf::typedecl
    (lambda (_self12952_)
      (let* ((_self1295312961_ _self12952_)
             (_E1295512965_
              (lambda () (error '"No clause matching" _self1295312961_)))
             (_K1295612972_
              (lambda (_unchecked?12968_ _off12969_ _struct-t12970_)
                (cons '@struct-getf
                      (cons _struct-t12970_
                            (cons _off12969_ (cons _unchecked?12968_ '())))))))
        (if (##structure-instance-of?
             _self1295312961_
             (##type-id gxc#!struct-getf::t))
            (let* ((_e1295712975_ (##vector-ref _self1295312961_ '1))
                   (_struct-t12978_ _e1295712975_)
                   (_e1295812980_ (##vector-ref _self1295312961_ '2))
                   (_off12983_ _e1295812980_)
                   (_e1295912985_ (##vector-ref _self1295312961_ '3))
                   (_unchecked?12988_ _e1295912985_))
              (_K1295612972_ _unchecked?12988_ _off12983_ _struct-t12978_))
            (_E1295512965_)))))
  (bind-method! gxc#!struct-getf::t 'typedecl gxc#!struct-getf::typedecl '#f)
  (define gxc#!struct-setf::typedecl
    (lambda (_self12792_)
      (let* ((_self1279312801_ _self12792_)
             (_E1279512805_
              (lambda () (error '"No clause matching" _self1279312801_)))
             (_K1279612812_
              (lambda (_unchecked?12808_ _off12809_ _struct-t12810_)
                (cons '@struct-setf
                      (cons _struct-t12810_
                            (cons _off12809_ (cons _unchecked?12808_ '())))))))
        (if (##structure-instance-of?
             _self1279312801_
             (##type-id gxc#!struct-setf::t))
            (let* ((_e1279712815_ (##vector-ref _self1279312801_ '1))
                   (_struct-t12818_ _e1279712815_)
                   (_e1279812820_ (##vector-ref _self1279312801_ '2))
                   (_off12823_ _e1279812820_)
                   (_e1279912825_ (##vector-ref _self1279312801_ '3))
                   (_unchecked?12828_ _e1279912825_))
              (_K1279612812_ _unchecked?12828_ _off12823_ _struct-t12818_))
            (_E1279512805_)))))
  (bind-method! gxc#!struct-setf::t 'typedecl gxc#!struct-setf::typedecl '#f)
  (define gxc#!lambda::typedecl
    (lambda (_self12618_)
      (let* ((_self1261912629_ _self12618_)
             (_E1262112633_
              (lambda () (error '"No clause matching" _self1261912629_)))
             (_K1262212644_
              (lambda (_typedecl12636_
                       _inline12637_
                       _dispatch12638_
                       _arity12639_)
                (if _inline12637_
                    (let ((_$e12641_ _typedecl12636_))
                      (if _$e12641_
                          _$e12641_
                          (error '"Cannot generate typedecl for inline rules")))
                    (cons '@lambda
                          (cons _arity12639_ (cons _dispatch12638_ '())))))))
        (if (##structure-instance-of?
             _self1261912629_
             (##type-id gxc#!lambda::t))
            (let* ((_e1262312647_ (##vector-ref _self1261912629_ '1))
                   (_e1262412650_ (##vector-ref _self1261912629_ '2))
                   (_arity12653_ _e1262412650_)
                   (_e1262512655_ (##vector-ref _self1261912629_ '3))
                   (_dispatch12658_ _e1262512655_)
                   (_e1262612660_ (##vector-ref _self1261912629_ '4))
                   (_inline12663_ _e1262612660_)
                   (_e1262712665_ (##vector-ref _self1261912629_ '5))
                   (_typedecl12668_ _e1262712665_))
              (_K1262212644_
               _typedecl12668_
               _inline12663_
               _dispatch12658_
               _arity12653_))
            (_E1262112633_)))))
  (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f)
  (define gxc#!case-lambda::typedecl
    (lambda (_self12429_)
      (letrec ((_clause-e12431_
                (lambda (_clause12461_)
                  (let* ((_clause1246212470_ _clause12461_)
                         (_E1246412474_
                          (lambda ()
                            (error '"No clause matching" _clause1246212470_)))
                         (_K1246512480_
                          (lambda (_dispatch12477_ _arity12478_)
                            (cons _arity12478_ (cons _dispatch12477_ '())))))
                    (if (##structure-instance-of?
                         _clause1246212470_
                         (##type-id gxc#!lambda::t))
                        (let* ((_e1246612483_
                                (##vector-ref _clause1246212470_ '1))
                               (_e1246712486_
                                (##vector-ref _clause1246212470_ '2))
                               (_arity12489_ _e1246712486_)
                               (_e1246812491_
                                (##vector-ref _clause1246212470_ '3))
                               (_dispatch12494_ _e1246812491_))
                          (_K1246512480_ _dispatch12494_ _arity12489_))
                        (_E1246412474_))))))
        (let* ((_self1243212439_ _self12429_)
               (_E1243412443_
                (lambda () (error '"No clause matching" _self1243212439_)))
               (_K1243512450_
                (lambda (_clauses12446_)
                  (let ((_clauses12448_ (map _clause-e12431_ _clauses12446_)))
                    (cons '@case-lambda _clauses12448_)))))
          (if (##structure-instance-of?
               _self1243212439_
               (##type-id gxc#!case-lambda::t))
              (let* ((_e1243612453_ (##vector-ref _self1243212439_ '1))
                     (_e1243712456_ (##vector-ref _self1243212439_ '2))
                     (_clauses12459_ _e1243712456_))
                (_K1243512450_ _clauses12459_))
              (_E1243412443_))))))
  (bind-method! gxc#!case-lambda::t 'typedecl gxc#!case-lambda::typedecl '#f)
  (define gxc#identifier-symbol
    (lambda (_stx12305_) (gxc#generate-runtime-binding-id _stx12305_))))
