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
    (lambda _$args23605_
      (apply make-struct-instance gxc#optimizer-info::t _$args23605_)))
  (define gxc#optimizer-info-type
    (make-struct-field-accessor gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi
    (make-struct-field-accessor gxc#optimizer-info::t '1))
  (define gxc#optimizer-info-type-set!
    (make-struct-field-mutator gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi-set!
    (make-struct-field-mutator gxc#optimizer-info::t '1))
  (define gxc#optimizer-info:::init!
    (lambda (_self23603_)
      (if (##fx< '2 (##vector-length _self23603_))
          (begin
            (##vector-set! _self23603_ '1 (make-hash-table-eq))
            (##vector-set! _self23603_ '2 (make-hash-table-eq)))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self23603_))))
  (bind-method! gxc#optimizer-info::t ':init! gxc#optimizer-info:::init! '#f)
  (define gxc#optimizer-info-init!
    (lambda ()
      (if (gxc#current-compile-optimizer-info)
          '#!void
          (gxc#current-compile-optimizer-info
           (let ((__obj23617 (make-object gxc#optimizer-info::t '2)))
             (begin (gxc#optimizer-info:::init! __obj23617) __obj23617))))))
  (define gxc#optimize!
    (lambda (_ctx23475_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#optimizer-load-ssxi-deps _ctx23475_)
           (table-set!
            (##structure-ref
             (gxc#current-compile-optimizer-info)
             '2
             gxc#optimizer-info::t
             '#f)
            (##structure-ref _ctx23475_ '1 gx#expander-context::t '#f)
            '#t)
           (let ((_code23478_
                  (gxc#optimize-source
                   (##structure-ref _ctx23475_ '11 gx#module-context::t '#f))))
             (##structure-set!
              _ctx23475_
              _code23478_
              '11
              gx#module-context::t
              '#f))))
       gxc#current-compile-mutators
       (make-hash-table-eq)
       gxc#current-compile-local-type
       (make-hash-table-eq))))
  (define gxc#optimizer-load-ssxi-deps
    (lambda (_ctx23420_)
      (letrec* ((_deps23422_
                 (let* ((_imports23466_
                         (##structure-ref
                          _ctx23420_
                          '8
                          gx#module-context::t
                          '#f))
                        (_$e23468_ (gx#core-context-prelude__% _ctx23420_)))
                   (if _$e23468_
                       ((lambda (_g2347023472_)
                          (cons _g2347023472_ _imports23466_))
                        _$e23468_)
                       _imports23466_))))
        (let _lp23424_ ((_rest23426_ _deps23422_))
          (let* ((_rest2342723435_ _rest23426_)
                 (_E2343023439_
                  (lambda () (error '"No clause matching" _rest2342723435_)))
                 (_else2342923443_ (lambda () '#!void))
                 (_K2343123454_
                  (lambda (_rest23446_ _hd23447_)
                    (if (##structure-instance-of?
                         _hd23447_
                         'gx#module-context::t)
                        (begin
                          (if (table-ref
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)
                               (##structure-ref
                                _hd23447_
                                '1
                                gx#expander-context::t
                                '#f)
                               '#f)
                              '#!void
                              (begin
                                (let ((_$e23449_
                                       (gx#core-context-prelude__% _hd23447_)))
                                  (if _$e23449_
                                      ((lambda (_pre23452_)
                                         (_lp23424_
                                          (cons _pre23452_
                                                (##structure-ref
                                                 _hd23447_
                                                 '8
                                                 gx#module-context::t
                                                 '#f))))
                                       _$e23449_)
                                      (_lp23424_
                                       (##structure-ref
                                        _hd23447_
                                        '8
                                        gx#module-context::t
                                        '#f))))
                                (gxc#optimizer-load-ssxi _hd23447_)))
                          (_lp23424_ _rest23446_))
                        (if (##structure-instance-of?
                             _hd23447_
                             'gx#prelude-context::t)
                            (begin
                              (if (table-ref
                                   (##structure-ref
                                    (gxc#current-compile-optimizer-info)
                                    '2
                                    gxc#optimizer-info::t
                                    '#f)
                                   (##structure-ref
                                    _hd23447_
                                    '1
                                    gx#expander-context::t
                                    '#f)
                                   '#f)
                                  '#!void
                                  (begin
                                    (_lp23424_
                                     (##structure-ref
                                      _hd23447_
                                      '7
                                      gx#prelude-context::t
                                      '#f))
                                    (gxc#optimizer-load-ssxi _hd23447_)))
                              (_lp23424_ _rest23446_))
                            (if (##structure-direct-instance-of?
                                 _hd23447_
                                 'gx#module-import::t)
                                (_lp23424_
                                 (cons (##direct-structure-ref
                                        _hd23447_
                                        '1
                                        gx#module-import::t
                                        '#f)
                                       _rest23446_))
                                (if (##structure-direct-instance-of?
                                     _hd23447_
                                     'gx#module-export::t)
                                    (_lp23424_
                                     (cons (##direct-structure-ref
                                            _hd23447_
                                            '1
                                            gx#module-export::t
                                            '#f)
                                           _rest23446_))
                                    (if (##structure-direct-instance-of?
                                         _hd23447_
                                         'gx#import-set::t)
                                        (_lp23424_
                                         (cons (##direct-structure-ref
                                                _hd23447_
                                                '1
                                                gx#import-set::t
                                                '#f)
                                               _rest23446_))
                                        (error '"Unexpected module import"
                                               _hd23447_)))))))))
            (if (##pair? _rest2342723435_)
                (let ((_hd2343223457_ (##car _rest2342723435_))
                      (_tl2343323459_ (##cdr _rest2342723435_)))
                  (let* ((_hd23462_ _hd2343223457_)
                         (_rest23464_ _tl2343323459_))
                    (_K2343123454_ _rest23464_ _hd23462_)))
                (_else2342923443_)))))))
  (define gxc#optimizer-load-ssxi
    (lambda (_ctx23400_)
      (if (if (##structure-instance-of? _ctx23400_ 'gx#module-context::t)
              (list? (##structure-ref _ctx23400_ '7 gx#module-context::t '#f))
              '#f)
          '#!void
          (let* ((_ht23402_
                  (##structure-ref
                   (gxc#current-compile-optimizer-info)
                   '2
                   gxc#optimizer-info::t
                   '#f))
                 (_id23404_
                  (##structure-ref _ctx23400_ '1 gx#expander-context::t '#f))
                 (_mod23406_ (table-ref _ht23402_ _id23404_ '#f)))
            (let ((_$e23409_ _mod23406_))
              (if _$e23409_
                  _$e23409_
                  (let* ((_mod23412_ (gxc#optimizer-import-ssxi _ctx23400_))
                         (_val23417_
                          (let ((_$e23414_ _mod23412_))
                            (if _$e23414_ _$e23414_ '#!void))))
                    (begin
                      (table-set! _ht23402_ _id23404_ _val23417_)
                      _val23417_))))))))
  (define gxc#optimizer-import-ssxi
    (lambda (_ctx23377_)
      (letrec ((_catch-e23379_
                (lambda (_exn23398_)
                  (begin
                    (if (gxc#current-compile-verbose)
                        (begin
                          (displayln
                           '"Failed to load ssxi module for "
                           (##structure-ref
                            _ctx23377_
                            '1
                            gx#expander-context::t
                            '#f))
                          (display-exception _exn23398_))
                        '#!void)
                    '#f)))
               (_import-e23380_
                (lambda ()
                  (let* ((_str-id23383_
                          (string-append
                           (symbol->string
                            (##structure-ref
                             _ctx23377_
                             '1
                             gx#expander-context::t
                             '#f))
                           '".ssxi"))
                         (_artefact-path23391_
                          (let ((_odir2338423386_
                                 (gxc#current-compile-output-dir)))
                            (if _odir2338423386_
                                (let ((_odir23389_ _odir2338423386_))
                                  (path-expand
                                   (string-append _str-id23383_ '".ss")
                                   _odir23389_))
                                '#f)))
                         (_library-path23393_
                          (string->symbol
                           (string-append '":" _str-id23383_ '".ss")))
                         (_ssxi-path23395_
                          (if (if _artefact-path23391_
                                  (file-exists? _artefact-path23391_)
                                  '#f)
                              _artefact-path23391_
                              _library-path23393_)))
                    (begin
                      (gxc#verbose '"Loading ssxi module " _ssxi-path23395_)
                      (gx#import-module__% _ssxi-path23395_ '#t '#t))))))
        (if (##structure-ref _ctx23377_ '1 gx#expander-context::t '#f)
            (with-exception-catcher _catch-e23379_ _import-e23380_)
            '#f))))
  (define gxc#!type::t
    (make-struct-type 'gxc#!type::t '#f '1 '!type '() '#f '(id)))
  (define gxc#!type? (make-struct-predicate gxc#!type::t))
  (define gxc#make-!type
    (lambda _$args23374_
      (apply make-struct-instance gxc#!type::t _$args23374_)))
  (define gxc#!type-id (make-struct-field-accessor gxc#!type::t '0))
  (define gxc#!type-id-set! (make-struct-field-mutator gxc#!type::t '0))
  (define gxc#!alias::t
    (make-struct-type 'gxc#!alias::t gxc#!type::t '0 '!alias '() '#f '()))
  (define gxc#!alias? (make-struct-predicate gxc#!alias::t))
  (define gxc#make-!alias
    (lambda _$args23371_
      (apply make-struct-instance gxc#!alias::t _$args23371_)))
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
    (lambda _$args23368_
      (apply make-struct-instance gxc#!struct-type::t _$args23368_)))
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
    (lambda _$args23365_
      (apply make-struct-instance gxc#!procedure::t _$args23365_)))
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
    (lambda _$args23362_
      (apply make-struct-instance gxc#!struct-pred::t _$args23362_)))
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
    (lambda _$args23359_
      (apply make-struct-instance gxc#!struct-cons::t _$args23359_)))
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
    (lambda _$args23356_
      (apply make-struct-instance gxc#!struct-getf::t _$args23356_)))
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
    (lambda _$args23353_
      (apply make-struct-instance gxc#!struct-setf::t _$args23353_)))
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
    (lambda _$args23350_
      (apply make-struct-instance gxc#!lambda::t _$args23350_)))
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
    (lambda _$args23347_
      (apply make-struct-instance gxc#!case-lambda::t _$args23347_)))
  (define gxc#!case-lambda-clauses
    (make-struct-field-accessor gxc#!case-lambda::t '0))
  (define gxc#!case-lambda-clauses-set!
    (make-struct-field-mutator gxc#!case-lambda::t '0))
  (define gxc#!struct-type:::init!
    (lambda (_self23339_
             _id23340_
             _super23341_
             _fields23342_
             _xfields23343_
             _ctor23344_
             _plist23345_)
      (if (##fx< '7 (##vector-length _self23339_))
          (begin
            (##vector-set! _self23339_ '1 _id23340_)
            (##vector-set! _self23339_ '2 _super23341_)
            (##vector-set! _self23339_ '3 _fields23342_)
            (##vector-set! _self23339_ '4 _xfields23343_)
            (##vector-set! _self23339_ '5 _ctor23344_)
            (##vector-set! _self23339_ '6 _plist23345_)
            (##vector-set! _self23339_ '7 '#f))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self23339_))))
  (bind-method! gxc#!struct-type::t ':init! gxc#!struct-type:::init! '#f)
  (begin
    (define gxc#!lambda:::init!__%
      (lambda (_self23183_
               _id23184_
               _arity23185_
               _dispatch23186_
               _inline23187_
               _typedecl23188_)
        (if (##fx< '5 (##vector-length _self23183_))
            (begin
              (##vector-set! _self23183_ '1 _id23184_)
              (##vector-set! _self23183_ '2 _arity23185_)
              (##vector-set! _self23183_ '3 _dispatch23186_)
              (##vector-set! _self23183_ '4 _inline23187_)
              (##vector-set! _self23183_ '5 _typedecl23188_))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self23183_))))
    (begin
      (define gxc#!lambda:::init!__0
        (lambda (_self23193_ _id23194_ _arity23195_ _dispatch23196_)
          (let* ((_inline23198_ '#f) (_typedecl23200_ '#f))
            (if (##fx< '5 (##vector-length _self23193_))
                (begin
                  (##vector-set! _self23193_ '1 _id23194_)
                  (##vector-set! _self23193_ '2 _arity23195_)
                  (##vector-set! _self23193_ '3 _dispatch23196_)
                  (##vector-set! _self23193_ '4 _inline23198_)
                  (##vector-set! _self23193_ '5 _typedecl23200_))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self23193_)))))
      (define gxc#!lambda:::init!__1
        (lambda (_self23202_
                 _id23203_
                 _arity23204_
                 _dispatch23205_
                 _inline23206_)
          (let ((_typedecl23208_ '#f))
            (if (##fx< '5 (##vector-length _self23202_))
                (begin
                  (##vector-set! _self23202_ '1 _id23203_)
                  (##vector-set! _self23202_ '2 _arity23204_)
                  (##vector-set! _self23202_ '3 _dispatch23205_)
                  (##vector-set! _self23202_ '4 _inline23206_)
                  (##vector-set! _self23202_ '5 _typedecl23208_))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self23202_)))))
      (define gxc#!lambda:::init!
        (lambda _g23625_
          (let ((_g23624_ (length _g23625_)))
            (cond ((fx= _g23624_ 4) (apply gxc#!lambda:::init!__0 _g23625_))
                  ((fx= _g23624_ 5) (apply gxc#!lambda:::init!__1 _g23625_))
                  ((fx= _g23624_ 6)
                   (apply (lambda (_self23210_
                                   _id23211_
                                   _arity23212_
                                   _dispatch23213_
                                   _inline23214_
                                   _typedecl23215_)
                            (if (##fx< '5 (##vector-length _self23210_))
                                (begin
                                  (##vector-set! _self23210_ '1 _id23211_)
                                  (##vector-set! _self23210_ '2 _arity23212_)
                                  (##vector-set!
                                   _self23210_
                                   '3
                                   _dispatch23213_)
                                  (##vector-set! _self23210_ '4 _inline23214_)
                                  (##vector-set!
                                   _self23210_
                                   '5
                                   _typedecl23215_))
                                (error '"struct-instance-init!: too many arguments for struct"
                                       _self23210_)))
                          _g23625_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#!lambda:::init!
                    _g23625_))))))))
  (bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f)
  (define gxc#!struct-type-vtab
    (lambda (_type23053_)
      (let ((_$e23055_
             (##structure-ref _type23053_ '7 gxc#!struct-type::t '#f)))
        (if _$e23055_
            (values _$e23055_)
            (let ((_vtab23058_ (make-hash-table-eq)))
              (begin
                (##structure-set!
                 _type23053_
                 _vtab23058_
                 '7
                 gxc#!struct-type::t
                 '#f)
                _vtab23058_))))))
  (define gxc#!struct-type-lookup-method
    (lambda (_type23044_ _method23045_)
      (let ((_vtab2304623048_
             (##structure-ref _type23044_ '7 gxc#!struct-type::t '#f)))
        (if _vtab2304623048_
            (let ((_vtab23051_ _vtab2304623048_))
              (table-ref _vtab23051_ _method23045_ '#f))
            '#f))))
  (begin
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym23028_ _type23029_ _local?23030_)
        (begin
          (if (##structure-instance-of? _type23029_ 'gxc#!type::t)
              '#!void
              (error '"bad declaration: expected !type"
                     _sym23028_
                     _type23029_))
          (gxc#verbose
           '"declare-type "
           _sym23028_
           '" "
           (struct->list _type23029_))
          (table-set!
           (if _local?23030_
               (gxc#current-compile-local-type)
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '1
                gxc#optimizer-info::t
                '#f))
           _sym23028_
           _type23029_))))
    (begin
      (define gxc#optimizer-declare-type!__0
        (lambda (_sym23035_ _type23036_)
          (let ((_local?23038_ '#f))
            (gxc#optimizer-declare-type!__%
             _sym23035_
             _type23036_
             _local?23038_))))
      (define gxc#optimizer-declare-type!
        (lambda _g23627_
          (let ((_g23626_ (length _g23627_)))
            (cond ((fx= _g23626_ 2)
                   (apply gxc#optimizer-declare-type!__0 _g23627_))
                  ((fx= _g23626_ 3)
                   (apply gxc#optimizer-declare-type!__% _g23627_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-declare-type!
                    _g23627_))))))))
  (begin
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t23004_ _method23005_ _sym23006_ _rebind?23007_)
        (let ((_type23009_ (gxc#optimizer-resolve-type _type-t23004_)))
          (if (##structure-instance-of? _type23009_ 'gxc#!struct-type::t)
              (let ((_vtab23011_ (gxc#!struct-type-vtab _type23009_)))
                (if _rebind?23007_
                    (if (hash-key? _vtab23011_ _method23005_)
                        (gxc#verbose
                         '"declare-method: [warning] skip rebind on existing method"
                         _type-t23004_
                         '" "
                         _method23005_)
                        (gxc#verbose
                         '"declare-method: skip rebind method "
                         _type-t23004_
                         '" "
                         _method23005_))
                    (if (hash-key? _vtab23011_ _method23005_)
                        (error '"declare-method: duplicate method declaration")
                        (begin
                          (gxc#verbose
                           '"declare-method "
                           _type-t23004_
                           '" "
                           _method23005_
                           '" => "
                           _sym23006_)
                          (table-set! _vtab23011_ _method23005_ _sym23006_)))))
              (if (not _type23009_)
                  (gxc#verbose '"declare-method: unknown type " _type-t23004_)
                  (error '"declare-method: bad method declaration; no method table"
                         _type-t23004_
                         _type23009_))))))
    (begin
      (define gxc#optimizer-declare-method!__0
        (lambda (_type-t23016_ _method23017_ _sym23018_)
          (let ((_rebind?23020_ '#f))
            (gxc#optimizer-declare-method!__%
             _type-t23016_
             _method23017_
             _sym23018_
             _rebind?23020_))))
      (define gxc#optimizer-declare-method!
        (lambda _g23629_
          (let ((_g23628_ (length _g23629_)))
            (cond ((fx= _g23628_ 3)
                   (apply gxc#optimizer-declare-method!__0 _g23629_))
                  ((fx= _g23628_ 4)
                   (apply gxc#optimizer-declare-method!__% _g23629_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-declare-method!
                    _g23629_))))))))
  (define gxc#optimizer-lookup-type
    (lambda (_sym22992_)
      (let ((_$e23000_
             (let ((_ht2299322995_ (gxc#current-compile-local-type)))
               (if _ht2299322995_
                   (let ((_ht22998_ _ht2299322995_))
                     (table-ref _ht22998_ _sym22992_ '#f))
                   '#f))))
        (if _$e23000_
            _$e23000_
            (table-ref
             (##structure-ref
              (gxc#current-compile-optimizer-info)
              '1
              gxc#optimizer-info::t
              '#f)
             _sym22992_
             '#f)))))
  (define gxc#optimizer-resolve-type
    (lambda (_sym22984_)
      (let ((_type2298522987_ (gxc#optimizer-lookup-type _sym22984_)))
        (if _type2298522987_
            (let ((_type22990_ _type2298522987_))
              (if (##structure-instance-of? _type22990_ 'gxc#!alias::t)
                  (gxc#optimizer-resolve-type
                   (##structure-ref _type22990_ '1 gxc#!type::t '#f))
                  _type22990_))
            '#f))))
  (define gxc#optimizer-lookup-method
    (lambda (_type-t22979_ _method22980_)
      (let ((_type22982_ (gxc#optimizer-resolve-type _type-t22979_)))
        (if (##structure-instance-of? _type22982_ 'gxc#!struct-type::t)
            (gxc#!struct-type-lookup-method _type22982_ _method22980_)
            '#f))))
  (define gxc#optimize-source
    (lambda (_stx22975_)
      (begin
        (gxc#apply-collect-mutators _stx22975_)
        (let ((_stx22977_ (gxc#apply-lift-top-lambdas _stx22975_)))
          (begin
            (gxc#apply-collect-type-info _stx22977_)
            (gxc#apply-optimize-call _stx22977_))))))
  (define gxc#&identity-expression
    (make-promise
     (lambda ()
       (let ((_tbl22972_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl22972_ '%#begin-annotation gxc#xform-identity)
           (table-set! _tbl22972_ '%#lambda gxc#xform-identity)
           (table-set! _tbl22972_ '%#case-lambda gxc#xform-identity)
           (table-set! _tbl22972_ '%#let-values gxc#xform-identity)
           (table-set! _tbl22972_ '%#letrec-values gxc#xform-identity)
           (table-set! _tbl22972_ '%#letrec*-values gxc#xform-identity)
           (table-set! _tbl22972_ '%#quote gxc#xform-identity)
           (table-set! _tbl22972_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl22972_ '%#call gxc#xform-identity)
           (table-set! _tbl22972_ '%#if gxc#xform-identity)
           (table-set! _tbl22972_ '%#ref gxc#xform-identity)
           (table-set! _tbl22972_ '%#set! gxc#xform-identity)
           (table-set! _tbl22972_ '%#struct-instance? gxc#xform-identity)
           (table-set!
            _tbl22972_
            '%#struct-direct-instance?
            gxc#xform-identity)
           (table-set! _tbl22972_ '%#struct-ref gxc#xform-identity)
           (table-set! _tbl22972_ '%#struct-set! gxc#xform-identity)
           (table-set! _tbl22972_ '%#struct-direct-ref gxc#xform-identity)
           (table-set! _tbl22972_ '%#struct-direct-set! gxc#xform-identity)
           (table-set! _tbl22972_ '%#struct-unchecked-ref gxc#xform-identity)
           (table-set! _tbl22972_ '%#struct-unchecked-set! gxc#xform-identity)
           _tbl22972_)))))
  (define gxc#&identity-special-form
    (make-promise
     (lambda ()
       (let ((_tbl22968_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl22968_ '%#begin gxc#xform-identity)
           (table-set! _tbl22968_ '%#begin-syntax gxc#xform-identity)
           (table-set! _tbl22968_ '%#begin-foreign gxc#xform-identity)
           (table-set! _tbl22968_ '%#module gxc#xform-identity)
           (table-set! _tbl22968_ '%#import gxc#xform-identity)
           (table-set! _tbl22968_ '%#export gxc#xform-identity)
           (table-set! _tbl22968_ '%#provide gxc#xform-identity)
           (table-set! _tbl22968_ '%#extern gxc#xform-identity)
           (table-set! _tbl22968_ '%#define-values gxc#xform-identity)
           (table-set! _tbl22968_ '%#define-syntax gxc#xform-identity)
           (table-set! _tbl22968_ '%#define-alias gxc#xform-identity)
           (table-set! _tbl22968_ '%#declare gxc#xform-identity)
           _tbl22968_)))))
  (define gxc#&identity
    (make-promise
     (lambda ()
       (let ((_tbl22964_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl22964_ (force gxc#&identity-special-form))
           (hash-copy! _tbl22964_ (force gxc#&identity-expression))
           _tbl22964_)))))
  (define gxc#&basic-xform-expression
    (make-promise
     (lambda ()
       (let ((_tbl22960_ (make-hash-table-eq)))
         (begin
           (table-set!
            _tbl22960_
            '%#begin-annotation
            gxc#xform-begin-annotation%)
           (table-set! _tbl22960_ '%#lambda gxc#xform-lambda%)
           (table-set! _tbl22960_ '%#case-lambda gxc#xform-case-lambda%)
           (table-set! _tbl22960_ '%#let-values gxc#xform-let-values%)
           (table-set! _tbl22960_ '%#letrec-values gxc#xform-let-values%)
           (table-set! _tbl22960_ '%#letrec*-values gxc#xform-let-values%)
           (table-set! _tbl22960_ '%#quote gxc#xform-identity)
           (table-set! _tbl22960_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl22960_ '%#call gxc#xform-operands)
           (table-set! _tbl22960_ '%#if gxc#xform-operands)
           (table-set! _tbl22960_ '%#ref gxc#xform-identity)
           (table-set! _tbl22960_ '%#set! gxc#xform-setq%)
           (table-set! _tbl22960_ '%#struct-instance? gxc#xform-operands)
           (table-set!
            _tbl22960_
            '%#struct-direct-instance?
            gxc#xform-operands)
           (table-set! _tbl22960_ '%#struct-ref gxc#xform-operands)
           (table-set! _tbl22960_ '%#struct-set! gxc#xform-operands)
           (table-set! _tbl22960_ '%#struct-direct-ref gxc#xform-operands)
           (table-set! _tbl22960_ '%#struct-direct-set! gxc#xform-operands)
           (table-set! _tbl22960_ '%#struct-unchecked-ref gxc#xform-operands)
           (table-set! _tbl22960_ '%#struct-unchecked-set! gxc#xform-operands)
           _tbl22960_)))))
  (define gxc#&basic-xform
    (make-promise
     (lambda ()
       (let ((_tbl22956_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl22956_ (force gxc#&basic-xform-expression))
           (hash-copy! _tbl22956_ (force gxc#&identity))
           (table-set! _tbl22956_ '%#begin gxc#xform-begin%)
           (table-set! _tbl22956_ '%#module gxc#xform-module%)
           (table-set! _tbl22956_ '%#define-values gxc#xform-define-values%)
           _tbl22956_)))))
  (define gxc#&collect-mutators
    (make-promise
     (lambda ()
       (let ((_tbl22952_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl22952_ (force gxc#&void))
           (table-set! _tbl22952_ '%#begin gxc#collect-begin%)
           (table-set! _tbl22952_ '%#module gxc#collect-module%)
           (table-set!
            _tbl22952_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl22952_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl22952_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl22952_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl22952_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl22952_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl22952_ '%#call gxc#collect-operands)
           (table-set! _tbl22952_ '%#if gxc#collect-operands)
           (table-set! _tbl22952_ '%#set! gxc#collect-mutators-setq%)
           (table-set! _tbl22952_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl22952_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl22952_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl22952_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl22952_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl22952_ '%#struct-direct-set! gxc#collect-operands)
           (table-set! _tbl22952_ '%#struct-unchecked-ref gxc#collect-operands)
           (table-set!
            _tbl22952_
            '%#struct-unchecked-set!
            gxc#collect-operands)
           _tbl22952_)))))
  (define gxc#apply-collect-mutators
    (lambda (_stx22945_ . _args22947_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx22945_ _args22947_))
       gxc#current-compile-methods
       (force gxc#&collect-mutators))))
  (define gxc#&lift-top-lambdas
    (make-promise
     (lambda ()
       (let ((_tbl22942_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl22942_ (force gxc#&basic-xform))
           (table-set!
            _tbl22942_
            '%#define-values
            gxc#lift-top-lambda-define-values%)
           (table-set!
            _tbl22942_
            '%#let-values
            gxc#lift-top-lambda-let-values%)
           (table-set!
            _tbl22942_
            '%#letrec-values
            gxc#lift-top-lambda-letrec-values%)
           (table-set!
            _tbl22942_
            '%#letrec*-values
            gxc#lift-top-lambda-letrec-values%)
           _tbl22942_)))))
  (define gxc#apply-lift-top-lambdas
    (lambda (_stx22935_ . _args22937_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx22935_ _args22937_))
       gxc#current-compile-methods
       (force gxc#&lift-top-lambdas))))
  (define gxc#&expression-subst
    (make-promise
     (lambda ()
       (let ((_tbl22932_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl22932_ (force gxc#&basic-xform-expression))
           (table-set! _tbl22932_ '%#begin gxc#xform-begin%)
           (table-set! _tbl22932_ '%#ref gxc#expression-subst-ref%)
           _tbl22932_)))))
  (define gxc#apply-expression-subst
    (lambda (_stx22925_ . _args22927_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx22925_ _args22927_))
       gxc#current-compile-methods
       (force gxc#&expression-subst))))
  (define gxc#&collect-type-info
    (make-promise
     (lambda ()
       (let ((_tbl22922_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl22922_ (force gxc#&void))
           (table-set! _tbl22922_ '%#begin gxc#collect-begin%)
           (table-set! _tbl22922_ '%#module gxc#collect-module%)
           (table-set!
            _tbl22922_
            '%#define-values
            gxc#collect-type-define-values%)
           (table-set!
            _tbl22922_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl22922_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl22922_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl22922_ '%#let-values gxc#collect-type-let-values%)
           (table-set!
            _tbl22922_
            '%#letrec-values
            gxc#collect-type-let-values%)
           (table-set!
            _tbl22922_
            '%#letrec*-values
            gxc#collect-type-let-values%)
           (table-set! _tbl22922_ '%#call gxc#collect-type-call%)
           (table-set! _tbl22922_ '%#if gxc#collect-operands)
           (table-set! _tbl22922_ '%#set! gxc#collect-body-setq%)
           _tbl22922_)))))
  (define gxc#apply-collect-type-info
    (lambda (_stx22915_ . _args22917_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx22915_ _args22917_))
       gxc#current-compile-methods
       (force gxc#&collect-type-info))))
  (define gxc#&basic-expression-type
    (make-promise
     (lambda ()
       (let ((_tbl22912_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl22912_ (force gxc#&false))
           (table-set! _tbl22912_ '%#begin gxc#basic-expression-type-begin%)
           (table-set!
            _tbl22912_
            '%#begin-annotation
            gxc#basic-expression-type-begin-annotation%)
           (table-set! _tbl22912_ '%#lambda gxc#basic-expression-type-lambda%)
           (table-set!
            _tbl22912_
            '%#case-lambda
            gxc#basic-expression-type-case-lambda%)
           (table-set! _tbl22912_ '%#call gxc#basic-expression-type-call%)
           (table-set! _tbl22912_ '%#ref gxc#basic-expression-type-ref%)
           _tbl22912_)))))
  (define gxc#apply-basic-expression-type
    (lambda (_stx22905_ . _args22907_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx22905_ _args22907_))
       gxc#current-compile-methods
       (force gxc#&basic-expression-type))))
  (define gxc#&optimize-call
    (make-promise
     (lambda ()
       (let ((_tbl22902_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl22902_ (force gxc#&basic-xform))
           (table-set! _tbl22902_ '%#call gxc#optimize-call%)
           _tbl22902_)))))
  (define gxc#apply-optimize-call
    (lambda (_stx22895_ . _args22897_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx22895_ _args22897_))
       gxc#current-compile-methods
       (force gxc#&optimize-call))))
  (define gxc#&generate-ssxi
    (make-promise
     (lambda ()
       (let ((_tbl22892_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl22892_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl22892_ '%#begin gxc#generate-runtime-begin%)
           (table-set! _tbl22892_ '%#module gxc#generate-ssxi-module%)
           (table-set!
            _tbl22892_
            '%#define-values
            gxc#generate-ssxi-define-values%)
           (table-set! _tbl22892_ '%#call gxc#generate-ssxi-call%)
           _tbl22892_)))))
  (define gxc#apply-generate-ssxi
    (lambda (_stx22885_ . _args22887_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx22885_ _args22887_))
       gxc#current-compile-methods
       (force gxc#&generate-ssxi))))
  (define gxc#xform-identity (lambda (_stx22882_ . _args22883_) _stx22882_))
  (define gxc#xform-wrap-source
    (lambda (_stx22879_ _src-stx22880_)
      (gx#stx-wrap-source _stx22879_ (gx#stx-source _src-stx22880_))))
  (define gxc#xform-apply-compile-e
    (lambda (_args22873_)
      (lambda (_g2287422876_)
        (apply gxc#compile-e _g2287422876_ _args22873_))))
  (define gxc#xform-begin%
    (lambda (_stx22832_ . _args22833_)
      (let* ((_g2283522845_
              (lambda (_g2283622842_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2283622842_)))
             (_g2283422870_
              (lambda (_g2283622848_)
                (if (gx#stx-pair? _g2283622848_)
                    (let ((_e2283822850_ (gx#stx-e _g2283622848_)))
                      (let ((_hd2283922853_ (##car _e2283822850_))
                            (_tl2284022855_ (##cdr _e2283822850_)))
                        ((lambda (_L22858_)
                           (let ((_forms22868_
                                  (map (gxc#xform-apply-compile-e _args22833_)
                                       _L22858_)))
                             (gxc#xform-wrap-source
                              (cons '%#begin _forms22868_)
                              _stx22832_)))
                         _tl2284022855_)))
                    (_g2283522845_ _g2283622848_)))))
        (_g2283422870_ _stx22832_))))
  (define gxc#xform-module%
    (lambda (_stx22769_ . _args22770_)
      (let* ((_g2277222786_
              (lambda (_g2277322783_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2277322783_)))
             (_g2277122829_
              (lambda (_g2277322789_)
                (if (gx#stx-pair? _g2277322789_)
                    (let ((_e2277622791_ (gx#stx-e _g2277322789_)))
                      (let ((_hd2277722794_ (##car _e2277622791_))
                            (_tl2277822796_ (##cdr _e2277622791_)))
                        (if (gx#stx-pair? _tl2277822796_)
                            (let ((_e2277922799_ (gx#stx-e _tl2277822796_)))
                              (let ((_hd2278022802_ (##car _e2277922799_))
                                    (_tl2278122804_ (##cdr _e2277922799_)))
                                ((lambda (_L22807_ _L22808_)
                                   (let* ((_ctx22821_
                                           (gx#syntax-local-e__0 _L22808_))
                                          (_code22823_
                                           (##structure-ref
                                            _ctx22821_
                                            '11
                                            gx#module-context::t
                                            '#f))
                                          (_code22826_
                                           (call-with-parameters
                                            (lambda ()
                                              (apply gxc#compile-e
                                                     _code22823_
                                                     _args22770_))
                                            gx#current-expander-context
                                            _ctx22821_)))
                                     (begin
                                       (##structure-set!
                                        _ctx22821_
                                        _code22826_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _L22808_
                                                    (cons _code22826_ '())))
                                        _stx22769_))))
                                 _tl2278122804_
                                 _hd2278022802_)))
                            (_g2277222786_ _g2277322789_))))
                    (_g2277222786_ _g2277322789_)))))
        (_g2277122829_ _stx22769_))))
  (define gxc#xform-define-values%
    (lambda (_stx22699_ . _args22700_)
      (let* ((_g2270222719_
              (lambda (_g2270322716_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2270322716_)))
             (_g2270122766_
              (lambda (_g2270322722_)
                (if (gx#stx-pair? _g2270322722_)
                    (let ((_e2270622724_ (gx#stx-e _g2270322722_)))
                      (let ((_hd2270722727_ (##car _e2270622724_))
                            (_tl2270822729_ (##cdr _e2270622724_)))
                        (if (gx#stx-pair? _tl2270822729_)
                            (let ((_e2270922732_ (gx#stx-e _tl2270822729_)))
                              (let ((_hd2271022735_ (##car _e2270922732_))
                                    (_tl2271122737_ (##cdr _e2270922732_)))
                                (if (gx#stx-pair? _tl2271122737_)
                                    (let ((_e2271222740_
                                           (gx#stx-e _tl2271122737_)))
                                      (let ((_hd2271322743_
                                             (##car _e2271222740_))
                                            (_tl2271422745_
                                             (##cdr _e2271222740_)))
                                        (if (gx#stx-null? _tl2271422745_)
                                            ((lambda (_L22748_ _L22749_)
                                               (let ((_expr22764_
                                                      (apply gxc#compile-e
                                                             _L22748_
                                                             _args22700_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#define-values
                                                        (cons _L22749_
                                                              (cons _expr22764_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx22699_)))
                                             _hd2271322743_
                                             _hd2271022735_)
                                            (_g2270222719_ _g2270322722_))))
                                    (_g2270222719_ _g2270322722_))))
                            (_g2270222719_ _g2270322722_))))
                    (_g2270222719_ _g2270322722_)))))
        (_g2270122766_ _stx22699_))))
  (define gxc#xform-begin-annotation%
    (lambda (_stx22629_ . _args22630_)
      (let* ((_g2263222649_
              (lambda (_g2263322646_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2263322646_)))
             (_g2263122696_
              (lambda (_g2263322652_)
                (if (gx#stx-pair? _g2263322652_)
                    (let ((_e2263622654_ (gx#stx-e _g2263322652_)))
                      (let ((_hd2263722657_ (##car _e2263622654_))
                            (_tl2263822659_ (##cdr _e2263622654_)))
                        (if (gx#stx-pair? _tl2263822659_)
                            (let ((_e2263922662_ (gx#stx-e _tl2263822659_)))
                              (let ((_hd2264022665_ (##car _e2263922662_))
                                    (_tl2264122667_ (##cdr _e2263922662_)))
                                (if (gx#stx-pair? _tl2264122667_)
                                    (let ((_e2264222670_
                                           (gx#stx-e _tl2264122667_)))
                                      (let ((_hd2264322673_
                                             (##car _e2264222670_))
                                            (_tl2264422675_
                                             (##cdr _e2264222670_)))
                                        (if (gx#stx-null? _tl2264422675_)
                                            ((lambda (_L22678_ _L22679_)
                                               (let ((_expr22694_
                                                      (apply gxc#compile-e
                                                             _L22678_
                                                             _args22630_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#begin-annotation
                                                        (cons _L22679_
                                                              (cons _expr22694_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx22629_)))
                                             _hd2264322673_
                                             _hd2264022665_)
                                            (_g2263222649_ _g2263322652_))))
                                    (_g2263222649_ _g2263322652_))))
                            (_g2263222649_ _g2263322652_))))
                    (_g2263222649_ _g2263322652_)))))
        (_g2263122696_ _stx22629_))))
  (define gxc#xform-lambda%
    (lambda (_stx22572_ . _args22573_)
      (let* ((_g2257522589_
              (lambda (_g2257622586_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2257622586_)))
             (_g2257422626_
              (lambda (_g2257622592_)
                (if (gx#stx-pair? _g2257622592_)
                    (let ((_e2257922594_ (gx#stx-e _g2257622592_)))
                      (let ((_hd2258022597_ (##car _e2257922594_))
                            (_tl2258122599_ (##cdr _e2257922594_)))
                        (if (gx#stx-pair? _tl2258122599_)
                            (let ((_e2258222602_ (gx#stx-e _tl2258122599_)))
                              (let ((_hd2258322605_ (##car _e2258222602_))
                                    (_tl2258422607_ (##cdr _e2258222602_)))
                                ((lambda (_L22610_ _L22611_)
                                   (let ((_body22624_
                                          (map (gxc#xform-apply-compile-e
                                                _args22573_)
                                               _L22610_)))
                                     (gxc#xform-wrap-source
                                      (cons '%#lambda
                                            (cons _L22611_ _body22624_))
                                      _stx22572_)))
                                 _tl2258422607_
                                 _hd2258322605_)))
                            (_g2257522589_ _g2257622592_))))
                    (_g2257522589_ _g2257622592_)))))
        (_g2257422626_ _stx22572_))))
  (define gxc#xform-case-lambda%
    (lambda (_stx22485_ . _args22486_)
      (letrec ((_clause-e22488_
                (lambda (_clause22529_)
                  (let* ((_g2253122542_
                          (lambda (_g2253222539_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g2253222539_)))
                         (_g2253022569_
                          (lambda (_g2253222545_)
                            (if (gx#stx-pair? _g2253222545_)
                                (let ((_e2253522547_ (gx#stx-e _g2253222545_)))
                                  (let ((_hd2253622550_ (##car _e2253522547_))
                                        (_tl2253722552_ (##cdr _e2253522547_)))
                                    ((lambda (_L22555_ _L22556_)
                                       (let ((_body22567_
                                              (map (gxc#xform-apply-compile-e
                                                    _args22486_)
                                                   _L22555_)))
                                         (cons _L22556_ _body22567_)))
                                     _tl2253722552_
                                     _hd2253622550_)))
                                (_g2253122542_ _g2253222545_)))))
                    (_g2253022569_ _clause22529_)))))
        (let* ((_g2249022500_
                (lambda (_g2249122497_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2249122497_)))
               (_g2248922526_
                (lambda (_g2249122503_)
                  (if (gx#stx-pair? _g2249122503_)
                      (let ((_e2249322505_ (gx#stx-e _g2249122503_)))
                        (let ((_hd2249422508_ (##car _e2249322505_))
                              (_tl2249522510_ (##cdr _e2249322505_)))
                          ((lambda (_L22513_)
                             (let ((_clauses22524_
                                    (map _clause-e22488_ _L22513_)))
                               (gxc#xform-wrap-source
                                (cons '%#case-lambda _clauses22524_)
                                _stx22485_)))
                           _tl2249522510_)))
                      (_g2249022500_ _g2249122503_)))))
          (_g2248922526_ _stx22485_)))))
  (define gxc#xform-let-values%
    (lambda (_stx22279_ . _args22280_)
      (let* ((_g2228222315_
              (lambda (_g2228322312_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2228322312_)))
             (_g2228122482_
              (lambda (_g2228322318_)
                (if (gx#stx-pair? _g2228322318_)
                    (let ((_e2228822320_ (gx#stx-e _g2228322318_)))
                      (let ((_hd2228922323_ (##car _e2228822320_))
                            (_tl2229022325_ (##cdr _e2228822320_)))
                        (if (gx#stx-pair? _tl2229022325_)
                            (let ((_e2229122328_ (gx#stx-e _tl2229022325_)))
                              (let ((_hd2229222331_ (##car _e2229122328_))
                                    (_tl2229322333_ (##cdr _e2229122328_)))
                                (if (gx#stx-pair/null? _hd2229222331_)
                                    (if (fx>= (gx#stx-length _hd2229222331_)
                                              '0)
                                        (let ((_g23630_
                                               (gx#syntax-split-splice
                                                _hd2229222331_
                                                '0)))
                                          (begin
                                            (let ((_g23631_
                                                   (values-count _g23630_)))
                                              (if (not (fx= _g23631_ 2))
                                                  (error "Context expects 2 values"
                                                         _g23631_)))
                                            (let ((_target2229422336_
                                                   (values-ref _g23630_ 0))
                                                  (_tl2229622338_
                                                   (values-ref _g23630_ 1)))
                                              (if (gx#stx-null? _tl2229622338_)
                                                  (letrec ((_loop2229722341_
                                                            (lambda (_hd2229522344_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr2230122346_
                             _hd2230222348_)
                      (if (gx#stx-pair? _hd2229522344_)
                          (let ((_e2229822351_ (gx#stx-e _hd2229522344_)))
                            (let ((_lp-hd2229922354_ (##car _e2229822351_))
                                  (_lp-tl2230022356_ (##cdr _e2229822351_)))
                              (if (gx#stx-pair? _lp-hd2229922354_)
                                  (let ((_e2230522359_
                                         (gx#stx-e _lp-hd2229922354_)))
                                    (let ((_hd2230622362_
                                           (##car _e2230522359_))
                                          (_tl2230722364_
                                           (##cdr _e2230522359_)))
                                      (if (gx#stx-pair? _tl2230722364_)
                                          (let ((_e2230822367_
                                                 (gx#stx-e _tl2230722364_)))
                                            (let ((_hd2230922370_
                                                   (##car _e2230822367_))
                                                  (_tl2231022372_
                                                   (##cdr _e2230822367_)))
                                              (if (gx#stx-null? _tl2231022372_)
                                                  (_loop2229722341_
                                                   _lp-tl2230022356_
                                                   (cons _hd2230922370_
                                                         _expr2230122346_)
                                                   (cons _hd2230622362_
                                                         _hd2230222348_))
                                                  (_g2228222315_
                                                   _g2228322318_))))
                                          (_g2228222315_ _g2228322318_))))
                                  (_g2228222315_ _g2228322318_))))
                          (let ((_expr2230322375_ (reverse _expr2230122346_))
                                (_hd2230422377_ (reverse _hd2230222348_)))
                            ((lambda (_L22380_ _L22381_ _L22382_ _L22383_)
                               (let* ((_g2240222418_
                                       (lambda (_g2240322415_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2240322415_)))
                                      (_g2240122472_
                                       (lambda (_g2240322421_)
                                         (if (gx#stx-pair/null? _g2240322421_)
                                             (if (fx>= (gx#stx-length
                                                        _g2240322421_)
                                                       '0)
                                                 (let ((_g23632_
                                                        (gx#syntax-split-splice
                                                         _g2240322421_
                                                         '0)))
                                                   (begin
                                                     (let ((_g23633_
                                                            (values-count
                                                             _g23632_)))
                                                       (if (not (fx= _g23633_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g23633_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2240522423_
                                                            (values-ref
                                                             _g23632_
                                                             0))
                                                           (_tl2240722425_
                                                            (values-ref
                                                             _g23632_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2240722425_)
                                                           (letrec ((_loop2240822428_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2240622431_ _expr2241222433_)
                               (if (gx#stx-pair? _hd2240622431_)
                                   (let ((_e2240922436_
                                          (gx#syntax-e _hd2240622431_)))
                                     (let ((_lp-hd2241022439_
                                            (##car _e2240922436_))
                                           (_lp-tl2241122441_
                                            (##cdr _e2240922436_)))
                                       (_loop2240822428_
                                        _lp-tl2241122441_
                                        (cons _lp-hd2241022439_
                                              _expr2241222433_))))
                                   (let ((_expr2241322444_
                                          (reverse _expr2241222433_)))
                                     ((lambda (_L22447_)
                                        (let ()
                                          (let ((_body22460_
                                                 (map (gxc#xform-apply-compile-e
                                                       _args22280_)
                                                      _L22380_)))
                                            (gxc#xform-wrap-source
                                             (cons _L22383_
                                                   (cons (begin
                                                           (gx#syntax-check-splice-targets
                                                            _L22447_
                                                            _L22382_)
                                                           (foldr (lambda (_g2246122465_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g2246222467_
                                   _g2246322469_)
                            (cons (cons _g2246222467_ (cons _g2246122465_ '()))
                                  _g2246322469_))
                          '()
                          _L22447_
                          _L22382_))
                 _body22460_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _stx22279_))))
                                      _expr2241322444_))))))
                     (_loop2240822428_ _target2240522423_ '()))
                   (_g2240222418_ _g2240322421_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2240222418_ _g2240322421_))
                                             (_g2240222418_ _g2240322421_)))))
                                 (_g2240122472_
                                  (map (gxc#xform-apply-compile-e _args22280_)
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g2247422477_
                                                          _g2247522479_)
                                                   (cons _g2247422477_
                                                         _g2247522479_))
                                                 '()
                                                 _L22381_))))))
                             _tl2229322333_
                             _expr2230322375_
                             _hd2230422377_
                             _hd2228922323_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop2229722341_
                                                     _target2229422336_
                                                     '()
                                                     '()))
                                                  (_g2228222315_
                                                   _g2228322318_)))))
                                        (_g2228222315_ _g2228322318_))
                                    (_g2228222315_ _g2228322318_))))
                            (_g2228222315_ _g2228322318_))))
                    (_g2228222315_ _g2228322318_)))))
        (_g2228122482_ _stx22279_))))
  (define gxc#xform-operands
    (lambda (_stx22235_ . _args22236_)
      (let* ((_g2223822249_
              (lambda (_g2223922246_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2223922246_)))
             (_g2223722276_
              (lambda (_g2223922252_)
                (if (gx#stx-pair? _g2223922252_)
                    (let ((_e2224222254_ (gx#stx-e _g2223922252_)))
                      (let ((_hd2224322257_ (##car _e2224222254_))
                            (_tl2224422259_ (##cdr _e2224222254_)))
                        ((lambda (_L22262_ _L22263_)
                           (let ((_rands22274_
                                  (map (gxc#xform-apply-compile-e _args22236_)
                                       _L22262_)))
                             (gxc#xform-wrap-source
                              (cons _L22263_ _rands22274_)
                              _stx22235_)))
                         _tl2224422259_
                         _hd2224322257_)))
                    (_g2223822249_ _g2223922252_)))))
        (_g2223722276_ _stx22235_))))
  (define gxc#xform-call% gxc#xform-operands)
  (define gxc#xform-setq%
    (lambda (_stx22165_ . _args22166_)
      (let* ((_g2216822185_
              (lambda (_g2216922182_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2216922182_)))
             (_g2216722232_
              (lambda (_g2216922188_)
                (if (gx#stx-pair? _g2216922188_)
                    (let ((_e2217222190_ (gx#stx-e _g2216922188_)))
                      (let ((_hd2217322193_ (##car _e2217222190_))
                            (_tl2217422195_ (##cdr _e2217222190_)))
                        (if (gx#stx-pair? _tl2217422195_)
                            (let ((_e2217522198_ (gx#stx-e _tl2217422195_)))
                              (let ((_hd2217622201_ (##car _e2217522198_))
                                    (_tl2217722203_ (##cdr _e2217522198_)))
                                (if (gx#stx-pair? _tl2217722203_)
                                    (let ((_e2217822206_
                                           (gx#stx-e _tl2217722203_)))
                                      (let ((_hd2217922209_
                                             (##car _e2217822206_))
                                            (_tl2218022211_
                                             (##cdr _e2217822206_)))
                                        (if (gx#stx-null? _tl2218022211_)
                                            ((lambda (_L22214_ _L22215_)
                                               (let ((_expr22230_
                                                      (apply gxc#compile-e
                                                             _L22214_
                                                             _args22166_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#set!
                                                        (cons _L22215_
                                                              (cons _expr22230_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx22165_)))
                                             _hd2217922209_
                                             _hd2217622201_)
                                            (_g2216822185_ _g2216922188_))))
                                    (_g2216822185_ _g2216922188_))))
                            (_g2216822185_ _g2216922188_))))
                    (_g2216822185_ _g2216922188_)))))
        (_g2216722232_ _stx22165_))))
  (define gxc#collect-mutators-setq%
    (lambda (_stx22096_)
      (let* ((_g2209822115_
              (lambda (_g2209922112_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2209922112_)))
             (_g2209722162_
              (lambda (_g2209922118_)
                (if (gx#stx-pair? _g2209922118_)
                    (let ((_e2210222120_ (gx#stx-e _g2209922118_)))
                      (let ((_hd2210322123_ (##car _e2210222120_))
                            (_tl2210422125_ (##cdr _e2210222120_)))
                        (if (gx#stx-pair? _tl2210422125_)
                            (let ((_e2210522128_ (gx#stx-e _tl2210422125_)))
                              (let ((_hd2210622131_ (##car _e2210522128_))
                                    (_tl2210722133_ (##cdr _e2210522128_)))
                                (if (gx#stx-pair? _tl2210722133_)
                                    (let ((_e2210822136_
                                           (gx#stx-e _tl2210722133_)))
                                      (let ((_hd2210922139_
                                             (##car _e2210822136_))
                                            (_tl2211022141_
                                             (##cdr _e2210822136_)))
                                        (if (gx#stx-null? _tl2211022141_)
                                            ((lambda (_L22144_ _L22145_)
                                               (let ((_sym22160_
                                                      (gxc#generate-runtime-binding-id
                                                       _L22145_)))
                                                 (begin
                                                   (gxc#verbose
                                                    '"collect mutator "
                                                    _sym22160_)
                                                   (table-set!
                                                    (gxc#current-compile-mutators)
                                                    _sym22160_
                                                    '#t)
                                                   (gxc#compile-e _L22144_))))
                                             _hd2210922139_
                                             _hd2210622131_)
                                            (_g2209822115_ _g2209922118_))))
                                    (_g2209822115_ _g2209922118_))))
                            (_g2209822115_ _g2209922118_))))
                    (_g2209822115_ _g2209922118_)))))
        (_g2209722162_ _stx22096_))))
  (define gxc#dispatch-lambda-form?
    (lambda (_form21330_)
      (let* ((_g2133521492_
              (lambda (_g2133621489_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2133621489_)))
             (_g2133421499_ (lambda (_g2133621495_) ((lambda () '#f))))
             (_g2133321639_
              (lambda (_g2133621502_)
                (if (gx#stx-pair? _g2133621502_)
                    (let ((_e2145221504_ (gx#stx-e _g2133621502_)))
                      (let ((_hd2145321507_ (##car _e2145221504_))
                            (_tl2145421509_ (##cdr _e2145221504_)))
                        (if (gx#stx-pair? _tl2145421509_)
                            (let ((_e2145521512_ (gx#stx-e _tl2145421509_)))
                              (let ((_hd2145621515_ (##car _e2145521512_))
                                    (_tl2145721517_ (##cdr _e2145521512_)))
                                (if (gx#stx-pair? _hd2145621515_)
                                    (let ((_e2145821520_
                                           (gx#stx-e _hd2145621515_)))
                                      (let ((_hd2145921523_
                                             (##car _e2145821520_))
                                            (_tl2146021525_
                                             (##cdr _e2145821520_)))
                                        (if (gx#identifier? _hd2145921523_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd2145921523_)
                                                (if (gx#stx-pair?
                                                     _tl2146021525_)
                                                    (let ((_e2146121528_
                                                           (gx#stx-e
                                                            _tl2146021525_)))
                                                      (let ((_hd2146221531_
                                                             (##car _e2146121528_))
                                                            (_tl2146321533_
                                                             (##cdr _e2146121528_)))
                                                        (if (gx#stx-pair?
                                                             _hd2146221531_)
                                                            (let ((_e2146421536_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2146221531_)))
                      (let ((_hd2146521539_ (##car _e2146421536_))
                            (_tl2146621541_ (##cdr _e2146421536_)))
                        (if (gx#identifier? _hd2146521539_)
                            (if (gx#stx-eq? '%#ref _hd2146521539_)
                                (if (gx#stx-pair? _tl2146621541_)
                                    (let ((_e2146721544_
                                           (gx#stx-e _tl2146621541_)))
                                      (let ((_hd2146821547_
                                             (##car _e2146721544_))
                                            (_tl2146921549_
                                             (##cdr _e2146721544_)))
                                        (if (gx#stx-null? _tl2146921549_)
                                            (if (gx#stx-pair? _tl2146321533_)
                                                (let ((_e2147021552_
                                                       (gx#stx-e
                                                        _tl2146321533_)))
                                                  (let ((_hd2147121555_
                                                         (##car _e2147021552_))
                                                        (_tl2147221557_
                                                         (##cdr _e2147021552_)))
                                                    (if (gx#stx-pair?
                                                         _hd2147121555_)
                                                        (let ((_e2147321560_
                                                               (gx#stx-e
                                                                _hd2147121555_)))
                                                          (let ((_hd2147421563_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2147321560_))
                        (_tl2147521565_ (##cdr _e2147321560_)))
                    (if (gx#identifier? _hd2147421563_)
                        (if (gx#stx-eq? '%#ref _hd2147421563_)
                            (if (gx#stx-pair? _tl2147521565_)
                                (let ((_e2147621568_
                                       (gx#stx-e _tl2147521565_)))
                                  (let ((_hd2147721571_ (##car _e2147621568_))
                                        (_tl2147821573_ (##cdr _e2147621568_)))
                                    (if (gx#stx-null? _tl2147821573_)
                                        (if (gx#stx-pair? _tl2147221557_)
                                            (let ((_e2147921576_
                                                   (gx#stx-e _tl2147221557_)))
                                              (let ((_hd2148021579_
                                                     (##car _e2147921576_))
                                                    (_tl2148121581_
                                                     (##cdr _e2147921576_)))
                                                (if (gx#stx-pair?
                                                     _hd2148021579_)
                                                    (let ((_e2148221584_
                                                           (gx#stx-e
                                                            _hd2148021579_)))
                                                      (let ((_hd2148321587_
                                                             (##car _e2148221584_))
                                                            (_tl2148421589_
                                                             (##cdr _e2148221584_)))
                                                        (if (gx#identifier?
                                                             _hd2148321587_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2148321587_)
                        (if (gx#stx-pair? _tl2148421589_)
                            (let ((_e2148521592_ (gx#stx-e _tl2148421589_)))
                              (let ((_hd2148621595_ (##car _e2148521592_))
                                    (_tl2148721597_ (##cdr _e2148521592_)))
                                (if (gx#stx-null? _tl2148721597_)
                                    (if (gx#stx-null? _tl2148121581_)
                                        (if (gx#stx-null? _tl2145721517_)
                                            ((lambda (_L21600_
                                                      _L21601_
                                                      _L21602_
                                                      _L21603_)
                                               (if (if (gx#identifier?
                                                        _L21603_)
                                                       (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L21602_)
                        'apply)
                   (if (gx#free-identifier=? _L21603_ _L21600_)
                       (not (gx#free-identifier=? _L21601_ _L21603_))
                       '#f)
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#t
                                                   (_g2133421499_
                                                    _g2133621502_)))
                                             _hd2148621595_
                                             _hd2147721571_
                                             _hd2146821547_
                                             _hd2145321507_)
                                            (_g2133421499_ _g2133621502_))
                                        (_g2133421499_ _g2133621502_))
                                    (_g2133421499_ _g2133621502_))))
                            (_g2133421499_ _g2133621502_))
                        (_g2133421499_ _g2133621502_))
                    (_g2133421499_ _g2133621502_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2133421499_
                                                     _g2133621502_))))
                                            (_g2133421499_ _g2133621502_))
                                        (_g2133421499_ _g2133621502_))))
                                (_g2133421499_ _g2133621502_))
                            (_g2133421499_ _g2133621502_))
                        (_g2133421499_ _g2133621502_))))
                (_g2133421499_ _g2133621502_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2133421499_ _g2133621502_))
                                            (_g2133421499_ _g2133621502_))))
                                    (_g2133421499_ _g2133621502_))
                                (_g2133421499_ _g2133621502_))
                            (_g2133421499_ _g2133621502_))))
                    (_g2133421499_ _g2133621502_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2133421499_
                                                     _g2133621502_))
                                                (_g2133421499_ _g2133621502_))
                                            (_g2133421499_ _g2133621502_))))
                                    (_g2133421499_ _g2133621502_))))
                            (_g2133421499_ _g2133621502_))))
                    (_g2133421499_ _g2133621502_))))
             (_g2133221899_
              (lambda (_g2133621642_)
                (if (gx#stx-pair? _g2133621642_)
                    (let ((_e2138821644_ (gx#stx-e _g2133621642_)))
                      (let ((_hd2138921647_ (##car _e2138821644_))
                            (_tl2139021649_ (##cdr _e2138821644_)))
                        (if (gx#stx-pair/null? _hd2138921647_)
                            (if (fx>= (gx#stx-length _hd2138921647_) '0)
                                (let ((_g23634_
                                       (gx#syntax-split-splice
                                        _hd2138921647_
                                        '0)))
                                  (begin
                                    (let ((_g23635_ (values-count _g23634_)))
                                      (if (not (fx= _g23635_ 2))
                                          (error "Context expects 2 values"
                                                 _g23635_)))
                                    (let ((_target2139121652_
                                           (values-ref _g23634_ 0))
                                          (_tl2139321654_
                                           (values-ref _g23634_ 1)))
                                      (letrec ((_loop2139421657_
                                                (lambda (_hd2139221660_
                                                         _arg2139821662_)
                                                  (if (gx#stx-pair?
                                                       _hd2139221660_)
                                                      (let ((_e2139521665_
                                                             (gx#stx-e
                                                              _hd2139221660_)))
                                                        (let ((_lp-hd2139621668_
                                                               (##car _e2139521665_))
                                                              (_lp-tl2139721670_
                                                               (##cdr _e2139521665_)))
                                                          (_loop2139421657_
                                                           _lp-tl2139721670_
                                                           (cons _lp-hd2139621668_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _arg2139821662_))))
              (let ((_arg2139921673_ (reverse _arg2139821662_)))
                (if (gx#stx-pair? _tl2139021649_)
                    (let ((_e2140021676_ (gx#stx-e _tl2139021649_)))
                      (let ((_hd2140121679_ (##car _e2140021676_))
                            (_tl2140221681_ (##cdr _e2140021676_)))
                        (if (gx#stx-pair? _hd2140121679_)
                            (let ((_e2140321684_ (gx#stx-e _hd2140121679_)))
                              (let ((_hd2140421687_ (##car _e2140321684_))
                                    (_tl2140521689_ (##cdr _e2140321684_)))
                                (if (gx#identifier? _hd2140421687_)
                                    (if (gx#stx-eq? '%#call _hd2140421687_)
                                        (if (gx#stx-pair? _tl2140521689_)
                                            (let ((_e2140621692_
                                                   (gx#stx-e _tl2140521689_)))
                                              (let ((_hd2140721695_
                                                     (##car _e2140621692_))
                                                    (_tl2140821697_
                                                     (##cdr _e2140621692_)))
                                                (if (gx#stx-pair?
                                                     _hd2140721695_)
                                                    (let ((_e2140921700_
                                                           (gx#stx-e
                                                            _hd2140721695_)))
                                                      (let ((_hd2141021703_
                                                             (##car _e2140921700_))
                                                            (_tl2141121705_
                                                             (##cdr _e2140921700_)))
                                                        (if (gx#identifier?
                                                             _hd2141021703_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2141021703_)
                        (if (gx#stx-pair? _tl2141121705_)
                            (let ((_e2141221708_ (gx#stx-e _tl2141121705_)))
                              (let ((_hd2141321711_ (##car _e2141221708_))
                                    (_tl2141421713_ (##cdr _e2141221708_)))
                                (if (gx#stx-null? _tl2141421713_)
                                    (if (gx#stx-pair? _tl2140821697_)
                                        (let ((_e2141521716_
                                               (gx#stx-e _tl2140821697_)))
                                          (let ((_hd2141621719_
                                                 (##car _e2141521716_))
                                                (_tl2141721721_
                                                 (##cdr _e2141521716_)))
                                            (if (gx#stx-pair? _hd2141621719_)
                                                (let ((_e2141821724_
                                                       (gx#stx-e
                                                        _hd2141621719_)))
                                                  (let ((_hd2141921727_
                                                         (##car _e2141821724_))
                                                        (_tl2142021729_
                                                         (##cdr _e2141821724_)))
                                                    (if (gx#identifier?
                                                         _hd2141921727_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd2141921727_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2142021729_)
                        (let ((_e2142121732_ (gx#stx-e _tl2142021729_)))
                          (let ((_hd2142221735_ (##car _e2142121732_))
                                (_tl2142321737_ (##cdr _e2142121732_)))
                            (if (gx#stx-null? _tl2142321737_)
                                (if (gx#stx-pair/null? _tl2141721721_)
                                    (if (fx>= (gx#stx-length _tl2141721721_)
                                              '1)
                                        (let ((_g23636_
                                               (gx#syntax-split-splice
                                                _tl2141721721_
                                                '1)))
                                          (begin
                                            (let ((_g23637_
                                                   (values-count _g23636_)))
                                              (if (not (fx= _g23637_ 2))
                                                  (error "Context expects 2 values"
                                                         _g23637_)))
                                            (let ((_target2142421740_
                                                   (values-ref _g23636_ 0))
                                                  (_tl2142621742_
                                                   (values-ref _g23636_ 1)))
                                              (if (gx#stx-pair? _tl2142621742_)
                                                  (let ((_e2143321745_
                                                         (gx#stx-e
                                                          _tl2142621742_)))
                                                    (let ((_hd2143421748_
                                                           (##car _e2143321745_))
                                                          (_tl2143521750_
                                                           (##cdr _e2143321745_)))
                                                      (if (gx#stx-pair?
                                                           _hd2143421748_)
                                                          (let ((_e2143621753_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2143421748_)))
                    (let ((_hd2143721756_ (##car _e2143621753_))
                          (_tl2143821758_ (##cdr _e2143621753_)))
                      (if (gx#identifier? _hd2143721756_)
                          (if (gx#stx-eq? '%#ref _hd2143721756_)
                              (if (gx#stx-pair? _tl2143821758_)
                                  (let ((_e2143921761_
                                         (gx#stx-e _tl2143821758_)))
                                    (let ((_hd2144021764_
                                           (##car _e2143921761_))
                                          (_tl2144121766_
                                           (##cdr _e2143921761_)))
                                      (if (gx#stx-null? _tl2144121766_)
                                          (if (gx#stx-null? _tl2143521750_)
                                              (letrec ((_loop2142721769_
                                                        (lambda (_hd2142521772_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _xarg2143121774_)
                  (if (gx#stx-pair? _hd2142521772_)
                      (let ((_e2142821777_ (gx#stx-e _hd2142521772_)))
                        (let ((_lp-hd2142921780_ (##car _e2142821777_))
                              (_lp-tl2143021782_ (##cdr _e2142821777_)))
                          (if (gx#stx-pair? _lp-hd2142921780_)
                              (let ((_e2144221785_
                                     (gx#stx-e _lp-hd2142921780_)))
                                (let ((_hd2144321788_ (##car _e2144221785_))
                                      (_tl2144421790_ (##cdr _e2144221785_)))
                                  (if (gx#identifier? _hd2144321788_)
                                      (if (gx#stx-eq? '%#ref _hd2144321788_)
                                          (if (gx#stx-pair? _tl2144421790_)
                                              (let ((_e2144521793_
                                                     (gx#stx-e
                                                      _tl2144421790_)))
                                                (let ((_hd2144621796_
                                                       (##car _e2144521793_))
                                                      (_tl2144721798_
                                                       (##cdr _e2144521793_)))
                                                  (if (gx#stx-null?
                                                       _tl2144721798_)
                                                      (_loop2142721769_
                                                       _lp-tl2143021782_
                                                       (cons _hd2144621796_
                                                             _xarg2143121774_))
                                                      (_g2133321639_
                                                       _g2133621642_))))
                                              (_g2133321639_ _g2133621642_))
                                          (_g2133321639_ _g2133621642_))
                                      (_g2133321639_ _g2133621642_))))
                              (_g2133321639_ _g2133621642_))))
                      (let ((_xarg2143221801_ (reverse _xarg2143121774_)))
                        (if (gx#stx-null? _tl2140221681_)
                            ((lambda (_L21804_
                                      _L21805_
                                      _L21806_
                                      _L21807_
                                      _L21808_
                                      _L21809_)
                               (if (if (gx#identifier-list?
                                        (begin
                                          '#!void
                                          (foldr1 (lambda (_g2185221855_
                                                           _g2185321857_)
                                                    (cons _g2185221855_
                                                          _g2185321857_))
                                                  '()
                                                  _L21809_)))
                                       (if (gx#identifier? _L21808_)
                                           (if (eq? (gxc#generate-runtime-binding-id
                                                     _L21807_)
                                                    'apply)
                                               (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr1 (lambda (_g2185921862_ _g2186021864_)
                                    (cons _g2185921862_ _g2186021864_))
                                  '()
                                  _L21809_)))
                (length (begin
                          '#!void
                          (foldr1 (lambda (_g2186621869_ _g2186721871_)
                                    (cons _g2186621869_ _g2186721871_))
                                  '()
                                  _L21805_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (andmap gx#free-identifier=?
                                                               (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#!void
                         (foldr1 (lambda (_g2187321876_ _g2187421878_)
                                   (cons _g2187321876_ _g2187421878_))
                                 '()
                                 _L21809_))
                       (begin
                         '#!void
                         (foldr1 (lambda (_g2188021883_ _g2188121885_)
                                   (cons _g2188021883_ _g2188121885_))
                                 '()
                                 _L21805_)))
               (if (gx#free-identifier=? _L21808_ _L21804_)
                   (not (find (lambda (_g2188721889_)
                                (gx#free-identifier=? _g2188721889_ _L21806_))
                              (begin
                                '#!void
                                (foldr1 (lambda (_g2189121894_ _g2189221896_)
                                          (cons _g2189121894_ _g2189221896_))
                                        (cons _L21808_ '())
                                        _L21809_))))
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#f)
                                               '#f)
                                           '#f)
                                       '#f)
                                   '#t
                                   (_g2133321639_ _g2133621642_)))
                             _hd2144021764_
                             _xarg2143221801_
                             _hd2142221735_
                             _hd2141321711_
                             _tl2139321654_
                             _arg2139921673_)
                            (_g2133321639_ _g2133621642_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop2142721769_
                                                 _target2142421740_
                                                 '()))
                                              (_g2133321639_ _g2133621642_))
                                          (_g2133321639_ _g2133621642_))))
                                  (_g2133321639_ _g2133621642_))
                              (_g2133321639_ _g2133621642_))
                          (_g2133321639_ _g2133621642_))))
                  (_g2133321639_ _g2133621642_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2133321639_
                                                   _g2133621642_)))))
                                        (_g2133321639_ _g2133621642_))
                                    (_g2133321639_ _g2133621642_))
                                (_g2133321639_ _g2133621642_))))
                        (_g2133321639_ _g2133621642_))
                    (_g2133321639_ _g2133621642_))
                (_g2133321639_ _g2133621642_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2133321639_
                                                 _g2133621642_))))
                                        (_g2133321639_ _g2133621642_))
                                    (_g2133321639_ _g2133621642_))))
                            (_g2133321639_ _g2133621642_))
                        (_g2133321639_ _g2133621642_))
                    (_g2133321639_ _g2133621642_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2133321639_
                                                     _g2133621642_))))
                                            (_g2133321639_ _g2133621642_))
                                        (_g2133321639_ _g2133621642_))
                                    (_g2133321639_ _g2133621642_))))
                            (_g2133321639_ _g2133621642_))))
                    (_g2133321639_ _g2133621642_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop2139421657_
                                         _target2139121652_
                                         '())))))
                                (_g2133321639_ _g2133621642_))
                            (_g2133321639_ _g2133621642_))))
                    (_g2133321639_ _g2133621642_))))
             (_g2133122093_
              (lambda (_g2133621902_)
                (if (gx#stx-pair? _g2133621902_)
                    (let ((_e2134021904_ (gx#stx-e _g2133621902_)))
                      (let ((_hd2134121907_ (##car _e2134021904_))
                            (_tl2134221909_ (##cdr _e2134021904_)))
                        (if (gx#stx-pair/null? _hd2134121907_)
                            (if (fx>= (gx#stx-length _hd2134121907_) '0)
                                (let ((_g23638_
                                       (gx#syntax-split-splice
                                        _hd2134121907_
                                        '0)))
                                  (begin
                                    (let ((_g23639_ (values-count _g23638_)))
                                      (if (not (fx= _g23639_ 2))
                                          (error "Context expects 2 values"
                                                 _g23639_)))
                                    (let ((_target2134321912_
                                           (values-ref _g23638_ 0))
                                          (_tl2134521914_
                                           (values-ref _g23638_ 1)))
                                      (if (gx#stx-null? _tl2134521914_)
                                          (letrec ((_loop2134621917_
                                                    (lambda (_hd2134421920_
                                                             _arg2135021922_)
                                                      (if (gx#stx-pair?
                                                           _hd2134421920_)
                                                          (let ((_e2134721925_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2134421920_)))
                    (let ((_lp-hd2134821928_ (##car _e2134721925_))
                          (_lp-tl2134921930_ (##cdr _e2134721925_)))
                      (_loop2134621917_
                       _lp-tl2134921930_
                       (cons _lp-hd2134821928_ _arg2135021922_))))
                  (let ((_arg2135121933_ (reverse _arg2135021922_)))
                    (if (gx#stx-pair? _tl2134221909_)
                        (let ((_e2135221936_ (gx#stx-e _tl2134221909_)))
                          (let ((_hd2135321939_ (##car _e2135221936_))
                                (_tl2135421941_ (##cdr _e2135221936_)))
                            (if (gx#stx-pair? _hd2135321939_)
                                (let ((_e2135521944_
                                       (gx#stx-e _hd2135321939_)))
                                  (let ((_hd2135621947_ (##car _e2135521944_))
                                        (_tl2135721949_ (##cdr _e2135521944_)))
                                    (if (gx#identifier? _hd2135621947_)
                                        (if (gx#stx-eq? '%#call _hd2135621947_)
                                            (if (gx#stx-pair? _tl2135721949_)
                                                (let ((_e2135821952_
                                                       (gx#stx-e
                                                        _tl2135721949_)))
                                                  (let ((_hd2135921955_
                                                         (##car _e2135821952_))
                                                        (_tl2136021957_
                                                         (##cdr _e2135821952_)))
                                                    (if (gx#stx-pair?
                                                         _hd2135921955_)
                                                        (let ((_e2136121960_
                                                               (gx#stx-e
                                                                _hd2135921955_)))
                                                          (let ((_hd2136221963_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2136121960_))
                        (_tl2136321965_ (##cdr _e2136121960_)))
                    (if (gx#identifier? _hd2136221963_)
                        (if (gx#stx-eq? '%#ref _hd2136221963_)
                            (if (gx#stx-pair? _tl2136321965_)
                                (let ((_e2136421968_
                                       (gx#stx-e _tl2136321965_)))
                                  (let ((_hd2136521971_ (##car _e2136421968_))
                                        (_tl2136621973_ (##cdr _e2136421968_)))
                                    (if (gx#stx-null? _tl2136621973_)
                                        (if (gx#stx-pair/null? _tl2136021957_)
                                            (if (fx>= (gx#stx-length
                                                       _tl2136021957_)
                                                      '0)
                                                (let ((_g23640_
                                                       (gx#syntax-split-splice
                                                        _tl2136021957_
                                                        '0)))
                                                  (begin
                                                    (let ((_g23641_
                                                           (values-count
                                                            _g23640_)))
                                                      (if (not (fx= _g23641_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g23641_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2136721976_
                                                           (values-ref
                                                            _g23640_
                                                            0))
                                                          (_tl2136921978_
                                                           (values-ref
                                                            _g23640_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl2136921978_)
                                                          (letrec ((_loop2137021981_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd2136821984_ _xarg2137421986_)
                              (if (gx#stx-pair? _hd2136821984_)
                                  (let ((_e2137121989_
                                         (gx#stx-e _hd2136821984_)))
                                    (let ((_lp-hd2137221992_
                                           (##car _e2137121989_))
                                          (_lp-tl2137321994_
                                           (##cdr _e2137121989_)))
                                      (if (gx#stx-pair? _lp-hd2137221992_)
                                          (let ((_e2137621997_
                                                 (gx#stx-e _lp-hd2137221992_)))
                                            (let ((_hd2137722000_
                                                   (##car _e2137621997_))
                                                  (_tl2137822002_
                                                   (##cdr _e2137621997_)))
                                              (if (gx#identifier?
                                                   _hd2137722000_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd2137722000_)
                                                      (if (gx#stx-pair?
                                                           _tl2137822002_)
                                                          (let ((_e2137922005_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2137822002_)))
                    (let ((_hd2138022008_ (##car _e2137922005_))
                          (_tl2138122010_ (##cdr _e2137922005_)))
                      (if (gx#stx-null? _tl2138122010_)
                          (_loop2137021981_
                           _lp-tl2137321994_
                           (cons _hd2138022008_ _xarg2137421986_))
                          (_g2133221899_ _g2133621902_))))
                  (_g2133221899_ _g2133621902_))
              (_g2133221899_ _g2133621902_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2133221899_
                                                   _g2133621902_))))
                                          (_g2133221899_ _g2133621902_))))
                                  (let ((_xarg2137522013_
                                         (reverse _xarg2137421986_)))
                                    (if (gx#stx-null? _tl2135421941_)
                                        ((lambda (_L22016_ _L22017_ _L22018_)
                                           (if (if (gx#identifier-list?
                                                    (begin
                                                      '#!void
                                                      (foldr1 (lambda (_g2204622049_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2204722051_)
                        (cons _g2204622049_ _g2204722051_))
                      '()
                      _L22018_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#!void
                              (foldr1 (lambda (_g2205322056_ _g2205422058_)
                                        (cons _g2205322056_ _g2205422058_))
                                      '()
                                      _L22018_)))
                    (length (begin
                              '#!void
                              (foldr1 (lambda (_g2206022063_ _g2206122065_)
                                        (cons _g2206022063_ _g2206122065_))
                                      '()
                                      _L22016_))))
               (if (andmap gx#free-identifier=?
                           (begin
                             '#!void
                             (foldr1 (lambda (_g2206722070_ _g2206822072_)
                                       (cons _g2206722070_ _g2206822072_))
                                     '()
                                     _L22018_))
                           (begin
                             '#!void
                             (foldr1 (lambda (_g2207422077_ _g2207522079_)
                                       (cons _g2207422077_ _g2207522079_))
                                     '()
                                     _L22016_)))
                   (not (find (lambda (_g2208122083_)
                                (gx#free-identifier=? _g2208122083_ _L22017_))
                              (begin
                                '#!void
                                (foldr1 (lambda (_g2208522088_ _g2208622090_)
                                          (cons _g2208522088_ _g2208622090_))
                                        '()
                                        _L22018_))))
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#f)
                                               '#t
                                               (_g2133221899_ _g2133621902_)))
                                         _xarg2137522013_
                                         _hd2136521971_
                                         _arg2135121933_)
                                        (_g2133221899_ _g2133621902_)))))))
                    (_loop2137021981_ _target2136721976_ '()))
                  (_g2133221899_ _g2133621902_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2133221899_ _g2133621902_))
                                            (_g2133221899_ _g2133621902_))
                                        (_g2133221899_ _g2133621902_))))
                                (_g2133221899_ _g2133621902_))
                            (_g2133221899_ _g2133621902_))
                        (_g2133221899_ _g2133621902_))))
                (_g2133221899_ _g2133621902_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2133221899_ _g2133621902_))
                                            (_g2133221899_ _g2133621902_))
                                        (_g2133221899_ _g2133621902_))))
                                (_g2133221899_ _g2133621902_))))
                        (_g2133221899_ _g2133621902_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop2134621917_
                                             _target2134321912_
                                             '()))
                                          (_g2133221899_ _g2133621902_)))))
                                (_g2133221899_ _g2133621902_))
                            (_g2133221899_ _g2133621902_))))
                    (_g2133221899_ _g2133621902_)))))
        (_g2133122093_ _form21330_))))
  (define gxc#dispatch-lambda-form-delegate
    (lambda (_form20798_)
      (let* ((_g2080220926_
              (lambda (_g2080320923_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2080320923_)))
             (_g2080121043_
              (lambda (_g2080320929_)
                (if (gx#stx-pair? _g2080320929_)
                    (let ((_e2089220931_ (gx#stx-e _g2080320929_)))
                      (let ((_hd2089320934_ (##car _e2089220931_))
                            (_tl2089420936_ (##cdr _e2089220931_)))
                        (if (gx#stx-pair? _tl2089420936_)
                            (let ((_e2089520939_ (gx#stx-e _tl2089420936_)))
                              (let ((_hd2089620942_ (##car _e2089520939_))
                                    (_tl2089720944_ (##cdr _e2089520939_)))
                                (if (gx#stx-pair? _hd2089620942_)
                                    (let ((_e2089820947_
                                           (gx#stx-e _hd2089620942_)))
                                      (let ((_hd2089920950_
                                             (##car _e2089820947_))
                                            (_tl2090020952_
                                             (##cdr _e2089820947_)))
                                        (if (gx#identifier? _hd2089920950_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd2089920950_)
                                                (if (gx#stx-pair?
                                                     _tl2090020952_)
                                                    (let ((_e2090120955_
                                                           (gx#stx-e
                                                            _tl2090020952_)))
                                                      (let ((_hd2090220958_
                                                             (##car _e2090120955_))
                                                            (_tl2090320960_
                                                             (##cdr _e2090120955_)))
                                                        (if (gx#stx-pair?
                                                             _hd2090220958_)
                                                            (let ((_e2090420963_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2090220958_)))
                      (let ((_hd2090520966_ (##car _e2090420963_))
                            (_tl2090620968_ (##cdr _e2090420963_)))
                        (if (gx#identifier? _hd2090520966_)
                            (if (gx#stx-eq? '%#ref _hd2090520966_)
                                (if (gx#stx-pair? _tl2090620968_)
                                    (let ((_e2090720971_
                                           (gx#stx-e _tl2090620968_)))
                                      (let ((_hd2090820974_
                                             (##car _e2090720971_))
                                            (_tl2090920976_
                                             (##cdr _e2090720971_)))
                                        (if (gx#stx-null? _tl2090920976_)
                                            (if (gx#stx-pair? _tl2090320960_)
                                                (let ((_e2091020979_
                                                       (gx#stx-e
                                                        _tl2090320960_)))
                                                  (let ((_hd2091120982_
                                                         (##car _e2091020979_))
                                                        (_tl2091220984_
                                                         (##cdr _e2091020979_)))
                                                    (if (gx#stx-pair?
                                                         _hd2091120982_)
                                                        (let ((_e2091320987_
                                                               (gx#stx-e
                                                                _hd2091120982_)))
                                                          (let ((_hd2091420990_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2091320987_))
                        (_tl2091520992_ (##cdr _e2091320987_)))
                    (if (gx#identifier? _hd2091420990_)
                        (if (gx#stx-eq? '%#ref _hd2091420990_)
                            (if (gx#stx-pair? _tl2091520992_)
                                (let ((_e2091620995_
                                       (gx#stx-e _tl2091520992_)))
                                  (let ((_hd2091720998_ (##car _e2091620995_))
                                        (_tl2091821000_ (##cdr _e2091620995_)))
                                    (if (gx#stx-null? _tl2091821000_)
                                        (if (gx#stx-pair? _tl2091220984_)
                                            (let ((_e2091921003_
                                                   (gx#stx-e _tl2091220984_)))
                                              (let ((_hd2092021006_
                                                     (##car _e2091921003_))
                                                    (_tl2092121008_
                                                     (##cdr _e2091921003_)))
                                                (if (gx#stx-null?
                                                     _tl2092121008_)
                                                    (if (gx#stx-null?
                                                         _tl2089720944_)
                                                        ((lambda (_L21011_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L21012_
                          _L21013_)
                   (gxc#generate-runtime-binding-id _L21011_))
                 _hd2091720998_
                 _hd2090820974_
                 _hd2089320934_)
                (_g2080220926_ _g2080320929_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2080220926_
                                                     _g2080320929_))))
                                            (_g2080220926_ _g2080320929_))
                                        (_g2080220926_ _g2080320929_))))
                                (_g2080220926_ _g2080320929_))
                            (_g2080220926_ _g2080320929_))
                        (_g2080220926_ _g2080320929_))))
                (_g2080220926_ _g2080320929_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2080220926_ _g2080320929_))
                                            (_g2080220926_ _g2080320929_))))
                                    (_g2080220926_ _g2080320929_))
                                (_g2080220926_ _g2080320929_))
                            (_g2080220926_ _g2080320929_))))
                    (_g2080220926_ _g2080320929_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2080220926_
                                                     _g2080320929_))
                                                (_g2080220926_ _g2080320929_))
                                            (_g2080220926_ _g2080320929_))))
                                    (_g2080220926_ _g2080320929_))))
                            (_g2080220926_ _g2080320929_))))
                    (_g2080220926_ _g2080320929_))))
             (_g2080021179_
              (lambda (_g2080321046_)
                (if (gx#stx-pair? _g2080321046_)
                    (let ((_e2085321048_ (gx#stx-e _g2080321046_)))
                      (let ((_hd2085421051_ (##car _e2085321048_))
                            (_tl2085521053_ (##cdr _e2085321048_)))
                        (if (gx#stx-pair/null? _hd2085421051_)
                            (if (fx>= (gx#stx-length _hd2085421051_) '0)
                                (let ((_g23642_
                                       (gx#syntax-split-splice
                                        _hd2085421051_
                                        '0)))
                                  (begin
                                    (let ((_g23643_ (values-count _g23642_)))
                                      (if (not (fx= _g23643_ 2))
                                          (error "Context expects 2 values"
                                                 _g23643_)))
                                    (let ((_target2085621056_
                                           (values-ref _g23642_ 0))
                                          (_tl2085821058_
                                           (values-ref _g23642_ 1)))
                                      (letrec ((_loop2085921061_
                                                (lambda (_hd2085721064_
                                                         _arg2086321066_)
                                                  (if (gx#stx-pair?
                                                       _hd2085721064_)
                                                      (let ((_e2086021069_
                                                             (gx#stx-e
                                                              _hd2085721064_)))
                                                        (let ((_lp-hd2086121072_
                                                               (##car _e2086021069_))
                                                              (_lp-tl2086221074_
                                                               (##cdr _e2086021069_)))
                                                          (_loop2085921061_
                                                           _lp-tl2086221074_
                                                           (cons _lp-hd2086121072_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _arg2086321066_))))
              (let ((_arg2086421077_ (reverse _arg2086321066_)))
                (if (gx#stx-pair? _tl2085521053_)
                    (let ((_e2086521080_ (gx#stx-e _tl2085521053_)))
                      (let ((_hd2086621083_ (##car _e2086521080_))
                            (_tl2086721085_ (##cdr _e2086521080_)))
                        (if (gx#stx-pair? _hd2086621083_)
                            (let ((_e2086821088_ (gx#stx-e _hd2086621083_)))
                              (let ((_hd2086921091_ (##car _e2086821088_))
                                    (_tl2087021093_ (##cdr _e2086821088_)))
                                (if (gx#identifier? _hd2086921091_)
                                    (if (gx#stx-eq? '%#call _hd2086921091_)
                                        (if (gx#stx-pair? _tl2087021093_)
                                            (let ((_e2087121096_
                                                   (gx#stx-e _tl2087021093_)))
                                              (let ((_hd2087221099_
                                                     (##car _e2087121096_))
                                                    (_tl2087321101_
                                                     (##cdr _e2087121096_)))
                                                (if (gx#stx-pair?
                                                     _hd2087221099_)
                                                    (let ((_e2087421104_
                                                           (gx#stx-e
                                                            _hd2087221099_)))
                                                      (let ((_hd2087521107_
                                                             (##car _e2087421104_))
                                                            (_tl2087621109_
                                                             (##cdr _e2087421104_)))
                                                        (if (gx#identifier?
                                                             _hd2087521107_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2087521107_)
                        (if (gx#stx-pair? _tl2087621109_)
                            (let ((_e2087721112_ (gx#stx-e _tl2087621109_)))
                              (let ((_hd2087821115_ (##car _e2087721112_))
                                    (_tl2087921117_ (##cdr _e2087721112_)))
                                (if (gx#stx-null? _tl2087921117_)
                                    (if (gx#stx-pair? _tl2087321101_)
                                        (let ((_e2088021120_
                                               (gx#stx-e _tl2087321101_)))
                                          (let ((_hd2088121123_
                                                 (##car _e2088021120_))
                                                (_tl2088221125_
                                                 (##cdr _e2088021120_)))
                                            (if (gx#stx-pair? _hd2088121123_)
                                                (let ((_e2088321128_
                                                       (gx#stx-e
                                                        _hd2088121123_)))
                                                  (let ((_hd2088421131_
                                                         (##car _e2088321128_))
                                                        (_tl2088521133_
                                                         (##cdr _e2088321128_)))
                                                    (if (gx#identifier?
                                                         _hd2088421131_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd2088421131_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2088521133_)
                        (let ((_e2088621136_ (gx#stx-e _tl2088521133_)))
                          (let ((_hd2088721139_ (##car _e2088621136_))
                                (_tl2088821141_ (##cdr _e2088621136_)))
                            (if (gx#stx-null? _tl2088821141_)
                                (if (gx#stx-null? _tl2086721085_)
                                    ((lambda (_L21144_
                                              _L21145_
                                              _L21146_
                                              _L21147_)
                                       (gxc#generate-runtime-binding-id
                                        _L21144_))
                                     _hd2088721139_
                                     _hd2087821115_
                                     _tl2085821058_
                                     _arg2086421077_)
                                    (_g2080121043_ _g2080321046_))
                                (_g2080121043_ _g2080321046_))))
                        (_g2080121043_ _g2080321046_))
                    (_g2080121043_ _g2080321046_))
                (_g2080121043_ _g2080321046_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2080121043_
                                                 _g2080321046_))))
                                        (_g2080121043_ _g2080321046_))
                                    (_g2080121043_ _g2080321046_))))
                            (_g2080121043_ _g2080321046_))
                        (_g2080121043_ _g2080321046_))
                    (_g2080121043_ _g2080321046_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2080121043_
                                                     _g2080321046_))))
                                            (_g2080121043_ _g2080321046_))
                                        (_g2080121043_ _g2080321046_))
                                    (_g2080121043_ _g2080321046_))))
                            (_g2080121043_ _g2080321046_))))
                    (_g2080121043_ _g2080321046_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop2085921061_
                                         _target2085621056_
                                         '())))))
                                (_g2080121043_ _g2080321046_))
                            (_g2080121043_ _g2080321046_))))
                    (_g2080121043_ _g2080321046_))))
             (_g2079921327_
              (lambda (_g2080321182_)
                (if (gx#stx-pair? _g2080321182_)
                    (let ((_e2080721184_ (gx#stx-e _g2080321182_)))
                      (let ((_hd2080821187_ (##car _e2080721184_))
                            (_tl2080921189_ (##cdr _e2080721184_)))
                        (if (gx#stx-pair/null? _hd2080821187_)
                            (if (fx>= (gx#stx-length _hd2080821187_) '0)
                                (let ((_g23644_
                                       (gx#syntax-split-splice
                                        _hd2080821187_
                                        '0)))
                                  (begin
                                    (let ((_g23645_ (values-count _g23644_)))
                                      (if (not (fx= _g23645_ 2))
                                          (error "Context expects 2 values"
                                                 _g23645_)))
                                    (let ((_target2081021192_
                                           (values-ref _g23644_ 0))
                                          (_tl2081221194_
                                           (values-ref _g23644_ 1)))
                                      (if (gx#stx-null? _tl2081221194_)
                                          (letrec ((_loop2081321197_
                                                    (lambda (_hd2081121200_
                                                             _arg2081721202_)
                                                      (if (gx#stx-pair?
                                                           _hd2081121200_)
                                                          (let ((_e2081421205_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2081121200_)))
                    (let ((_lp-hd2081521208_ (##car _e2081421205_))
                          (_lp-tl2081621210_ (##cdr _e2081421205_)))
                      (_loop2081321197_
                       _lp-tl2081621210_
                       (cons _lp-hd2081521208_ _arg2081721202_))))
                  (let ((_arg2081821213_ (reverse _arg2081721202_)))
                    (if (gx#stx-pair? _tl2080921189_)
                        (let ((_e2081921216_ (gx#stx-e _tl2080921189_)))
                          (let ((_hd2082021219_ (##car _e2081921216_))
                                (_tl2082121221_ (##cdr _e2081921216_)))
                            (if (gx#stx-pair? _hd2082021219_)
                                (let ((_e2082221224_
                                       (gx#stx-e _hd2082021219_)))
                                  (let ((_hd2082321227_ (##car _e2082221224_))
                                        (_tl2082421229_ (##cdr _e2082221224_)))
                                    (if (gx#identifier? _hd2082321227_)
                                        (if (gx#stx-eq? '%#call _hd2082321227_)
                                            (if (gx#stx-pair? _tl2082421229_)
                                                (let ((_e2082521232_
                                                       (gx#stx-e
                                                        _tl2082421229_)))
                                                  (let ((_hd2082621235_
                                                         (##car _e2082521232_))
                                                        (_tl2082721237_
                                                         (##cdr _e2082521232_)))
                                                    (if (gx#stx-pair?
                                                         _hd2082621235_)
                                                        (let ((_e2082821240_
                                                               (gx#stx-e
                                                                _hd2082621235_)))
                                                          (let ((_hd2082921243_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2082821240_))
                        (_tl2083021245_ (##cdr _e2082821240_)))
                    (if (gx#identifier? _hd2082921243_)
                        (if (gx#stx-eq? '%#ref _hd2082921243_)
                            (if (gx#stx-pair? _tl2083021245_)
                                (let ((_e2083121248_
                                       (gx#stx-e _tl2083021245_)))
                                  (let ((_hd2083221251_ (##car _e2083121248_))
                                        (_tl2083321253_ (##cdr _e2083121248_)))
                                    (if (gx#stx-null? _tl2083321253_)
                                        (if (gx#stx-pair/null? _tl2082721237_)
                                            (if (fx>= (gx#stx-length
                                                       _tl2082721237_)
                                                      '0)
                                                (let ((_g23646_
                                                       (gx#syntax-split-splice
                                                        _tl2082721237_
                                                        '0)))
                                                  (begin
                                                    (let ((_g23647_
                                                           (values-count
                                                            _g23646_)))
                                                      (if (not (fx= _g23647_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g23647_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2083421256_
                                                           (values-ref
                                                            _g23646_
                                                            0))
                                                          (_tl2083621258_
                                                           (values-ref
                                                            _g23646_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl2083621258_)
                                                          (letrec ((_loop2083721261_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd2083521264_ _xarg2084121266_)
                              (if (gx#stx-pair? _hd2083521264_)
                                  (let ((_e2083821269_
                                         (gx#stx-e _hd2083521264_)))
                                    (let ((_lp-hd2083921272_
                                           (##car _e2083821269_))
                                          (_lp-tl2084021274_
                                           (##cdr _e2083821269_)))
                                      (if (gx#stx-pair? _lp-hd2083921272_)
                                          (let ((_e2084321277_
                                                 (gx#stx-e _lp-hd2083921272_)))
                                            (let ((_hd2084421280_
                                                   (##car _e2084321277_))
                                                  (_tl2084521282_
                                                   (##cdr _e2084321277_)))
                                              (if (gx#identifier?
                                                   _hd2084421280_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd2084421280_)
                                                      (if (gx#stx-pair?
                                                           _tl2084521282_)
                                                          (let ((_e2084621285_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2084521282_)))
                    (let ((_hd2084721288_ (##car _e2084621285_))
                          (_tl2084821290_ (##cdr _e2084621285_)))
                      (if (gx#stx-null? _tl2084821290_)
                          (_loop2083721261_
                           _lp-tl2084021274_
                           (cons _hd2084721288_ _xarg2084121266_))
                          (_g2080021179_ _g2080321182_))))
                  (_g2080021179_ _g2080321182_))
              (_g2080021179_ _g2080321182_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2080021179_
                                                   _g2080321182_))))
                                          (_g2080021179_ _g2080321182_))))
                                  (let ((_xarg2084221293_
                                         (reverse _xarg2084121266_)))
                                    (if (gx#stx-null? _tl2082121221_)
                                        ((lambda (_L21296_ _L21297_ _L21298_)
                                           (gxc#generate-runtime-binding-id
                                            _L21297_))
                                         _xarg2084221293_
                                         _hd2083221251_
                                         _arg2081821213_)
                                        (_g2080021179_ _g2080321182_)))))))
                    (_loop2083721261_ _target2083421256_ '()))
                  (_g2080021179_ _g2080321182_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2080021179_ _g2080321182_))
                                            (_g2080021179_ _g2080321182_))
                                        (_g2080021179_ _g2080321182_))))
                                (_g2080021179_ _g2080321182_))
                            (_g2080021179_ _g2080321182_))
                        (_g2080021179_ _g2080321182_))))
                (_g2080021179_ _g2080321182_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2080021179_ _g2080321182_))
                                            (_g2080021179_ _g2080321182_))
                                        (_g2080021179_ _g2080321182_))))
                                (_g2080021179_ _g2080321182_))))
                        (_g2080021179_ _g2080321182_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop2081321197_
                                             _target2081021192_
                                             '()))
                                          (_g2080021179_ _g2080321182_)))))
                                (_g2080021179_ _g2080321182_))
                            (_g2080021179_ _g2080321182_))))
                    (_g2080021179_ _g2080321182_)))))
        (_g2079921327_ _form20798_))))
  (define gxc#lambda-form-arity
    (lambda (_form20602_)
      (let* ((_g2060420618_
              (lambda (_g2060520615_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2060520615_)))
             (_g2060320795_
              (lambda (_g2060520621_)
                (if (gx#stx-pair? _g2060520621_)
                    (let ((_e2060820623_ (gx#stx-e _g2060520621_)))
                      (let ((_hd2060920626_ (##car _e2060820623_))
                            (_tl2061020628_ (##cdr _e2060820623_)))
                        (if (gx#stx-pair? _tl2061020628_)
                            (let ((_e2061120631_ (gx#stx-e _tl2061020628_)))
                              (let ((_hd2061220634_ (##car _e2061120631_))
                                    (_tl2061320636_ (##cdr _e2061120631_)))
                                (if (gx#stx-null? _tl2061320636_)
                                    ((lambda (_L20639_ _L20640_)
                                       (let* ((_g2065520683_
                                               (lambda (_g2065620680_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g2065620680_)))
                                              (_g2065420696_
                                               (lambda (_g2065620686_)
                                                 ((lambda (_L20688_)
                                                    (cons '0 '()))
                                                  _g2065620686_)))
                                              (_g2065320745_
                                               (lambda (_g2065620699_)
                                                 (if (gx#stx-pair/null?
                                                      _g2065620699_)
                                                     (if (fx>= (gx#stx-length
                                                                _g2065620699_)
                                                               '0)
                                                         (let ((_g23648_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2065620699_
                         '0)))
                   (begin
                     (let ((_g23649_ (values-count _g23648_)))
                       (if (not (fx= _g23649_ 2))
                           (error "Context expects 2 values" _g23649_)))
                     (let ((_target2066920701_ (values-ref _g23648_ 0))
                           (_tl2067120703_ (values-ref _g23648_ 1)))
                       (letrec ((_loop2067220706_
                                 (lambda (_hd2067020709_ _arg2067620711_)
                                   (if (gx#stx-pair? _hd2067020709_)
                                       (let ((_e2067320714_
                                              (gx#stx-e _hd2067020709_)))
                                         (let ((_lp-hd2067420717_
                                                (##car _e2067320714_))
                                               (_lp-tl2067520719_
                                                (##cdr _e2067320714_)))
                                           (_loop2067220706_
                                            _lp-tl2067520719_
                                            (cons _lp-hd2067420717_
                                                  _arg2067620711_))))
                                       (let ((_arg2067720722_
                                              (reverse _arg2067620711_)))
                                         ((lambda (_L20725_ _L20726_)
                                            (cons (length (begin
                                                            '#!void
                                                            (foldr1 (lambda (_g2073720740_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g2073820742_)
                              (cons _g2073720740_ _g2073820742_))
                            '()
                            _L20726_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                          _tl2067120703_
                                          _arg2067720722_))))))
                         (_loop2067220706_ _target2066920701_ '())))))
                 (_g2065420696_ _g2065620699_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2065420696_
                                                      _g2065620699_))))
                                              (_g2065220792_
                                               (lambda (_g2065620748_)
                                                 (if (gx#stx-pair/null?
                                                      _g2065620748_)
                                                     (if (fx>= (gx#stx-length
                                                                _g2065620748_)
                                                               '0)
                                                         (let ((_g23650_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2065620748_
                         '0)))
                   (begin
                     (let ((_g23651_ (values-count _g23650_)))
                       (if (not (fx= _g23651_ 2))
                           (error "Context expects 2 values" _g23651_)))
                     (let ((_target2065820750_ (values-ref _g23650_ 0))
                           (_tl2066020752_ (values-ref _g23650_ 1)))
                       (if (gx#stx-null? _tl2066020752_)
                           (letrec ((_loop2066120755_
                                     (lambda (_hd2065920758_ _arg2066520760_)
                                       (if (gx#stx-pair? _hd2065920758_)
                                           (let ((_e2066220763_
                                                  (gx#stx-e _hd2065920758_)))
                                             (let ((_lp-hd2066320766_
                                                    (##car _e2066220763_))
                                                   (_lp-tl2066420768_
                                                    (##cdr _e2066220763_)))
                                               (_loop2066120755_
                                                _lp-tl2066420768_
                                                (cons _lp-hd2066320766_
                                                      _arg2066520760_))))
                                           (let ((_arg2066620771_
                                                  (reverse _arg2066520760_)))
                                             ((lambda (_L20774_)
                                                (length (begin
                                                          '#!void
                                                          (foldr1 (lambda (_g2078420787_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g2078520789_)
                            (cons _g2078420787_ _g2078520789_))
                          '()
                          _L20774_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _arg2066620771_))))))
                             (_loop2066120755_ _target2065820750_ '()))
                           (_g2065320745_ _g2065620748_)))))
                 (_g2065320745_ _g2065620748_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2065320745_
                                                      _g2065620748_)))))
                                         (_g2065220792_ _L20640_)))
                                     _hd2061220634_
                                     _hd2060920626_)
                                    (_g2060420618_ _g2060520621_))))
                            (_g2060420618_ _g2060520621_))))
                    (_g2060420618_ _g2060520621_)))))
        (_g2060320795_ _form20602_))))
  (define gxc#lambda-expr?
    (lambda (_expr20555_)
      (let* ((_g2055820568_
              (lambda (_g2055920565_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2055920565_)))
             (_g2055720575_ (lambda (_g2055920571_) ((lambda () '#f))))
             (_g2055620599_
              (lambda (_g2055920578_)
                (if (gx#stx-pair? _g2055920578_)
                    (let ((_e2056120580_ (gx#stx-e _g2055920578_)))
                      (let ((_hd2056220583_ (##car _e2056120580_))
                            (_tl2056320585_ (##cdr _e2056120580_)))
                        (if (gx#identifier? _hd2056220583_)
                            (if (gx#stx-eq? '%#lambda _hd2056220583_)
                                ((lambda (_L20588_) '#t) _tl2056320585_)
                                (_g2055720575_ _g2055920578_))
                            (_g2055720575_ _g2055920578_))))
                    (_g2055720575_ _g2055920578_)))))
        (_g2055620599_ _expr20555_))))
  (define gxc#case-lambda-expr?
    (lambda (_expr20508_)
      (let* ((_g2051120521_
              (lambda (_g2051220518_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2051220518_)))
             (_g2051020528_ (lambda (_g2051220524_) ((lambda () '#f))))
             (_g2050920552_
              (lambda (_g2051220531_)
                (if (gx#stx-pair? _g2051220531_)
                    (let ((_e2051420533_ (gx#stx-e _g2051220531_)))
                      (let ((_hd2051520536_ (##car _e2051420533_))
                            (_tl2051620538_ (##cdr _e2051420533_)))
                        (if (gx#identifier? _hd2051520536_)
                            (if (gx#stx-eq? '%#case-lambda _hd2051520536_)
                                ((lambda (_L20541_) '#t) _tl2051620538_)
                                (_g2051020528_ _g2051220531_))
                            (_g2051020528_ _g2051220531_))))
                    (_g2051020528_ _g2051220531_)))))
        (_g2050920552_ _expr20508_))))
  (define gxc#opt-lambda-expr?
    (lambda (_expr20377_)
      (let* ((_g2038020410_
              (lambda (_g2038120407_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2038120407_)))
             (_g2037920417_ (lambda (_g2038120413_) ((lambda () '#f))))
             (_g2037820505_
              (lambda (_g2038120420_)
                (if (gx#stx-pair? _g2038120420_)
                    (let ((_e2038520422_ (gx#stx-e _g2038120420_)))
                      (let ((_hd2038620425_ (##car _e2038520422_))
                            (_tl2038720427_ (##cdr _e2038520422_)))
                        (if (gx#identifier? _hd2038620425_)
                            (if (gx#stx-eq? '%#let-values _hd2038620425_)
                                (if (gx#stx-pair? _tl2038720427_)
                                    (let ((_e2038820430_
                                           (gx#stx-e _tl2038720427_)))
                                      (let ((_hd2038920433_
                                             (##car _e2038820430_))
                                            (_tl2039020435_
                                             (##cdr _e2038820430_)))
                                        (if (gx#stx-pair? _hd2038920433_)
                                            (let ((_e2039120438_
                                                   (gx#stx-e _hd2038920433_)))
                                              (let ((_hd2039220441_
                                                     (##car _e2039120438_))
                                                    (_tl2039320443_
                                                     (##cdr _e2039120438_)))
                                                (if (gx#stx-pair?
                                                     _hd2039220441_)
                                                    (let ((_e2039420446_
                                                           (gx#stx-e
                                                            _hd2039220441_)))
                                                      (let ((_hd2039520449_
                                                             (##car _e2039420446_))
                                                            (_tl2039620451_
                                                             (##cdr _e2039420446_)))
                                                        (if (gx#stx-pair?
                                                             _hd2039520449_)
                                                            (let ((_e2039720454_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2039520449_)))
                      (let ((_hd2039820457_ (##car _e2039720454_))
                            (_tl2039920459_ (##cdr _e2039720454_)))
                        (if (gx#stx-null? _tl2039920459_)
                            (if (gx#stx-pair? _tl2039620451_)
                                (let ((_e2040020462_
                                       (gx#stx-e _tl2039620451_)))
                                  (let ((_hd2040120465_ (##car _e2040020462_))
                                        (_tl2040220467_ (##cdr _e2040020462_)))
                                    (if (gx#stx-null? _tl2040220467_)
                                        (if (gx#stx-null? _tl2039320443_)
                                            (if (gx#stx-pair? _tl2039020435_)
                                                (let ((_e2040320470_
                                                       (gx#stx-e
                                                        _tl2039020435_)))
                                                  (let ((_hd2040420473_
                                                         (##car _e2040320470_))
                                                        (_tl2040520475_
                                                         (##cdr _e2040320470_)))
                                                    (if (gx#stx-null?
                                                         _tl2040520475_)
                                                        ((lambda (_L20478_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L20479_
                          _L20480_)
                   (if (gx#identifier? _L20480_)
                       (if (gxc#lambda-expr? _L20479_)
                           (gxc#case-lambda-expr? _L20478_)
                           '#f)
                       '#f))
                 _hd2040420473_
                 _hd2040120465_
                 _hd2039820457_)
                (_g2037920417_ _g2038120420_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2037920417_ _g2038120420_))
                                            (_g2037920417_ _g2038120420_))
                                        (_g2037920417_ _g2038120420_))))
                                (_g2037920417_ _g2038120420_))
                            (_g2037920417_ _g2038120420_))))
                    (_g2037920417_ _g2038120420_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2037920417_
                                                     _g2038120420_))))
                                            (_g2037920417_ _g2038120420_))))
                                    (_g2037920417_ _g2038120420_))
                                (_g2037920417_ _g2038120420_))
                            (_g2037920417_ _g2038120420_))))
                    (_g2037920417_ _g2038120420_)))))
        (_g2037820505_ _expr20377_))))
  (begin
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx20119_ _id20120_ _clauses20121_ _gensym?20122_)
        (let _lp20124_ ((_rest20126_ _clauses20121_)
                        (_ids20127_ '())
                        (_impls20128_ '())
                        (_clauses20129_ '()))
          (let* ((_rest2013020138_ _rest20126_)
                 (_E2013320142_
                  (lambda () (error '"No clause matching" _rest2013020138_)))
                 (_else2013220146_
                  (lambda ()
                    (values (reverse _ids20127_)
                            (reverse _impls20128_)
                            (reverse _clauses20129_))))
                 (_K2013420351_
                  (lambda (_rest20149_ _clause20150_)
                    (if (gxc#dispatch-lambda-form? _clause20150_)
                        (_lp20124_
                         _rest20149_
                         _ids20127_
                         _impls20128_
                         (cons _clause20150_ _clauses20129_))
                        (let* ((_g2015220163_
                                (lambda (_g2015320160_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2015320160_)))
                               (_g2015120348_
                                (lambda (_g2015320166_)
                                  (if (gx#stx-pair? _g2015320166_)
                                      (let ((_e2015620168_
                                             (gx#stx-e _g2015320166_)))
                                        (let ((_hd2015720171_
                                               (##car _e2015620168_))
                                              (_tl2015820173_
                                               (##cdr _e2015620168_)))
                                          ((lambda (_L20176_ _L20177_)
                                             (let* ((_id20194_
                                                     (make-symbol
                                                      (gx#stx-e _id20120_)
                                                      '"__"
                                                      (length _clauses20129_)
                                                      (if _gensym?20122_
                                                          (gensym '__)
                                                          '"")))
                                                    (_id20196_
                                                     (gx#core-quote-syntax__1
                                                      _id20194_
                                                      (gx#stx-source
                                                       _stx20119_)))
                                                    (_impl20198_
                                                     (gxc#xform-wrap-source
                                                      (cons (gx#datum->syntax__0
                                                             '#f
                                                             '%#lambda)
                                                            (cons _L20177_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L20176_))
              _stx20119_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause20345_
                                                     (let* ((_g2020220230_
                                                             (lambda (_g2020320227_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2020320227_)))
                                                            (_g2020120246_
                                                             (lambda (_g2020320233_)
                                                               ((lambda (_L20235_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L20177_
                                (cons (gxc#xform-wrap-source
                                       (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'apply '()))
                                                   (cons (cons '%#ref
                                                               (cons _id20196_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                             (cons _L20235_ '()))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _stx20119_)
                                      '())))
                        _g2020320233_)))
                    (_g2020020295_
                     (lambda (_g2020320249_)
                       (if (gx#stx-pair/null? _g2020320249_)
                           (if (fx>= (gx#stx-length _g2020320249_) '0)
                               (let ((_g23652_
                                      (gx#syntax-split-splice
                                       _g2020320249_
                                       '0)))
                                 (begin
                                   (let ((_g23653_ (values-count _g23652_)))
                                     (if (not (fx= _g23653_ 2))
                                         (error "Context expects 2 values"
                                                _g23653_)))
                                   (let ((_target2021620251_
                                          (values-ref _g23652_ 0))
                                         (_tl2021820253_
                                          (values-ref _g23652_ 1)))
                                     (letrec ((_loop2021920256_
                                               (lambda (_hd2021720259_
                                                        _arg2022320261_)
                                                 (if (gx#stx-pair?
                                                      _hd2021720259_)
                                                     (let ((_e2022020264_
                                                            (gx#stx-e
                                                             _hd2021720259_)))
                                                       (let ((_lp-hd2022120267_
                                                              (##car _e2022020264_))
                                                             (_lp-tl2022220269_
                                                              (##cdr _e2022020264_)))
                                                         (_loop2021920256_
                                                          _lp-tl2022220269_
                                                          (cons _lp-hd2022120267_
                                                                _arg2022320261_))))
                                                     (let ((_arg2022420272_
                                                            (reverse _arg2022320261_)))
                                                       ((lambda (_L20275_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L20276_)
                  (cons _L20177_
                        (cons (gxc#xform-wrap-source
                               (cons '%#call
                                     (cons (cons '%#ref (cons 'apply '()))
                                           (cons (cons '%#ref
                                                       (cons _id20196_ '()))
                                                 (foldr1 cons
                                                         (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '%#ref)
                             (cons _L20275_ '()))
                       '())
                 (begin
                   '#!void
                   (foldr1 (lambda (_g2028720290_ _g2028820292_)
                             (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                         (cons _g2028720290_ '()))
                                   _g2028820292_))
                           '()
                           _L20276_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _stx20119_)
                              '())))
                _tl2021820253_
                _arg2022420272_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop2021920256_
                                        _target2021620251_
                                        '())))))
                               (_g2020120246_ _g2020320249_))
                           (_g2020120246_ _g2020320249_))))
                    (_g2019920342_
                     (lambda (_g2020320298_)
                       (if (gx#stx-pair/null? _g2020320298_)
                           (if (fx>= (gx#stx-length _g2020320298_) '0)
                               (let ((_g23654_
                                      (gx#syntax-split-splice
                                       _g2020320298_
                                       '0)))
                                 (begin
                                   (let ((_g23655_ (values-count _g23654_)))
                                     (if (not (fx= _g23655_ 2))
                                         (error "Context expects 2 values"
                                                _g23655_)))
                                   (let ((_target2020520300_
                                          (values-ref _g23654_ 0))
                                         (_tl2020720302_
                                          (values-ref _g23654_ 1)))
                                     (if (gx#stx-null? _tl2020720302_)
                                         (letrec ((_loop2020820305_
                                                   (lambda (_hd2020620308_
                                                            _arg2021220310_)
                                                     (if (gx#stx-pair?
                                                          _hd2020620308_)
                                                         (let ((_e2020920313_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd2020620308_)))
                   (let ((_lp-hd2021020316_ (##car _e2020920313_))
                         (_lp-tl2021120318_ (##cdr _e2020920313_)))
                     (_loop2020820305_
                      _lp-tl2021120318_
                      (cons _lp-hd2021020316_ _arg2021220310_))))
                 (let ((_arg2021320321_ (reverse _arg2021220310_)))
                   ((lambda (_L20324_)
                      (cons _L20177_
                            (cons (gxc#xform-wrap-source
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _id20196_ '()))
                                               (begin
                                                 '#!void
                                                 (foldr1 (lambda (_g2033420337_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g2033520339_)
                   (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                               (cons _g2033420337_ '()))
                         _g2033520339_))
                 '()
                 _L20324_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _stx20119_)
                                  '())))
                    _arg2021320321_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop2020820305_
                                            _target2020520300_
                                            '()))
                                         (_g2020020295_ _g2020320298_)))))
                               (_g2020020295_ _g2020320298_))
                           (_g2020020295_ _g2020320298_)))))
               (_g2019920342_ _L20177_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_lp20124_
                                                _rest20149_
                                                (cons _id20196_ _ids20127_)
                                                (cons _impl20198_ _impls20128_)
                                                (cons _clause20345_
                                                      _clauses20129_))))
                                           _tl2015820173_
                                           _hd2015720171_)))
                                      (_g2015220163_ _g2015320166_)))))
                          (_g2015120348_ _clause20150_))))))
            (if (##pair? _rest2013020138_)
                (let ((_hd2013520354_ (##car _rest2013020138_))
                      (_tl2013620356_ (##cdr _rest2013020138_)))
                  (let* ((_clause20359_ _hd2013520354_)
                         (_rest20361_ _tl2013620356_))
                    (_K2013420351_ _rest20361_ _clause20359_)))
                (_else2013220146_))))))
    (begin
      (define gxc#lift-case-lambda-clauses__0
        (lambda (_stx20366_ _id20367_ _clauses20368_)
          (let ((_gensym?20370_ '#f))
            (gxc#lift-case-lambda-clauses__%
             _stx20366_
             _id20367_
             _clauses20368_
             _gensym?20370_))))
      (define gxc#lift-case-lambda-clauses
        (lambda _g23657_
          (let ((_g23656_ (length _g23657_)))
            (cond ((fx= _g23656_ 3)
                   (apply gxc#lift-case-lambda-clauses__0 _g23657_))
                  ((fx= _g23656_ 4)
                   (apply gxc#lift-case-lambda-clauses__% _g23657_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#lift-case-lambda-clauses
                    _g23657_))))))))
  (define gxc#lift-top-lambda-define-values%
    (lambda (_stx19703_)
      (letrec ((_case-lambda-clause-def19705_
                (lambda (_id20115_ _impl20116_)
                  (gxc#xform-wrap-source
                   (cons '%#define-values
                         (cons (cons _id20115_ '())
                               (cons (gxc#compile-e _impl20116_) '())))
                   _stx19703_)))
               (_opt-lambda-dispatch-name19706_
                (lambda (_id20111_)
                  (if (uninterned-symbol? _id20111_)
                      (let ((_str20113_ (symbol->string _id20111_)))
                        (if (string-prefix? _str20113_ '"opt-lambda")
                            '"%"
                            _id20111_))
                      _id20111_))))
        (let* ((_g1971019755_
                (lambda (_g1971119752_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1971119752_)))
               (_g1970919801_
                (lambda (_g1971119758_)
                  (if (gx#stx-pair? _g1971119758_)
                      (let ((_e1974219760_ (gx#stx-e _g1971119758_)))
                        (let ((_hd1974319763_ (##car _e1974219760_))
                              (_tl1974419765_ (##cdr _e1974219760_)))
                          (if (gx#stx-pair? _tl1974419765_)
                              (let ((_e1974519768_ (gx#stx-e _tl1974419765_)))
                                (let ((_hd1974619771_ (##car _e1974519768_))
                                      (_tl1974719773_ (##cdr _e1974519768_)))
                                  (if (gx#stx-pair? _tl1974719773_)
                                      (let ((_e1974819776_
                                             (gx#stx-e _tl1974719773_)))
                                        (let ((_hd1974919779_
                                               (##car _e1974819776_))
                                              (_tl1975019781_
                                               (##cdr _e1974819776_)))
                                          (if (gx#stx-null? _tl1975019781_)
                                              ((lambda (_L19784_ _L19785_)
                                                 (gxc#xform-wrap-source
                                                  (cons '%#define-values
                                                        (cons _L19785_
                                                              (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L19784_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx19703_))
                                               _hd1974919779_
                                               _hd1974619771_)
                                              (_g1971019755_ _g1971119758_))))
                                      (_g1971019755_ _g1971119758_))))
                              (_g1971019755_ _g1971119758_))))
                      (_g1971019755_ _g1971119758_))))
               (_g1970819983_
                (lambda (_g1971119804_)
                  (if (gx#stx-pair? _g1971119804_)
                      (let ((_e1972819806_ (gx#stx-e _g1971119804_)))
                        (let ((_hd1972919809_ (##car _e1972819806_))
                              (_tl1973019811_ (##cdr _e1972819806_)))
                          (if (gx#stx-pair? _tl1973019811_)
                              (let ((_e1973119814_ (gx#stx-e _tl1973019811_)))
                                (let ((_hd1973219817_ (##car _e1973119814_))
                                      (_tl1973319819_ (##cdr _e1973119814_)))
                                  (if (gx#stx-pair? _hd1973219817_)
                                      (let ((_e1973419822_
                                             (gx#stx-e _hd1973219817_)))
                                        (let ((_hd1973519825_
                                               (##car _e1973419822_))
                                              (_tl1973619827_
                                               (##cdr _e1973419822_)))
                                          (if (gx#stx-null? _tl1973619827_)
                                              (if (gx#stx-pair? _tl1973319819_)
                                                  (let ((_e1973719830_
                                                         (gx#stx-e
                                                          _tl1973319819_)))
                                                    (let ((_hd1973819833_
                                                           (##car _e1973719830_))
                                                          (_tl1973919835_
                                                           (##cdr _e1973719830_)))
                                                      (if (gx#stx-null?
                                                           _tl1973919835_)
                                                          ((lambda (_L19838_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L19839_)
                     (if (if (gx#identifier? _L19839_)
                             (gxc#opt-lambda-expr? _L19838_)
                             '#f)
                         (let* ((_g1985519885_
                                 (lambda (_g1985619882_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1985619882_)))
                                (_g1985419980_
                                 (lambda (_g1985619888_)
                                   (if (gx#stx-pair? _g1985619888_)
                                       (let ((_e1986019890_
                                              (gx#stx-e _g1985619888_)))
                                         (let ((_hd1986119893_
                                                (##car _e1986019890_))
                                               (_tl1986219895_
                                                (##cdr _e1986019890_)))
                                           (if (gx#stx-pair? _tl1986219895_)
                                               (let ((_e1986319898_
                                                      (gx#stx-e
                                                       _tl1986219895_)))
                                                 (let ((_hd1986419901_
                                                        (##car _e1986319898_))
                                                       (_tl1986519903_
                                                        (##cdr _e1986319898_)))
                                                   (if (gx#stx-pair?
                                                        _hd1986419901_)
                                                       (let ((_e1986619906_
                                                              (gx#stx-e
                                                               _hd1986419901_)))
                                                         (let ((_hd1986719909_
                                                                (##car _e1986619906_))
                                                               (_tl1986819911_
                                                                (##cdr _e1986619906_)))
                                                           (if (gx#stx-pair?
                                                                _hd1986719909_)
                                                               (let ((_e1986919914_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1986719909_)))
                         (let ((_hd1987019917_ (##car _e1986919914_))
                               (_tl1987119919_ (##cdr _e1986919914_)))
                           (if (gx#stx-pair? _hd1987019917_)
                               (let ((_e1987219922_ (gx#stx-e _hd1987019917_)))
                                 (let ((_hd1987319925_ (##car _e1987219922_))
                                       (_tl1987419927_ (##cdr _e1987219922_)))
                                   (if (gx#stx-null? _tl1987419927_)
                                       (if (gx#stx-pair? _tl1987119919_)
                                           (let ((_e1987519930_
                                                  (gx#stx-e _tl1987119919_)))
                                             (let ((_hd1987619933_
                                                    (##car _e1987519930_))
                                                   (_tl1987719935_
                                                    (##cdr _e1987519930_)))
                                               (if (gx#stx-null?
                                                    _tl1987719935_)
                                                   (if (gx#stx-null?
                                                        _tl1986819911_)
                                                       (if (gx#stx-pair?
                                                            _tl1986519903_)
                                                           (let ((_e1987819938_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1986519903_)))
                     (let ((_hd1987919941_ (##car _e1987819938_))
                           (_tl1988019943_ (##cdr _e1987819938_)))
                       (if (gx#stx-null? _tl1988019943_)
                           ((lambda (_L19946_ _L19947_ _L19948_)
                              (let* ((_lambda-id19972_
                                      (make-symbol
                                       (gx#stx-e _L19839_)
                                       '"__"
                                       (_opt-lambda-dispatch-name19706_
                                        (gx#stx-e _L19948_))))
                                     (_lambda-id19974_
                                      (gx#core-quote-syntax__1
                                       _lambda-id19972_
                                       (gx#stx-source _stx19703_)))
                                     (_g23658_
                                      (gx#core-bind-runtime!__0
                                       _lambda-id19974_))
                                     (_new-case-lambda-expr19977_
                                      (gxc#apply-expression-subst
                                       _L19946_
                                       _L19948_
                                       _lambda-id19974_)))
                                (begin
                                  (gxc#verbose
                                   '"lift opt-lambda dispatch "
                                   (gxc#generate-runtime-binding-id _L19839_)
                                   '" => "
                                   (gxc#generate-runtime-binding-id
                                    _lambda-id19974_))
                                  (gxc#xform-wrap-source
                                   (cons '%#begin
                                         (cons (gxc#xform-wrap-source
                                                (cons '%#define-values
                                                      (cons (cons _lambda-id19974_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (gxc#compile-e _L19947_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _stx19703_)
                                               (cons (gxc#lift-top-lambda-define-values%
                                                      (gxc#xform-wrap-source
                                                       (cons '%#define-values
                                                             (cons (cons _L19839_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons _new-case-lambda-expr19977_ '())))
               _stx19703_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   _stx19703_))))
                            _hd1987919941_
                            _hd1987619933_
                            _hd1987319925_)
                           (_g1985519885_ _g1985619888_))))
                   (_g1985519885_ _g1985619888_))
               (_g1985519885_ _g1985619888_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1985519885_
                                                    _g1985619888_))))
                                           (_g1985519885_ _g1985619888_))
                                       (_g1985519885_ _g1985619888_))))
                               (_g1985519885_ _g1985619888_))))
                       (_g1985519885_ _g1985619888_))))
               (_g1985519885_ _g1985619888_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1985519885_ _g1985619888_))))
                                       (_g1985519885_ _g1985619888_)))))
                           (_g1985419980_ _L19838_))
                         (_g1970919801_ _g1971119804_)))
                   _hd1973819833_
                   _hd1973519825_)
                  (_g1970919801_ _g1971119804_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1970919801_
                                                   _g1971119804_))
                                              (_g1970919801_ _g1971119804_))))
                                      (_g1970919801_ _g1971119804_))))
                              (_g1970919801_ _g1971119804_))))
                      (_g1970919801_ _g1971119804_))))
               (_g1970720108_
                (lambda (_g1971119986_)
                  (if (gx#stx-pair? _g1971119986_)
                      (let ((_e1971419988_ (gx#stx-e _g1971119986_)))
                        (let ((_hd1971519991_ (##car _e1971419988_))
                              (_tl1971619993_ (##cdr _e1971419988_)))
                          (if (gx#stx-pair? _tl1971619993_)
                              (let ((_e1971719996_ (gx#stx-e _tl1971619993_)))
                                (let ((_hd1971819999_ (##car _e1971719996_))
                                      (_tl1971920001_ (##cdr _e1971719996_)))
                                  (if (gx#stx-pair? _hd1971819999_)
                                      (let ((_e1972020004_
                                             (gx#stx-e _hd1971819999_)))
                                        (let ((_hd1972120007_
                                               (##car _e1972020004_))
                                              (_tl1972220009_
                                               (##cdr _e1972020004_)))
                                          (if (gx#stx-null? _tl1972220009_)
                                              (if (gx#stx-pair? _tl1971920001_)
                                                  (let ((_e1972320012_
                                                         (gx#stx-e
                                                          _tl1971920001_)))
                                                    (let ((_hd1972420015_
                                                           (##car _e1972320012_))
                                                          (_tl1972520017_
                                                           (##cdr _e1972320012_)))
                                                      (if (gx#stx-null?
                                                           _tl1972520017_)
                                                          ((lambda (_L20020_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L20021_)
                     (if (if (gx#identifier? _L20021_)
                             (gxc#case-lambda-expr? _L20020_)
                             '#f)
                         (let* ((_g2003820052_
                                 (lambda (_g2003920049_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g2003920049_)))
                                (_g2003720083_
                                 (lambda (_g2003920055_)
                                   (if (gx#stx-pair? _g2003920055_)
                                       (let ((_e2004520057_
                                              (gx#stx-e _g2003920055_)))
                                         (let ((_hd2004620060_
                                                (##car _e2004520057_))
                                               (_tl2004720062_
                                                (##cdr _e2004520057_)))
                                           ((lambda (_L20065_)
                                              (let ((_g23659_
                                                     (gxc#lift-case-lambda-clauses__0
                                                      _stx19703_
                                                      _L20021_
                                                      _L20065_)))
                                                (begin
                                                  (let ((_g23660_
                                                         (values-count
                                                          _g23659_)))
                                                    (if (not (fx= _g23660_ 3))
                                                        (error "Context expects 3 values"
                                                               _g23660_)))
                                                  (let ((_ids20075_
                                                         (values-ref
                                                          _g23659_
                                                          0))
                                                        (_impls20076_
                                                         (values-ref
                                                          _g23659_
                                                          1))
                                                        (_clauses20077_
                                                         (values-ref
                                                          _g23659_
                                                          2)))
                                                    (let* ((_g23661_
                                                            (for-each
                                                             gx#core-bind-runtime!
                                                             _ids20075_))
                                                           (_defs20080_
                                                            (map _case-lambda-clause-def19705_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _ids20075_
                         _impls20076_)))
              (begin
                (gxc#verbose
                 '"lift case-lambda clauses "
                 (gxc#generate-runtime-binding-id _L20021_)
                 '" => "
                 (map gxc#identifier-symbol _ids20075_))
                (gxc#xform-wrap-source
                 (cons '%#begin
                       (foldr1 cons
                               (cons (gxc#xform-wrap-source
                                      (cons '%#define-values
                                            (cons (cons _L20021_ '())
                                                  (cons (gxc#xform-wrap-source
                                                         (cons '%#case-lambda
                                                               _clauses20077_)
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'case-lambda-expr))
                                                        '())))
                                      _stx19703_)
                                     '())
                               _defs20080_))
                 _stx19703_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _tl2004720062_)))
                                       (_g2003820052_ _g2003920055_))))
                                (_g2003620105_
                                 (lambda (_g2003920086_)
                                   (if (gx#stx-pair? _g2003920086_)
                                       (let ((_e2004120088_
                                              (gx#stx-e _g2003920086_)))
                                         (let ((_hd2004220091_
                                                (##car _e2004120088_))
                                               (_tl2004320093_
                                                (##cdr _e2004120088_)))
                                           ((lambda (_L20096_)
                                              (if (andmap1 gxc#dispatch-lambda-form?
                                                           _L20096_)
                                                  _stx19703_
                                                  (_g2003720083_
                                                   _g2003920086_)))
                                            _tl2004320093_)))
                                       (_g2003720083_ _g2003920086_)))))
                           (_g2003620105_ _L20020_))
                         (_g1970819983_ _g1971119986_)))
                   _hd1972420015_
                   _hd1972120007_)
                  (_g1970819983_ _g1971119986_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1970819983_
                                                   _g1971119986_))
                                              (_g1970819983_ _g1971119986_))))
                                      (_g1970819983_ _g1971119986_))))
                              (_g1970819983_ _g1971119986_))))
                      (_g1970819983_ _g1971119986_)))))
          (_g1970720108_ _stx19703_)))))
  (define gxc#lift-top-lambda-let-values%
    (lambda (_stx19126_)
      (letrec* ((_bind-e__opt-lambda19685__2360823609_
                 (lambda (_id19687_ _expr19688_ _compile?19689_)
                   (cons (cons _id19687_ '())
                         (cons (if _compile?19689_
                                   (gxc#compile-e _expr19688_)
                                   _expr19688_)
                               '()))))
                (_bind-e__0__2361023611_
                 (lambda (_id19694_ _expr19695_)
                   (let ((_compile?19697_ '#t))
                     (_bind-e__opt-lambda19685__2360823609_
                      _id19694_
                      _expr19695_
                      _compile?19697_))))
                (_bind-e19128_
                 (lambda _g23663_
                   (let ((_g23662_ (length _g23663_)))
                     (cond ((fx= _g23662_ 2)
                            (apply _bind-e__0__2361023611_ _g23663_))
                           ((fx= _g23662_ 3)
                            (apply _bind-e__opt-lambda19685__2360823609_
                                   _g23663_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g23663_))))))
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
                                                    (_g23664_
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
                                                  (cons (_bind-e__opt-lambda19685__2360823609_
                                                         _L19410_
                                                         _new-case-lambda-expr19546_
                                                         '#f)
                                                        _rest19298_)
                                                  (cons (_bind-e__0__2361023611_
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
                                                             (let ((_g23665_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#lift-case-lambda-clauses__%
                             _stx19126_
                             _L19582_
                             _L19624_
                             '#t)))
                       (begin
                         (let ((_g23666_ (values-count _g23665_)))
                           (if (not (fx= _g23666_ 3))
                               (error "Context expects 3 values" _g23666_)))
                         (let ((_ids19634_ (values-ref _g23665_ 0))
                               (_impls19635_ (values-ref _g23665_ 1))
                               (_clauses19636_ (values-ref _g23665_ 2)))
                           (let* ((_g23667_
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
                                   (_bind-e__opt-lambda19685__2360823609_
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
                          (cons (_bind-e__opt-lambda19685__2360823609_
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
                                          (let ((_g23668_
                                                 (gx#syntax-split-splice
                                                  _hd1914019181_
                                                  '0)))
                                            (begin
                                              (let ((_g23669_
                                                     (values-count _g23668_)))
                                                (if (not (fx= _g23669_ 2))
                                                    (error "Context expects 2 values"
                                                           _g23669_)))
                                              (let ((_target1914219186_
                                                     (values-ref _g23668_ 0))
                                                    (_tl1914419188_
                                                     (values-ref _g23668_ 1)))
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
                                                    (let ((_g23670_
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
                (let ((_g23671_ (values-count _g23670_)))
                  (if (not (fx= _g23671_ 3))
                      (error "Context expects 3 values" _g23671_)))
                (let ((_lift119255_ (values-ref _g23670_ 0))
                      (_lift219256_ (values-ref _g23670_ 1))
                      (_hd19257_ (values-ref _g23670_ 2)))
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
                                                  (let ((__obj23618
                                                         (make-object
                                                          gx#local-context::t
                                                          '5)))
                                                    (begin
                                                      (gx#local-context:::init!__0
                                                       __obj23618)
                                                      __obj23618)))
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
      (letrec* ((_bind-e__opt-lambda19108__2361323614_
                 (lambda (_id19110_ _expr19111_ _compile?19112_)
                   (cons (cons _id19110_ '())
                         (cons (if _compile?19112_
                                   (gxc#compile-e _expr19111_)
                                   _expr19111_)
                               '()))))
                (_bind-e__0__2361523616_
                 (lambda (_id19117_ _expr19118_)
                   (let ((_compile?19120_ '#t))
                     (_bind-e__opt-lambda19108__2361323614_
                      _id19117_
                      _expr19118_
                      _compile?19120_))))
                (_bind-e18560_
                 (lambda _g23673_
                   (let ((_g23672_ (length _g23673_)))
                     (cond ((fx= _g23672_ 2)
                            (apply _bind-e__0__2361523616_ _g23673_))
                           ((fx= _g23672_ 3)
                            (apply _bind-e__opt-lambda19108__2361323614_
                                   _g23673_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g23673_))))))
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
                                                    (_g23674_
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
                                                  (cons (_bind-e__opt-lambda19108__2361323614_
                                                         _L18833_
                                                         _new-case-lambda-expr18969_
                                                         '#f)
                                                        _rest18721_)
                                                  (cons (_bind-e__0__2361523616_
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
                                                             (let ((_g23675_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#lift-case-lambda-clauses__%
                             _stx18558_
                             _L19005_
                             _L19047_
                             '#t)))
                       (begin
                         (let ((_g23676_ (values-count _g23675_)))
                           (if (not (fx= _g23676_ 3))
                               (error "Context expects 3 values" _g23676_)))
                         (let ((_ids19057_ (values-ref _g23675_ 0))
                               (_impls19058_ (values-ref _g23675_ 1))
                               (_clauses19059_ (values-ref _g23675_ 2)))
                           (let* ((_g23677_
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
                                   (_bind-e__opt-lambda19108__2361323614_
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
                          (cons (_bind-e__opt-lambda19108__2361323614_
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
                                          (let ((_g23678_
                                                 (gx#syntax-split-splice
                                                  _hd1857318614_
                                                  '0)))
                                            (begin
                                              (let ((_g23679_
                                                     (values-count _g23678_)))
                                                (if (not (fx= _g23679_ 2))
                                                    (error "Context expects 2 values"
                                                           _g23679_)))
                                              (let ((_target1857518619_
                                                     (values-ref _g23678_ 0))
                                                    (_tl1857718621_
                                                     (values-ref _g23678_ 1)))
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
                                                  (let ((__obj23619
                                                         (make-object
                                                          gx#local-context::t
                                                          '5)))
                                                    (begin
                                                      (gx#local-context:::init!__0
                                                       __obj23619)
                                                      __obj23619)))
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
                     (gxc#optimizer-declare-type!__%
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
                                          (let ((_g23680_
                                                 (gx#syntax-split-splice
                                                  _hd1807118113_
                                                  '0)))
                                            (begin
                                              (let ((_g23681_
                                                     (values-count _g23680_)))
                                                (if (not (fx= _g23681_ 2))
                                                    (error "Context expects 2 values"
                                                           _g23681_)))
                                              (let ((_target1807318118_
                                                     (values-ref _g23680_ 0))
                                                    (_tl1807518120_
                                                     (values-ref _g23680_ 1)))
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
                   (gxc#optimizer-declare-method!__%
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
                                                       (gxc#optimizer-declare-method!__%
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
                               (let ((__obj23620
                                      (make-object gxc#!lambda::t '5)))
                                 (begin
                                   (gxc#!lambda:::init!__0
                                    __obj23620
                                    'lambda
                                    (gxc#lambda-form-arity _L17056_)
                                    (gxc#dispatch-lambda-form-delegate
                                     _L17056_))
                                   __obj23620))
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
                                        (let ((_g23682_
                                               (gx#syntax-split-splice
                                                _hd1697817083_
                                                '0)))
                                          (begin
                                            (let ((_g23683_
                                                   (values-count _g23682_)))
                                              (if (not (fx= _g23683_ 2))
                                                  (error "Context expects 2 values"
                                                         _g23683_)))
                                            (let ((_target1698017088_
                                                   (values-ref _g23682_ 0))
                                                  (_tl1698217090_
                                                   (values-ref _g23682_ 1)))
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
                                                    (let ((_g23684_
                                                           (gx#syntax-split-splice
                                                            _tl1700617157_
                                                            '0)))
                                                      (begin
                                                        (let ((_g23685_
                                                               (values-count
                                                                _g23684_)))
                                                          (if (not (fx= _g23685_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                2))
                      (error "Context expects 2 values" _g23685_)))
                (let ((_target1701317176_ (values-ref _g23684_ 0))
                      (_tl1701517178_ (values-ref _g23684_ 1)))
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
                  (let ((__obj23621 (make-object gxc#!lambda::t '5)))
                    (begin
                      (gxc#!lambda:::init!__0
                       __obj23621
                       'case-lambda-clause
                       (gxc#lambda-form-arity _form16908_)
                       (gxc#dispatch-lambda-form-delegate _form16908_))
                      __obj23621)))))
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
                                            ((lambda (_L16504_
                                                      _L16505_
                                                      _L16506_
                                                      _L16507_
                                                      _L16508_
                                                      _L16509_)
                                               (let* ((_super-t16555_
                                                       (if (gx#stx-e _L16508_)
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
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_fields16573_
                                                          (gx#stx-e _L16507_))
                                                         (_xfields16574_
                                                          (if _super-type16557_
                                                              (let ((_super-fields1655916562_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
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
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__obj23622
                                                            (make-object
                                                             gxc#!struct-type::t
                                                             '7)))
                                                       (begin
                                                         (gxc#!struct-type:::init!
                                                          __obj23622
                                                          (gx#stx-e _L16509_)
                                                          _super-t16555_
                                                          _fields16573_
                                                          _xfields16574_
                                                          _ctor16576_
                                                          _plist16575_)
                                                         __obj23622))))))
                                             _hd1635816499_
                                             _hd1634916475_
                                             _hd1634016451_
                                             _hd1633716443_
                                             _hd1632816419_
                                             _hd1631916395_)
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
                                                    ((lambda (_L16711_
                                                              _L16712_
                                                              _L16713_
                                                              _L16714_
                                                              _L16715_)
                                                       (let ((__obj23623
                                                              (make-object
                                                               gxc#!struct-type::t
                                                               '7)))
                                                         (begin
                                                           (gxc#!struct-type:::init!
                                                            __obj23623
                                                            (gx#stx-e _L16715_)
                                                            '#f
                                                            (gx#stx-e _L16714_)
                                                            '0
                                                            (gx#stx-e _L16711_)
                                                            (gx#stx-e
                                                             _L16712_))
                                                           __obj23623)))
                                                     _hd1630416706_
                                                     _hd1629516682_
                                                     _hd1628616658_
                                                     _hd1628316650_
                                                     _hd1626516602_)
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
    (define gxc#basic-expression-type-make-struct-field-accessor__%
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
            (gxc#basic-expression-type-make-struct-field-accessor__%
             _stx16163_
             _args16164_
             _unchecked?16166_))))
      (define gxc#basic-expression-type-make-struct-field-accessor
        (lambda _g23687_
          (let ((_g23686_ (length _g23687_)))
            (cond ((fx= _g23686_ 2)
                   (apply gxc#basic-expression-type-make-struct-field-accessor__0
                          _g23687_))
                  ((fx= _g23686_ 3)
                   (apply gxc#basic-expression-type-make-struct-field-accessor__%
                          _g23687_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#basic-expression-type-make-struct-field-accessor
                    _g23687_))))))))
  (begin
    (define gxc#basic-expression-type-make-struct-field-mutator__%
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
            (gxc#basic-expression-type-make-struct-field-mutator__%
             _stx16033_
             _args16034_
             _unchecked?16036_))))
      (define gxc#basic-expression-type-make-struct-field-mutator
        (lambda _g23689_
          (let ((_g23688_ (length _g23689_)))
            (cond ((fx= _g23688_ 2)
                   (apply gxc#basic-expression-type-make-struct-field-mutator__0
                          _g23689_))
                  ((fx= _g23688_ 3)
                   (apply gxc#basic-expression-type-make-struct-field-mutator__%
                          _g23689_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#basic-expression-type-make-struct-field-mutator
                    _g23689_))))))))
  (define gxc#basic-expression-type-make-struct-field-unchecked-accessor
    (lambda (_stx15909_ _args15910_)
      (gxc#basic-expression-type-make-struct-field-accessor__%
       _stx15909_
       _args15910_
       '#t)))
  (define gxc#basic-expression-type-make-struct-field-unchecked-mutator
    (lambda (_stx15906_ _args15907_)
      (gxc#basic-expression-type-make-struct-field-mutator__%
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
                                          (let ((_g23690_
                                                 (gx#syntax-split-splice
                                                  _hd1405614090_
                                                  '0)))
                                            (begin
                                              (let ((_g23691_
                                                     (values-count _g23690_)))
                                                (if (not (fx= _g23691_ 2))
                                                    (error "Context expects 2 values"
                                                           _g23691_)))
                                              (let ((_target1405814095_
                                                     (values-ref _g23690_ 0))
                                                    (_tl1406014097_
                                                     (values-ref _g23690_ 1)))
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
