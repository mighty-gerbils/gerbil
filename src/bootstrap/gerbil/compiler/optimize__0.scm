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
    (lambda _$args23583_
      (apply make-struct-instance gxc#optimizer-info::t _$args23583_)))
  (define gxc#optimizer-info-type
    (make-struct-field-accessor gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi
    (make-struct-field-accessor gxc#optimizer-info::t '1))
  (define gxc#optimizer-info-type-set!
    (make-struct-field-mutator gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi-set!
    (make-struct-field-mutator gxc#optimizer-info::t '1))
  (define gxc#optimizer-info:::init!
    (lambda (_self23581_)
      (if (##fx< '2 (##vector-length _self23581_))
          (begin
            (##vector-set! _self23581_ '1 (make-hash-table-eq))
            (##vector-set! _self23581_ '2 (make-hash-table-eq)))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self23581_))))
  (bind-method! gxc#optimizer-info::t ':init! gxc#optimizer-info:::init! '#f)
  (define gxc#optimizer-info-init!
    (lambda ()
      (if (gxc#current-compile-optimizer-info)
          '#!void
          (gxc#current-compile-optimizer-info
           (let ((__obj23595 (make-object gxc#optimizer-info::t '2)))
             (begin (gxc#optimizer-info:::init! __obj23595) __obj23595))))))
  (define gxc#optimize!
    (lambda (_ctx23453_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#optimizer-load-ssxi-deps _ctx23453_)
           (table-set!
            (##structure-ref
             (gxc#current-compile-optimizer-info)
             '2
             gxc#optimizer-info::t
             '#f)
            (##structure-ref _ctx23453_ '1 gx#expander-context::t '#f)
            '#t)
           (let ((_code23456_
                  (gxc#optimize-source
                   (##structure-ref _ctx23453_ '11 gx#module-context::t '#f))))
             (##structure-set!
              _ctx23453_
              _code23456_
              '11
              gx#module-context::t
              '#f))))
       gxc#current-compile-mutators
       (make-hash-table-eq)
       gxc#current-compile-local-type
       (make-hash-table-eq))))
  (define gxc#optimizer-load-ssxi-deps
    (lambda (_ctx23398_)
      (letrec* ((_deps23400_
                 (let* ((_imports23444_
                         (##structure-ref
                          _ctx23398_
                          '8
                          gx#module-context::t
                          '#f))
                        (_$e23446_
                         (gx#core-context-prelude__opt-lambda13202
                          _ctx23398_)))
                   (if _$e23446_
                       ((lambda (_g2344823450_)
                          (cons _g2344823450_ _imports23444_))
                        _$e23446_)
                       _imports23444_))))
        (let _lp23402_ ((_rest23404_ _deps23400_))
          (let* ((_rest2340523413_ _rest23404_)
                 (_E2340823417_
                  (lambda () (error '"No clause matching" _rest2340523413_)))
                 (_else2340723421_ (lambda () '#!void))
                 (_K2340923432_
                  (lambda (_rest23424_ _hd23425_)
                    (if (##structure-instance-of?
                         _hd23425_
                         'gx#module-context::t)
                        (begin
                          (if (table-ref
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)
                               (##structure-ref
                                _hd23425_
                                '1
                                gx#expander-context::t
                                '#f)
                               '#f)
                              '#!void
                              (begin
                                (let ((_$e23427_
                                       (gx#core-context-prelude__opt-lambda13202
                                        _hd23425_)))
                                  (if _$e23427_
                                      ((lambda (_pre23430_)
                                         (_lp23402_
                                          (cons _pre23430_
                                                (##structure-ref
                                                 _hd23425_
                                                 '8
                                                 gx#module-context::t
                                                 '#f))))
                                       _$e23427_)
                                      (_lp23402_
                                       (##structure-ref
                                        _hd23425_
                                        '8
                                        gx#module-context::t
                                        '#f))))
                                (gxc#optimizer-load-ssxi _hd23425_)))
                          (_lp23402_ _rest23424_))
                        (if (##structure-instance-of?
                             _hd23425_
                             'gx#prelude-context::t)
                            (begin
                              (if (table-ref
                                   (##structure-ref
                                    (gxc#current-compile-optimizer-info)
                                    '2
                                    gxc#optimizer-info::t
                                    '#f)
                                   (##structure-ref
                                    _hd23425_
                                    '1
                                    gx#expander-context::t
                                    '#f)
                                   '#f)
                                  '#!void
                                  (begin
                                    (_lp23402_
                                     (##structure-ref
                                      _hd23425_
                                      '7
                                      gx#prelude-context::t
                                      '#f))
                                    (gxc#optimizer-load-ssxi _hd23425_)))
                              (_lp23402_ _rest23424_))
                            (if (##structure-direct-instance-of?
                                 _hd23425_
                                 'gx#module-import::t)
                                (_lp23402_
                                 (cons (##direct-structure-ref
                                        _hd23425_
                                        '1
                                        gx#module-import::t
                                        '#f)
                                       _rest23424_))
                                (if (##structure-direct-instance-of?
                                     _hd23425_
                                     'gx#module-export::t)
                                    (_lp23402_
                                     (cons (##direct-structure-ref
                                            _hd23425_
                                            '1
                                            gx#module-export::t
                                            '#f)
                                           _rest23424_))
                                    (if (##structure-direct-instance-of?
                                         _hd23425_
                                         'gx#import-set::t)
                                        (_lp23402_
                                         (cons (##direct-structure-ref
                                                _hd23425_
                                                '1
                                                gx#import-set::t
                                                '#f)
                                               _rest23424_))
                                        (error '"Unexpected module import"
                                               _hd23425_)))))))))
            (if (##pair? _rest2340523413_)
                (let ((_hd2341023435_ (##car _rest2340523413_))
                      (_tl2341123437_ (##cdr _rest2340523413_)))
                  (let* ((_hd23440_ _hd2341023435_)
                         (_rest23442_ _tl2341123437_))
                    (_K2340923432_ _rest23442_ _hd23440_)))
                (_else2340723421_)))))))
  (define gxc#optimizer-load-ssxi
    (lambda (_ctx23378_)
      (if (if (##structure-instance-of? _ctx23378_ 'gx#module-context::t)
              (list? (##structure-ref _ctx23378_ '7 gx#module-context::t '#f))
              '#f)
          '#!void
          (let* ((_ht23380_
                  (##structure-ref
                   (gxc#current-compile-optimizer-info)
                   '2
                   gxc#optimizer-info::t
                   '#f))
                 (_id23382_
                  (##structure-ref _ctx23378_ '1 gx#expander-context::t '#f))
                 (_mod23384_ (table-ref _ht23380_ _id23382_ '#f)))
            (let ((_$e23387_ _mod23384_))
              (if _$e23387_
                  _$e23387_
                  (let* ((_mod23390_ (gxc#optimizer-import-ssxi _ctx23378_))
                         (_val23395_
                          (let ((_$e23392_ _mod23390_))
                            (if _$e23392_ _$e23392_ '#!void))))
                    (begin
                      (table-set! _ht23380_ _id23382_ _val23395_)
                      _val23395_))))))))
  (define gxc#optimizer-import-ssxi
    (lambda (_ctx23355_)
      (letrec ((_catch-e23357_
                (lambda (_exn23376_)
                  (begin
                    (if (gxc#current-compile-verbose)
                        (begin
                          (displayln
                           '"Failed to load ssxi module for "
                           (##structure-ref
                            _ctx23355_
                            '1
                            gx#expander-context::t
                            '#f))
                          (display-exception _exn23376_))
                        '#!void)
                    '#f)))
               (_import-e23358_
                (lambda ()
                  (let* ((_str-id23361_
                          (string-append
                           (symbol->string
                            (##structure-ref
                             _ctx23355_
                             '1
                             gx#expander-context::t
                             '#f))
                           '".ssxi"))
                         (_artefact-path23369_
                          (let ((_odir2336223364_
                                 (gxc#current-compile-output-dir)))
                            (if _odir2336223364_
                                (let ((_odir23367_ _odir2336223364_))
                                  (path-expand
                                   (string-append _str-id23361_ '".ss")
                                   _odir23367_))
                                '#f)))
                         (_library-path23371_
                          (string->symbol
                           (string-append '":" _str-id23361_ '".ss")))
                         (_ssxi-path23373_
                          (if (if _artefact-path23369_
                                  (file-exists? _artefact-path23369_)
                                  '#f)
                              _artefact-path23369_
                              _library-path23371_)))
                    (begin
                      (gxc#verbose '"Loading ssxi module " _ssxi-path23373_)
                      (gx#import-module__opt-lambda13237
                       _ssxi-path23373_
                       '#t
                       '#t))))))
        (if (##structure-ref _ctx23355_ '1 gx#expander-context::t '#f)
            (with-exception-catcher _catch-e23357_ _import-e23358_)
            '#f))))
  (define gxc#!type::t (make-struct-type 'gxc#!type::t '#f '1 '!type '() '#f))
  (define gxc#!type? (make-struct-predicate gxc#!type::t))
  (define gxc#make-!type
    (lambda _$args23352_
      (apply make-struct-instance gxc#!type::t _$args23352_)))
  (define gxc#!type-id (make-struct-field-accessor gxc#!type::t '0))
  (define gxc#!type-id-set! (make-struct-field-mutator gxc#!type::t '0))
  (define gxc#!alias::t
    (make-struct-type 'gxc#!alias::t gxc#!type::t '0 '!alias '() '#f))
  (define gxc#!alias? (make-struct-predicate gxc#!alias::t))
  (define gxc#make-!alias
    (lambda _$args23349_
      (apply make-struct-instance gxc#!alias::t _$args23349_)))
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
    (lambda _$args23346_
      (apply make-struct-instance gxc#!struct-type::t _$args23346_)))
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
    (lambda _$args23343_
      (apply make-struct-instance gxc#!procedure::t _$args23343_)))
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
    (lambda _$args23340_
      (apply make-struct-instance gxc#!struct-pred::t _$args23340_)))
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
    (lambda _$args23337_
      (apply make-struct-instance gxc#!struct-cons::t _$args23337_)))
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
    (lambda _$args23334_
      (apply make-struct-instance gxc#!struct-getf::t _$args23334_)))
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
    (lambda _$args23331_
      (apply make-struct-instance gxc#!struct-setf::t _$args23331_)))
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
    (lambda _$args23328_
      (apply make-struct-instance gxc#!lambda::t _$args23328_)))
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
    (lambda _$args23325_
      (apply make-struct-instance gxc#!case-lambda::t _$args23325_)))
  (define gxc#!case-lambda-clauses
    (make-struct-field-accessor gxc#!case-lambda::t '0))
  (define gxc#!case-lambda-clauses-set!
    (make-struct-field-mutator gxc#!case-lambda::t '0))
  (define gxc#!struct-type:::init!
    (lambda (_self23317_
             _id23318_
             _super23319_
             _fields23320_
             _xfields23321_
             _ctor23322_
             _plist23323_)
      (if (##fx< '7 (##vector-length _self23317_))
          (begin
            (##vector-set! _self23317_ '1 _id23318_)
            (##vector-set! _self23317_ '2 _super23319_)
            (##vector-set! _self23317_ '3 _fields23320_)
            (##vector-set! _self23317_ '4 _xfields23321_)
            (##vector-set! _self23317_ '5 _ctor23322_)
            (##vector-set! _self23317_ '6 _plist23323_)
            (##vector-set! _self23317_ '7 '#f))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self23317_))))
  (bind-method! gxc#!struct-type::t ':init! gxc#!struct-type:::init! '#f)
  (begin
    (define gxc#!lambda:::init!__opt-lambda23159
      (lambda (_self23161_
               _id23162_
               _arity23163_
               _dispatch23164_
               _inline23165_
               _typedecl23166_)
        (if (##fx< '5 (##vector-length _self23161_))
            (begin
              (##vector-set! _self23161_ '1 _id23162_)
              (##vector-set! _self23161_ '2 _arity23163_)
              (##vector-set! _self23161_ '3 _dispatch23164_)
              (##vector-set! _self23161_ '4 _inline23165_)
              (##vector-set! _self23161_ '5 _typedecl23166_))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self23161_))))
    (begin
      (define gxc#!lambda:::init!__0
        (lambda (_self23171_ _id23172_ _arity23173_ _dispatch23174_)
          (let* ((_inline23176_ '#f) (_typedecl23178_ '#f))
            (if (##fx< '5 (##vector-length _self23171_))
                (begin
                  (##vector-set! _self23171_ '1 _id23172_)
                  (##vector-set! _self23171_ '2 _arity23173_)
                  (##vector-set! _self23171_ '3 _dispatch23174_)
                  (##vector-set! _self23171_ '4 _inline23176_)
                  (##vector-set! _self23171_ '5 _typedecl23178_))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self23171_)))))
      (define gxc#!lambda:::init!__1
        (lambda (_self23180_
                 _id23181_
                 _arity23182_
                 _dispatch23183_
                 _inline23184_)
          (let ((_typedecl23186_ '#f))
            (if (##fx< '5 (##vector-length _self23180_))
                (begin
                  (##vector-set! _self23180_ '1 _id23181_)
                  (##vector-set! _self23180_ '2 _arity23182_)
                  (##vector-set! _self23180_ '3 _dispatch23183_)
                  (##vector-set! _self23180_ '4 _inline23184_)
                  (##vector-set! _self23180_ '5 _typedecl23186_))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self23180_)))))
      (define gxc#!lambda:::init!
        (lambda _g23603_
          (let ((_g23602_ (length _g23603_)))
            (cond ((fx= _g23602_ 4) (apply gxc#!lambda:::init!__0 _g23603_))
                  ((fx= _g23602_ 5) (apply gxc#!lambda:::init!__1 _g23603_))
                  ((fx= _g23602_ 6)
                   (apply (lambda (_self23188_
                                   _id23189_
                                   _arity23190_
                                   _dispatch23191_
                                   _inline23192_
                                   _typedecl23193_)
                            (if (##fx< '5 (##vector-length _self23188_))
                                (begin
                                  (##vector-set! _self23188_ '1 _id23189_)
                                  (##vector-set! _self23188_ '2 _arity23190_)
                                  (##vector-set!
                                   _self23188_
                                   '3
                                   _dispatch23191_)
                                  (##vector-set! _self23188_ '4 _inline23192_)
                                  (##vector-set!
                                   _self23188_
                                   '5
                                   _typedecl23193_))
                                (error '"struct-instance-init!: too many arguments for struct"
                                       _self23188_)))
                          _g23603_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#!lambda:::init!
                    _g23603_))))))))
  (bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f)
  (define gxc#!struct-type-vtab
    (lambda (_type23031_)
      (let ((_$e23033_
             (##structure-ref _type23031_ '7 gxc#!struct-type::t '#f)))
        (if _$e23033_
            (values _$e23033_)
            (let ((_vtab23036_ (make-hash-table-eq)))
              (begin
                (##structure-set!
                 _type23031_
                 _vtab23036_
                 '7
                 gxc#!struct-type::t
                 '#f)
                _vtab23036_))))))
  (define gxc#!struct-type-lookup-method
    (lambda (_type23022_ _method23023_)
      (let ((_vtab2302423026_
             (##structure-ref _type23022_ '7 gxc#!struct-type::t '#f)))
        (if _vtab2302423026_
            (let ((_vtab23029_ _vtab2302423026_))
              (table-ref _vtab23029_ _method23023_ '#f))
            '#f))))
  (begin
    (define gxc#optimizer-declare-type!__opt-lambda23004
      (lambda (_sym23006_ _type23007_ _local?23008_)
        (begin
          (if (##structure-instance-of? _type23007_ 'gxc#!type::t)
              '#!void
              (error '"bad declaration: expected !type"
                     _sym23006_
                     _type23007_))
          (gxc#verbose
           '"declare-type "
           _sym23006_
           '" "
           (struct->list _type23007_))
          (table-set!
           (if _local?23008_
               (gxc#current-compile-local-type)
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '1
                gxc#optimizer-info::t
                '#f))
           _sym23006_
           _type23007_))))
    (begin
      (define gxc#optimizer-declare-type!__0
        (lambda (_sym23013_ _type23014_)
          (let ((_local?23016_ '#f))
            (gxc#optimizer-declare-type!__opt-lambda23004
             _sym23013_
             _type23014_
             _local?23016_))))
      (define gxc#optimizer-declare-type!
        (lambda _g23605_
          (let ((_g23604_ (length _g23605_)))
            (cond ((fx= _g23604_ 2)
                   (apply gxc#optimizer-declare-type!__0 _g23605_))
                  ((fx= _g23604_ 3)
                   (apply gxc#optimizer-declare-type!__opt-lambda23004
                          _g23605_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-declare-type!
                    _g23605_))))))))
  (begin
    (define gxc#optimizer-declare-method!__opt-lambda22980
      (lambda (_type-t22982_ _method22983_ _sym22984_ _rebind?22985_)
        (let ((_type22987_ (gxc#optimizer-resolve-type _type-t22982_)))
          (if (##structure-instance-of? _type22987_ 'gxc#!struct-type::t)
              (let ((_vtab22989_ (gxc#!struct-type-vtab _type22987_)))
                (if _rebind?22985_
                    (if (hash-key? _vtab22989_ _method22983_)
                        (gxc#verbose
                         '"declare-method: [warning] skip rebind on existing method"
                         _type-t22982_
                         '" "
                         _method22983_)
                        (gxc#verbose
                         '"declare-method: skip rebind method "
                         _type-t22982_
                         '" "
                         _method22983_))
                    (if (hash-key? _vtab22989_ _method22983_)
                        (error '"declare-method: duplicate method declaration")
                        (begin
                          (gxc#verbose
                           '"declare-method "
                           _type-t22982_
                           '" "
                           _method22983_
                           '" => "
                           _sym22984_)
                          (table-set! _vtab22989_ _method22983_ _sym22984_)))))
              (if (not _type22987_)
                  (gxc#verbose '"declare-method: unknown type " _type-t22982_)
                  (error '"declare-method: bad method declaration; no method table"
                         _type-t22982_
                         _type22987_))))))
    (begin
      (define gxc#optimizer-declare-method!__0
        (lambda (_type-t22994_ _method22995_ _sym22996_)
          (let ((_rebind?22998_ '#f))
            (gxc#optimizer-declare-method!__opt-lambda22980
             _type-t22994_
             _method22995_
             _sym22996_
             _rebind?22998_))))
      (define gxc#optimizer-declare-method!
        (lambda _g23607_
          (let ((_g23606_ (length _g23607_)))
            (cond ((fx= _g23606_ 3)
                   (apply gxc#optimizer-declare-method!__0 _g23607_))
                  ((fx= _g23606_ 4)
                   (apply gxc#optimizer-declare-method!__opt-lambda22980
                          _g23607_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-declare-method!
                    _g23607_))))))))
  (define gxc#optimizer-lookup-type
    (lambda (_sym22970_)
      (let ((_$e22978_
             (let ((_ht2297122973_ (gxc#current-compile-local-type)))
               (if _ht2297122973_
                   (let ((_ht22976_ _ht2297122973_))
                     (table-ref _ht22976_ _sym22970_ '#f))
                   '#f))))
        (if _$e22978_
            _$e22978_
            (table-ref
             (##structure-ref
              (gxc#current-compile-optimizer-info)
              '1
              gxc#optimizer-info::t
              '#f)
             _sym22970_
             '#f)))))
  (define gxc#optimizer-resolve-type
    (lambda (_sym22962_)
      (let ((_type2296322965_ (gxc#optimizer-lookup-type _sym22962_)))
        (if _type2296322965_
            (let ((_type22968_ _type2296322965_))
              (if (##structure-instance-of? _type22968_ 'gxc#!alias::t)
                  (gxc#optimizer-resolve-type
                   (##structure-ref _type22968_ '1 gxc#!type::t '#f))
                  _type22968_))
            '#f))))
  (define gxc#optimizer-lookup-method
    (lambda (_type-t22957_ _method22958_)
      (let ((_type22960_ (gxc#optimizer-resolve-type _type-t22957_)))
        (if (##structure-instance-of? _type22960_ 'gxc#!struct-type::t)
            (gxc#!struct-type-lookup-method _type22960_ _method22958_)
            '#f))))
  (define gxc#optimize-source
    (lambda (_stx22953_)
      (begin
        (gxc#apply-collect-mutators _stx22953_)
        (let ((_stx22955_ (gxc#apply-lift-top-lambdas _stx22953_)))
          (begin
            (gxc#apply-collect-type-info _stx22955_)
            (gxc#apply-optimize-call _stx22955_))))))
  (define gxc#&identity-expression
    (make-promise
     (lambda ()
       (let ((_tbl22950_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl22950_ '%#begin-annotation gxc#xform-identity)
           (table-set! _tbl22950_ '%#lambda gxc#xform-identity)
           (table-set! _tbl22950_ '%#case-lambda gxc#xform-identity)
           (table-set! _tbl22950_ '%#let-values gxc#xform-identity)
           (table-set! _tbl22950_ '%#letrec-values gxc#xform-identity)
           (table-set! _tbl22950_ '%#letrec*-values gxc#xform-identity)
           (table-set! _tbl22950_ '%#quote gxc#xform-identity)
           (table-set! _tbl22950_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl22950_ '%#call gxc#xform-identity)
           (table-set! _tbl22950_ '%#if gxc#xform-identity)
           (table-set! _tbl22950_ '%#ref gxc#xform-identity)
           (table-set! _tbl22950_ '%#set! gxc#xform-identity)
           (table-set! _tbl22950_ '%#struct-instance? gxc#xform-identity)
           (table-set!
            _tbl22950_
            '%#struct-direct-instance?
            gxc#xform-identity)
           (table-set! _tbl22950_ '%#struct-ref gxc#xform-identity)
           (table-set! _tbl22950_ '%#struct-set! gxc#xform-identity)
           (table-set! _tbl22950_ '%#struct-direct-ref gxc#xform-identity)
           (table-set! _tbl22950_ '%#struct-direct-set! gxc#xform-identity)
           (table-set! _tbl22950_ '%#struct-unchecked-ref gxc#xform-identity)
           (table-set! _tbl22950_ '%#struct-unchecked-set! gxc#xform-identity)
           _tbl22950_)))))
  (define gxc#&identity-special-form
    (make-promise
     (lambda ()
       (let ((_tbl22946_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl22946_ '%#begin gxc#xform-identity)
           (table-set! _tbl22946_ '%#begin-syntax gxc#xform-identity)
           (table-set! _tbl22946_ '%#begin-foreign gxc#xform-identity)
           (table-set! _tbl22946_ '%#module gxc#xform-identity)
           (table-set! _tbl22946_ '%#import gxc#xform-identity)
           (table-set! _tbl22946_ '%#export gxc#xform-identity)
           (table-set! _tbl22946_ '%#provide gxc#xform-identity)
           (table-set! _tbl22946_ '%#extern gxc#xform-identity)
           (table-set! _tbl22946_ '%#define-values gxc#xform-identity)
           (table-set! _tbl22946_ '%#define-syntax gxc#xform-identity)
           (table-set! _tbl22946_ '%#define-alias gxc#xform-identity)
           (table-set! _tbl22946_ '%#declare gxc#xform-identity)
           _tbl22946_)))))
  (define gxc#&identity
    (make-promise
     (lambda ()
       (let ((_tbl22942_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl22942_ (force gxc#&identity-special-form))
           (hash-copy! _tbl22942_ (force gxc#&identity-expression))
           _tbl22942_)))))
  (define gxc#&basic-xform-expression
    (make-promise
     (lambda ()
       (let ((_tbl22938_ (make-hash-table-eq)))
         (begin
           (table-set!
            _tbl22938_
            '%#begin-annotation
            gxc#xform-begin-annotation%)
           (table-set! _tbl22938_ '%#lambda gxc#xform-lambda%)
           (table-set! _tbl22938_ '%#case-lambda gxc#xform-case-lambda%)
           (table-set! _tbl22938_ '%#let-values gxc#xform-let-values%)
           (table-set! _tbl22938_ '%#letrec-values gxc#xform-let-values%)
           (table-set! _tbl22938_ '%#letrec*-values gxc#xform-let-values%)
           (table-set! _tbl22938_ '%#quote gxc#xform-identity)
           (table-set! _tbl22938_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl22938_ '%#call gxc#xform-operands)
           (table-set! _tbl22938_ '%#if gxc#xform-operands)
           (table-set! _tbl22938_ '%#ref gxc#xform-identity)
           (table-set! _tbl22938_ '%#set! gxc#xform-setq%)
           (table-set! _tbl22938_ '%#struct-instance? gxc#xform-operands)
           (table-set!
            _tbl22938_
            '%#struct-direct-instance?
            gxc#xform-operands)
           (table-set! _tbl22938_ '%#struct-ref gxc#xform-operands)
           (table-set! _tbl22938_ '%#struct-set! gxc#xform-operands)
           (table-set! _tbl22938_ '%#struct-direct-ref gxc#xform-operands)
           (table-set! _tbl22938_ '%#struct-direct-set! gxc#xform-operands)
           (table-set! _tbl22938_ '%#struct-unchecked-ref gxc#xform-operands)
           (table-set! _tbl22938_ '%#struct-unchecked-set! gxc#xform-operands)
           _tbl22938_)))))
  (define gxc#&basic-xform
    (make-promise
     (lambda ()
       (let ((_tbl22934_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl22934_ (force gxc#&basic-xform-expression))
           (hash-copy! _tbl22934_ (force gxc#&identity))
           (table-set! _tbl22934_ '%#begin gxc#xform-begin%)
           (table-set! _tbl22934_ '%#module gxc#xform-module%)
           (table-set! _tbl22934_ '%#define-values gxc#xform-define-values%)
           _tbl22934_)))))
  (define gxc#&collect-mutators
    (make-promise
     (lambda ()
       (let ((_tbl22930_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl22930_ (force gxc#&void))
           (table-set! _tbl22930_ '%#begin gxc#collect-begin%)
           (table-set! _tbl22930_ '%#module gxc#collect-module%)
           (table-set!
            _tbl22930_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl22930_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl22930_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl22930_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl22930_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl22930_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl22930_ '%#call gxc#collect-operands)
           (table-set! _tbl22930_ '%#if gxc#collect-operands)
           (table-set! _tbl22930_ '%#set! gxc#collect-mutators-setq%)
           (table-set! _tbl22930_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl22930_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl22930_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl22930_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl22930_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl22930_ '%#struct-direct-set! gxc#collect-operands)
           (table-set! _tbl22930_ '%#struct-unchecked-ref gxc#collect-operands)
           (table-set!
            _tbl22930_
            '%#struct-unchecked-set!
            gxc#collect-operands)
           _tbl22930_)))))
  (define gxc#apply-collect-mutators
    (lambda (_stx22923_ . _args22925_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx22923_ _args22925_))
       gxc#current-compile-methods
       (force gxc#&collect-mutators))))
  (define gxc#&lift-top-lambdas
    (make-promise
     (lambda ()
       (let ((_tbl22920_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl22920_ (force gxc#&basic-xform))
           (table-set!
            _tbl22920_
            '%#define-values
            gxc#lift-top-lambda-define-values%)
           (table-set!
            _tbl22920_
            '%#let-values
            gxc#lift-top-lambda-let-values%)
           (table-set!
            _tbl22920_
            '%#letrec-values
            gxc#lift-top-lambda-letrec-values%)
           (table-set!
            _tbl22920_
            '%#letrec*-values
            gxc#lift-top-lambda-letrec-values%)
           _tbl22920_)))))
  (define gxc#apply-lift-top-lambdas
    (lambda (_stx22913_ . _args22915_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx22913_ _args22915_))
       gxc#current-compile-methods
       (force gxc#&lift-top-lambdas))))
  (define gxc#&expression-subst
    (make-promise
     (lambda ()
       (let ((_tbl22910_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl22910_ (force gxc#&basic-xform-expression))
           (table-set! _tbl22910_ '%#begin gxc#xform-begin%)
           (table-set! _tbl22910_ '%#ref gxc#expression-subst-ref%)
           _tbl22910_)))))
  (define gxc#apply-expression-subst
    (lambda (_stx22903_ . _args22905_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx22903_ _args22905_))
       gxc#current-compile-methods
       (force gxc#&expression-subst))))
  (define gxc#&collect-type-info
    (make-promise
     (lambda ()
       (let ((_tbl22900_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl22900_ (force gxc#&void))
           (table-set! _tbl22900_ '%#begin gxc#collect-begin%)
           (table-set! _tbl22900_ '%#module gxc#collect-module%)
           (table-set!
            _tbl22900_
            '%#define-values
            gxc#collect-type-define-values%)
           (table-set!
            _tbl22900_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl22900_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl22900_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl22900_ '%#let-values gxc#collect-type-let-values%)
           (table-set!
            _tbl22900_
            '%#letrec-values
            gxc#collect-type-let-values%)
           (table-set!
            _tbl22900_
            '%#letrec*-values
            gxc#collect-type-let-values%)
           (table-set! _tbl22900_ '%#call gxc#collect-type-call%)
           (table-set! _tbl22900_ '%#if gxc#collect-operands)
           (table-set! _tbl22900_ '%#set! gxc#collect-body-setq%)
           _tbl22900_)))))
  (define gxc#apply-collect-type-info
    (lambda (_stx22893_ . _args22895_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx22893_ _args22895_))
       gxc#current-compile-methods
       (force gxc#&collect-type-info))))
  (define gxc#&basic-expression-type
    (make-promise
     (lambda ()
       (let ((_tbl22890_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl22890_ (force gxc#&false))
           (table-set! _tbl22890_ '%#begin gxc#basic-expression-type-begin%)
           (table-set!
            _tbl22890_
            '%#begin-annotation
            gxc#basic-expression-type-begin-annotation%)
           (table-set! _tbl22890_ '%#lambda gxc#basic-expression-type-lambda%)
           (table-set!
            _tbl22890_
            '%#case-lambda
            gxc#basic-expression-type-case-lambda%)
           (table-set! _tbl22890_ '%#call gxc#basic-expression-type-call%)
           (table-set! _tbl22890_ '%#ref gxc#basic-expression-type-ref%)
           _tbl22890_)))))
  (define gxc#apply-basic-expression-type
    (lambda (_stx22883_ . _args22885_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx22883_ _args22885_))
       gxc#current-compile-methods
       (force gxc#&basic-expression-type))))
  (define gxc#&optimize-call
    (make-promise
     (lambda ()
       (let ((_tbl22880_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl22880_ (force gxc#&basic-xform))
           (table-set! _tbl22880_ '%#call gxc#optimize-call%)
           _tbl22880_)))))
  (define gxc#apply-optimize-call
    (lambda (_stx22873_ . _args22875_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx22873_ _args22875_))
       gxc#current-compile-methods
       (force gxc#&optimize-call))))
  (define gxc#&generate-ssxi
    (make-promise
     (lambda ()
       (let ((_tbl22870_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl22870_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl22870_ '%#begin gxc#generate-runtime-begin%)
           (table-set! _tbl22870_ '%#module gxc#generate-ssxi-module%)
           (table-set!
            _tbl22870_
            '%#define-values
            gxc#generate-ssxi-define-values%)
           (table-set! _tbl22870_ '%#call gxc#generate-ssxi-call%)
           _tbl22870_)))))
  (define gxc#apply-generate-ssxi
    (lambda (_stx22863_ . _args22865_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx22863_ _args22865_))
       gxc#current-compile-methods
       (force gxc#&generate-ssxi))))
  (define gxc#xform-identity (lambda (_stx22860_ . _args22861_) _stx22860_))
  (define gxc#xform-wrap-source
    (lambda (_stx22857_ _src-stx22858_)
      (gx#stx-wrap-source _stx22857_ (gx#stx-source _src-stx22858_))))
  (define gxc#xform-apply-compile-e
    (lambda (_args22851_)
      (lambda (_g2285222854_)
        (apply gxc#compile-e _g2285222854_ _args22851_))))
  (define gxc#xform-begin%
    (lambda (_stx22810_ . _args22811_)
      (let* ((_g2281322823_
              (lambda (_g2281422820_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2281422820_)))
             (_g2281222848_
              (lambda (_g2281422826_)
                (if (gx#stx-pair? _g2281422826_)
                    (let ((_e2281622828_ (gx#stx-e _g2281422826_)))
                      (let ((_hd2281722831_ (##car _e2281622828_))
                            (_tl2281822833_ (##cdr _e2281622828_)))
                        ((lambda (_L22836_)
                           (let ((_forms22846_
                                  (map (gxc#xform-apply-compile-e _args22811_)
                                       _L22836_)))
                             (gxc#xform-wrap-source
                              (cons '%#begin _forms22846_)
                              _stx22810_)))
                         _tl2281822833_)))
                    (_g2281322823_ _g2281422826_)))))
        (_g2281222848_ _stx22810_))))
  (define gxc#xform-module%
    (lambda (_stx22747_ . _args22748_)
      (let* ((_g2275022764_
              (lambda (_g2275122761_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2275122761_)))
             (_g2274922807_
              (lambda (_g2275122767_)
                (if (gx#stx-pair? _g2275122767_)
                    (let ((_e2275422769_ (gx#stx-e _g2275122767_)))
                      (let ((_hd2275522772_ (##car _e2275422769_))
                            (_tl2275622774_ (##cdr _e2275422769_)))
                        (if (gx#stx-pair? _tl2275622774_)
                            (let ((_e2275722777_ (gx#stx-e _tl2275622774_)))
                              (let ((_hd2275822780_ (##car _e2275722777_))
                                    (_tl2275922782_ (##cdr _e2275722777_)))
                                ((lambda (_L22785_ _L22786_)
                                   (let* ((_ctx22799_
                                           (gx#syntax-local-e__0 _L22786_))
                                          (_code22801_
                                           (##structure-ref
                                            _ctx22799_
                                            '11
                                            gx#module-context::t
                                            '#f))
                                          (_code22804_
                                           (call-with-parameters
                                            (lambda ()
                                              (apply gxc#compile-e
                                                     _code22801_
                                                     _args22748_))
                                            gx#current-expander-context
                                            _ctx22799_)))
                                     (begin
                                       (##structure-set!
                                        _ctx22799_
                                        _code22804_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _L22786_
                                                    (cons _code22804_ '())))
                                        _stx22747_))))
                                 _tl2275922782_
                                 _hd2275822780_)))
                            (_g2275022764_ _g2275122767_))))
                    (_g2275022764_ _g2275122767_)))))
        (_g2274922807_ _stx22747_))))
  (define gxc#xform-define-values%
    (lambda (_stx22677_ . _args22678_)
      (let* ((_g2268022697_
              (lambda (_g2268122694_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2268122694_)))
             (_g2267922744_
              (lambda (_g2268122700_)
                (if (gx#stx-pair? _g2268122700_)
                    (let ((_e2268422702_ (gx#stx-e _g2268122700_)))
                      (let ((_hd2268522705_ (##car _e2268422702_))
                            (_tl2268622707_ (##cdr _e2268422702_)))
                        (if (gx#stx-pair? _tl2268622707_)
                            (let ((_e2268722710_ (gx#stx-e _tl2268622707_)))
                              (let ((_hd2268822713_ (##car _e2268722710_))
                                    (_tl2268922715_ (##cdr _e2268722710_)))
                                (if (gx#stx-pair? _tl2268922715_)
                                    (let ((_e2269022718_
                                           (gx#stx-e _tl2268922715_)))
                                      (let ((_hd2269122721_
                                             (##car _e2269022718_))
                                            (_tl2269222723_
                                             (##cdr _e2269022718_)))
                                        (if (gx#stx-null? _tl2269222723_)
                                            ((lambda (_L22726_ _L22727_)
                                               (let ((_expr22742_
                                                      (apply gxc#compile-e
                                                             _L22726_
                                                             _args22678_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#define-values
                                                        (cons _L22727_
                                                              (cons _expr22742_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx22677_)))
                                             _hd2269122721_
                                             _hd2268822713_)
                                            (_g2268022697_ _g2268122700_))))
                                    (_g2268022697_ _g2268122700_))))
                            (_g2268022697_ _g2268122700_))))
                    (_g2268022697_ _g2268122700_)))))
        (_g2267922744_ _stx22677_))))
  (define gxc#xform-begin-annotation%
    (lambda (_stx22607_ . _args22608_)
      (let* ((_g2261022627_
              (lambda (_g2261122624_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2261122624_)))
             (_g2260922674_
              (lambda (_g2261122630_)
                (if (gx#stx-pair? _g2261122630_)
                    (let ((_e2261422632_ (gx#stx-e _g2261122630_)))
                      (let ((_hd2261522635_ (##car _e2261422632_))
                            (_tl2261622637_ (##cdr _e2261422632_)))
                        (if (gx#stx-pair? _tl2261622637_)
                            (let ((_e2261722640_ (gx#stx-e _tl2261622637_)))
                              (let ((_hd2261822643_ (##car _e2261722640_))
                                    (_tl2261922645_ (##cdr _e2261722640_)))
                                (if (gx#stx-pair? _tl2261922645_)
                                    (let ((_e2262022648_
                                           (gx#stx-e _tl2261922645_)))
                                      (let ((_hd2262122651_
                                             (##car _e2262022648_))
                                            (_tl2262222653_
                                             (##cdr _e2262022648_)))
                                        (if (gx#stx-null? _tl2262222653_)
                                            ((lambda (_L22656_ _L22657_)
                                               (let ((_expr22672_
                                                      (apply gxc#compile-e
                                                             _L22656_
                                                             _args22608_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#begin-annotation
                                                        (cons _L22657_
                                                              (cons _expr22672_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx22607_)))
                                             _hd2262122651_
                                             _hd2261822643_)
                                            (_g2261022627_ _g2261122630_))))
                                    (_g2261022627_ _g2261122630_))))
                            (_g2261022627_ _g2261122630_))))
                    (_g2261022627_ _g2261122630_)))))
        (_g2260922674_ _stx22607_))))
  (define gxc#xform-lambda%
    (lambda (_stx22550_ . _args22551_)
      (let* ((_g2255322567_
              (lambda (_g2255422564_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2255422564_)))
             (_g2255222604_
              (lambda (_g2255422570_)
                (if (gx#stx-pair? _g2255422570_)
                    (let ((_e2255722572_ (gx#stx-e _g2255422570_)))
                      (let ((_hd2255822575_ (##car _e2255722572_))
                            (_tl2255922577_ (##cdr _e2255722572_)))
                        (if (gx#stx-pair? _tl2255922577_)
                            (let ((_e2256022580_ (gx#stx-e _tl2255922577_)))
                              (let ((_hd2256122583_ (##car _e2256022580_))
                                    (_tl2256222585_ (##cdr _e2256022580_)))
                                ((lambda (_L22588_ _L22589_)
                                   (let ((_body22602_
                                          (map (gxc#xform-apply-compile-e
                                                _args22551_)
                                               _L22588_)))
                                     (gxc#xform-wrap-source
                                      (cons '%#lambda
                                            (cons _L22589_ _body22602_))
                                      _stx22550_)))
                                 _tl2256222585_
                                 _hd2256122583_)))
                            (_g2255322567_ _g2255422570_))))
                    (_g2255322567_ _g2255422570_)))))
        (_g2255222604_ _stx22550_))))
  (define gxc#xform-case-lambda%
    (lambda (_stx22463_ . _args22464_)
      (letrec ((_clause-e22466_
                (lambda (_clause22507_)
                  (let* ((_g2250922520_
                          (lambda (_g2251022517_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g2251022517_)))
                         (_g2250822547_
                          (lambda (_g2251022523_)
                            (if (gx#stx-pair? _g2251022523_)
                                (let ((_e2251322525_ (gx#stx-e _g2251022523_)))
                                  (let ((_hd2251422528_ (##car _e2251322525_))
                                        (_tl2251522530_ (##cdr _e2251322525_)))
                                    ((lambda (_L22533_ _L22534_)
                                       (let ((_body22545_
                                              (map (gxc#xform-apply-compile-e
                                                    _args22464_)
                                                   _L22533_)))
                                         (cons _L22534_ _body22545_)))
                                     _tl2251522530_
                                     _hd2251422528_)))
                                (_g2250922520_ _g2251022523_)))))
                    (_g2250822547_ _clause22507_)))))
        (let* ((_g2246822478_
                (lambda (_g2246922475_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2246922475_)))
               (_g2246722504_
                (lambda (_g2246922481_)
                  (if (gx#stx-pair? _g2246922481_)
                      (let ((_e2247122483_ (gx#stx-e _g2246922481_)))
                        (let ((_hd2247222486_ (##car _e2247122483_))
                              (_tl2247322488_ (##cdr _e2247122483_)))
                          ((lambda (_L22491_)
                             (let ((_clauses22502_
                                    (map _clause-e22466_ _L22491_)))
                               (gxc#xform-wrap-source
                                (cons '%#case-lambda _clauses22502_)
                                _stx22463_)))
                           _tl2247322488_)))
                      (_g2246822478_ _g2246922481_)))))
          (_g2246722504_ _stx22463_)))))
  (define gxc#xform-let-values%
    (lambda (_stx22257_ . _args22258_)
      (let* ((_g2226022293_
              (lambda (_g2226122290_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2226122290_)))
             (_g2225922460_
              (lambda (_g2226122296_)
                (if (gx#stx-pair? _g2226122296_)
                    (let ((_e2226622298_ (gx#stx-e _g2226122296_)))
                      (let ((_hd2226722301_ (##car _e2226622298_))
                            (_tl2226822303_ (##cdr _e2226622298_)))
                        (if (gx#stx-pair? _tl2226822303_)
                            (let ((_e2226922306_ (gx#stx-e _tl2226822303_)))
                              (let ((_hd2227022309_ (##car _e2226922306_))
                                    (_tl2227122311_ (##cdr _e2226922306_)))
                                (if (gx#stx-pair/null? _hd2227022309_)
                                    (if (fx>= (gx#stx-length _hd2227022309_)
                                              '0)
                                        (let ((_g23608_
                                               (gx#syntax-split-splice
                                                _hd2227022309_
                                                '0)))
                                          (begin
                                            (let ((_g23609_
                                                   (values-count _g23608_)))
                                              (if (not (fx= _g23609_ 2))
                                                  (error "Context expects 2 values"
                                                         _g23609_)))
                                            (let ((_target2227222314_
                                                   (values-ref _g23608_ 0))
                                                  (_tl2227422316_
                                                   (values-ref _g23608_ 1)))
                                              (if (gx#stx-null? _tl2227422316_)
                                                  (letrec ((_loop2227522319_
                                                            (lambda (_hd2227322322_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr2227922324_
                             _hd2228022326_)
                      (if (gx#stx-pair? _hd2227322322_)
                          (let ((_e2227622329_ (gx#stx-e _hd2227322322_)))
                            (let ((_lp-hd2227722332_ (##car _e2227622329_))
                                  (_lp-tl2227822334_ (##cdr _e2227622329_)))
                              (if (gx#stx-pair? _lp-hd2227722332_)
                                  (let ((_e2228322337_
                                         (gx#stx-e _lp-hd2227722332_)))
                                    (let ((_hd2228422340_
                                           (##car _e2228322337_))
                                          (_tl2228522342_
                                           (##cdr _e2228322337_)))
                                      (if (gx#stx-pair? _tl2228522342_)
                                          (let ((_e2228622345_
                                                 (gx#stx-e _tl2228522342_)))
                                            (let ((_hd2228722348_
                                                   (##car _e2228622345_))
                                                  (_tl2228822350_
                                                   (##cdr _e2228622345_)))
                                              (if (gx#stx-null? _tl2228822350_)
                                                  (_loop2227522319_
                                                   _lp-tl2227822334_
                                                   (cons _hd2228722348_
                                                         _expr2227922324_)
                                                   (cons _hd2228422340_
                                                         _hd2228022326_))
                                                  (_g2226022293_
                                                   _g2226122296_))))
                                          (_g2226022293_ _g2226122296_))))
                                  (_g2226022293_ _g2226122296_))))
                          (let ((_expr2228122353_ (reverse _expr2227922324_))
                                (_hd2228222355_ (reverse _hd2228022326_)))
                            ((lambda (_L22358_ _L22359_ _L22360_ _L22361_)
                               (let* ((_g2238022396_
                                       (lambda (_g2238122393_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2238122393_)))
                                      (_g2237922450_
                                       (lambda (_g2238122399_)
                                         (if (gx#stx-pair/null? _g2238122399_)
                                             (if (fx>= (gx#stx-length
                                                        _g2238122399_)
                                                       '0)
                                                 (let ((_g23610_
                                                        (gx#syntax-split-splice
                                                         _g2238122399_
                                                         '0)))
                                                   (begin
                                                     (let ((_g23611_
                                                            (values-count
                                                             _g23610_)))
                                                       (if (not (fx= _g23611_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g23611_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2238322401_
                                                            (values-ref
                                                             _g23610_
                                                             0))
                                                           (_tl2238522403_
                                                            (values-ref
                                                             _g23610_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2238522403_)
                                                           (letrec ((_loop2238622406_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2238422409_ _expr2239022411_)
                               (if (gx#stx-pair? _hd2238422409_)
                                   (let ((_e2238722414_
                                          (gx#syntax-e _hd2238422409_)))
                                     (let ((_lp-hd2238822417_
                                            (##car _e2238722414_))
                                           (_lp-tl2238922419_
                                            (##cdr _e2238722414_)))
                                       (_loop2238622406_
                                        _lp-tl2238922419_
                                        (cons _lp-hd2238822417_
                                              _expr2239022411_))))
                                   (let ((_expr2239122422_
                                          (reverse _expr2239022411_)))
                                     ((lambda (_L22425_)
                                        (let ()
                                          (let ((_body22438_
                                                 (map (gxc#xform-apply-compile-e
                                                       _args22258_)
                                                      _L22358_)))
                                            (gxc#xform-wrap-source
                                             (cons _L22361_
                                                   (cons (begin
                                                           (gx#syntax-check-splice-targets
                                                            _L22425_
                                                            _L22360_)
                                                           (foldr (lambda (_g2243922443_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g2244022445_
                                   _g2244122447_)
                            (cons (cons _g2244022445_ (cons _g2243922443_ '()))
                                  _g2244122447_))
                          '()
                          _L22425_
                          _L22360_))
                 _body22438_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _stx22257_))))
                                      _expr2239122422_))))))
                     (_loop2238622406_ _target2238322401_ '()))
                   (_g2238022396_ _g2238122399_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2238022396_ _g2238122399_))
                                             (_g2238022396_ _g2238122399_)))))
                                 (_g2237922450_
                                  (map (gxc#xform-apply-compile-e _args22258_)
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g2245222455_
                                                          _g2245322457_)
                                                   (cons _g2245222455_
                                                         _g2245322457_))
                                                 '()
                                                 _L22359_))))))
                             _tl2227122311_
                             _expr2228122353_
                             _hd2228222355_
                             _hd2226722301_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop2227522319_
                                                     _target2227222314_
                                                     '()
                                                     '()))
                                                  (_g2226022293_
                                                   _g2226122296_)))))
                                        (_g2226022293_ _g2226122296_))
                                    (_g2226022293_ _g2226122296_))))
                            (_g2226022293_ _g2226122296_))))
                    (_g2226022293_ _g2226122296_)))))
        (_g2225922460_ _stx22257_))))
  (define gxc#xform-operands
    (lambda (_stx22213_ . _args22214_)
      (let* ((_g2221622227_
              (lambda (_g2221722224_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2221722224_)))
             (_g2221522254_
              (lambda (_g2221722230_)
                (if (gx#stx-pair? _g2221722230_)
                    (let ((_e2222022232_ (gx#stx-e _g2221722230_)))
                      (let ((_hd2222122235_ (##car _e2222022232_))
                            (_tl2222222237_ (##cdr _e2222022232_)))
                        ((lambda (_L22240_ _L22241_)
                           (let ((_rands22252_
                                  (map (gxc#xform-apply-compile-e _args22214_)
                                       _L22240_)))
                             (gxc#xform-wrap-source
                              (cons _L22241_ _rands22252_)
                              _stx22213_)))
                         _tl2222222237_
                         _hd2222122235_)))
                    (_g2221622227_ _g2221722230_)))))
        (_g2221522254_ _stx22213_))))
  (define gxc#xform-call% gxc#xform-operands)
  (define gxc#xform-setq%
    (lambda (_stx22143_ . _args22144_)
      (let* ((_g2214622163_
              (lambda (_g2214722160_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2214722160_)))
             (_g2214522210_
              (lambda (_g2214722166_)
                (if (gx#stx-pair? _g2214722166_)
                    (let ((_e2215022168_ (gx#stx-e _g2214722166_)))
                      (let ((_hd2215122171_ (##car _e2215022168_))
                            (_tl2215222173_ (##cdr _e2215022168_)))
                        (if (gx#stx-pair? _tl2215222173_)
                            (let ((_e2215322176_ (gx#stx-e _tl2215222173_)))
                              (let ((_hd2215422179_ (##car _e2215322176_))
                                    (_tl2215522181_ (##cdr _e2215322176_)))
                                (if (gx#stx-pair? _tl2215522181_)
                                    (let ((_e2215622184_
                                           (gx#stx-e _tl2215522181_)))
                                      (let ((_hd2215722187_
                                             (##car _e2215622184_))
                                            (_tl2215822189_
                                             (##cdr _e2215622184_)))
                                        (if (gx#stx-null? _tl2215822189_)
                                            ((lambda (_L22192_ _L22193_)
                                               (let ((_expr22208_
                                                      (apply gxc#compile-e
                                                             _L22192_
                                                             _args22144_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#set!
                                                        (cons _L22193_
                                                              (cons _expr22208_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx22143_)))
                                             _hd2215722187_
                                             _hd2215422179_)
                                            (_g2214622163_ _g2214722166_))))
                                    (_g2214622163_ _g2214722166_))))
                            (_g2214622163_ _g2214722166_))))
                    (_g2214622163_ _g2214722166_)))))
        (_g2214522210_ _stx22143_))))
  (define gxc#collect-mutators-setq%
    (lambda (_stx22074_)
      (let* ((_g2207622093_
              (lambda (_g2207722090_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2207722090_)))
             (_g2207522140_
              (lambda (_g2207722096_)
                (if (gx#stx-pair? _g2207722096_)
                    (let ((_e2208022098_ (gx#stx-e _g2207722096_)))
                      (let ((_hd2208122101_ (##car _e2208022098_))
                            (_tl2208222103_ (##cdr _e2208022098_)))
                        (if (gx#stx-pair? _tl2208222103_)
                            (let ((_e2208322106_ (gx#stx-e _tl2208222103_)))
                              (let ((_hd2208422109_ (##car _e2208322106_))
                                    (_tl2208522111_ (##cdr _e2208322106_)))
                                (if (gx#stx-pair? _tl2208522111_)
                                    (let ((_e2208622114_
                                           (gx#stx-e _tl2208522111_)))
                                      (let ((_hd2208722117_
                                             (##car _e2208622114_))
                                            (_tl2208822119_
                                             (##cdr _e2208622114_)))
                                        (if (gx#stx-null? _tl2208822119_)
                                            ((lambda (_L22122_ _L22123_)
                                               (let ((_sym22138_
                                                      (gxc#generate-runtime-binding-id
                                                       _L22123_)))
                                                 (begin
                                                   (gxc#verbose
                                                    '"collect mutator "
                                                    _sym22138_)
                                                   (table-set!
                                                    (gxc#current-compile-mutators)
                                                    _sym22138_
                                                    '#t)
                                                   (gxc#compile-e _L22122_))))
                                             _hd2208722117_
                                             _hd2208422109_)
                                            (_g2207622093_ _g2207722096_))))
                                    (_g2207622093_ _g2207722096_))))
                            (_g2207622093_ _g2207722096_))))
                    (_g2207622093_ _g2207722096_)))))
        (_g2207522140_ _stx22074_))))
  (define gxc#dispatch-lambda-form?
    (lambda (_form21308_)
      (let* ((_g2131321470_
              (lambda (_g2131421467_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2131421467_)))
             (_g2131221477_ (lambda (_g2131421473_) ((lambda () '#f))))
             (_g2131121617_
              (lambda (_g2131421480_)
                (if (gx#stx-pair? _g2131421480_)
                    (let ((_e2143021482_ (gx#stx-e _g2131421480_)))
                      (let ((_hd2143121485_ (##car _e2143021482_))
                            (_tl2143221487_ (##cdr _e2143021482_)))
                        (if (gx#stx-pair? _tl2143221487_)
                            (let ((_e2143321490_ (gx#stx-e _tl2143221487_)))
                              (let ((_hd2143421493_ (##car _e2143321490_))
                                    (_tl2143521495_ (##cdr _e2143321490_)))
                                (if (gx#stx-pair? _hd2143421493_)
                                    (let ((_e2143621498_
                                           (gx#stx-e _hd2143421493_)))
                                      (let ((_hd2143721501_
                                             (##car _e2143621498_))
                                            (_tl2143821503_
                                             (##cdr _e2143621498_)))
                                        (if (gx#identifier? _hd2143721501_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd2143721501_)
                                                (if (gx#stx-pair?
                                                     _tl2143821503_)
                                                    (let ((_e2143921506_
                                                           (gx#stx-e
                                                            _tl2143821503_)))
                                                      (let ((_hd2144021509_
                                                             (##car _e2143921506_))
                                                            (_tl2144121511_
                                                             (##cdr _e2143921506_)))
                                                        (if (gx#stx-pair?
                                                             _hd2144021509_)
                                                            (let ((_e2144221514_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2144021509_)))
                      (let ((_hd2144321517_ (##car _e2144221514_))
                            (_tl2144421519_ (##cdr _e2144221514_)))
                        (if (gx#identifier? _hd2144321517_)
                            (if (gx#stx-eq? '%#ref _hd2144321517_)
                                (if (gx#stx-pair? _tl2144421519_)
                                    (let ((_e2144521522_
                                           (gx#stx-e _tl2144421519_)))
                                      (let ((_hd2144621525_
                                             (##car _e2144521522_))
                                            (_tl2144721527_
                                             (##cdr _e2144521522_)))
                                        (if (gx#stx-null? _tl2144721527_)
                                            (if (gx#stx-pair? _tl2144121511_)
                                                (let ((_e2144821530_
                                                       (gx#stx-e
                                                        _tl2144121511_)))
                                                  (let ((_hd2144921533_
                                                         (##car _e2144821530_))
                                                        (_tl2145021535_
                                                         (##cdr _e2144821530_)))
                                                    (if (gx#stx-pair?
                                                         _hd2144921533_)
                                                        (let ((_e2145121538_
                                                               (gx#stx-e
                                                                _hd2144921533_)))
                                                          (let ((_hd2145221541_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2145121538_))
                        (_tl2145321543_ (##cdr _e2145121538_)))
                    (if (gx#identifier? _hd2145221541_)
                        (if (gx#stx-eq? '%#ref _hd2145221541_)
                            (if (gx#stx-pair? _tl2145321543_)
                                (let ((_e2145421546_
                                       (gx#stx-e _tl2145321543_)))
                                  (let ((_hd2145521549_ (##car _e2145421546_))
                                        (_tl2145621551_ (##cdr _e2145421546_)))
                                    (if (gx#stx-null? _tl2145621551_)
                                        (if (gx#stx-pair? _tl2145021535_)
                                            (let ((_e2145721554_
                                                   (gx#stx-e _tl2145021535_)))
                                              (let ((_hd2145821557_
                                                     (##car _e2145721554_))
                                                    (_tl2145921559_
                                                     (##cdr _e2145721554_)))
                                                (if (gx#stx-pair?
                                                     _hd2145821557_)
                                                    (let ((_e2146021562_
                                                           (gx#stx-e
                                                            _hd2145821557_)))
                                                      (let ((_hd2146121565_
                                                             (##car _e2146021562_))
                                                            (_tl2146221567_
                                                             (##cdr _e2146021562_)))
                                                        (if (gx#identifier?
                                                             _hd2146121565_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2146121565_)
                        (if (gx#stx-pair? _tl2146221567_)
                            (let ((_e2146321570_ (gx#stx-e _tl2146221567_)))
                              (let ((_hd2146421573_ (##car _e2146321570_))
                                    (_tl2146521575_ (##cdr _e2146321570_)))
                                (if (gx#stx-null? _tl2146521575_)
                                    (if (gx#stx-null? _tl2145921559_)
                                        (if (gx#stx-null? _tl2143521495_)
                                            ((lambda (_L21578_
                                                      _L21579_
                                                      _L21580_
                                                      _L21581_)
                                               (if (if (gx#identifier?
                                                        _L21581_)
                                                       (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L21580_)
                        'apply)
                   (if (gx#free-identifier=? _L21581_ _L21578_)
                       (not (gx#free-identifier=? _L21579_ _L21581_))
                       '#f)
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#t
                                                   (_g2131221477_
                                                    _g2131421480_)))
                                             _hd2146421573_
                                             _hd2145521549_
                                             _hd2144621525_
                                             _hd2143121485_)
                                            (_g2131221477_ _g2131421480_))
                                        (_g2131221477_ _g2131421480_))
                                    (_g2131221477_ _g2131421480_))))
                            (_g2131221477_ _g2131421480_))
                        (_g2131221477_ _g2131421480_))
                    (_g2131221477_ _g2131421480_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2131221477_
                                                     _g2131421480_))))
                                            (_g2131221477_ _g2131421480_))
                                        (_g2131221477_ _g2131421480_))))
                                (_g2131221477_ _g2131421480_))
                            (_g2131221477_ _g2131421480_))
                        (_g2131221477_ _g2131421480_))))
                (_g2131221477_ _g2131421480_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2131221477_ _g2131421480_))
                                            (_g2131221477_ _g2131421480_))))
                                    (_g2131221477_ _g2131421480_))
                                (_g2131221477_ _g2131421480_))
                            (_g2131221477_ _g2131421480_))))
                    (_g2131221477_ _g2131421480_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2131221477_
                                                     _g2131421480_))
                                                (_g2131221477_ _g2131421480_))
                                            (_g2131221477_ _g2131421480_))))
                                    (_g2131221477_ _g2131421480_))))
                            (_g2131221477_ _g2131421480_))))
                    (_g2131221477_ _g2131421480_))))
             (_g2131021877_
              (lambda (_g2131421620_)
                (if (gx#stx-pair? _g2131421620_)
                    (let ((_e2136621622_ (gx#stx-e _g2131421620_)))
                      (let ((_hd2136721625_ (##car _e2136621622_))
                            (_tl2136821627_ (##cdr _e2136621622_)))
                        (if (gx#stx-pair/null? _hd2136721625_)
                            (if (fx>= (gx#stx-length _hd2136721625_) '0)
                                (let ((_g23612_
                                       (gx#syntax-split-splice
                                        _hd2136721625_
                                        '0)))
                                  (begin
                                    (let ((_g23613_ (values-count _g23612_)))
                                      (if (not (fx= _g23613_ 2))
                                          (error "Context expects 2 values"
                                                 _g23613_)))
                                    (let ((_target2136921630_
                                           (values-ref _g23612_ 0))
                                          (_tl2137121632_
                                           (values-ref _g23612_ 1)))
                                      (letrec ((_loop2137221635_
                                                (lambda (_hd2137021638_
                                                         _arg2137621640_)
                                                  (if (gx#stx-pair?
                                                       _hd2137021638_)
                                                      (let ((_e2137321643_
                                                             (gx#stx-e
                                                              _hd2137021638_)))
                                                        (let ((_lp-hd2137421646_
                                                               (##car _e2137321643_))
                                                              (_lp-tl2137521648_
                                                               (##cdr _e2137321643_)))
                                                          (_loop2137221635_
                                                           _lp-tl2137521648_
                                                           (cons _lp-hd2137421646_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _arg2137621640_))))
              (let ((_arg2137721651_ (reverse _arg2137621640_)))
                (if (gx#stx-pair? _tl2136821627_)
                    (let ((_e2137821654_ (gx#stx-e _tl2136821627_)))
                      (let ((_hd2137921657_ (##car _e2137821654_))
                            (_tl2138021659_ (##cdr _e2137821654_)))
                        (if (gx#stx-pair? _hd2137921657_)
                            (let ((_e2138121662_ (gx#stx-e _hd2137921657_)))
                              (let ((_hd2138221665_ (##car _e2138121662_))
                                    (_tl2138321667_ (##cdr _e2138121662_)))
                                (if (gx#identifier? _hd2138221665_)
                                    (if (gx#stx-eq? '%#call _hd2138221665_)
                                        (if (gx#stx-pair? _tl2138321667_)
                                            (let ((_e2138421670_
                                                   (gx#stx-e _tl2138321667_)))
                                              (let ((_hd2138521673_
                                                     (##car _e2138421670_))
                                                    (_tl2138621675_
                                                     (##cdr _e2138421670_)))
                                                (if (gx#stx-pair?
                                                     _hd2138521673_)
                                                    (let ((_e2138721678_
                                                           (gx#stx-e
                                                            _hd2138521673_)))
                                                      (let ((_hd2138821681_
                                                             (##car _e2138721678_))
                                                            (_tl2138921683_
                                                             (##cdr _e2138721678_)))
                                                        (if (gx#identifier?
                                                             _hd2138821681_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2138821681_)
                        (if (gx#stx-pair? _tl2138921683_)
                            (let ((_e2139021686_ (gx#stx-e _tl2138921683_)))
                              (let ((_hd2139121689_ (##car _e2139021686_))
                                    (_tl2139221691_ (##cdr _e2139021686_)))
                                (if (gx#stx-null? _tl2139221691_)
                                    (if (gx#stx-pair? _tl2138621675_)
                                        (let ((_e2139321694_
                                               (gx#stx-e _tl2138621675_)))
                                          (let ((_hd2139421697_
                                                 (##car _e2139321694_))
                                                (_tl2139521699_
                                                 (##cdr _e2139321694_)))
                                            (if (gx#stx-pair? _hd2139421697_)
                                                (let ((_e2139621702_
                                                       (gx#stx-e
                                                        _hd2139421697_)))
                                                  (let ((_hd2139721705_
                                                         (##car _e2139621702_))
                                                        (_tl2139821707_
                                                         (##cdr _e2139621702_)))
                                                    (if (gx#identifier?
                                                         _hd2139721705_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd2139721705_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2139821707_)
                        (let ((_e2139921710_ (gx#stx-e _tl2139821707_)))
                          (let ((_hd2140021713_ (##car _e2139921710_))
                                (_tl2140121715_ (##cdr _e2139921710_)))
                            (if (gx#stx-null? _tl2140121715_)
                                (if (gx#stx-pair/null? _tl2139521699_)
                                    (if (fx>= (gx#stx-length _tl2139521699_)
                                              '1)
                                        (let ((_g23614_
                                               (gx#syntax-split-splice
                                                _tl2139521699_
                                                '1)))
                                          (begin
                                            (let ((_g23615_
                                                   (values-count _g23614_)))
                                              (if (not (fx= _g23615_ 2))
                                                  (error "Context expects 2 values"
                                                         _g23615_)))
                                            (let ((_target2140221718_
                                                   (values-ref _g23614_ 0))
                                                  (_tl2140421720_
                                                   (values-ref _g23614_ 1)))
                                              (if (gx#stx-pair? _tl2140421720_)
                                                  (let ((_e2141121723_
                                                         (gx#stx-e
                                                          _tl2140421720_)))
                                                    (let ((_hd2141221726_
                                                           (##car _e2141121723_))
                                                          (_tl2141321728_
                                                           (##cdr _e2141121723_)))
                                                      (if (gx#stx-pair?
                                                           _hd2141221726_)
                                                          (let ((_e2141421731_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2141221726_)))
                    (let ((_hd2141521734_ (##car _e2141421731_))
                          (_tl2141621736_ (##cdr _e2141421731_)))
                      (if (gx#identifier? _hd2141521734_)
                          (if (gx#stx-eq? '%#ref _hd2141521734_)
                              (if (gx#stx-pair? _tl2141621736_)
                                  (let ((_e2141721739_
                                         (gx#stx-e _tl2141621736_)))
                                    (let ((_hd2141821742_
                                           (##car _e2141721739_))
                                          (_tl2141921744_
                                           (##cdr _e2141721739_)))
                                      (if (gx#stx-null? _tl2141921744_)
                                          (if (gx#stx-null? _tl2141321728_)
                                              (letrec ((_loop2140521747_
                                                        (lambda (_hd2140321750_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _xarg2140921752_)
                  (if (gx#stx-pair? _hd2140321750_)
                      (let ((_e2140621755_ (gx#stx-e _hd2140321750_)))
                        (let ((_lp-hd2140721758_ (##car _e2140621755_))
                              (_lp-tl2140821760_ (##cdr _e2140621755_)))
                          (if (gx#stx-pair? _lp-hd2140721758_)
                              (let ((_e2142021763_
                                     (gx#stx-e _lp-hd2140721758_)))
                                (let ((_hd2142121766_ (##car _e2142021763_))
                                      (_tl2142221768_ (##cdr _e2142021763_)))
                                  (if (gx#identifier? _hd2142121766_)
                                      (if (gx#stx-eq? '%#ref _hd2142121766_)
                                          (if (gx#stx-pair? _tl2142221768_)
                                              (let ((_e2142321771_
                                                     (gx#stx-e
                                                      _tl2142221768_)))
                                                (let ((_hd2142421774_
                                                       (##car _e2142321771_))
                                                      (_tl2142521776_
                                                       (##cdr _e2142321771_)))
                                                  (if (gx#stx-null?
                                                       _tl2142521776_)
                                                      (_loop2140521747_
                                                       _lp-tl2140821760_
                                                       (cons _hd2142421774_
                                                             _xarg2140921752_))
                                                      (_g2131121617_
                                                       _g2131421620_))))
                                              (_g2131121617_ _g2131421620_))
                                          (_g2131121617_ _g2131421620_))
                                      (_g2131121617_ _g2131421620_))))
                              (_g2131121617_ _g2131421620_))))
                      (let ((_xarg2141021779_ (reverse _xarg2140921752_)))
                        (if (gx#stx-null? _tl2138021659_)
                            ((lambda (_L21782_
                                      _L21783_
                                      _L21784_
                                      _L21785_
                                      _L21786_
                                      _L21787_)
                               (if (if (gx#identifier-list?
                                        (begin
                                          '#!void
                                          (foldr1 (lambda (_g2183021833_
                                                           _g2183121835_)
                                                    (cons _g2183021833_
                                                          _g2183121835_))
                                                  '()
                                                  _L21787_)))
                                       (if (gx#identifier? _L21786_)
                                           (if (eq? (gxc#generate-runtime-binding-id
                                                     _L21785_)
                                                    'apply)
                                               (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr1 (lambda (_g2183721840_ _g2183821842_)
                                    (cons _g2183721840_ _g2183821842_))
                                  '()
                                  _L21787_)))
                (length (begin
                          '#!void
                          (foldr1 (lambda (_g2184421847_ _g2184521849_)
                                    (cons _g2184421847_ _g2184521849_))
                                  '()
                                  _L21783_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (andmap gx#free-identifier=?
                                                               (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#!void
                         (foldr1 (lambda (_g2185121854_ _g2185221856_)
                                   (cons _g2185121854_ _g2185221856_))
                                 '()
                                 _L21787_))
                       (begin
                         '#!void
                         (foldr1 (lambda (_g2185821861_ _g2185921863_)
                                   (cons _g2185821861_ _g2185921863_))
                                 '()
                                 _L21783_)))
               (if (gx#free-identifier=? _L21786_ _L21782_)
                   (not (find (lambda (_g2186521867_)
                                (gx#free-identifier=? _g2186521867_ _L21784_))
                              (begin
                                '#!void
                                (foldr1 (lambda (_g2186921872_ _g2187021874_)
                                          (cons _g2186921872_ _g2187021874_))
                                        (cons _L21786_ '())
                                        _L21787_))))
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#f)
                                               '#f)
                                           '#f)
                                       '#f)
                                   '#t
                                   (_g2131121617_ _g2131421620_)))
                             _hd2141821742_
                             _xarg2141021779_
                             _hd2140021713_
                             _hd2139121689_
                             _tl2137121632_
                             _arg2137721651_)
                            (_g2131121617_ _g2131421620_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop2140521747_
                                                 _target2140221718_
                                                 '()))
                                              (_g2131121617_ _g2131421620_))
                                          (_g2131121617_ _g2131421620_))))
                                  (_g2131121617_ _g2131421620_))
                              (_g2131121617_ _g2131421620_))
                          (_g2131121617_ _g2131421620_))))
                  (_g2131121617_ _g2131421620_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2131121617_
                                                   _g2131421620_)))))
                                        (_g2131121617_ _g2131421620_))
                                    (_g2131121617_ _g2131421620_))
                                (_g2131121617_ _g2131421620_))))
                        (_g2131121617_ _g2131421620_))
                    (_g2131121617_ _g2131421620_))
                (_g2131121617_ _g2131421620_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2131121617_
                                                 _g2131421620_))))
                                        (_g2131121617_ _g2131421620_))
                                    (_g2131121617_ _g2131421620_))))
                            (_g2131121617_ _g2131421620_))
                        (_g2131121617_ _g2131421620_))
                    (_g2131121617_ _g2131421620_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2131121617_
                                                     _g2131421620_))))
                                            (_g2131121617_ _g2131421620_))
                                        (_g2131121617_ _g2131421620_))
                                    (_g2131121617_ _g2131421620_))))
                            (_g2131121617_ _g2131421620_))))
                    (_g2131121617_ _g2131421620_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop2137221635_
                                         _target2136921630_
                                         '())))))
                                (_g2131121617_ _g2131421620_))
                            (_g2131121617_ _g2131421620_))))
                    (_g2131121617_ _g2131421620_))))
             (_g2130922071_
              (lambda (_g2131421880_)
                (if (gx#stx-pair? _g2131421880_)
                    (let ((_e2131821882_ (gx#stx-e _g2131421880_)))
                      (let ((_hd2131921885_ (##car _e2131821882_))
                            (_tl2132021887_ (##cdr _e2131821882_)))
                        (if (gx#stx-pair/null? _hd2131921885_)
                            (if (fx>= (gx#stx-length _hd2131921885_) '0)
                                (let ((_g23616_
                                       (gx#syntax-split-splice
                                        _hd2131921885_
                                        '0)))
                                  (begin
                                    (let ((_g23617_ (values-count _g23616_)))
                                      (if (not (fx= _g23617_ 2))
                                          (error "Context expects 2 values"
                                                 _g23617_)))
                                    (let ((_target2132121890_
                                           (values-ref _g23616_ 0))
                                          (_tl2132321892_
                                           (values-ref _g23616_ 1)))
                                      (if (gx#stx-null? _tl2132321892_)
                                          (letrec ((_loop2132421895_
                                                    (lambda (_hd2132221898_
                                                             _arg2132821900_)
                                                      (if (gx#stx-pair?
                                                           _hd2132221898_)
                                                          (let ((_e2132521903_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2132221898_)))
                    (let ((_lp-hd2132621906_ (##car _e2132521903_))
                          (_lp-tl2132721908_ (##cdr _e2132521903_)))
                      (_loop2132421895_
                       _lp-tl2132721908_
                       (cons _lp-hd2132621906_ _arg2132821900_))))
                  (let ((_arg2132921911_ (reverse _arg2132821900_)))
                    (if (gx#stx-pair? _tl2132021887_)
                        (let ((_e2133021914_ (gx#stx-e _tl2132021887_)))
                          (let ((_hd2133121917_ (##car _e2133021914_))
                                (_tl2133221919_ (##cdr _e2133021914_)))
                            (if (gx#stx-pair? _hd2133121917_)
                                (let ((_e2133321922_
                                       (gx#stx-e _hd2133121917_)))
                                  (let ((_hd2133421925_ (##car _e2133321922_))
                                        (_tl2133521927_ (##cdr _e2133321922_)))
                                    (if (gx#identifier? _hd2133421925_)
                                        (if (gx#stx-eq? '%#call _hd2133421925_)
                                            (if (gx#stx-pair? _tl2133521927_)
                                                (let ((_e2133621930_
                                                       (gx#stx-e
                                                        _tl2133521927_)))
                                                  (let ((_hd2133721933_
                                                         (##car _e2133621930_))
                                                        (_tl2133821935_
                                                         (##cdr _e2133621930_)))
                                                    (if (gx#stx-pair?
                                                         _hd2133721933_)
                                                        (let ((_e2133921938_
                                                               (gx#stx-e
                                                                _hd2133721933_)))
                                                          (let ((_hd2134021941_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2133921938_))
                        (_tl2134121943_ (##cdr _e2133921938_)))
                    (if (gx#identifier? _hd2134021941_)
                        (if (gx#stx-eq? '%#ref _hd2134021941_)
                            (if (gx#stx-pair? _tl2134121943_)
                                (let ((_e2134221946_
                                       (gx#stx-e _tl2134121943_)))
                                  (let ((_hd2134321949_ (##car _e2134221946_))
                                        (_tl2134421951_ (##cdr _e2134221946_)))
                                    (if (gx#stx-null? _tl2134421951_)
                                        (if (gx#stx-pair/null? _tl2133821935_)
                                            (if (fx>= (gx#stx-length
                                                       _tl2133821935_)
                                                      '0)
                                                (let ((_g23618_
                                                       (gx#syntax-split-splice
                                                        _tl2133821935_
                                                        '0)))
                                                  (begin
                                                    (let ((_g23619_
                                                           (values-count
                                                            _g23618_)))
                                                      (if (not (fx= _g23619_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g23619_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2134521954_
                                                           (values-ref
                                                            _g23618_
                                                            0))
                                                          (_tl2134721956_
                                                           (values-ref
                                                            _g23618_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl2134721956_)
                                                          (letrec ((_loop2134821959_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd2134621962_ _xarg2135221964_)
                              (if (gx#stx-pair? _hd2134621962_)
                                  (let ((_e2134921967_
                                         (gx#stx-e _hd2134621962_)))
                                    (let ((_lp-hd2135021970_
                                           (##car _e2134921967_))
                                          (_lp-tl2135121972_
                                           (##cdr _e2134921967_)))
                                      (if (gx#stx-pair? _lp-hd2135021970_)
                                          (let ((_e2135421975_
                                                 (gx#stx-e _lp-hd2135021970_)))
                                            (let ((_hd2135521978_
                                                   (##car _e2135421975_))
                                                  (_tl2135621980_
                                                   (##cdr _e2135421975_)))
                                              (if (gx#identifier?
                                                   _hd2135521978_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd2135521978_)
                                                      (if (gx#stx-pair?
                                                           _tl2135621980_)
                                                          (let ((_e2135721983_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2135621980_)))
                    (let ((_hd2135821986_ (##car _e2135721983_))
                          (_tl2135921988_ (##cdr _e2135721983_)))
                      (if (gx#stx-null? _tl2135921988_)
                          (_loop2134821959_
                           _lp-tl2135121972_
                           (cons _hd2135821986_ _xarg2135221964_))
                          (_g2131021877_ _g2131421880_))))
                  (_g2131021877_ _g2131421880_))
              (_g2131021877_ _g2131421880_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2131021877_
                                                   _g2131421880_))))
                                          (_g2131021877_ _g2131421880_))))
                                  (let ((_xarg2135321991_
                                         (reverse _xarg2135221964_)))
                                    (if (gx#stx-null? _tl2133221919_)
                                        ((lambda (_L21994_ _L21995_ _L21996_)
                                           (if (if (gx#identifier-list?
                                                    (begin
                                                      '#!void
                                                      (foldr1 (lambda (_g2202422027_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2202522029_)
                        (cons _g2202422027_ _g2202522029_))
                      '()
                      _L21996_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#!void
                              (foldr1 (lambda (_g2203122034_ _g2203222036_)
                                        (cons _g2203122034_ _g2203222036_))
                                      '()
                                      _L21996_)))
                    (length (begin
                              '#!void
                              (foldr1 (lambda (_g2203822041_ _g2203922043_)
                                        (cons _g2203822041_ _g2203922043_))
                                      '()
                                      _L21994_))))
               (if (andmap gx#free-identifier=?
                           (begin
                             '#!void
                             (foldr1 (lambda (_g2204522048_ _g2204622050_)
                                       (cons _g2204522048_ _g2204622050_))
                                     '()
                                     _L21996_))
                           (begin
                             '#!void
                             (foldr1 (lambda (_g2205222055_ _g2205322057_)
                                       (cons _g2205222055_ _g2205322057_))
                                     '()
                                     _L21994_)))
                   (not (find (lambda (_g2205922061_)
                                (gx#free-identifier=? _g2205922061_ _L21995_))
                              (begin
                                '#!void
                                (foldr1 (lambda (_g2206322066_ _g2206422068_)
                                          (cons _g2206322066_ _g2206422068_))
                                        '()
                                        _L21996_))))
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#f)
                                               '#t
                                               (_g2131021877_ _g2131421880_)))
                                         _xarg2135321991_
                                         _hd2134321949_
                                         _arg2132921911_)
                                        (_g2131021877_ _g2131421880_)))))))
                    (_loop2134821959_ _target2134521954_ '()))
                  (_g2131021877_ _g2131421880_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2131021877_ _g2131421880_))
                                            (_g2131021877_ _g2131421880_))
                                        (_g2131021877_ _g2131421880_))))
                                (_g2131021877_ _g2131421880_))
                            (_g2131021877_ _g2131421880_))
                        (_g2131021877_ _g2131421880_))))
                (_g2131021877_ _g2131421880_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2131021877_ _g2131421880_))
                                            (_g2131021877_ _g2131421880_))
                                        (_g2131021877_ _g2131421880_))))
                                (_g2131021877_ _g2131421880_))))
                        (_g2131021877_ _g2131421880_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop2132421895_
                                             _target2132121890_
                                             '()))
                                          (_g2131021877_ _g2131421880_)))))
                                (_g2131021877_ _g2131421880_))
                            (_g2131021877_ _g2131421880_))))
                    (_g2131021877_ _g2131421880_)))))
        (_g2130922071_ _form21308_))))
  (define gxc#dispatch-lambda-form-delegate
    (lambda (_form20776_)
      (let* ((_g2078020904_
              (lambda (_g2078120901_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2078120901_)))
             (_g2077921021_
              (lambda (_g2078120907_)
                (if (gx#stx-pair? _g2078120907_)
                    (let ((_e2087020909_ (gx#stx-e _g2078120907_)))
                      (let ((_hd2087120912_ (##car _e2087020909_))
                            (_tl2087220914_ (##cdr _e2087020909_)))
                        (if (gx#stx-pair? _tl2087220914_)
                            (let ((_e2087320917_ (gx#stx-e _tl2087220914_)))
                              (let ((_hd2087420920_ (##car _e2087320917_))
                                    (_tl2087520922_ (##cdr _e2087320917_)))
                                (if (gx#stx-pair? _hd2087420920_)
                                    (let ((_e2087620925_
                                           (gx#stx-e _hd2087420920_)))
                                      (let ((_hd2087720928_
                                             (##car _e2087620925_))
                                            (_tl2087820930_
                                             (##cdr _e2087620925_)))
                                        (if (gx#identifier? _hd2087720928_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd2087720928_)
                                                (if (gx#stx-pair?
                                                     _tl2087820930_)
                                                    (let ((_e2087920933_
                                                           (gx#stx-e
                                                            _tl2087820930_)))
                                                      (let ((_hd2088020936_
                                                             (##car _e2087920933_))
                                                            (_tl2088120938_
                                                             (##cdr _e2087920933_)))
                                                        (if (gx#stx-pair?
                                                             _hd2088020936_)
                                                            (let ((_e2088220941_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2088020936_)))
                      (let ((_hd2088320944_ (##car _e2088220941_))
                            (_tl2088420946_ (##cdr _e2088220941_)))
                        (if (gx#identifier? _hd2088320944_)
                            (if (gx#stx-eq? '%#ref _hd2088320944_)
                                (if (gx#stx-pair? _tl2088420946_)
                                    (let ((_e2088520949_
                                           (gx#stx-e _tl2088420946_)))
                                      (let ((_hd2088620952_
                                             (##car _e2088520949_))
                                            (_tl2088720954_
                                             (##cdr _e2088520949_)))
                                        (if (gx#stx-null? _tl2088720954_)
                                            (if (gx#stx-pair? _tl2088120938_)
                                                (let ((_e2088820957_
                                                       (gx#stx-e
                                                        _tl2088120938_)))
                                                  (let ((_hd2088920960_
                                                         (##car _e2088820957_))
                                                        (_tl2089020962_
                                                         (##cdr _e2088820957_)))
                                                    (if (gx#stx-pair?
                                                         _hd2088920960_)
                                                        (let ((_e2089120965_
                                                               (gx#stx-e
                                                                _hd2088920960_)))
                                                          (let ((_hd2089220968_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2089120965_))
                        (_tl2089320970_ (##cdr _e2089120965_)))
                    (if (gx#identifier? _hd2089220968_)
                        (if (gx#stx-eq? '%#ref _hd2089220968_)
                            (if (gx#stx-pair? _tl2089320970_)
                                (let ((_e2089420973_
                                       (gx#stx-e _tl2089320970_)))
                                  (let ((_hd2089520976_ (##car _e2089420973_))
                                        (_tl2089620978_ (##cdr _e2089420973_)))
                                    (if (gx#stx-null? _tl2089620978_)
                                        (if (gx#stx-pair? _tl2089020962_)
                                            (let ((_e2089720981_
                                                   (gx#stx-e _tl2089020962_)))
                                              (let ((_hd2089820984_
                                                     (##car _e2089720981_))
                                                    (_tl2089920986_
                                                     (##cdr _e2089720981_)))
                                                (if (gx#stx-null?
                                                     _tl2089920986_)
                                                    (if (gx#stx-null?
                                                         _tl2087520922_)
                                                        ((lambda (_L20989_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L20990_
                          _L20991_)
                   (gxc#generate-runtime-binding-id _L20989_))
                 _hd2089520976_
                 _hd2088620952_
                 _hd2087120912_)
                (_g2078020904_ _g2078120907_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2078020904_
                                                     _g2078120907_))))
                                            (_g2078020904_ _g2078120907_))
                                        (_g2078020904_ _g2078120907_))))
                                (_g2078020904_ _g2078120907_))
                            (_g2078020904_ _g2078120907_))
                        (_g2078020904_ _g2078120907_))))
                (_g2078020904_ _g2078120907_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2078020904_ _g2078120907_))
                                            (_g2078020904_ _g2078120907_))))
                                    (_g2078020904_ _g2078120907_))
                                (_g2078020904_ _g2078120907_))
                            (_g2078020904_ _g2078120907_))))
                    (_g2078020904_ _g2078120907_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2078020904_
                                                     _g2078120907_))
                                                (_g2078020904_ _g2078120907_))
                                            (_g2078020904_ _g2078120907_))))
                                    (_g2078020904_ _g2078120907_))))
                            (_g2078020904_ _g2078120907_))))
                    (_g2078020904_ _g2078120907_))))
             (_g2077821157_
              (lambda (_g2078121024_)
                (if (gx#stx-pair? _g2078121024_)
                    (let ((_e2083121026_ (gx#stx-e _g2078121024_)))
                      (let ((_hd2083221029_ (##car _e2083121026_))
                            (_tl2083321031_ (##cdr _e2083121026_)))
                        (if (gx#stx-pair/null? _hd2083221029_)
                            (if (fx>= (gx#stx-length _hd2083221029_) '0)
                                (let ((_g23620_
                                       (gx#syntax-split-splice
                                        _hd2083221029_
                                        '0)))
                                  (begin
                                    (let ((_g23621_ (values-count _g23620_)))
                                      (if (not (fx= _g23621_ 2))
                                          (error "Context expects 2 values"
                                                 _g23621_)))
                                    (let ((_target2083421034_
                                           (values-ref _g23620_ 0))
                                          (_tl2083621036_
                                           (values-ref _g23620_ 1)))
                                      (letrec ((_loop2083721039_
                                                (lambda (_hd2083521042_
                                                         _arg2084121044_)
                                                  (if (gx#stx-pair?
                                                       _hd2083521042_)
                                                      (let ((_e2083821047_
                                                             (gx#stx-e
                                                              _hd2083521042_)))
                                                        (let ((_lp-hd2083921050_
                                                               (##car _e2083821047_))
                                                              (_lp-tl2084021052_
                                                               (##cdr _e2083821047_)))
                                                          (_loop2083721039_
                                                           _lp-tl2084021052_
                                                           (cons _lp-hd2083921050_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _arg2084121044_))))
              (let ((_arg2084221055_ (reverse _arg2084121044_)))
                (if (gx#stx-pair? _tl2083321031_)
                    (let ((_e2084321058_ (gx#stx-e _tl2083321031_)))
                      (let ((_hd2084421061_ (##car _e2084321058_))
                            (_tl2084521063_ (##cdr _e2084321058_)))
                        (if (gx#stx-pair? _hd2084421061_)
                            (let ((_e2084621066_ (gx#stx-e _hd2084421061_)))
                              (let ((_hd2084721069_ (##car _e2084621066_))
                                    (_tl2084821071_ (##cdr _e2084621066_)))
                                (if (gx#identifier? _hd2084721069_)
                                    (if (gx#stx-eq? '%#call _hd2084721069_)
                                        (if (gx#stx-pair? _tl2084821071_)
                                            (let ((_e2084921074_
                                                   (gx#stx-e _tl2084821071_)))
                                              (let ((_hd2085021077_
                                                     (##car _e2084921074_))
                                                    (_tl2085121079_
                                                     (##cdr _e2084921074_)))
                                                (if (gx#stx-pair?
                                                     _hd2085021077_)
                                                    (let ((_e2085221082_
                                                           (gx#stx-e
                                                            _hd2085021077_)))
                                                      (let ((_hd2085321085_
                                                             (##car _e2085221082_))
                                                            (_tl2085421087_
                                                             (##cdr _e2085221082_)))
                                                        (if (gx#identifier?
                                                             _hd2085321085_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2085321085_)
                        (if (gx#stx-pair? _tl2085421087_)
                            (let ((_e2085521090_ (gx#stx-e _tl2085421087_)))
                              (let ((_hd2085621093_ (##car _e2085521090_))
                                    (_tl2085721095_ (##cdr _e2085521090_)))
                                (if (gx#stx-null? _tl2085721095_)
                                    (if (gx#stx-pair? _tl2085121079_)
                                        (let ((_e2085821098_
                                               (gx#stx-e _tl2085121079_)))
                                          (let ((_hd2085921101_
                                                 (##car _e2085821098_))
                                                (_tl2086021103_
                                                 (##cdr _e2085821098_)))
                                            (if (gx#stx-pair? _hd2085921101_)
                                                (let ((_e2086121106_
                                                       (gx#stx-e
                                                        _hd2085921101_)))
                                                  (let ((_hd2086221109_
                                                         (##car _e2086121106_))
                                                        (_tl2086321111_
                                                         (##cdr _e2086121106_)))
                                                    (if (gx#identifier?
                                                         _hd2086221109_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd2086221109_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2086321111_)
                        (let ((_e2086421114_ (gx#stx-e _tl2086321111_)))
                          (let ((_hd2086521117_ (##car _e2086421114_))
                                (_tl2086621119_ (##cdr _e2086421114_)))
                            (if (gx#stx-null? _tl2086621119_)
                                (if (gx#stx-null? _tl2084521063_)
                                    ((lambda (_L21122_
                                              _L21123_
                                              _L21124_
                                              _L21125_)
                                       (gxc#generate-runtime-binding-id
                                        _L21122_))
                                     _hd2086521117_
                                     _hd2085621093_
                                     _tl2083621036_
                                     _arg2084221055_)
                                    (_g2077921021_ _g2078121024_))
                                (_g2077921021_ _g2078121024_))))
                        (_g2077921021_ _g2078121024_))
                    (_g2077921021_ _g2078121024_))
                (_g2077921021_ _g2078121024_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2077921021_
                                                 _g2078121024_))))
                                        (_g2077921021_ _g2078121024_))
                                    (_g2077921021_ _g2078121024_))))
                            (_g2077921021_ _g2078121024_))
                        (_g2077921021_ _g2078121024_))
                    (_g2077921021_ _g2078121024_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2077921021_
                                                     _g2078121024_))))
                                            (_g2077921021_ _g2078121024_))
                                        (_g2077921021_ _g2078121024_))
                                    (_g2077921021_ _g2078121024_))))
                            (_g2077921021_ _g2078121024_))))
                    (_g2077921021_ _g2078121024_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop2083721039_
                                         _target2083421034_
                                         '())))))
                                (_g2077921021_ _g2078121024_))
                            (_g2077921021_ _g2078121024_))))
                    (_g2077921021_ _g2078121024_))))
             (_g2077721305_
              (lambda (_g2078121160_)
                (if (gx#stx-pair? _g2078121160_)
                    (let ((_e2078521162_ (gx#stx-e _g2078121160_)))
                      (let ((_hd2078621165_ (##car _e2078521162_))
                            (_tl2078721167_ (##cdr _e2078521162_)))
                        (if (gx#stx-pair/null? _hd2078621165_)
                            (if (fx>= (gx#stx-length _hd2078621165_) '0)
                                (let ((_g23622_
                                       (gx#syntax-split-splice
                                        _hd2078621165_
                                        '0)))
                                  (begin
                                    (let ((_g23623_ (values-count _g23622_)))
                                      (if (not (fx= _g23623_ 2))
                                          (error "Context expects 2 values"
                                                 _g23623_)))
                                    (let ((_target2078821170_
                                           (values-ref _g23622_ 0))
                                          (_tl2079021172_
                                           (values-ref _g23622_ 1)))
                                      (if (gx#stx-null? _tl2079021172_)
                                          (letrec ((_loop2079121175_
                                                    (lambda (_hd2078921178_
                                                             _arg2079521180_)
                                                      (if (gx#stx-pair?
                                                           _hd2078921178_)
                                                          (let ((_e2079221183_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2078921178_)))
                    (let ((_lp-hd2079321186_ (##car _e2079221183_))
                          (_lp-tl2079421188_ (##cdr _e2079221183_)))
                      (_loop2079121175_
                       _lp-tl2079421188_
                       (cons _lp-hd2079321186_ _arg2079521180_))))
                  (let ((_arg2079621191_ (reverse _arg2079521180_)))
                    (if (gx#stx-pair? _tl2078721167_)
                        (let ((_e2079721194_ (gx#stx-e _tl2078721167_)))
                          (let ((_hd2079821197_ (##car _e2079721194_))
                                (_tl2079921199_ (##cdr _e2079721194_)))
                            (if (gx#stx-pair? _hd2079821197_)
                                (let ((_e2080021202_
                                       (gx#stx-e _hd2079821197_)))
                                  (let ((_hd2080121205_ (##car _e2080021202_))
                                        (_tl2080221207_ (##cdr _e2080021202_)))
                                    (if (gx#identifier? _hd2080121205_)
                                        (if (gx#stx-eq? '%#call _hd2080121205_)
                                            (if (gx#stx-pair? _tl2080221207_)
                                                (let ((_e2080321210_
                                                       (gx#stx-e
                                                        _tl2080221207_)))
                                                  (let ((_hd2080421213_
                                                         (##car _e2080321210_))
                                                        (_tl2080521215_
                                                         (##cdr _e2080321210_)))
                                                    (if (gx#stx-pair?
                                                         _hd2080421213_)
                                                        (let ((_e2080621218_
                                                               (gx#stx-e
                                                                _hd2080421213_)))
                                                          (let ((_hd2080721221_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2080621218_))
                        (_tl2080821223_ (##cdr _e2080621218_)))
                    (if (gx#identifier? _hd2080721221_)
                        (if (gx#stx-eq? '%#ref _hd2080721221_)
                            (if (gx#stx-pair? _tl2080821223_)
                                (let ((_e2080921226_
                                       (gx#stx-e _tl2080821223_)))
                                  (let ((_hd2081021229_ (##car _e2080921226_))
                                        (_tl2081121231_ (##cdr _e2080921226_)))
                                    (if (gx#stx-null? _tl2081121231_)
                                        (if (gx#stx-pair/null? _tl2080521215_)
                                            (if (fx>= (gx#stx-length
                                                       _tl2080521215_)
                                                      '0)
                                                (let ((_g23624_
                                                       (gx#syntax-split-splice
                                                        _tl2080521215_
                                                        '0)))
                                                  (begin
                                                    (let ((_g23625_
                                                           (values-count
                                                            _g23624_)))
                                                      (if (not (fx= _g23625_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g23625_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2081221234_
                                                           (values-ref
                                                            _g23624_
                                                            0))
                                                          (_tl2081421236_
                                                           (values-ref
                                                            _g23624_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl2081421236_)
                                                          (letrec ((_loop2081521239_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd2081321242_ _xarg2081921244_)
                              (if (gx#stx-pair? _hd2081321242_)
                                  (let ((_e2081621247_
                                         (gx#stx-e _hd2081321242_)))
                                    (let ((_lp-hd2081721250_
                                           (##car _e2081621247_))
                                          (_lp-tl2081821252_
                                           (##cdr _e2081621247_)))
                                      (if (gx#stx-pair? _lp-hd2081721250_)
                                          (let ((_e2082121255_
                                                 (gx#stx-e _lp-hd2081721250_)))
                                            (let ((_hd2082221258_
                                                   (##car _e2082121255_))
                                                  (_tl2082321260_
                                                   (##cdr _e2082121255_)))
                                              (if (gx#identifier?
                                                   _hd2082221258_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd2082221258_)
                                                      (if (gx#stx-pair?
                                                           _tl2082321260_)
                                                          (let ((_e2082421263_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2082321260_)))
                    (let ((_hd2082521266_ (##car _e2082421263_))
                          (_tl2082621268_ (##cdr _e2082421263_)))
                      (if (gx#stx-null? _tl2082621268_)
                          (_loop2081521239_
                           _lp-tl2081821252_
                           (cons _hd2082521266_ _xarg2081921244_))
                          (_g2077821157_ _g2078121160_))))
                  (_g2077821157_ _g2078121160_))
              (_g2077821157_ _g2078121160_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2077821157_
                                                   _g2078121160_))))
                                          (_g2077821157_ _g2078121160_))))
                                  (let ((_xarg2082021271_
                                         (reverse _xarg2081921244_)))
                                    (if (gx#stx-null? _tl2079921199_)
                                        ((lambda (_L21274_ _L21275_ _L21276_)
                                           (gxc#generate-runtime-binding-id
                                            _L21275_))
                                         _xarg2082021271_
                                         _hd2081021229_
                                         _arg2079621191_)
                                        (_g2077821157_ _g2078121160_)))))))
                    (_loop2081521239_ _target2081221234_ '()))
                  (_g2077821157_ _g2078121160_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2077821157_ _g2078121160_))
                                            (_g2077821157_ _g2078121160_))
                                        (_g2077821157_ _g2078121160_))))
                                (_g2077821157_ _g2078121160_))
                            (_g2077821157_ _g2078121160_))
                        (_g2077821157_ _g2078121160_))))
                (_g2077821157_ _g2078121160_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2077821157_ _g2078121160_))
                                            (_g2077821157_ _g2078121160_))
                                        (_g2077821157_ _g2078121160_))))
                                (_g2077821157_ _g2078121160_))))
                        (_g2077821157_ _g2078121160_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop2079121175_
                                             _target2078821170_
                                             '()))
                                          (_g2077821157_ _g2078121160_)))))
                                (_g2077821157_ _g2078121160_))
                            (_g2077821157_ _g2078121160_))))
                    (_g2077821157_ _g2078121160_)))))
        (_g2077721305_ _form20776_))))
  (define gxc#lambda-form-arity
    (lambda (_form20580_)
      (let* ((_g2058220596_
              (lambda (_g2058320593_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2058320593_)))
             (_g2058120773_
              (lambda (_g2058320599_)
                (if (gx#stx-pair? _g2058320599_)
                    (let ((_e2058620601_ (gx#stx-e _g2058320599_)))
                      (let ((_hd2058720604_ (##car _e2058620601_))
                            (_tl2058820606_ (##cdr _e2058620601_)))
                        (if (gx#stx-pair? _tl2058820606_)
                            (let ((_e2058920609_ (gx#stx-e _tl2058820606_)))
                              (let ((_hd2059020612_ (##car _e2058920609_))
                                    (_tl2059120614_ (##cdr _e2058920609_)))
                                (if (gx#stx-null? _tl2059120614_)
                                    ((lambda (_L20617_ _L20618_)
                                       (let* ((_g2063320661_
                                               (lambda (_g2063420658_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g2063420658_)))
                                              (_g2063220674_
                                               (lambda (_g2063420664_)
                                                 ((lambda (_L20666_)
                                                    (cons '0 '()))
                                                  _g2063420664_)))
                                              (_g2063120723_
                                               (lambda (_g2063420677_)
                                                 (if (gx#stx-pair/null?
                                                      _g2063420677_)
                                                     (if (fx>= (gx#stx-length
                                                                _g2063420677_)
                                                               '0)
                                                         (let ((_g23626_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2063420677_
                         '0)))
                   (begin
                     (let ((_g23627_ (values-count _g23626_)))
                       (if (not (fx= _g23627_ 2))
                           (error "Context expects 2 values" _g23627_)))
                     (let ((_target2064720679_ (values-ref _g23626_ 0))
                           (_tl2064920681_ (values-ref _g23626_ 1)))
                       (letrec ((_loop2065020684_
                                 (lambda (_hd2064820687_ _arg2065420689_)
                                   (if (gx#stx-pair? _hd2064820687_)
                                       (let ((_e2065120692_
                                              (gx#stx-e _hd2064820687_)))
                                         (let ((_lp-hd2065220695_
                                                (##car _e2065120692_))
                                               (_lp-tl2065320697_
                                                (##cdr _e2065120692_)))
                                           (_loop2065020684_
                                            _lp-tl2065320697_
                                            (cons _lp-hd2065220695_
                                                  _arg2065420689_))))
                                       (let ((_arg2065520700_
                                              (reverse _arg2065420689_)))
                                         ((lambda (_L20703_ _L20704_)
                                            (cons (length (begin
                                                            '#!void
                                                            (foldr1 (lambda (_g2071520718_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g2071620720_)
                              (cons _g2071520718_ _g2071620720_))
                            '()
                            _L20704_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                          _tl2064920681_
                                          _arg2065520700_))))))
                         (_loop2065020684_ _target2064720679_ '())))))
                 (_g2063220674_ _g2063420677_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2063220674_
                                                      _g2063420677_))))
                                              (_g2063020770_
                                               (lambda (_g2063420726_)
                                                 (if (gx#stx-pair/null?
                                                      _g2063420726_)
                                                     (if (fx>= (gx#stx-length
                                                                _g2063420726_)
                                                               '0)
                                                         (let ((_g23628_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2063420726_
                         '0)))
                   (begin
                     (let ((_g23629_ (values-count _g23628_)))
                       (if (not (fx= _g23629_ 2))
                           (error "Context expects 2 values" _g23629_)))
                     (let ((_target2063620728_ (values-ref _g23628_ 0))
                           (_tl2063820730_ (values-ref _g23628_ 1)))
                       (if (gx#stx-null? _tl2063820730_)
                           (letrec ((_loop2063920733_
                                     (lambda (_hd2063720736_ _arg2064320738_)
                                       (if (gx#stx-pair? _hd2063720736_)
                                           (let ((_e2064020741_
                                                  (gx#stx-e _hd2063720736_)))
                                             (let ((_lp-hd2064120744_
                                                    (##car _e2064020741_))
                                                   (_lp-tl2064220746_
                                                    (##cdr _e2064020741_)))
                                               (_loop2063920733_
                                                _lp-tl2064220746_
                                                (cons _lp-hd2064120744_
                                                      _arg2064320738_))))
                                           (let ((_arg2064420749_
                                                  (reverse _arg2064320738_)))
                                             ((lambda (_L20752_)
                                                (length (begin
                                                          '#!void
                                                          (foldr1 (lambda (_g2076220765_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g2076320767_)
                            (cons _g2076220765_ _g2076320767_))
                          '()
                          _L20752_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _arg2064420749_))))))
                             (_loop2063920733_ _target2063620728_ '()))
                           (_g2063120723_ _g2063420726_)))))
                 (_g2063120723_ _g2063420726_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2063120723_
                                                      _g2063420726_)))))
                                         (_g2063020770_ _L20618_)))
                                     _hd2059020612_
                                     _hd2058720604_)
                                    (_g2058220596_ _g2058320599_))))
                            (_g2058220596_ _g2058320599_))))
                    (_g2058220596_ _g2058320599_)))))
        (_g2058120773_ _form20580_))))
  (define gxc#lambda-expr?
    (lambda (_expr20533_)
      (let* ((_g2053620546_
              (lambda (_g2053720543_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2053720543_)))
             (_g2053520553_ (lambda (_g2053720549_) ((lambda () '#f))))
             (_g2053420577_
              (lambda (_g2053720556_)
                (if (gx#stx-pair? _g2053720556_)
                    (let ((_e2053920558_ (gx#stx-e _g2053720556_)))
                      (let ((_hd2054020561_ (##car _e2053920558_))
                            (_tl2054120563_ (##cdr _e2053920558_)))
                        (if (gx#identifier? _hd2054020561_)
                            (if (gx#stx-eq? '%#lambda _hd2054020561_)
                                ((lambda (_L20566_) '#t) _tl2054120563_)
                                (_g2053520553_ _g2053720556_))
                            (_g2053520553_ _g2053720556_))))
                    (_g2053520553_ _g2053720556_)))))
        (_g2053420577_ _expr20533_))))
  (define gxc#case-lambda-expr?
    (lambda (_expr20486_)
      (let* ((_g2048920499_
              (lambda (_g2049020496_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2049020496_)))
             (_g2048820506_ (lambda (_g2049020502_) ((lambda () '#f))))
             (_g2048720530_
              (lambda (_g2049020509_)
                (if (gx#stx-pair? _g2049020509_)
                    (let ((_e2049220511_ (gx#stx-e _g2049020509_)))
                      (let ((_hd2049320514_ (##car _e2049220511_))
                            (_tl2049420516_ (##cdr _e2049220511_)))
                        (if (gx#identifier? _hd2049320514_)
                            (if (gx#stx-eq? '%#case-lambda _hd2049320514_)
                                ((lambda (_L20519_) '#t) _tl2049420516_)
                                (_g2048820506_ _g2049020509_))
                            (_g2048820506_ _g2049020509_))))
                    (_g2048820506_ _g2049020509_)))))
        (_g2048720530_ _expr20486_))))
  (define gxc#opt-lambda-expr?
    (lambda (_expr20355_)
      (let* ((_g2035820388_
              (lambda (_g2035920385_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2035920385_)))
             (_g2035720395_ (lambda (_g2035920391_) ((lambda () '#f))))
             (_g2035620483_
              (lambda (_g2035920398_)
                (if (gx#stx-pair? _g2035920398_)
                    (let ((_e2036320400_ (gx#stx-e _g2035920398_)))
                      (let ((_hd2036420403_ (##car _e2036320400_))
                            (_tl2036520405_ (##cdr _e2036320400_)))
                        (if (gx#identifier? _hd2036420403_)
                            (if (gx#stx-eq? '%#let-values _hd2036420403_)
                                (if (gx#stx-pair? _tl2036520405_)
                                    (let ((_e2036620408_
                                           (gx#stx-e _tl2036520405_)))
                                      (let ((_hd2036720411_
                                             (##car _e2036620408_))
                                            (_tl2036820413_
                                             (##cdr _e2036620408_)))
                                        (if (gx#stx-pair? _hd2036720411_)
                                            (let ((_e2036920416_
                                                   (gx#stx-e _hd2036720411_)))
                                              (let ((_hd2037020419_
                                                     (##car _e2036920416_))
                                                    (_tl2037120421_
                                                     (##cdr _e2036920416_)))
                                                (if (gx#stx-pair?
                                                     _hd2037020419_)
                                                    (let ((_e2037220424_
                                                           (gx#stx-e
                                                            _hd2037020419_)))
                                                      (let ((_hd2037320427_
                                                             (##car _e2037220424_))
                                                            (_tl2037420429_
                                                             (##cdr _e2037220424_)))
                                                        (if (gx#stx-pair?
                                                             _hd2037320427_)
                                                            (let ((_e2037520432_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2037320427_)))
                      (let ((_hd2037620435_ (##car _e2037520432_))
                            (_tl2037720437_ (##cdr _e2037520432_)))
                        (if (gx#stx-null? _tl2037720437_)
                            (if (gx#stx-pair? _tl2037420429_)
                                (let ((_e2037820440_
                                       (gx#stx-e _tl2037420429_)))
                                  (let ((_hd2037920443_ (##car _e2037820440_))
                                        (_tl2038020445_ (##cdr _e2037820440_)))
                                    (if (gx#stx-null? _tl2038020445_)
                                        (if (gx#stx-null? _tl2037120421_)
                                            (if (gx#stx-pair? _tl2036820413_)
                                                (let ((_e2038120448_
                                                       (gx#stx-e
                                                        _tl2036820413_)))
                                                  (let ((_hd2038220451_
                                                         (##car _e2038120448_))
                                                        (_tl2038320453_
                                                         (##cdr _e2038120448_)))
                                                    (if (gx#stx-null?
                                                         _tl2038320453_)
                                                        ((lambda (_L20456_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L20457_
                          _L20458_)
                   (if (gx#identifier? _L20458_)
                       (if (gxc#lambda-expr? _L20457_)
                           (gxc#case-lambda-expr? _L20456_)
                           '#f)
                       '#f))
                 _hd2038220451_
                 _hd2037920443_
                 _hd2037620435_)
                (_g2035720395_ _g2035920398_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2035720395_ _g2035920398_))
                                            (_g2035720395_ _g2035920398_))
                                        (_g2035720395_ _g2035920398_))))
                                (_g2035720395_ _g2035920398_))
                            (_g2035720395_ _g2035920398_))))
                    (_g2035720395_ _g2035920398_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2035720395_
                                                     _g2035920398_))))
                                            (_g2035720395_ _g2035920398_))))
                                    (_g2035720395_ _g2035920398_))
                                (_g2035720395_ _g2035920398_))
                            (_g2035720395_ _g2035920398_))))
                    (_g2035720395_ _g2035920398_)))))
        (_g2035620483_ _expr20355_))))
  (begin
    (define gxc#lift-case-lambda-clauses__opt-lambda20095
      (lambda (_stx20097_ _id20098_ _clauses20099_ _gensym?20100_)
        (let _lp20102_ ((_rest20104_ _clauses20099_)
                        (_ids20105_ '())
                        (_impls20106_ '())
                        (_clauses20107_ '()))
          (let* ((_rest2010820116_ _rest20104_)
                 (_E2011120120_
                  (lambda () (error '"No clause matching" _rest2010820116_)))
                 (_else2011020124_
                  (lambda ()
                    (values (reverse _ids20105_)
                            (reverse _impls20106_)
                            (reverse _clauses20107_))))
                 (_K2011220329_
                  (lambda (_rest20127_ _clause20128_)
                    (if (gxc#dispatch-lambda-form? _clause20128_)
                        (_lp20102_
                         _rest20127_
                         _ids20105_
                         _impls20106_
                         (cons _clause20128_ _clauses20107_))
                        (let* ((_g2013020141_
                                (lambda (_g2013120138_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2013120138_)))
                               (_g2012920326_
                                (lambda (_g2013120144_)
                                  (if (gx#stx-pair? _g2013120144_)
                                      (let ((_e2013420146_
                                             (gx#stx-e _g2013120144_)))
                                        (let ((_hd2013520149_
                                               (##car _e2013420146_))
                                              (_tl2013620151_
                                               (##cdr _e2013420146_)))
                                          ((lambda (_L20154_ _L20155_)
                                             (let* ((_id20172_
                                                     (make-symbol
                                                      (gx#stx-e _id20098_)
                                                      '"__"
                                                      (length _clauses20107_)
                                                      (if _gensym?20100_
                                                          (gensym '__)
                                                          '"")))
                                                    (_id20174_
                                                     (gx#core-quote-syntax__1
                                                      _id20172_
                                                      (gx#stx-source
                                                       _stx20097_)))
                                                    (_impl20176_
                                                     (gxc#xform-wrap-source
                                                      (cons (gx#datum->syntax__0
                                                             '#f
                                                             '%#lambda)
                                                            (cons _L20155_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L20154_))
              _stx20097_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause20323_
                                                     (let* ((_g2018020208_
                                                             (lambda (_g2018120205_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2018120205_)))
                                                            (_g2017920224_
                                                             (lambda (_g2018120211_)
                                                               ((lambda (_L20213_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L20155_
                                (cons (gxc#xform-wrap-source
                                       (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'apply '()))
                                                   (cons (cons '%#ref
                                                               (cons _id20174_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                             (cons _L20213_ '()))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _stx20097_)
                                      '())))
                        _g2018120211_)))
                    (_g2017820273_
                     (lambda (_g2018120227_)
                       (if (gx#stx-pair/null? _g2018120227_)
                           (if (fx>= (gx#stx-length _g2018120227_) '0)
                               (let ((_g23630_
                                      (gx#syntax-split-splice
                                       _g2018120227_
                                       '0)))
                                 (begin
                                   (let ((_g23631_ (values-count _g23630_)))
                                     (if (not (fx= _g23631_ 2))
                                         (error "Context expects 2 values"
                                                _g23631_)))
                                   (let ((_target2019420229_
                                          (values-ref _g23630_ 0))
                                         (_tl2019620231_
                                          (values-ref _g23630_ 1)))
                                     (letrec ((_loop2019720234_
                                               (lambda (_hd2019520237_
                                                        _arg2020120239_)
                                                 (if (gx#stx-pair?
                                                      _hd2019520237_)
                                                     (let ((_e2019820242_
                                                            (gx#stx-e
                                                             _hd2019520237_)))
                                                       (let ((_lp-hd2019920245_
                                                              (##car _e2019820242_))
                                                             (_lp-tl2020020247_
                                                              (##cdr _e2019820242_)))
                                                         (_loop2019720234_
                                                          _lp-tl2020020247_
                                                          (cons _lp-hd2019920245_
                                                                _arg2020120239_))))
                                                     (let ((_arg2020220250_
                                                            (reverse _arg2020120239_)))
                                                       ((lambda (_L20253_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L20254_)
                  (cons _L20155_
                        (cons (gxc#xform-wrap-source
                               (cons '%#call
                                     (cons (cons '%#ref (cons 'apply '()))
                                           (cons (cons '%#ref
                                                       (cons _id20174_ '()))
                                                 (foldr1 cons
                                                         (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '%#ref)
                             (cons _L20253_ '()))
                       '())
                 (begin
                   '#!void
                   (foldr1 (lambda (_g2026520268_ _g2026620270_)
                             (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                         (cons _g2026520268_ '()))
                                   _g2026620270_))
                           '()
                           _L20254_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _stx20097_)
                              '())))
                _tl2019620231_
                _arg2020220250_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop2019720234_
                                        _target2019420229_
                                        '())))))
                               (_g2017920224_ _g2018120227_))
                           (_g2017920224_ _g2018120227_))))
                    (_g2017720320_
                     (lambda (_g2018120276_)
                       (if (gx#stx-pair/null? _g2018120276_)
                           (if (fx>= (gx#stx-length _g2018120276_) '0)
                               (let ((_g23632_
                                      (gx#syntax-split-splice
                                       _g2018120276_
                                       '0)))
                                 (begin
                                   (let ((_g23633_ (values-count _g23632_)))
                                     (if (not (fx= _g23633_ 2))
                                         (error "Context expects 2 values"
                                                _g23633_)))
                                   (let ((_target2018320278_
                                          (values-ref _g23632_ 0))
                                         (_tl2018520280_
                                          (values-ref _g23632_ 1)))
                                     (if (gx#stx-null? _tl2018520280_)
                                         (letrec ((_loop2018620283_
                                                   (lambda (_hd2018420286_
                                                            _arg2019020288_)
                                                     (if (gx#stx-pair?
                                                          _hd2018420286_)
                                                         (let ((_e2018720291_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd2018420286_)))
                   (let ((_lp-hd2018820294_ (##car _e2018720291_))
                         (_lp-tl2018920296_ (##cdr _e2018720291_)))
                     (_loop2018620283_
                      _lp-tl2018920296_
                      (cons _lp-hd2018820294_ _arg2019020288_))))
                 (let ((_arg2019120299_ (reverse _arg2019020288_)))
                   ((lambda (_L20302_)
                      (cons _L20155_
                            (cons (gxc#xform-wrap-source
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _id20174_ '()))
                                               (begin
                                                 '#!void
                                                 (foldr1 (lambda (_g2031220315_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g2031320317_)
                   (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                               (cons _g2031220315_ '()))
                         _g2031320317_))
                 '()
                 _L20302_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _stx20097_)
                                  '())))
                    _arg2019120299_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop2018620283_
                                            _target2018320278_
                                            '()))
                                         (_g2017820273_ _g2018120276_)))))
                               (_g2017820273_ _g2018120276_))
                           (_g2017820273_ _g2018120276_)))))
               (_g2017720320_ _L20155_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_lp20102_
                                                _rest20127_
                                                (cons _id20174_ _ids20105_)
                                                (cons _impl20176_ _impls20106_)
                                                (cons _clause20323_
                                                      _clauses20107_))))
                                           _tl2013620151_
                                           _hd2013520149_)))
                                      (_g2013020141_ _g2013120144_)))))
                          (_g2012920326_ _clause20128_))))))
            (if (##pair? _rest2010820116_)
                (let ((_hd2011320332_ (##car _rest2010820116_))
                      (_tl2011420334_ (##cdr _rest2010820116_)))
                  (let* ((_clause20337_ _hd2011320332_)
                         (_rest20339_ _tl2011420334_))
                    (_K2011220329_ _rest20339_ _clause20337_)))
                (_else2011020124_))))))
    (begin
      (define gxc#lift-case-lambda-clauses__0
        (lambda (_stx20344_ _id20345_ _clauses20346_)
          (let ((_gensym?20348_ '#f))
            (gxc#lift-case-lambda-clauses__opt-lambda20095
             _stx20344_
             _id20345_
             _clauses20346_
             _gensym?20348_))))
      (define gxc#lift-case-lambda-clauses
        (lambda _g23635_
          (let ((_g23634_ (length _g23635_)))
            (cond ((fx= _g23634_ 3)
                   (apply gxc#lift-case-lambda-clauses__0 _g23635_))
                  ((fx= _g23634_ 4)
                   (apply gxc#lift-case-lambda-clauses__opt-lambda20095
                          _g23635_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#lift-case-lambda-clauses
                    _g23635_))))))))
  (define gxc#lift-top-lambda-define-values%
    (lambda (_stx19686_)
      (letrec ((_case-lambda-clause-def19688_
                (lambda (_id20093_ _impl20094_)
                  (gxc#xform-wrap-source
                   (cons '%#define-values
                         (cons (cons _id20093_ '())
                               (cons (gxc#compile-e _impl20094_) '())))
                   _stx19686_))))
        (let* ((_g1969219737_
                (lambda (_g1969319734_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1969319734_)))
               (_g1969119783_
                (lambda (_g1969319740_)
                  (if (gx#stx-pair? _g1969319740_)
                      (let ((_e1972419742_ (gx#stx-e _g1969319740_)))
                        (let ((_hd1972519745_ (##car _e1972419742_))
                              (_tl1972619747_ (##cdr _e1972419742_)))
                          (if (gx#stx-pair? _tl1972619747_)
                              (let ((_e1972719750_ (gx#stx-e _tl1972619747_)))
                                (let ((_hd1972819753_ (##car _e1972719750_))
                                      (_tl1972919755_ (##cdr _e1972719750_)))
                                  (if (gx#stx-pair? _tl1972919755_)
                                      (let ((_e1973019758_
                                             (gx#stx-e _tl1972919755_)))
                                        (let ((_hd1973119761_
                                               (##car _e1973019758_))
                                              (_tl1973219763_
                                               (##cdr _e1973019758_)))
                                          (if (gx#stx-null? _tl1973219763_)
                                              ((lambda (_L19766_ _L19767_)
                                                 (gxc#xform-wrap-source
                                                  (cons '%#define-values
                                                        (cons _L19767_
                                                              (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L19766_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx19686_))
                                               _hd1973119761_
                                               _hd1972819753_)
                                              (_g1969219737_ _g1969319740_))))
                                      (_g1969219737_ _g1969319740_))))
                              (_g1969219737_ _g1969319740_))))
                      (_g1969219737_ _g1969319740_))))
               (_g1969019965_
                (lambda (_g1969319786_)
                  (if (gx#stx-pair? _g1969319786_)
                      (let ((_e1971019788_ (gx#stx-e _g1969319786_)))
                        (let ((_hd1971119791_ (##car _e1971019788_))
                              (_tl1971219793_ (##cdr _e1971019788_)))
                          (if (gx#stx-pair? _tl1971219793_)
                              (let ((_e1971319796_ (gx#stx-e _tl1971219793_)))
                                (let ((_hd1971419799_ (##car _e1971319796_))
                                      (_tl1971519801_ (##cdr _e1971319796_)))
                                  (if (gx#stx-pair? _hd1971419799_)
                                      (let ((_e1971619804_
                                             (gx#stx-e _hd1971419799_)))
                                        (let ((_hd1971719807_
                                               (##car _e1971619804_))
                                              (_tl1971819809_
                                               (##cdr _e1971619804_)))
                                          (if (gx#stx-null? _tl1971819809_)
                                              (if (gx#stx-pair? _tl1971519801_)
                                                  (let ((_e1971919812_
                                                         (gx#stx-e
                                                          _tl1971519801_)))
                                                    (let ((_hd1972019815_
                                                           (##car _e1971919812_))
                                                          (_tl1972119817_
                                                           (##cdr _e1971919812_)))
                                                      (if (gx#stx-null?
                                                           _tl1972119817_)
                                                          ((lambda (_L19820_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L19821_)
                     (if (if (gx#identifier? _L19821_)
                             (gxc#opt-lambda-expr? _L19820_)
                             '#f)
                         (let* ((_g1983719867_
                                 (lambda (_g1983819864_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1983819864_)))
                                (_g1983619962_
                                 (lambda (_g1983819870_)
                                   (if (gx#stx-pair? _g1983819870_)
                                       (let ((_e1984219872_
                                              (gx#stx-e _g1983819870_)))
                                         (let ((_hd1984319875_
                                                (##car _e1984219872_))
                                               (_tl1984419877_
                                                (##cdr _e1984219872_)))
                                           (if (gx#stx-pair? _tl1984419877_)
                                               (let ((_e1984519880_
                                                      (gx#stx-e
                                                       _tl1984419877_)))
                                                 (let ((_hd1984619883_
                                                        (##car _e1984519880_))
                                                       (_tl1984719885_
                                                        (##cdr _e1984519880_)))
                                                   (if (gx#stx-pair?
                                                        _hd1984619883_)
                                                       (let ((_e1984819888_
                                                              (gx#stx-e
                                                               _hd1984619883_)))
                                                         (let ((_hd1984919891_
                                                                (##car _e1984819888_))
                                                               (_tl1985019893_
                                                                (##cdr _e1984819888_)))
                                                           (if (gx#stx-pair?
                                                                _hd1984919891_)
                                                               (let ((_e1985119896_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1984919891_)))
                         (let ((_hd1985219899_ (##car _e1985119896_))
                               (_tl1985319901_ (##cdr _e1985119896_)))
                           (if (gx#stx-pair? _hd1985219899_)
                               (let ((_e1985419904_ (gx#stx-e _hd1985219899_)))
                                 (let ((_hd1985519907_ (##car _e1985419904_))
                                       (_tl1985619909_ (##cdr _e1985419904_)))
                                   (if (gx#stx-null? _tl1985619909_)
                                       (if (gx#stx-pair? _tl1985319901_)
                                           (let ((_e1985719912_
                                                  (gx#stx-e _tl1985319901_)))
                                             (let ((_hd1985819915_
                                                    (##car _e1985719912_))
                                                   (_tl1985919917_
                                                    (##cdr _e1985719912_)))
                                               (if (gx#stx-null?
                                                    _tl1985919917_)
                                                   (if (gx#stx-null?
                                                        _tl1985019893_)
                                                       (if (gx#stx-pair?
                                                            _tl1984719885_)
                                                           (let ((_e1986019920_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1984719885_)))
                     (let ((_hd1986119923_ (##car _e1986019920_))
                           (_tl1986219925_ (##cdr _e1986019920_)))
                       (if (gx#stx-null? _tl1986219925_)
                           ((lambda (_L19928_ _L19929_ _L19930_)
                              (let* ((_lambda-id19954_
                                      (make-symbol
                                       (gx#stx-e _L19821_)
                                       '"__"
                                       (gx#stx-e _L19930_)))
                                     (_lambda-id19956_
                                      (gx#core-quote-syntax__1
                                       _lambda-id19954_
                                       (gx#stx-source _stx19686_)))
                                     (_g23636_
                                      (gx#core-bind-runtime!__0
                                       _lambda-id19956_))
                                     (_new-case-lambda-expr19959_
                                      (gxc#apply-expression-subst
                                       _L19928_
                                       _L19930_
                                       _lambda-id19956_)))
                                (begin
                                  (gxc#verbose
                                   '"lift opt-lambda dispatch "
                                   (gxc#generate-runtime-binding-id _L19821_)
                                   '" => "
                                   (gxc#generate-runtime-binding-id
                                    _lambda-id19956_))
                                  (gxc#xform-wrap-source
                                   (cons '%#begin
                                         (cons (gxc#xform-wrap-source
                                                (cons '%#define-values
                                                      (cons (cons _lambda-id19956_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (gxc#compile-e _L19929_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _stx19686_)
                                               (cons (gxc#lift-top-lambda-define-values%
                                                      (gxc#xform-wrap-source
                                                       (cons '%#define-values
                                                             (cons (cons _L19821_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons _new-case-lambda-expr19959_ '())))
               _stx19686_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   _stx19686_))))
                            _hd1986119923_
                            _hd1985819915_
                            _hd1985519907_)
                           (_g1983719867_ _g1983819870_))))
                   (_g1983719867_ _g1983819870_))
               (_g1983719867_ _g1983819870_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1983719867_
                                                    _g1983819870_))))
                                           (_g1983719867_ _g1983819870_))
                                       (_g1983719867_ _g1983819870_))))
                               (_g1983719867_ _g1983819870_))))
                       (_g1983719867_ _g1983819870_))))
               (_g1983719867_ _g1983819870_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1983719867_ _g1983819870_))))
                                       (_g1983719867_ _g1983819870_)))))
                           (_g1983619962_ _L19820_))
                         (_g1969119783_ _g1969319786_)))
                   _hd1972019815_
                   _hd1971719807_)
                  (_g1969119783_ _g1969319786_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1969119783_
                                                   _g1969319786_))
                                              (_g1969119783_ _g1969319786_))))
                                      (_g1969119783_ _g1969319786_))))
                              (_g1969119783_ _g1969319786_))))
                      (_g1969119783_ _g1969319786_))))
               (_g1968920090_
                (lambda (_g1969319968_)
                  (if (gx#stx-pair? _g1969319968_)
                      (let ((_e1969619970_ (gx#stx-e _g1969319968_)))
                        (let ((_hd1969719973_ (##car _e1969619970_))
                              (_tl1969819975_ (##cdr _e1969619970_)))
                          (if (gx#stx-pair? _tl1969819975_)
                              (let ((_e1969919978_ (gx#stx-e _tl1969819975_)))
                                (let ((_hd1970019981_ (##car _e1969919978_))
                                      (_tl1970119983_ (##cdr _e1969919978_)))
                                  (if (gx#stx-pair? _hd1970019981_)
                                      (let ((_e1970219986_
                                             (gx#stx-e _hd1970019981_)))
                                        (let ((_hd1970319989_
                                               (##car _e1970219986_))
                                              (_tl1970419991_
                                               (##cdr _e1970219986_)))
                                          (if (gx#stx-null? _tl1970419991_)
                                              (if (gx#stx-pair? _tl1970119983_)
                                                  (let ((_e1970519994_
                                                         (gx#stx-e
                                                          _tl1970119983_)))
                                                    (let ((_hd1970619997_
                                                           (##car _e1970519994_))
                                                          (_tl1970719999_
                                                           (##cdr _e1970519994_)))
                                                      (if (gx#stx-null?
                                                           _tl1970719999_)
                                                          ((lambda (_L20002_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L20003_)
                     (if (if (gx#identifier? _L20003_)
                             (gxc#case-lambda-expr? _L20002_)
                             '#f)
                         (let* ((_g2002020034_
                                 (lambda (_g2002120031_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g2002120031_)))
                                (_g2001920065_
                                 (lambda (_g2002120037_)
                                   (if (gx#stx-pair? _g2002120037_)
                                       (let ((_e2002720039_
                                              (gx#stx-e _g2002120037_)))
                                         (let ((_hd2002820042_
                                                (##car _e2002720039_))
                                               (_tl2002920044_
                                                (##cdr _e2002720039_)))
                                           ((lambda (_L20047_)
                                              (let ((_g23637_
                                                     (gxc#lift-case-lambda-clauses__0
                                                      _stx19686_
                                                      _L20003_
                                                      _L20047_)))
                                                (begin
                                                  (let ((_g23638_
                                                         (values-count
                                                          _g23637_)))
                                                    (if (not (fx= _g23638_ 3))
                                                        (error "Context expects 3 values"
                                                               _g23638_)))
                                                  (let ((_ids20057_
                                                         (values-ref
                                                          _g23637_
                                                          0))
                                                        (_impls20058_
                                                         (values-ref
                                                          _g23637_
                                                          1))
                                                        (_clauses20059_
                                                         (values-ref
                                                          _g23637_
                                                          2)))
                                                    (let* ((_g23639_
                                                            (for-each
                                                             gx#core-bind-runtime!
                                                             _ids20057_))
                                                           (_defs20062_
                                                            (map _case-lambda-clause-def19688_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _ids20057_
                         _impls20058_)))
              (begin
                (gxc#verbose
                 '"lift case-lambda clauses "
                 (gxc#generate-runtime-binding-id _L20003_)
                 '" => "
                 (map gxc#identifier-symbol _ids20057_))
                (gxc#xform-wrap-source
                 (cons '%#begin
                       (foldr1 cons
                               (cons (gxc#xform-wrap-source
                                      (cons '%#define-values
                                            (cons (cons _L20003_ '())
                                                  (cons (gxc#xform-wrap-source
                                                         (cons '%#case-lambda
                                                               _clauses20059_)
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'case-lambda-expr))
                                                        '())))
                                      _stx19686_)
                                     '())
                               _defs20062_))
                 _stx19686_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _tl2002920044_)))
                                       (_g2002020034_ _g2002120037_))))
                                (_g2001820087_
                                 (lambda (_g2002120068_)
                                   (if (gx#stx-pair? _g2002120068_)
                                       (let ((_e2002320070_
                                              (gx#stx-e _g2002120068_)))
                                         (let ((_hd2002420073_
                                                (##car _e2002320070_))
                                               (_tl2002520075_
                                                (##cdr _e2002320070_)))
                                           ((lambda (_L20078_)
                                              (if (andmap1 gxc#dispatch-lambda-form?
                                                           _L20078_)
                                                  _stx19686_
                                                  (_g2001920065_
                                                   _g2002120068_)))
                                            _tl2002520075_)))
                                       (_g2001920065_ _g2002120068_)))))
                           (_g2001820087_ _L20002_))
                         (_g1969019965_ _g1969319968_)))
                   _hd1970619997_
                   _hd1970319989_)
                  (_g1969019965_ _g1969319968_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1969019965_
                                                   _g1969319968_))
                                              (_g1969019965_ _g1969319968_))))
                                      (_g1969019965_ _g1969319968_))))
                              (_g1969019965_ _g1969319968_))))
                      (_g1969019965_ _g1969319968_)))))
          (_g1968920090_ _stx19686_)))))
  (define gxc#lift-top-lambda-let-values%
    (lambda (_stx19109_)
      (letrec* ((_bind-e__opt-lambda19668__2358623587_
                 (lambda (_id19670_ _expr19671_ _compile?19672_)
                   (cons (cons _id19670_ '())
                         (cons (if _compile?19672_
                                   (gxc#compile-e _expr19671_)
                                   _expr19671_)
                               '()))))
                (_bind-e__0__2358823589_
                 (lambda (_id19677_ _expr19678_)
                   (let ((_compile?19680_ '#t))
                     (_bind-e__opt-lambda19668__2358623587_
                      _id19677_
                      _expr19678_
                      _compile?19680_))))
                (_bind-e19111_
                 (lambda _g23641_
                   (let ((_g23640_ (length _g23641_)))
                     (cond ((fx= _g23640_ 2)
                            (apply _bind-e__0__2358823589_ _g23641_))
                           ((fx= _g23640_ 3)
                            (apply _bind-e__opt-lambda19668__2358623587_
                                   _g23641_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g23641_))))))
                (_compile-bindings19112_
                 (lambda (_rest19254_)
                   (let _lp19256_ ((_rest19258_ _rest19254_)
                                   (_lift119259_ '())
                                   (_lift219260_ '())
                                   (_bind19261_ '()))
                     (let* ((_rest1926219270_ _rest19258_)
                            (_E1926519274_
                             (lambda ()
                               (error '"No clause matching" _rest1926219270_)))
                            (_else1926419278_
                             (lambda ()
                               (values (reverse _lift119259_)
                                       (reverse _lift219260_)
                                       (reverse _bind19261_))))
                            (_K1926619657_
                             (lambda (_rest19281_ _hd19282_)
                               (let* ((_g1928619322_
                                       (lambda (_g1928719319_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1928719319_)))
                                      (_g1928519363_
                                       (lambda (_g1928719325_)
                                         (if (gx#stx-pair? _g1928719325_)
                                             (let ((_e1931219327_
                                                    (gx#stx-e _g1928719325_)))
                                               (let ((_hd1931319330_
                                                      (##car _e1931219327_))
                                                     (_tl1931419332_
                                                      (##cdr _e1931219327_)))
                                                 (if (gx#stx-pair?
                                                      _tl1931419332_)
                                                     (let ((_e1931519335_
                                                            (gx#stx-e
                                                             _tl1931419332_)))
                                                       (let ((_hd1931619338_
                                                              (##car _e1931519335_))
                                                             (_tl1931719340_
                                                              (##cdr _e1931519335_)))
                                                         (if (gx#stx-null?
                                                              _tl1931719340_)
                                                             ((lambda (_L19343_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L19344_)
                        (_lp19256_
                         _rest19281_
                         _lift119259_
                         _lift219260_
                         (cons (cons _L19344_
                                     (cons (gxc#compile-e _L19343_) '()))
                               _bind19261_)))
                      _hd1931619338_
                      _hd1931319330_)
                     (_g1928619322_ _g1928719325_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1928619322_
                                                      _g1928719325_))))
                                             (_g1928619322_ _g1928719325_))))
                                      (_g1928419535_
                                       (lambda (_g1928719366_)
                                         (if (gx#stx-pair? _g1928719366_)
                                             (let ((_e1930119368_
                                                    (gx#stx-e _g1928719366_)))
                                               (let ((_hd1930219371_
                                                      (##car _e1930119368_))
                                                     (_tl1930319373_
                                                      (##cdr _e1930119368_)))
                                                 (if (gx#stx-pair?
                                                      _hd1930219371_)
                                                     (let ((_e1930419376_
                                                            (gx#stx-e
                                                             _hd1930219371_)))
                                                       (let ((_hd1930519379_
                                                              (##car _e1930419376_))
                                                             (_tl1930619381_
                                                              (##cdr _e1930419376_)))
                                                         (if (gx#stx-null?
                                                              _tl1930619381_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1930319373_)
                         (let ((_e1930719384_ (gx#stx-e _tl1930319373_)))
                           (let ((_hd1930819387_ (##car _e1930719384_))
                                 (_tl1930919389_ (##cdr _e1930719384_)))
                             (if (gx#stx-null? _tl1930919389_)
                                 ((lambda (_L19392_ _L19393_)
                                    (if (if (gx#identifier? _L19393_)
                                            (gxc#opt-lambda-expr? _L19392_)
                                            '#f)
                                        (let* ((_g1940719437_
                                                (lambda (_g1940819434_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1940819434_)))
                                               (_g1940619532_
                                                (lambda (_g1940819440_)
                                                  (if (gx#stx-pair?
                                                       _g1940819440_)
                                                      (let ((_e1941219442_
                                                             (gx#stx-e
                                                              _g1940819440_)))
                                                        (let ((_hd1941319445_
                                                               (##car _e1941219442_))
                                                              (_tl1941419447_
                                                               (##cdr _e1941219442_)))
                                                          (if (gx#stx-pair?
                                                               _tl1941419447_)
                                                              (let ((_e1941519450_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1941419447_)))
                        (let ((_hd1941619453_ (##car _e1941519450_))
                              (_tl1941719455_ (##cdr _e1941519450_)))
                          (if (gx#stx-pair? _hd1941619453_)
                              (let ((_e1941819458_ (gx#stx-e _hd1941619453_)))
                                (let ((_hd1941919461_ (##car _e1941819458_))
                                      (_tl1942019463_ (##cdr _e1941819458_)))
                                  (if (gx#stx-pair? _hd1941919461_)
                                      (let ((_e1942119466_
                                             (gx#stx-e _hd1941919461_)))
                                        (let ((_hd1942219469_
                                               (##car _e1942119466_))
                                              (_tl1942319471_
                                               (##cdr _e1942119466_)))
                                          (if (gx#stx-pair? _hd1942219469_)
                                              (let ((_e1942419474_
                                                     (gx#stx-e
                                                      _hd1942219469_)))
                                                (let ((_hd1942519477_
                                                       (##car _e1942419474_))
                                                      (_tl1942619479_
                                                       (##cdr _e1942419474_)))
                                                  (if (gx#stx-null?
                                                       _tl1942619479_)
                                                      (if (gx#stx-pair?
                                                           _tl1942319471_)
                                                          (let ((_e1942719482_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1942319471_)))
                    (let ((_hd1942819485_ (##car _e1942719482_))
                          (_tl1942919487_ (##cdr _e1942719482_)))
                      (if (gx#stx-null? _tl1942919487_)
                          (if (gx#stx-null? _tl1942019463_)
                              (if (gx#stx-pair? _tl1941719455_)
                                  (let ((_e1943019490_
                                         (gx#stx-e _tl1941719455_)))
                                    (let ((_hd1943119493_
                                           (##car _e1943019490_))
                                          (_tl1943219495_
                                           (##cdr _e1943019490_)))
                                      (if (gx#stx-null? _tl1943219495_)
                                          ((lambda (_L19498_ _L19499_ _L19500_)
                                             (let* ((_lambda-id19524_
                                                     (make-symbol
                                                      (gx#stx-e _L19393_)
                                                      '"__"
                                                      (gx#stx-e _L19500_)
                                                      (gensym '__)))
                                                    (_lambda-id19526_
                                                     (gx#core-quote-syntax__1
                                                      _lambda-id19524_
                                                      (gx#stx-source
                                                       _stx19109_)))
                                                    (_g23642_
                                                     (gx#core-bind-runtime!__0
                                                      _lambda-id19526_))
                                                    (_new-case-lambda-expr19529_
                                                     (gxc#apply-expression-subst
                                                      _L19498_
                                                      _L19500_
                                                      _lambda-id19526_)))
                                               (begin
                                                 (gxc#verbose
                                                  '"lift opt-lambda dispatch "
                                                  (gxc#generate-runtime-binding-id
                                                   _L19393_)
                                                  '" => "
                                                  (gxc#generate-runtime-binding-id
                                                   _lambda-id19526_))
                                                 (_lp19256_
                                                  (cons (_bind-e__opt-lambda19668__2358623587_
                                                         _L19393_
                                                         _new-case-lambda-expr19529_
                                                         '#f)
                                                        _rest19281_)
                                                  (cons (_bind-e__0__2358823589_
                                                         _lambda-id19526_
                                                         _L19499_)
                                                        _lift119259_)
                                                  _lift219260_
                                                  _bind19261_))))
                                           _hd1943119493_
                                           _hd1942819485_
                                           _hd1942519477_)
                                          (_g1940719437_ _g1940819440_))))
                                  (_g1940719437_ _g1940819440_))
                              (_g1940719437_ _g1940819440_))
                          (_g1940719437_ _g1940819440_))))
                  (_g1940719437_ _g1940819440_))
              (_g1940719437_ _g1940819440_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1940719437_ _g1940819440_))))
                                      (_g1940719437_ _g1940819440_))))
                              (_g1940719437_ _g1940819440_))))
                      (_g1940719437_ _g1940819440_))))
              (_g1940719437_ _g1940819440_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g1940619532_ _L19392_))
                                        (_g1928519363_ _g1928719366_)))
                                  _hd1930819387_
                                  _hd1930519379_)
                                 (_g1928519363_ _g1928719366_))))
                         (_g1928519363_ _g1928719366_))
                     (_g1928519363_ _g1928719366_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1928519363_
                                                      _g1928719366_))))
                                             (_g1928519363_ _g1928719366_))))
                                      (_g1928319654_
                                       (lambda (_g1928719538_)
                                         (if (gx#stx-pair? _g1928719538_)
                                             (let ((_e1929019540_
                                                    (gx#stx-e _g1928719538_)))
                                               (let ((_hd1929119543_
                                                      (##car _e1929019540_))
                                                     (_tl1929219545_
                                                      (##cdr _e1929019540_)))
                                                 (if (gx#stx-pair?
                                                      _hd1929119543_)
                                                     (let ((_e1929319548_
                                                            (gx#stx-e
                                                             _hd1929119543_)))
                                                       (let ((_hd1929419551_
                                                              (##car _e1929319548_))
                                                             (_tl1929519553_
                                                              (##cdr _e1929319548_)))
                                                         (if (gx#stx-null?
                                                              _tl1929519553_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1929219545_)
                         (let ((_e1929619556_ (gx#stx-e _tl1929219545_)))
                           (let ((_hd1929719559_ (##car _e1929619556_))
                                 (_tl1929819561_ (##cdr _e1929619556_)))
                             (if (gx#stx-null? _tl1929819561_)
                                 ((lambda (_L19564_ _L19565_)
                                    (if (if (gx#identifier? _L19565_)
                                            (gxc#case-lambda-expr? _L19564_)
                                            '#f)
                                        (let* ((_g1958019594_
                                                (lambda (_g1958119591_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1958119591_)))
                                               (_g1957919629_
                                                (lambda (_g1958119597_)
                                                  (if (gx#stx-pair?
                                                       _g1958119597_)
                                                      (let ((_e1958719599_
                                                             (gx#stx-e
                                                              _g1958119597_)))
                                                        (let ((_hd1958819602_
                                                               (##car _e1958719599_))
                                                              (_tl1958919604_
                                                               (##cdr _e1958719599_)))
                                                          ((lambda (_L19607_)
                                                             (let ((_g23643_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#lift-case-lambda-clauses__opt-lambda20095
                             _stx19109_
                             _L19565_
                             _L19607_
                             '#t)))
                       (begin
                         (let ((_g23644_ (values-count _g23643_)))
                           (if (not (fx= _g23644_ 3))
                               (error "Context expects 3 values" _g23644_)))
                         (let ((_ids19617_ (values-ref _g23643_ 0))
                               (_impls19618_ (values-ref _g23643_ 1))
                               (_clauses19619_ (values-ref _g23643_ 2)))
                           (let* ((_g23645_
                                   (for-each gx#core-bind-runtime! _ids19617_))
                                  (_xbind19622_
                                   (map _bind-e19111_ _ids19617_ _impls19618_))
                                  (_expr*19624_
                                   (gxc#xform-wrap-source
                                    (cons '%#case-lambda _clauses19619_)
                                    (gx#datum->syntax__0
                                     '#f
                                     'case-lambda-expr)))
                                  (_bind*19626_
                                   (_bind-e__opt-lambda19668__2358623587_
                                    _L19565_
                                    _expr*19624_
                                    '#f)))
                             (begin
                               (gxc#verbose
                                '"lift case-lambda clauses "
                                (gxc#generate-runtime-binding-id _L19565_)
                                '" => "
                                (map gxc#identifier-symbol _ids19617_))
                               (_lp19256_
                                _rest19281_
                                _lift119259_
                                (foldl1 cons _lift219260_ _xbind19622_)
                                (cons _bind*19626_ _bind19261_))))))))
                   _tl1958919604_)))
              (_g1958019594_ _g1958119597_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1957819651_
                                                (lambda (_g1958119632_)
                                                  (if (gx#stx-pair?
                                                       _g1958119632_)
                                                      (let ((_e1958319634_
                                                             (gx#stx-e
                                                              _g1958119632_)))
                                                        (let ((_hd1958419637_
                                                               (##car _e1958319634_))
                                                              (_tl1958519639_
                                                               (##cdr _e1958319634_)))
                                                          ((lambda (_L19642_)
                                                             (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _L19642_)
                         (_lp19256_
                          _rest19281_
                          _lift119259_
                          _lift219260_
                          (cons (_bind-e__opt-lambda19668__2358623587_
                                 _L19565_
                                 _L19564_
                                 '#f)
                                _bind19261_))
                         (_g1957919629_ _g1958119632_)))
                   _tl1958519639_)))
              (_g1957919629_ _g1958119632_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g1957819651_ _L19564_))
                                        (_g1928419535_ _g1928719538_)))
                                  _hd1929719559_
                                  _hd1929419551_)
                                 (_g1928419535_ _g1928719538_))))
                         (_g1928419535_ _g1928719538_))
                     (_g1928419535_ _g1928719538_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1928419535_
                                                      _g1928719538_))))
                                             (_g1928419535_ _g1928719538_)))))
                                 (_g1928319654_ _hd19282_)))))
                       (if (##pair? _rest1926219270_)
                           (let ((_hd1926719660_ (##car _rest1926219270_))
                                 (_tl1926819662_ (##cdr _rest1926219270_)))
                             (let* ((_hd19665_ _hd1926719660_)
                                    (_rest19667_ _tl1926819662_))
                               (_K1926619657_ _rest19667_ _hd19665_)))
                           (_else1926419278_)))))))
        (let* ((_g1911519141_
                (lambda (_g1911619138_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1911619138_)))
               (_g1911419148_
                (lambda (_g1911619144_)
                  ((lambda () (gxc#xform-let-values% _stx19109_)))))
               (_g1911319251_
                (lambda (_g1911619151_)
                  (if (gx#stx-pair? _g1911619151_)
                      (let ((_e1911919153_ (gx#stx-e _g1911619151_)))
                        (let ((_hd1912019156_ (##car _e1911919153_))
                              (_tl1912119158_ (##cdr _e1911919153_)))
                          (if (gx#stx-pair? _tl1912119158_)
                              (let ((_e1912219161_ (gx#stx-e _tl1912119158_)))
                                (let ((_hd1912319164_ (##car _e1912219161_))
                                      (_tl1912419166_ (##cdr _e1912219161_)))
                                  (if (gx#stx-pair/null? _hd1912319164_)
                                      (if (fx>= (gx#stx-length _hd1912319164_)
                                                '0)
                                          (let ((_g23646_
                                                 (gx#syntax-split-splice
                                                  _hd1912319164_
                                                  '0)))
                                            (begin
                                              (let ((_g23647_
                                                     (values-count _g23646_)))
                                                (if (not (fx= _g23647_ 2))
                                                    (error "Context expects 2 values"
                                                           _g23647_)))
                                              (let ((_target1912519169_
                                                     (values-ref _g23646_ 0))
                                                    (_tl1912719171_
                                                     (values-ref _g23646_ 1)))
                                                (if (gx#stx-null?
                                                     _tl1912719171_)
                                                    (letrec ((_loop1912819174_
                                                              (lambda (_hd1912619177_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind1913219179_)
                        (if (gx#stx-pair? _hd1912619177_)
                            (let ((_e1912919182_ (gx#stx-e _hd1912619177_)))
                              (let ((_lp-hd1913019185_ (##car _e1912919182_))
                                    (_lp-tl1913119187_ (##cdr _e1912919182_)))
                                (_loop1912819174_
                                 _lp-tl1913119187_
                                 (cons _lp-hd1913019185_ _bind1913219179_))))
                            (let ((_bind1913319190_
                                   (reverse _bind1913219179_)))
                              (if (gx#stx-pair? _tl1912419166_)
                                  (let ((_e1913419193_
                                         (gx#stx-e _tl1912419166_)))
                                    (let ((_hd1913519196_
                                           (##car _e1913419193_))
                                          (_tl1913619198_
                                           (##cdr _e1913419193_)))
                                      (if (gx#stx-null? _tl1913619198_)
                                          ((lambda (_L19201_ _L19202_)
                                             (if (ormap1 gxc#lift-top-lambda-binding?
                                                         (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g1922219225_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g1922319227_)
                             (cons _g1922219225_ _g1922319227_))
                           '()
                           _L19202_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (call-with-parameters
                                                  (lambda ()
                                                    (let ((_g23648_
                                                           (_compile-bindings19112_
                                                            (begin
                                                              '#!void
                                                              (foldr1 (lambda (_g1923019233_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1923119235_)
                                (cons _g1923019233_ _g1923119235_))
                              '()
                              _L19202_)))))
              (begin
                (let ((_g23649_ (values-count _g23648_)))
                  (if (not (fx= _g23649_ 3))
                      (error "Context expects 3 values" _g23649_)))
                (let ((_lift119238_ (values-ref _g23648_ 0))
                      (_lift219239_ (values-ref _g23648_ 1))
                      (_hd19240_ (values-ref _g23648_ 2)))
                  (let* ((_body19242_ (gxc#compile-e _L19201_))
                         (_expr19244_
                          (gxc#xform-wrap-source
                           (cons '%#let-values
                                 (cons _hd19240_ (cons _body19242_ '())))
                           _stx19109_))
                         (_expr19246_
                          (if (null? _lift219239_)
                              _expr19244_
                              (gxc#xform-wrap-source
                               (cons '%#let-values
                                     (cons _lift219239_
                                           (cons _expr19244_ '())))
                               _stx19109_)))
                         (_expr19248_
                          (if (null? _lift119238_)
                              _expr19246_
                              (gxc#xform-wrap-source
                               (cons '%#let-values
                                     (cons _lift119238_
                                           (cons _expr19246_ '())))
                               _stx19109_))))
                    _expr19248_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  gx#current-expander-context
                                                  (let ((__obj23596
                                                         (make-object
                                                          gx#local-context::t
                                                          '5)))
                                                    (begin
                                                      (gx#local-context:::init!__0
                                                       __obj23596)
                                                      __obj23596)))
                                                 (_g1911419148_
                                                  _g1911619151_)))
                                           _hd1913519196_
                                           _bind1913319190_)
                                          (_g1911419148_ _g1911619151_))))
                                  (_g1911419148_ _g1911619151_)))))))
              (_loop1912819174_ _target1912519169_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1911419148_
                                                     _g1911619151_)))))
                                          (_g1911419148_ _g1911619151_))
                                      (_g1911419148_ _g1911619151_))))
                              (_g1911419148_ _g1911619151_))))
                      (_g1911419148_ _g1911619151_)))))
          (_g1911319251_ _stx19109_)))))
  (define gxc#lift-top-lambda-letrec-values%
    (lambda (_stx18541_)
      (letrec* ((_bind-e__opt-lambda19091__2359123592_
                 (lambda (_id19093_ _expr19094_ _compile?19095_)
                   (cons (cons _id19093_ '())
                         (cons (if _compile?19095_
                                   (gxc#compile-e _expr19094_)
                                   _expr19094_)
                               '()))))
                (_bind-e__0__2359323594_
                 (lambda (_id19100_ _expr19101_)
                   (let ((_compile?19103_ '#t))
                     (_bind-e__opt-lambda19091__2359123592_
                      _id19100_
                      _expr19101_
                      _compile?19103_))))
                (_bind-e18543_
                 (lambda _g23651_
                   (let ((_g23650_ (length _g23651_)))
                     (cond ((fx= _g23650_ 2)
                            (apply _bind-e__0__2359323594_ _g23651_))
                           ((fx= _g23650_ 3)
                            (apply _bind-e__opt-lambda19091__2359123592_
                                   _g23651_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g23651_))))))
                (_compile-bindings18544_
                 (lambda (_rest18679_)
                   (let _lp18681_ ((_rest18683_ _rest18679_) (_bind18684_ '()))
                     (let* ((_rest1868518693_ _rest18683_)
                            (_E1868818697_
                             (lambda ()
                               (error '"No clause matching" _rest1868518693_)))
                            (_else1868718701_
                             (lambda () (reverse _bind18684_)))
                            (_K1868919080_
                             (lambda (_rest18704_ _hd18705_)
                               (let* ((_g1870918745_
                                       (lambda (_g1871018742_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1871018742_)))
                                      (_g1870818786_
                                       (lambda (_g1871018748_)
                                         (if (gx#stx-pair? _g1871018748_)
                                             (let ((_e1873518750_
                                                    (gx#stx-e _g1871018748_)))
                                               (let ((_hd1873618753_
                                                      (##car _e1873518750_))
                                                     (_tl1873718755_
                                                      (##cdr _e1873518750_)))
                                                 (if (gx#stx-pair?
                                                      _tl1873718755_)
                                                     (let ((_e1873818758_
                                                            (gx#stx-e
                                                             _tl1873718755_)))
                                                       (let ((_hd1873918761_
                                                              (##car _e1873818758_))
                                                             (_tl1874018763_
                                                              (##cdr _e1873818758_)))
                                                         (if (gx#stx-null?
                                                              _tl1874018763_)
                                                             ((lambda (_L18766_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L18767_)
                        (_lp18681_
                         _rest18704_
                         (cons (cons _L18767_
                                     (cons (gxc#compile-e _L18766_) '()))
                               _bind18684_)))
                      _hd1873918761_
                      _hd1873618753_)
                     (_g1870918745_ _g1871018748_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1870918745_
                                                      _g1871018748_))))
                                             (_g1870918745_ _g1871018748_))))
                                      (_g1870718958_
                                       (lambda (_g1871018789_)
                                         (if (gx#stx-pair? _g1871018789_)
                                             (let ((_e1872418791_
                                                    (gx#stx-e _g1871018789_)))
                                               (let ((_hd1872518794_
                                                      (##car _e1872418791_))
                                                     (_tl1872618796_
                                                      (##cdr _e1872418791_)))
                                                 (if (gx#stx-pair?
                                                      _hd1872518794_)
                                                     (let ((_e1872718799_
                                                            (gx#stx-e
                                                             _hd1872518794_)))
                                                       (let ((_hd1872818802_
                                                              (##car _e1872718799_))
                                                             (_tl1872918804_
                                                              (##cdr _e1872718799_)))
                                                         (if (gx#stx-null?
                                                              _tl1872918804_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1872618796_)
                         (let ((_e1873018807_ (gx#stx-e _tl1872618796_)))
                           (let ((_hd1873118810_ (##car _e1873018807_))
                                 (_tl1873218812_ (##cdr _e1873018807_)))
                             (if (gx#stx-null? _tl1873218812_)
                                 ((lambda (_L18815_ _L18816_)
                                    (if (if (gx#identifier? _L18816_)
                                            (gxc#opt-lambda-expr? _L18815_)
                                            '#f)
                                        (let* ((_g1883018860_
                                                (lambda (_g1883118857_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1883118857_)))
                                               (_g1882918955_
                                                (lambda (_g1883118863_)
                                                  (if (gx#stx-pair?
                                                       _g1883118863_)
                                                      (let ((_e1883518865_
                                                             (gx#stx-e
                                                              _g1883118863_)))
                                                        (let ((_hd1883618868_
                                                               (##car _e1883518865_))
                                                              (_tl1883718870_
                                                               (##cdr _e1883518865_)))
                                                          (if (gx#stx-pair?
                                                               _tl1883718870_)
                                                              (let ((_e1883818873_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1883718870_)))
                        (let ((_hd1883918876_ (##car _e1883818873_))
                              (_tl1884018878_ (##cdr _e1883818873_)))
                          (if (gx#stx-pair? _hd1883918876_)
                              (let ((_e1884118881_ (gx#stx-e _hd1883918876_)))
                                (let ((_hd1884218884_ (##car _e1884118881_))
                                      (_tl1884318886_ (##cdr _e1884118881_)))
                                  (if (gx#stx-pair? _hd1884218884_)
                                      (let ((_e1884418889_
                                             (gx#stx-e _hd1884218884_)))
                                        (let ((_hd1884518892_
                                               (##car _e1884418889_))
                                              (_tl1884618894_
                                               (##cdr _e1884418889_)))
                                          (if (gx#stx-pair? _hd1884518892_)
                                              (let ((_e1884718897_
                                                     (gx#stx-e
                                                      _hd1884518892_)))
                                                (let ((_hd1884818900_
                                                       (##car _e1884718897_))
                                                      (_tl1884918902_
                                                       (##cdr _e1884718897_)))
                                                  (if (gx#stx-null?
                                                       _tl1884918902_)
                                                      (if (gx#stx-pair?
                                                           _tl1884618894_)
                                                          (let ((_e1885018905_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1884618894_)))
                    (let ((_hd1885118908_ (##car _e1885018905_))
                          (_tl1885218910_ (##cdr _e1885018905_)))
                      (if (gx#stx-null? _tl1885218910_)
                          (if (gx#stx-null? _tl1884318886_)
                              (if (gx#stx-pair? _tl1884018878_)
                                  (let ((_e1885318913_
                                         (gx#stx-e _tl1884018878_)))
                                    (let ((_hd1885418916_
                                           (##car _e1885318913_))
                                          (_tl1885518918_
                                           (##cdr _e1885318913_)))
                                      (if (gx#stx-null? _tl1885518918_)
                                          ((lambda (_L18921_ _L18922_ _L18923_)
                                             (let* ((_lambda-id18947_
                                                     (make-symbol
                                                      (gx#stx-e _L18816_)
                                                      '"__"
                                                      (gx#stx-e _L18923_)
                                                      (gensym '__)))
                                                    (_lambda-id18949_
                                                     (gx#core-quote-syntax__1
                                                      _lambda-id18947_
                                                      (gx#stx-source
                                                       _stx18541_)))
                                                    (_g23652_
                                                     (gx#core-bind-runtime!__0
                                                      _lambda-id18949_))
                                                    (_new-case-lambda-expr18952_
                                                     (gxc#apply-expression-subst
                                                      _L18921_
                                                      _L18923_
                                                      _lambda-id18949_)))
                                               (begin
                                                 (gxc#verbose
                                                  '"lift opt-lambda dispatch "
                                                  (gxc#generate-runtime-binding-id
                                                   _L18816_)
                                                  '" => "
                                                  (gxc#generate-runtime-binding-id
                                                   _lambda-id18949_))
                                                 (_lp18681_
                                                  (cons (_bind-e__opt-lambda19091__2359123592_
                                                         _L18816_
                                                         _new-case-lambda-expr18952_
                                                         '#f)
                                                        _rest18704_)
                                                  (cons (_bind-e__0__2359323594_
                                                         _lambda-id18949_
                                                         _L18922_)
                                                        _bind18684_)))))
                                           _hd1885418916_
                                           _hd1885118908_
                                           _hd1884818900_)
                                          (_g1883018860_ _g1883118863_))))
                                  (_g1883018860_ _g1883118863_))
                              (_g1883018860_ _g1883118863_))
                          (_g1883018860_ _g1883118863_))))
                  (_g1883018860_ _g1883118863_))
              (_g1883018860_ _g1883118863_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1883018860_ _g1883118863_))))
                                      (_g1883018860_ _g1883118863_))))
                              (_g1883018860_ _g1883118863_))))
                      (_g1883018860_ _g1883118863_))))
              (_g1883018860_ _g1883118863_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g1882918955_ _L18815_))
                                        (_g1870818786_ _g1871018789_)))
                                  _hd1873118810_
                                  _hd1872818802_)
                                 (_g1870818786_ _g1871018789_))))
                         (_g1870818786_ _g1871018789_))
                     (_g1870818786_ _g1871018789_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1870818786_
                                                      _g1871018789_))))
                                             (_g1870818786_ _g1871018789_))))
                                      (_g1870619077_
                                       (lambda (_g1871018961_)
                                         (if (gx#stx-pair? _g1871018961_)
                                             (let ((_e1871318963_
                                                    (gx#stx-e _g1871018961_)))
                                               (let ((_hd1871418966_
                                                      (##car _e1871318963_))
                                                     (_tl1871518968_
                                                      (##cdr _e1871318963_)))
                                                 (if (gx#stx-pair?
                                                      _hd1871418966_)
                                                     (let ((_e1871618971_
                                                            (gx#stx-e
                                                             _hd1871418966_)))
                                                       (let ((_hd1871718974_
                                                              (##car _e1871618971_))
                                                             (_tl1871818976_
                                                              (##cdr _e1871618971_)))
                                                         (if (gx#stx-null?
                                                              _tl1871818976_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1871518968_)
                         (let ((_e1871918979_ (gx#stx-e _tl1871518968_)))
                           (let ((_hd1872018982_ (##car _e1871918979_))
                                 (_tl1872118984_ (##cdr _e1871918979_)))
                             (if (gx#stx-null? _tl1872118984_)
                                 ((lambda (_L18987_ _L18988_)
                                    (if (if (gx#identifier? _L18988_)
                                            (gxc#case-lambda-expr? _L18987_)
                                            '#f)
                                        (let* ((_g1900319017_
                                                (lambda (_g1900419014_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1900419014_)))
                                               (_g1900219052_
                                                (lambda (_g1900419020_)
                                                  (if (gx#stx-pair?
                                                       _g1900419020_)
                                                      (let ((_e1901019022_
                                                             (gx#stx-e
                                                              _g1900419020_)))
                                                        (let ((_hd1901119025_
                                                               (##car _e1901019022_))
                                                              (_tl1901219027_
                                                               (##cdr _e1901019022_)))
                                                          ((lambda (_L19030_)
                                                             (let ((_g23653_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#lift-case-lambda-clauses__opt-lambda20095
                             _stx18541_
                             _L18988_
                             _L19030_
                             '#t)))
                       (begin
                         (let ((_g23654_ (values-count _g23653_)))
                           (if (not (fx= _g23654_ 3))
                               (error "Context expects 3 values" _g23654_)))
                         (let ((_ids19040_ (values-ref _g23653_ 0))
                               (_impls19041_ (values-ref _g23653_ 1))
                               (_clauses19042_ (values-ref _g23653_ 2)))
                           (let* ((_g23655_
                                   (for-each gx#core-bind-runtime! _ids19040_))
                                  (_xbind19045_
                                   (map _bind-e18543_ _ids19040_ _impls19041_))
                                  (_expr*19047_
                                   (gxc#xform-wrap-source
                                    (cons '%#case-lambda _clauses19042_)
                                    (gx#datum->syntax__0
                                     '#f
                                     'case-lambda-expr)))
                                  (_bind*19049_
                                   (_bind-e__opt-lambda19091__2359123592_
                                    _L18988_
                                    _expr*19047_
                                    '#f)))
                             (begin
                               (gxc#verbose
                                '"lift case-lambda clauses "
                                (gxc#generate-runtime-binding-id _L18988_)
                                '" => "
                                (map gxc#identifier-symbol _ids19040_))
                               (_lp18681_
                                _rest18704_
                                (cons _bind*19049_
                                      (foldl1 cons
                                              _bind18684_
                                              _xbind19045_)))))))))
                   _tl1901219027_)))
              (_g1900319017_ _g1900419020_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1900119074_
                                                (lambda (_g1900419055_)
                                                  (if (gx#stx-pair?
                                                       _g1900419055_)
                                                      (let ((_e1900619057_
                                                             (gx#stx-e
                                                              _g1900419055_)))
                                                        (let ((_hd1900719060_
                                                               (##car _e1900619057_))
                                                              (_tl1900819062_
                                                               (##cdr _e1900619057_)))
                                                          ((lambda (_L19065_)
                                                             (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _L19065_)
                         (_lp18681_
                          _rest18704_
                          (cons (_bind-e__opt-lambda19091__2359123592_
                                 _L18988_
                                 _L18987_
                                 '#f)
                                _bind18684_))
                         (_g1900219052_ _g1900419055_)))
                   _tl1900819062_)))
              (_g1900219052_ _g1900419055_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g1900119074_ _L18987_))
                                        (_g1870718958_ _g1871018961_)))
                                  _hd1872018982_
                                  _hd1871718974_)
                                 (_g1870718958_ _g1871018961_))))
                         (_g1870718958_ _g1871018961_))
                     (_g1870718958_ _g1871018961_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1870718958_
                                                      _g1871018961_))))
                                             (_g1870718958_ _g1871018961_)))))
                                 (_g1870619077_ _hd18705_)))))
                       (if (##pair? _rest1868518693_)
                           (let ((_hd1869019083_ (##car _rest1868518693_))
                                 (_tl1869119085_ (##cdr _rest1868518693_)))
                             (let* ((_hd19088_ _hd1869019083_)
                                    (_rest19090_ _tl1869119085_))
                               (_K1868919080_ _rest19090_ _hd19088_)))
                           (_else1868718701_)))))))
        (let* ((_g1854718574_
                (lambda (_g1854818571_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1854818571_)))
               (_g1854618581_
                (lambda (_g1854818577_)
                  ((lambda () (gxc#xform-let-values% _stx18541_)))))
               (_g1854518676_
                (lambda (_g1854818584_)
                  (if (gx#stx-pair? _g1854818584_)
                      (let ((_e1855218586_ (gx#stx-e _g1854818584_)))
                        (let ((_hd1855318589_ (##car _e1855218586_))
                              (_tl1855418591_ (##cdr _e1855218586_)))
                          (if (gx#stx-pair? _tl1855418591_)
                              (let ((_e1855518594_ (gx#stx-e _tl1855418591_)))
                                (let ((_hd1855618597_ (##car _e1855518594_))
                                      (_tl1855718599_ (##cdr _e1855518594_)))
                                  (if (gx#stx-pair/null? _hd1855618597_)
                                      (if (fx>= (gx#stx-length _hd1855618597_)
                                                '0)
                                          (let ((_g23656_
                                                 (gx#syntax-split-splice
                                                  _hd1855618597_
                                                  '0)))
                                            (begin
                                              (let ((_g23657_
                                                     (values-count _g23656_)))
                                                (if (not (fx= _g23657_ 2))
                                                    (error "Context expects 2 values"
                                                           _g23657_)))
                                              (let ((_target1855818602_
                                                     (values-ref _g23656_ 0))
                                                    (_tl1856018604_
                                                     (values-ref _g23656_ 1)))
                                                (if (gx#stx-null?
                                                     _tl1856018604_)
                                                    (letrec ((_loop1856118607_
                                                              (lambda (_hd1855918610_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind1856518612_)
                        (if (gx#stx-pair? _hd1855918610_)
                            (let ((_e1856218615_ (gx#stx-e _hd1855918610_)))
                              (let ((_lp-hd1856318618_ (##car _e1856218615_))
                                    (_lp-tl1856418620_ (##cdr _e1856218615_)))
                                (_loop1856118607_
                                 _lp-tl1856418620_
                                 (cons _lp-hd1856318618_ _bind1856518612_))))
                            (let ((_bind1856618623_
                                   (reverse _bind1856518612_)))
                              (if (gx#stx-pair? _tl1855718599_)
                                  (let ((_e1856718626_
                                         (gx#stx-e _tl1855718599_)))
                                    (let ((_hd1856818629_
                                           (##car _e1856718626_))
                                          (_tl1856918631_
                                           (##cdr _e1856718626_)))
                                      (if (gx#stx-null? _tl1856918631_)
                                          ((lambda (_L18634_ _L18635_ _L18636_)
                                             (if (ormap1 gxc#lift-top-lambda-binding?
                                                         (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g1865718660_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g1865818662_)
                             (cons _g1865718660_ _g1865818662_))
                           '()
                           _L18635_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (call-with-parameters
                                                  (lambda ()
                                                    (let ((_hd18673_
                                                           (_compile-bindings18544_
                                                            (begin
                                                              '#!void
                                                              (foldr1 (lambda (_g1866518668_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1866618670_)
                                (cons _g1866518668_ _g1866618670_))
                              '()
                              _L18635_))))
                  (_body18674_ (gxc#compile-e _L18634_)))
              (gxc#xform-wrap-source
               (cons _L18636_ (cons _hd18673_ (cons _body18674_ '())))
               _stx18541_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  gx#current-expander-context
                                                  (let ((__obj23597
                                                         (make-object
                                                          gx#local-context::t
                                                          '5)))
                                                    (begin
                                                      (gx#local-context:::init!__0
                                                       __obj23597)
                                                      __obj23597)))
                                                 (_g1854618581_
                                                  _g1854818584_)))
                                           _hd1856818629_
                                           _bind1856618623_
                                           _hd1855318589_)
                                          (_g1854618581_ _g1854818584_))))
                                  (_g1854618581_ _g1854818584_)))))))
              (_loop1856118607_ _target1855818602_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1854618581_
                                                     _g1854818584_)))))
                                          (_g1854618581_ _g1854818584_))
                                      (_g1854618581_ _g1854818584_))))
                              (_g1854618581_ _g1854818584_))))
                      (_g1854618581_ _g1854818584_)))))
          (_g1854518676_ _stx18541_)))))
  (define gxc#lift-top-lambda-binding?
    (lambda (_bind18462_)
      (let* ((_g1846518482_
              (lambda (_g1846618479_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1846618479_)))
             (_g1846418489_ (lambda (_g1846618485_) ((lambda () '#f))))
             (_g1846318538_
              (lambda (_g1846618492_)
                (if (gx#stx-pair? _g1846618492_)
                    (let ((_e1846918494_ (gx#stx-e _g1846618492_)))
                      (let ((_hd1847018497_ (##car _e1846918494_))
                            (_tl1847118499_ (##cdr _e1846918494_)))
                        (if (gx#stx-pair? _hd1847018497_)
                            (let ((_e1847218502_ (gx#stx-e _hd1847018497_)))
                              (let ((_hd1847318505_ (##car _e1847218502_))
                                    (_tl1847418507_ (##cdr _e1847218502_)))
                                (if (gx#stx-null? _tl1847418507_)
                                    (if (gx#stx-pair? _tl1847118499_)
                                        (let ((_e1847518510_
                                               (gx#stx-e _tl1847118499_)))
                                          (let ((_hd1847618513_
                                                 (##car _e1847518510_))
                                                (_tl1847718515_
                                                 (##cdr _e1847518510_)))
                                            (if (gx#stx-null? _tl1847718515_)
                                                ((lambda (_L18518_ _L18519_)
                                                   (if (gx#identifier?
                                                        _L18519_)
                                                       (let ((_$e18535_
                                                              (gxc#case-lambda-expr?
                                                               _L18518_)))
                                                         (if _$e18535_
                                                             _$e18535_
                                                             (gxc#opt-lambda-expr?
                                                              _L18518_)))
                                                       '#f))
                                                 _hd1847618513_
                                                 _hd1847318505_)
                                                (_g1846418489_
                                                 _g1846618492_))))
                                        (_g1846418489_ _g1846618492_))
                                    (_g1846418489_ _g1846618492_))))
                            (_g1846418489_ _g1846618492_))))
                    (_g1846418489_ _g1846618492_)))))
        (_g1846318538_ _bind18462_))))
  (define gxc#expression-subst-ref%
    (lambda (_stx18400_ _id18401_ _new-id18402_)
      (let* ((_g1840518418_
              (lambda (_g1840618415_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1840618415_)))
             (_g1840418425_ (lambda (_g1840618421_) ((lambda () _stx18400_))))
             (_g1840318459_
              (lambda (_g1840618428_)
                (if (gx#stx-pair? _g1840618428_)
                    (let ((_e1840818430_ (gx#stx-e _g1840618428_)))
                      (let ((_hd1840918433_ (##car _e1840818430_))
                            (_tl1841018435_ (##cdr _e1840818430_)))
                        (if (gx#stx-pair? _tl1841018435_)
                            (let ((_e1841118438_ (gx#stx-e _tl1841018435_)))
                              (let ((_hd1841218441_ (##car _e1841118438_))
                                    (_tl1841318443_ (##cdr _e1841118438_)))
                                (if (gx#stx-null? _tl1841318443_)
                                    ((lambda (_L18446_)
                                       (if (gx#free-identifier=?
                                            _L18446_
                                            _id18401_)
                                           (gxc#xform-wrap-source
                                            (cons '%#ref
                                                  (cons _new-id18402_ '()))
                                            _stx18400_)
                                           (_g1840418425_ _g1840618428_)))
                                     _hd1841218441_)
                                    (_g1840418425_ _g1840618428_))))
                            (_g1840418425_ _g1840618428_))))
                    (_g1840418425_ _g1840618428_)))))
        (_g1840318459_ _stx18400_))))
  (define gxc#collect-type-define-values%
    (lambda (_stx18256_)
      (let* ((_g1825918290_
              (lambda (_g1826018287_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1826018287_)))
             (_g1825818335_
              (lambda (_g1826018293_)
                (if (gx#stx-pair? _g1826018293_)
                    (let ((_e1827718295_ (gx#stx-e _g1826018293_)))
                      (let ((_hd1827818298_ (##car _e1827718295_))
                            (_tl1827918300_ (##cdr _e1827718295_)))
                        (if (gx#stx-pair? _tl1827918300_)
                            (let ((_e1828018303_ (gx#stx-e _tl1827918300_)))
                              (let ((_hd1828118306_ (##car _e1828018303_))
                                    (_tl1828218308_ (##cdr _e1828018303_)))
                                (if (gx#stx-pair? _tl1828218308_)
                                    (let ((_e1828318311_
                                           (gx#stx-e _tl1828218308_)))
                                      (let ((_hd1828418314_
                                             (##car _e1828318311_))
                                            (_tl1828518316_
                                             (##cdr _e1828318311_)))
                                        (if (gx#stx-null? _tl1828518316_)
                                            ((lambda (_L18319_ _L18320_)
                                               (gxc#compile-e _L18319_))
                                             _hd1828418314_
                                             _hd1828118306_)
                                            (_g1825918290_ _g1826018293_))))
                                    (_g1825918290_ _g1826018293_))))
                            (_g1825918290_ _g1826018293_))))
                    (_g1825918290_ _g1826018293_))))
             (_g1825718397_
              (lambda (_g1826018338_)
                (if (gx#stx-pair? _g1826018338_)
                    (let ((_e1826318340_ (gx#stx-e _g1826018338_)))
                      (let ((_hd1826418343_ (##car _e1826318340_))
                            (_tl1826518345_ (##cdr _e1826318340_)))
                        (if (gx#stx-pair? _tl1826518345_)
                            (let ((_e1826618348_ (gx#stx-e _tl1826518345_)))
                              (let ((_hd1826718351_ (##car _e1826618348_))
                                    (_tl1826818353_ (##cdr _e1826618348_)))
                                (if (gx#stx-pair? _hd1826718351_)
                                    (let ((_e1826918356_
                                           (gx#stx-e _hd1826718351_)))
                                      (let ((_hd1827018359_
                                             (##car _e1826918356_))
                                            (_tl1827118361_
                                             (##cdr _e1826918356_)))
                                        (if (gx#stx-null? _tl1827118361_)
                                            (if (gx#stx-pair? _tl1826818353_)
                                                (let ((_e1827218364_
                                                       (gx#stx-e
                                                        _tl1826818353_)))
                                                  (let ((_hd1827318367_
                                                         (##car _e1827218364_))
                                                        (_tl1827418369_
                                                         (##cdr _e1827218364_)))
                                                    (if (gx#stx-null?
                                                         _tl1827418369_)
                                                        ((lambda (_L18372_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L18373_)
                   (if (gx#identifier? _L18373_)
                       (let ((_sym18389_
                              (gxc#generate-runtime-binding-id _L18373_)))
                         (begin
                           (if (table-ref
                                (gxc#current-compile-mutators)
                                _sym18389_
                                '#f)
                               (gxc#verbose
                                '"skipping type declaration for mutable binding "
                                _sym18389_)
                               (let ((_type1839018392_
                                      (gxc#apply-basic-expression-type
                                       _L18372_)))
                                 (if _type1839018392_
                                     (let ((_type18395_ _type1839018392_))
                                       (gxc#optimizer-declare-type!__0
                                        _sym18389_
                                        _type18395_))
                                     '#f)))
                           (gxc#compile-e _L18372_)))
                       (_g1825818335_ _g1826018338_)))
                 _hd1827318367_
                 _hd1827018359_)
                (_g1825818335_ _g1826018338_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1825818335_ _g1826018338_))
                                            (_g1825818335_ _g1826018338_))))
                                    (_g1825818335_ _g1826018338_))))
                            (_g1825818335_ _g1826018338_))))
                    (_g1825818335_ _g1826018338_)))))
        (_g1825718397_ _stx18256_))))
  (define gxc#collect-type-let-values%
    (lambda (_stx18041_)
      (letrec ((_collect-e18043_
                (lambda (_hd18200_ _expr18201_)
                  (let* ((_g1820418214_
                          (lambda (_g1820518211_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1820518211_)))
                         (_g1820318221_
                          (lambda (_g1820518217_) ((lambda () '#!void))))
                         (_g1820218253_
                          (lambda (_g1820518224_)
                            (if (gx#stx-pair? _g1820518224_)
                                (let ((_e1820718226_ (gx#stx-e _g1820518224_)))
                                  (let ((_hd1820818229_ (##car _e1820718226_))
                                        (_tl1820918231_ (##cdr _e1820718226_)))
                                    (if (gx#stx-null? _tl1820918231_)
                                        ((lambda (_L18234_)
                                           (if (gx#identifier? _L18234_)
                                               (let ((_sym18245_
                                                      (gxc#generate-runtime-binding-id
                                                       _L18234_)))
                                                 (if (table-ref
                                                      (gxc#current-compile-mutators)
                                                      _sym18245_
                                                      '#f)
                                                     (gxc#verbose
                                                      '"skipping type declaration for mutable binding "
                                                      _sym18245_)
                                                     (let ((_type1824618248_
                                                            (gxc#apply-basic-expression-type
                                                             _expr18201_)))
                                                       (if _type1824618248_
                                                           (let ((_type18251_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _type1824618248_))
                     (gxc#optimizer-declare-type!__opt-lambda23004
                      _sym18245_
                      _type18251_
                      '#t))
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1820318221_ _g1820518224_)))
                                         _hd1820818229_)
                                        (_g1820318221_ _g1820518224_))))
                                (_g1820318221_ _g1820518224_)))))
                    (_g1820218253_ _hd18200_)))))
        (let* ((_g1804518080_
                (lambda (_g1804618077_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1804618077_)))
               (_g1804418197_
                (lambda (_g1804618083_)
                  (if (gx#stx-pair? _g1804618083_)
                      (let ((_e1805018085_ (gx#stx-e _g1804618083_)))
                        (let ((_hd1805118088_ (##car _e1805018085_))
                              (_tl1805218090_ (##cdr _e1805018085_)))
                          (if (gx#stx-pair? _tl1805218090_)
                              (let ((_e1805318093_ (gx#stx-e _tl1805218090_)))
                                (let ((_hd1805418096_ (##car _e1805318093_))
                                      (_tl1805518098_ (##cdr _e1805318093_)))
                                  (if (gx#stx-pair/null? _hd1805418096_)
                                      (if (fx>= (gx#stx-length _hd1805418096_)
                                                '0)
                                          (let ((_g23658_
                                                 (gx#syntax-split-splice
                                                  _hd1805418096_
                                                  '0)))
                                            (begin
                                              (let ((_g23659_
                                                     (values-count _g23658_)))
                                                (if (not (fx= _g23659_ 2))
                                                    (error "Context expects 2 values"
                                                           _g23659_)))
                                              (let ((_target1805618101_
                                                     (values-ref _g23658_ 0))
                                                    (_tl1805818103_
                                                     (values-ref _g23658_ 1)))
                                                (if (gx#stx-null?
                                                     _tl1805818103_)
                                                    (letrec ((_loop1805918106_
                                                              (lambda (_hd1805718109_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _expr1806318111_
                               _hd1806418113_)
                        (if (gx#stx-pair? _hd1805718109_)
                            (let ((_e1806018116_ (gx#stx-e _hd1805718109_)))
                              (let ((_lp-hd1806118119_ (##car _e1806018116_))
                                    (_lp-tl1806218121_ (##cdr _e1806018116_)))
                                (if (gx#stx-pair? _lp-hd1806118119_)
                                    (let ((_e1806718124_
                                           (gx#stx-e _lp-hd1806118119_)))
                                      (let ((_hd1806818127_
                                             (##car _e1806718124_))
                                            (_tl1806918129_
                                             (##cdr _e1806718124_)))
                                        (if (gx#stx-pair? _tl1806918129_)
                                            (let ((_e1807018132_
                                                   (gx#stx-e _tl1806918129_)))
                                              (let ((_hd1807118135_
                                                     (##car _e1807018132_))
                                                    (_tl1807218137_
                                                     (##cdr _e1807018132_)))
                                                (if (gx#stx-null?
                                                     _tl1807218137_)
                                                    (_loop1805918106_
                                                     _lp-tl1806218121_
                                                     (cons _hd1807118135_
                                                           _expr1806318111_)
                                                     (cons _hd1806818127_
                                                           _hd1806418113_))
                                                    (_g1804518080_
                                                     _g1804618083_))))
                                            (_g1804518080_ _g1804618083_))))
                                    (_g1804518080_ _g1804618083_))))
                            (let ((_expr1806518140_ (reverse _expr1806318111_))
                                  (_hd1806618142_ (reverse _hd1806418113_)))
                              (if (gx#stx-pair? _tl1805518098_)
                                  (let ((_e1807318145_
                                         (gx#stx-e _tl1805518098_)))
                                    (let ((_hd1807418148_
                                           (##car _e1807318145_))
                                          (_tl1807518150_
                                           (##cdr _e1807318145_)))
                                      (if (gx#stx-null? _tl1807518150_)
                                          ((lambda (_L18153_ _L18154_ _L18155_)
                                             (begin
                                               (for-each
                                                _collect-e18043_
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g1817518178_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1817618180_)
                    (cons _g1817518178_ _g1817618180_))
                  '()
                  _L18155_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g1818218185_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1818318187_)
                    (cons _g1818218185_ _g1818318187_))
                  '()
                  _L18154_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (for-each
                                                gxc#compile-e
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g1818918192_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1819018194_)
                    (cons _g1818918192_ _g1819018194_))
                  '()
                  _L18154_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gxc#compile-e _L18153_)))
                                           _hd1807418148_
                                           _expr1806518140_
                                           _hd1806618142_)
                                          (_g1804518080_ _g1804618083_))))
                                  (_g1804518080_ _g1804618083_)))))))
              (_loop1805918106_ _target1805618101_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1804518080_
                                                     _g1804618083_)))))
                                          (_g1804518080_ _g1804618083_))
                                      (_g1804518080_ _g1804618083_))))
                              (_g1804518080_ _g1804618083_))))
                      (_g1804518080_ _g1804618083_)))))
          (_g1804418197_ _stx18041_)))))
  (define gxc#collect-type-call%
    (lambda (_stx17595_)
      (let* ((_g1759917701_
              (lambda (_g1760017698_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1760017698_)))
             (_g1759817708_ (lambda (_g1760017704_) ((lambda () '#!void))))
             (_g1759717858_
              (lambda (_g1760017711_)
                (if (gx#stx-pair? _g1760017711_)
                    (let ((_e1765817713_ (gx#stx-e _g1760017711_)))
                      (let ((_hd1765917716_ (##car _e1765817713_))
                            (_tl1766017718_ (##cdr _e1765817713_)))
                        (if (gx#stx-pair? _tl1766017718_)
                            (let ((_e1766117721_ (gx#stx-e _tl1766017718_)))
                              (let ((_hd1766217724_ (##car _e1766117721_))
                                    (_tl1766317726_ (##cdr _e1766117721_)))
                                (if (gx#stx-pair? _hd1766217724_)
                                    (let ((_e1766417729_
                                           (gx#stx-e _hd1766217724_)))
                                      (let ((_hd1766517732_
                                             (##car _e1766417729_))
                                            (_tl1766617734_
                                             (##cdr _e1766417729_)))
                                        (if (gx#identifier? _hd1766517732_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1766517732_)
                                                (if (gx#stx-pair?
                                                     _tl1766617734_)
                                                    (let ((_e1766717737_
                                                           (gx#stx-e
                                                            _tl1766617734_)))
                                                      (let ((_hd1766817740_
                                                             (##car _e1766717737_))
                                                            (_tl1766917742_
                                                             (##cdr _e1766717737_)))
                                                        (if (gx#stx-null?
                                                             _tl1766917742_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1766317726_)
                        (let ((_e1767017745_ (gx#stx-e _tl1766317726_)))
                          (let ((_hd1767117748_ (##car _e1767017745_))
                                (_tl1767217750_ (##cdr _e1767017745_)))
                            (if (gx#stx-pair? _hd1767117748_)
                                (let ((_e1767317753_
                                       (gx#stx-e _hd1767117748_)))
                                  (let ((_hd1767417756_ (##car _e1767317753_))
                                        (_tl1767517758_ (##cdr _e1767317753_)))
                                    (if (gx#identifier? _hd1767417756_)
                                        (if (gx#stx-eq? '%#ref _hd1767417756_)
                                            (if (gx#stx-pair? _tl1767517758_)
                                                (let ((_e1767617761_
                                                       (gx#stx-e
                                                        _tl1767517758_)))
                                                  (let ((_hd1767717764_
                                                         (##car _e1767617761_))
                                                        (_tl1767817766_
                                                         (##cdr _e1767617761_)))
                                                    (if (gx#stx-null?
                                                         _tl1767817766_)
                                                        (if (gx#stx-pair?
                                                             _tl1767217750_)
                                                            (let ((_e1767917769_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1767217750_)))
                      (let ((_hd1768017772_ (##car _e1767917769_))
                            (_tl1768117774_ (##cdr _e1767917769_)))
                        (if (gx#stx-pair? _hd1768017772_)
                            (let ((_e1768217777_ (gx#stx-e _hd1768017772_)))
                              (let ((_hd1768317780_ (##car _e1768217777_))
                                    (_tl1768417782_ (##cdr _e1768217777_)))
                                (if (gx#identifier? _hd1768317780_)
                                    (if (gx#stx-eq? '%#quote _hd1768317780_)
                                        (if (gx#stx-pair? _tl1768417782_)
                                            (let ((_e1768517785_
                                                   (gx#stx-e _tl1768417782_)))
                                              (let ((_hd1768617788_
                                                     (##car _e1768517785_))
                                                    (_tl1768717790_
                                                     (##cdr _e1768517785_)))
                                                (if (gx#stx-null?
                                                     _tl1768717790_)
                                                    (if (gx#stx-pair?
                                                         _tl1768117774_)
                                                        (let ((_e1768817793_
                                                               (gx#stx-e
                                                                _tl1768117774_)))
                                                          (let ((_hd1768917796_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1768817793_))
                        (_tl1769017798_ (##cdr _e1768817793_)))
                    (if (gx#stx-pair? _hd1768917796_)
                        (let ((_e1769117801_ (gx#stx-e _hd1768917796_)))
                          (let ((_hd1769217804_ (##car _e1769117801_))
                                (_tl1769317806_ (##cdr _e1769117801_)))
                            (if (gx#identifier? _hd1769217804_)
                                (if (gx#stx-eq? '%#ref _hd1769217804_)
                                    (if (gx#stx-pair? _tl1769317806_)
                                        (let ((_e1769417809_
                                               (gx#stx-e _tl1769317806_)))
                                          (let ((_hd1769517812_
                                                 (##car _e1769417809_))
                                                (_tl1769617814_
                                                 (##cdr _e1769417809_)))
                                            (if (gx#stx-null? _tl1769617814_)
                                                (if (gx#stx-null?
                                                     _tl1769017798_)
                                                    ((lambda (_L17817_
                                                              _L17818_
                                                              _L17819_
                                                              _L17820_)
                                                       (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax__0 '#f '-bind-method))
                        'bind-method!)
                   (gxc#optimizer-declare-method!__opt-lambda22980
                    (gxc#generate-runtime-binding-id _L17819_)
                    (gx#stx-e _L17818_)
                    (gxc#generate-runtime-binding-id _L17817_)
                    '#f)
                   (_g1759817708_ _g1760017711_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd1769517812_
                                                     _hd1768617788_
                                                     _hd1767717764_
                                                     _hd1766817740_)
                                                    (_g1759817708_
                                                     _g1760017711_))
                                                (_g1759817708_
                                                 _g1760017711_))))
                                        (_g1759817708_ _g1760017711_))
                                    (_g1759817708_ _g1760017711_))
                                (_g1759817708_ _g1760017711_))))
                        (_g1759817708_ _g1760017711_))))
                (_g1759817708_ _g1760017711_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1759817708_
                                                     _g1760017711_))))
                                            (_g1759817708_ _g1760017711_))
                                        (_g1759817708_ _g1760017711_))
                                    (_g1759817708_ _g1760017711_))))
                            (_g1759817708_ _g1760017711_))))
                    (_g1759817708_ _g1760017711_))
                (_g1759817708_ _g1760017711_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1759817708_ _g1760017711_))
                                            (_g1759817708_ _g1760017711_))
                                        (_g1759817708_ _g1760017711_))))
                                (_g1759817708_ _g1760017711_))))
                        (_g1759817708_ _g1760017711_))
                    (_g1759817708_ _g1760017711_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1759817708_
                                                     _g1760017711_))
                                                (_g1759817708_ _g1760017711_))
                                            (_g1759817708_ _g1760017711_))))
                                    (_g1759817708_ _g1760017711_))))
                            (_g1759817708_ _g1760017711_))))
                    (_g1759817708_ _g1760017711_))))
             (_g1759618038_
              (lambda (_g1760017861_)
                (if (gx#stx-pair? _g1760017861_)
                    (let ((_e1760617863_ (gx#stx-e _g1760017861_)))
                      (let ((_hd1760717866_ (##car _e1760617863_))
                            (_tl1760817868_ (##cdr _e1760617863_)))
                        (if (gx#stx-pair? _tl1760817868_)
                            (let ((_e1760917871_ (gx#stx-e _tl1760817868_)))
                              (let ((_hd1761017874_ (##car _e1760917871_))
                                    (_tl1761117876_ (##cdr _e1760917871_)))
                                (if (gx#stx-pair? _hd1761017874_)
                                    (let ((_e1761217879_
                                           (gx#stx-e _hd1761017874_)))
                                      (let ((_hd1761317882_
                                             (##car _e1761217879_))
                                            (_tl1761417884_
                                             (##cdr _e1761217879_)))
                                        (if (gx#identifier? _hd1761317882_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1761317882_)
                                                (if (gx#stx-pair?
                                                     _tl1761417884_)
                                                    (let ((_e1761517887_
                                                           (gx#stx-e
                                                            _tl1761417884_)))
                                                      (let ((_hd1761617890_
                                                             (##car _e1761517887_))
                                                            (_tl1761717892_
                                                             (##cdr _e1761517887_)))
                                                        (if (gx#stx-null?
                                                             _tl1761717892_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1761117876_)
                        (let ((_e1761817895_ (gx#stx-e _tl1761117876_)))
                          (let ((_hd1761917898_ (##car _e1761817895_))
                                (_tl1762017900_ (##cdr _e1761817895_)))
                            (if (gx#stx-pair? _hd1761917898_)
                                (let ((_e1762117903_
                                       (gx#stx-e _hd1761917898_)))
                                  (let ((_hd1762217906_ (##car _e1762117903_))
                                        (_tl1762317908_ (##cdr _e1762117903_)))
                                    (if (gx#identifier? _hd1762217906_)
                                        (if (gx#stx-eq? '%#ref _hd1762217906_)
                                            (if (gx#stx-pair? _tl1762317908_)
                                                (let ((_e1762417911_
                                                       (gx#stx-e
                                                        _tl1762317908_)))
                                                  (let ((_hd1762517914_
                                                         (##car _e1762417911_))
                                                        (_tl1762617916_
                                                         (##cdr _e1762417911_)))
                                                    (if (gx#stx-null?
                                                         _tl1762617916_)
                                                        (if (gx#stx-pair?
                                                             _tl1762017900_)
                                                            (let ((_e1762717919_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1762017900_)))
                      (let ((_hd1762817922_ (##car _e1762717919_))
                            (_tl1762917924_ (##cdr _e1762717919_)))
                        (if (gx#stx-pair? _hd1762817922_)
                            (let ((_e1763017927_ (gx#stx-e _hd1762817922_)))
                              (let ((_hd1763117930_ (##car _e1763017927_))
                                    (_tl1763217932_ (##cdr _e1763017927_)))
                                (if (gx#identifier? _hd1763117930_)
                                    (if (gx#stx-eq? '%#quote _hd1763117930_)
                                        (if (gx#stx-pair? _tl1763217932_)
                                            (let ((_e1763317935_
                                                   (gx#stx-e _tl1763217932_)))
                                              (let ((_hd1763417938_
                                                     (##car _e1763317935_))
                                                    (_tl1763517940_
                                                     (##cdr _e1763317935_)))
                                                (if (gx#stx-null?
                                                     _tl1763517940_)
                                                    (if (gx#stx-pair?
                                                         _tl1762917924_)
                                                        (let ((_e1763617943_
                                                               (gx#stx-e
                                                                _tl1762917924_)))
                                                          (let ((_hd1763717946_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1763617943_))
                        (_tl1763817948_ (##cdr _e1763617943_)))
                    (if (gx#stx-pair? _hd1763717946_)
                        (let ((_e1763917951_ (gx#stx-e _hd1763717946_)))
                          (let ((_hd1764017954_ (##car _e1763917951_))
                                (_tl1764117956_ (##cdr _e1763917951_)))
                            (if (gx#identifier? _hd1764017954_)
                                (if (gx#stx-eq? '%#ref _hd1764017954_)
                                    (if (gx#stx-pair? _tl1764117956_)
                                        (let ((_e1764217959_
                                               (gx#stx-e _tl1764117956_)))
                                          (let ((_hd1764317962_
                                                 (##car _e1764217959_))
                                                (_tl1764417964_
                                                 (##cdr _e1764217959_)))
                                            (if (gx#stx-null? _tl1764417964_)
                                                (if (gx#stx-pair?
                                                     _tl1763817948_)
                                                    (let ((_e1764517967_
                                                           (gx#stx-e
                                                            _tl1763817948_)))
                                                      (let ((_hd1764617970_
                                                             (##car _e1764517967_))
                                                            (_tl1764717972_
                                                             (##cdr _e1764517967_)))
                                                        (if (gx#stx-pair?
                                                             _hd1764617970_)
                                                            (let ((_e1764817975_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1764617970_)))
                      (let ((_hd1764917978_ (##car _e1764817975_))
                            (_tl1765017980_ (##cdr _e1764817975_)))
                        (if (gx#identifier? _hd1764917978_)
                            (if (gx#stx-eq? '%#quote _hd1764917978_)
                                (if (gx#stx-pair? _tl1765017980_)
                                    (let ((_e1765117983_
                                           (gx#stx-e _tl1765017980_)))
                                      (let ((_hd1765217986_
                                             (##car _e1765117983_))
                                            (_tl1765317988_
                                             (##cdr _e1765117983_)))
                                        (if (gx#stx-null? _tl1765317988_)
                                            (if (gx#stx-null? _tl1764717972_)
                                                ((lambda (_L17991_
                                                          _L17992_
                                                          _L17993_
                                                          _L17994_
                                                          _L17995_)
                                                   (if (eq? (gxc#generate-runtime-binding-id
                                                             _L17995_)
                                                            'bind-method!)
                                                       (gxc#optimizer-declare-method!__opt-lambda22980
                                                        (gxc#generate-runtime-binding-id
                                                         _L17994_)
                                                        (gx#stx-e _L17993_)
                                                        (gxc#generate-runtime-binding-id
                                                         _L17992_)
                                                        (gx#stx-e _L17991_))
                                                       (_g1759717858_
                                                        _g1760017861_)))
                                                 _hd1765217986_
                                                 _hd1764317962_
                                                 _hd1763417938_
                                                 _hd1762517914_
                                                 _hd1761617890_)
                                                (_g1759717858_ _g1760017861_))
                                            (_g1759717858_ _g1760017861_))))
                                    (_g1759717858_ _g1760017861_))
                                (_g1759717858_ _g1760017861_))
                            (_g1759717858_ _g1760017861_))))
                    (_g1759717858_ _g1760017861_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1759717858_
                                                     _g1760017861_))
                                                (_g1759717858_
                                                 _g1760017861_))))
                                        (_g1759717858_ _g1760017861_))
                                    (_g1759717858_ _g1760017861_))
                                (_g1759717858_ _g1760017861_))))
                        (_g1759717858_ _g1760017861_))))
                (_g1759717858_ _g1760017861_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1759717858_
                                                     _g1760017861_))))
                                            (_g1759717858_ _g1760017861_))
                                        (_g1759717858_ _g1760017861_))
                                    (_g1759717858_ _g1760017861_))))
                            (_g1759717858_ _g1760017861_))))
                    (_g1759717858_ _g1760017861_))
                (_g1759717858_ _g1760017861_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1759717858_ _g1760017861_))
                                            (_g1759717858_ _g1760017861_))
                                        (_g1759717858_ _g1760017861_))))
                                (_g1759717858_ _g1760017861_))))
                        (_g1759717858_ _g1760017861_))
                    (_g1759717858_ _g1760017861_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1759717858_
                                                     _g1760017861_))
                                                (_g1759717858_ _g1760017861_))
                                            (_g1759717858_ _g1760017861_))))
                                    (_g1759717858_ _g1760017861_))))
                            (_g1759717858_ _g1760017861_))))
                    (_g1759717858_ _g1760017861_)))))
        (_g1759618038_ _stx17595_))))
  (define gxc#basic-expression-type-begin%
    (lambda (_stx17535_)
      (let* ((_g1753817551_
              (lambda (_g1753917548_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1753917548_)))
             (_g1753717558_ (lambda (_g1753917554_) ((lambda () '#f))))
             (_g1753617592_
              (lambda (_g1753917561_)
                (if (gx#stx-pair? _g1753917561_)
                    (let ((_e1754117563_ (gx#stx-e _g1753917561_)))
                      (let ((_hd1754217566_ (##car _e1754117563_))
                            (_tl1754317568_ (##cdr _e1754117563_)))
                        (if (gx#stx-pair? _tl1754317568_)
                            (let ((_e1754417571_ (gx#stx-e _tl1754317568_)))
                              (let ((_hd1754517574_ (##car _e1754417571_))
                                    (_tl1754617576_ (##cdr _e1754417571_)))
                                (if (gx#stx-null? _tl1754617576_)
                                    ((lambda (_L17579_)
                                       (gxc#compile-e _L17579_))
                                     _hd1754517574_)
                                    (_g1753717558_ _g1753917561_))))
                            (_g1753717558_ _g1753917561_))))
                    (_g1753717558_ _g1753917561_)))))
        (_g1753617592_ _stx17535_))))
  (define gxc#basic-expression-type-begin-annotation%
    (lambda (_stx17468_)
      (let* ((_g1747017487_
              (lambda (_g1747117484_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1747117484_)))
             (_g1746917532_
              (lambda (_g1747117490_)
                (if (gx#stx-pair? _g1747117490_)
                    (let ((_e1747417492_ (gx#stx-e _g1747117490_)))
                      (let ((_hd1747517495_ (##car _e1747417492_))
                            (_tl1747617497_ (##cdr _e1747417492_)))
                        (if (gx#stx-pair? _tl1747617497_)
                            (let ((_e1747717500_ (gx#stx-e _tl1747617497_)))
                              (let ((_hd1747817503_ (##car _e1747717500_))
                                    (_tl1747917505_ (##cdr _e1747717500_)))
                                (if (gx#stx-pair? _tl1747917505_)
                                    (let ((_e1748017508_
                                           (gx#stx-e _tl1747917505_)))
                                      (let ((_hd1748117511_
                                             (##car _e1748017508_))
                                            (_tl1748217513_
                                             (##cdr _e1748017508_)))
                                        (if (gx#stx-null? _tl1748217513_)
                                            ((lambda (_L17516_ _L17517_)
                                               (gxc#compile-e _L17516_))
                                             _hd1748117511_
                                             _hd1747817503_)
                                            (_g1747017487_ _g1747117490_))))
                                    (_g1747017487_ _g1747117490_))))
                            (_g1747017487_ _g1747117490_))))
                    (_g1747017487_ _g1747117490_)))))
        (_g1746917532_ _stx17468_))))
  (define gxc#basic-expression-type-lambda%
    (lambda (_stx16893_)
      (let* ((_g1689817019_
              (lambda (_g1689917016_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1689917016_)))
             (_g1689717026_ (lambda (_g1689917022_) ((lambda () '#f))))
             (_g1689617050_
              (lambda (_g1689917029_)
                (if (gx#stx-pair? _g1689917029_)
                    (let ((_e1701217031_ (gx#stx-e _g1689917029_)))
                      (let ((_hd1701317034_ (##car _e1701217031_))
                            (_tl1701417036_ (##cdr _e1701217031_)))
                        ((lambda (_L17039_)
                           (if (gxc#dispatch-lambda-form? _L17039_)
                               (let ((__obj23598
                                      (make-object gxc#!lambda::t '5)))
                                 (begin
                                   (gxc#!lambda:::init!__0
                                    __obj23598
                                    'lambda
                                    (gxc#lambda-form-arity _L17039_)
                                    (gxc#dispatch-lambda-form-delegate
                                     _L17039_))
                                   __obj23598))
                               (_g1689717026_ _g1689917029_)))
                         _tl1701417036_)))
                    (_g1689717026_ _g1689917029_))))
             (_g1689517280_
              (lambda (_g1689917053_)
                (if (gx#stx-pair? _g1689917053_)
                    (let ((_e1695717055_ (gx#stx-e _g1689917053_)))
                      (let ((_hd1695817058_ (##car _e1695717055_))
                            (_tl1695917060_ (##cdr _e1695717055_)))
                        (if (gx#stx-pair? _tl1695917060_)
                            (let ((_e1696017063_ (gx#stx-e _tl1695917060_)))
                              (let ((_hd1696117066_ (##car _e1696017063_))
                                    (_tl1696217068_ (##cdr _e1696017063_)))
                                (if (gx#stx-pair/null? _hd1696117066_)
                                    (if (fx>= (gx#stx-length _hd1696117066_)
                                              '0)
                                        (let ((_g23660_
                                               (gx#syntax-split-splice
                                                _hd1696117066_
                                                '0)))
                                          (begin
                                            (let ((_g23661_
                                                   (values-count _g23660_)))
                                              (if (not (fx= _g23661_ 2))
                                                  (error "Context expects 2 values"
                                                         _g23661_)))
                                            (let ((_target1696317071_
                                                   (values-ref _g23660_ 0))
                                                  (_tl1696517073_
                                                   (values-ref _g23660_ 1)))
                                              (if (gx#stx-null? _tl1696517073_)
                                                  (letrec ((_loop1696617076_
                                                            (lambda (_hd1696417079_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _arg1697017081_)
                      (if (gx#stx-pair? _hd1696417079_)
                          (let ((_e1696717084_ (gx#stx-e _hd1696417079_)))
                            (let ((_lp-hd1696817087_ (##car _e1696717084_))
                                  (_lp-tl1696917089_ (##cdr _e1696717084_)))
                              (_loop1696617076_
                               _lp-tl1696917089_
                               (cons _lp-hd1696817087_ _arg1697017081_))))
                          (let ((_arg1697117092_ (reverse _arg1697017081_)))
                            (if (gx#stx-pair? _tl1696217068_)
                                (let ((_e1697217095_
                                       (gx#stx-e _tl1696217068_)))
                                  (let ((_hd1697317098_ (##car _e1697217095_))
                                        (_tl1697417100_ (##cdr _e1697217095_)))
                                    (if (gx#stx-pair? _hd1697317098_)
                                        (let ((_e1697517103_
                                               (gx#stx-e _hd1697317098_)))
                                          (let ((_hd1697617106_
                                                 (##car _e1697517103_))
                                                (_tl1697717108_
                                                 (##cdr _e1697517103_)))
                                            (if (gx#identifier? _hd1697617106_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd1697617106_)
                                                    (if (gx#stx-pair?
                                                         _tl1697717108_)
                                                        (let ((_e1697817111_
                                                               (gx#stx-e
                                                                _tl1697717108_)))
                                                          (let ((_hd1697917114_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1697817111_))
                        (_tl1698017116_ (##cdr _e1697817111_)))
                    (if (gx#stx-pair? _hd1697917114_)
                        (let ((_e1698117119_ (gx#stx-e _hd1697917114_)))
                          (let ((_hd1698217122_ (##car _e1698117119_))
                                (_tl1698317124_ (##cdr _e1698117119_)))
                            (if (gx#identifier? _hd1698217122_)
                                (if (gx#stx-eq? '%#ref _hd1698217122_)
                                    (if (gx#stx-pair? _tl1698317124_)
                                        (let ((_e1698417127_
                                               (gx#stx-e _tl1698317124_)))
                                          (let ((_hd1698517130_
                                                 (##car _e1698417127_))
                                                (_tl1698617132_
                                                 (##cdr _e1698417127_)))
                                            (if (gx#stx-null? _tl1698617132_)
                                                (if (gx#stx-pair?
                                                     _tl1698017116_)
                                                    (let ((_e1698717135_
                                                           (gx#stx-e
                                                            _tl1698017116_)))
                                                      (let ((_hd1698817138_
                                                             (##car _e1698717135_))
                                                            (_tl1698917140_
                                                             (##cdr _e1698717135_)))
                                                        (if (gx#stx-pair?
                                                             _hd1698817138_)
                                                            (let ((_e1699017143_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1698817138_)))
                      (let ((_hd1699117146_ (##car _e1699017143_))
                            (_tl1699217148_ (##cdr _e1699017143_)))
                        (if (gx#identifier? _hd1699117146_)
                            (if (gx#stx-eq? '%#ref _hd1699117146_)
                                (if (gx#stx-pair? _tl1699217148_)
                                    (let ((_e1699317151_
                                           (gx#stx-e _tl1699217148_)))
                                      (let ((_hd1699417154_
                                             (##car _e1699317151_))
                                            (_tl1699517156_
                                             (##cdr _e1699317151_)))
                                        (if (gx#stx-null? _tl1699517156_)
                                            (if (gx#stx-pair/null?
                                                 _tl1698917140_)
                                                (if (fx>= (gx#stx-length
                                                           _tl1698917140_)
                                                          '0)
                                                    (let ((_g23662_
                                                           (gx#syntax-split-splice
                                                            _tl1698917140_
                                                            '0)))
                                                      (begin
                                                        (let ((_g23663_
                                                               (values-count
                                                                _g23662_)))
                                                          (if (not (fx= _g23663_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                2))
                      (error "Context expects 2 values" _g23663_)))
                (let ((_target1699617159_ (values-ref _g23662_ 0))
                      (_tl1699817161_ (values-ref _g23662_ 1)))
                  (if (gx#stx-null? _tl1699817161_)
                      (letrec ((_loop1699917164_
                                (lambda (_hd1699717167_ _xarg1700317169_)
                                  (if (gx#stx-pair? _hd1699717167_)
                                      (let ((_e1700017172_
                                             (gx#stx-e _hd1699717167_)))
                                        (let ((_lp-hd1700117175_
                                               (##car _e1700017172_))
                                              (_lp-tl1700217177_
                                               (##cdr _e1700017172_)))
                                          (if (gx#stx-pair? _lp-hd1700117175_)
                                              (let ((_e1700517180_
                                                     (gx#stx-e
                                                      _lp-hd1700117175_)))
                                                (let ((_hd1700617183_
                                                       (##car _e1700517180_))
                                                      (_tl1700717185_
                                                       (##cdr _e1700517180_)))
                                                  (if (gx#identifier?
                                                       _hd1700617183_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd1700617183_)
                                                          (if (gx#stx-pair?
                                                               _tl1700717185_)
                                                              (let ((_e1700817188_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1700717185_)))
                        (let ((_hd1700917191_ (##car _e1700817188_))
                              (_tl1701017193_ (##cdr _e1700817188_)))
                          (if (gx#stx-null? _tl1701017193_)
                              (_loop1699917164_
                               _lp-tl1700217177_
                               (cons _hd1700917191_ _xarg1700317169_))
                              (_g1689617050_ _g1689917053_))))
                      (_g1689617050_ _g1689917053_))
                  (_g1689617050_ _g1689917053_))
              (_g1689617050_ _g1689917053_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1689617050_ _g1689917053_))))
                                      (let ((_xarg1700417196_
                                             (reverse _xarg1700317169_)))
                                        (if (gx#stx-null? _tl1697417100_)
                                            ((lambda (_L17199_
                                                      _L17200_
                                                      _L17201_
                                                      _L17202_)
                                               (if (if (gx#identifier-list?
                                                        (begin
                                                          '#!void
                                                          (foldr1 (lambda (_g1723917242_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g1724017244_)
                            (cons _g1723917242_ _g1724017244_))
                          '()
                          _L17202_)))
               (if (eq? (gxc#generate-runtime-binding-id _L17201_)
                        'make-struct-instance)
                   (if (fx= (length (begin
                                      '#!void
                                      (foldr1 (lambda (_g1724617249_
                                                       _g1724717251_)
                                                (cons _g1724617249_
                                                      _g1724717251_))
                                              '()
                                              _L17202_)))
                            (length (begin
                                      '#!void
                                      (foldr1 (lambda (_g1725317256_
                                                       _g1725417258_)
                                                (cons _g1725317256_
                                                      _g1725417258_))
                                              '()
                                              _L17199_))))
                       (andmap gx#free-identifier=?
                               (begin
                                 '#!void
                                 (foldr1 (lambda (_g1726017263_ _g1726117265_)
                                           (cons _g1726017263_ _g1726117265_))
                                         '()
                                         _L17202_))
                               (begin
                                 '#!void
                                 (foldr1 (lambda (_g1726717270_ _g1726817272_)
                                           (cons _g1726717270_ _g1726817272_))
                                         '()
                                         _L17199_)))
                       '#f)
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_type-t17275_
                                                           (gxc#generate-runtime-binding-id
                                                            _L17200_))
                                                          (_type17277_
                                                           (gxc#optimizer-resolve-type
                                                            _type-t17275_)))
                                                     (if (##structure-instance-of?
                                                          _type17277_
                                                          'gxc#!struct-type::t)
                                                         (##structure
                                                          gxc#!struct-cons::t
                                                          _type-t17275_)
                                                         '#f))
                                                   (_g1689617050_
                                                    _g1689917053_)))
                                             _xarg1700417196_
                                             _hd1699417154_
                                             _hd1698517130_
                                             _arg1697117092_)
                                            (_g1689617050_ _g1689917053_)))))))
                        (_loop1699917164_ _target1699617159_ '()))
                      (_g1689617050_ _g1689917053_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1689617050_
                                                     _g1689917053_))
                                                (_g1689617050_ _g1689917053_))
                                            (_g1689617050_ _g1689917053_))))
                                    (_g1689617050_ _g1689917053_))
                                (_g1689617050_ _g1689917053_))
                            (_g1689617050_ _g1689917053_))))
                    (_g1689617050_ _g1689917053_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1689617050_
                                                     _g1689917053_))
                                                (_g1689617050_
                                                 _g1689917053_))))
                                        (_g1689617050_ _g1689917053_))
                                    (_g1689617050_ _g1689917053_))
                                (_g1689617050_ _g1689917053_))))
                        (_g1689617050_ _g1689917053_))))
                (_g1689617050_ _g1689917053_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1689617050_
                                                     _g1689917053_))
                                                (_g1689617050_
                                                 _g1689917053_))))
                                        (_g1689617050_ _g1689917053_))))
                                (_g1689617050_ _g1689917053_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1696617076_
                                                     _target1696317071_
                                                     '()))
                                                  (_g1689617050_
                                                   _g1689917053_)))))
                                        (_g1689617050_ _g1689917053_))
                                    (_g1689617050_ _g1689917053_))))
                            (_g1689617050_ _g1689917053_))))
                    (_g1689617050_ _g1689917053_))))
             (_g1689417465_
              (lambda (_g1689917283_)
                (if (gx#stx-pair? _g1689917283_)
                    (let ((_e1690517285_ (gx#stx-e _g1689917283_)))
                      (let ((_hd1690617288_ (##car _e1690517285_))
                            (_tl1690717290_ (##cdr _e1690517285_)))
                        (if (gx#stx-pair? _tl1690717290_)
                            (let ((_e1690817293_ (gx#stx-e _tl1690717290_)))
                              (let ((_hd1690917296_ (##car _e1690817293_))
                                    (_tl1691017298_ (##cdr _e1690817293_)))
                                (if (gx#stx-pair? _tl1691017298_)
                                    (let ((_e1691117301_
                                           (gx#stx-e _tl1691017298_)))
                                      (let ((_hd1691217304_
                                             (##car _e1691117301_))
                                            (_tl1691317306_
                                             (##cdr _e1691117301_)))
                                        (if (gx#stx-pair? _hd1691217304_)
                                            (let ((_e1691417309_
                                                   (gx#stx-e _hd1691217304_)))
                                              (let ((_hd1691517312_
                                                     (##car _e1691417309_))
                                                    (_tl1691617314_
                                                     (##cdr _e1691417309_)))
                                                (if (gx#identifier?
                                                     _hd1691517312_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd1691517312_)
                                                        (if (gx#stx-pair?
                                                             _tl1691617314_)
                                                            (let ((_e1691717317_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1691617314_)))
                      (let ((_hd1691817320_ (##car _e1691717317_))
                            (_tl1691917322_ (##cdr _e1691717317_)))
                        (if (gx#stx-pair? _hd1691817320_)
                            (let ((_e1692017325_ (gx#stx-e _hd1691817320_)))
                              (let ((_hd1692117328_ (##car _e1692017325_))
                                    (_tl1692217330_ (##cdr _e1692017325_)))
                                (if (gx#identifier? _hd1692117328_)
                                    (if (gx#stx-eq? '%#ref _hd1692117328_)
                                        (if (gx#stx-pair? _tl1692217330_)
                                            (let ((_e1692317333_
                                                   (gx#stx-e _tl1692217330_)))
                                              (let ((_hd1692417336_
                                                     (##car _e1692317333_))
                                                    (_tl1692517338_
                                                     (##cdr _e1692317333_)))
                                                (if (gx#stx-null?
                                                     _tl1692517338_)
                                                    (if (gx#stx-pair?
                                                         _tl1691917322_)
                                                        (let ((_e1692617341_
                                                               (gx#stx-e
                                                                _tl1691917322_)))
                                                          (let ((_hd1692717344_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1692617341_))
                        (_tl1692817346_ (##cdr _e1692617341_)))
                    (if (gx#stx-pair? _hd1692717344_)
                        (let ((_e1692917349_ (gx#stx-e _hd1692717344_)))
                          (let ((_hd1693017352_ (##car _e1692917349_))
                                (_tl1693117354_ (##cdr _e1692917349_)))
                            (if (gx#identifier? _hd1693017352_)
                                (if (gx#stx-eq? '%#ref _hd1693017352_)
                                    (if (gx#stx-pair? _tl1693117354_)
                                        (let ((_e1693217357_
                                               (gx#stx-e _tl1693117354_)))
                                          (let ((_hd1693317360_
                                                 (##car _e1693217357_))
                                                (_tl1693417362_
                                                 (##cdr _e1693217357_)))
                                            (if (gx#stx-null? _tl1693417362_)
                                                (if (gx#stx-pair?
                                                     _tl1692817346_)
                                                    (let ((_e1693517365_
                                                           (gx#stx-e
                                                            _tl1692817346_)))
                                                      (let ((_hd1693617368_
                                                             (##car _e1693517365_))
                                                            (_tl1693717370_
                                                             (##cdr _e1693517365_)))
                                                        (if (gx#stx-pair?
                                                             _hd1693617368_)
                                                            (let ((_e1693817373_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1693617368_)))
                      (let ((_hd1693917376_ (##car _e1693817373_))
                            (_tl1694017378_ (##cdr _e1693817373_)))
                        (if (gx#identifier? _hd1693917376_)
                            (if (gx#stx-eq? '%#ref _hd1693917376_)
                                (if (gx#stx-pair? _tl1694017378_)
                                    (let ((_e1694117381_
                                           (gx#stx-e _tl1694017378_)))
                                      (let ((_hd1694217384_
                                             (##car _e1694117381_))
                                            (_tl1694317386_
                                             (##cdr _e1694117381_)))
                                        (if (gx#stx-null? _tl1694317386_)
                                            (if (gx#stx-pair? _tl1693717370_)
                                                (let ((_e1694417389_
                                                       (gx#stx-e
                                                        _tl1693717370_)))
                                                  (let ((_hd1694517392_
                                                         (##car _e1694417389_))
                                                        (_tl1694617394_
                                                         (##cdr _e1694417389_)))
                                                    (if (gx#stx-pair?
                                                         _hd1694517392_)
                                                        (let ((_e1694717397_
                                                               (gx#stx-e
                                                                _hd1694517392_)))
                                                          (let ((_hd1694817400_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1694717397_))
                        (_tl1694917402_ (##cdr _e1694717397_)))
                    (if (gx#identifier? _hd1694817400_)
                        (if (gx#stx-eq? '%#ref _hd1694817400_)
                            (if (gx#stx-pair? _tl1694917402_)
                                (let ((_e1695017405_
                                       (gx#stx-e _tl1694917402_)))
                                  (let ((_hd1695117408_ (##car _e1695017405_))
                                        (_tl1695217410_ (##cdr _e1695017405_)))
                                    (if (gx#stx-null? _tl1695217410_)
                                        (if (gx#stx-null? _tl1694617394_)
                                            (if (gx#stx-null? _tl1691317306_)
                                                ((lambda (_L17413_
                                                          _L17414_
                                                          _L17415_
                                                          _L17416_
                                                          _L17417_)
                                                   (if (if (gx#identifier?
                                                            _L17417_)
                                                           (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L17416_)
                            'apply)
                       (if (eq? (gxc#generate-runtime-binding-id _L17415_)
                                'make-struct-instance)
                           (gx#free-identifier=? _L17417_ _L17413_)
                           '#f)
                       '#f)
                   '#f)
               (let* ((_type-t17460_
                       (gxc#generate-runtime-binding-id _L17414_))
                      (_type17462_ (gxc#optimizer-resolve-type _type-t17460_)))
                 (if (##structure-instance-of?
                      _type17462_
                      'gxc#!struct-type::t)
                     (##structure gxc#!struct-cons::t _type-t17460_)
                     '#f))
               (_g1689517280_ _g1689917283_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1695117408_
                                                 _hd1694217384_
                                                 _hd1693317360_
                                                 _hd1692417336_
                                                 _hd1690917296_)
                                                (_g1689517280_ _g1689917283_))
                                            (_g1689517280_ _g1689917283_))
                                        (_g1689517280_ _g1689917283_))))
                                (_g1689517280_ _g1689917283_))
                            (_g1689517280_ _g1689917283_))
                        (_g1689517280_ _g1689917283_))))
                (_g1689517280_ _g1689917283_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1689517280_ _g1689917283_))
                                            (_g1689517280_ _g1689917283_))))
                                    (_g1689517280_ _g1689917283_))
                                (_g1689517280_ _g1689917283_))
                            (_g1689517280_ _g1689917283_))))
                    (_g1689517280_ _g1689917283_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1689517280_
                                                     _g1689917283_))
                                                (_g1689517280_
                                                 _g1689917283_))))
                                        (_g1689517280_ _g1689917283_))
                                    (_g1689517280_ _g1689917283_))
                                (_g1689517280_ _g1689917283_))))
                        (_g1689517280_ _g1689917283_))))
                (_g1689517280_ _g1689917283_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1689517280_
                                                     _g1689917283_))))
                                            (_g1689517280_ _g1689917283_))
                                        (_g1689517280_ _g1689917283_))
                                    (_g1689517280_ _g1689917283_))))
                            (_g1689517280_ _g1689917283_))))
                    (_g1689517280_ _g1689917283_))
                (_g1689517280_ _g1689917283_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1689517280_
                                                     _g1689917283_))))
                                            (_g1689517280_ _g1689917283_))))
                                    (_g1689517280_ _g1689917283_))))
                            (_g1689517280_ _g1689917283_))))
                    (_g1689517280_ _g1689917283_)))))
        (_g1689417465_ _stx16893_))))
  (define gxc#basic-expression-type-case-lambda%
    (lambda (_stx16839_)
      (letrec ((_clause-e16841_
                (lambda (_form16891_)
                  (let ((__obj23599 (make-object gxc#!lambda::t '5)))
                    (begin
                      (gxc#!lambda:::init!__0
                       __obj23599
                       'case-lambda-clause
                       (gxc#lambda-form-arity _form16891_)
                       (gxc#dispatch-lambda-form-delegate _form16891_))
                      __obj23599)))))
        (let* ((_g1684416854_
                (lambda (_g1684516851_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1684516851_)))
               (_g1684316861_ (lambda (_g1684516857_) ((lambda () '#f))))
               (_g1684216888_
                (lambda (_g1684516864_)
                  (if (gx#stx-pair? _g1684516864_)
                      (let ((_e1684716866_ (gx#stx-e _g1684516864_)))
                        (let ((_hd1684816869_ (##car _e1684716866_))
                              (_tl1684916871_ (##cdr _e1684716866_)))
                          ((lambda (_L16874_)
                             (if (andmap1 gxc#dispatch-lambda-form? _L16874_)
                                 (let ((_clauses16886_
                                        (map _clause-e16841_ _L16874_)))
                                   (##structure
                                    gxc#!case-lambda::t
                                    'case-lambda
                                    _clauses16886_))
                                 (_g1684316861_ _g1684516864_)))
                           _tl1684916871_)))
                      (_g1684316861_ _g1684516864_)))))
          (_g1684216888_ _stx16839_)))))
  (define gxc#basic-expression-type-builtin (make-hash-table-eq))
  (define gxc#basic-expression-type-call%
    (lambda (_stx16744_)
      (let* ((_g1674716767_
              (lambda (_g1674816764_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1674816764_)))
             (_g1674616774_ (lambda (_g1674816770_) ((lambda () '#f))))
             (_g1674516836_
              (lambda (_g1674816777_)
                (if (gx#stx-pair? _g1674816777_)
                    (let ((_e1675116779_ (gx#stx-e _g1674816777_)))
                      (let ((_hd1675216782_ (##car _e1675116779_))
                            (_tl1675316784_ (##cdr _e1675116779_)))
                        (if (gx#stx-pair? _tl1675316784_)
                            (let ((_e1675416787_ (gx#stx-e _tl1675316784_)))
                              (let ((_hd1675516790_ (##car _e1675416787_))
                                    (_tl1675616792_ (##cdr _e1675416787_)))
                                (if (gx#stx-pair? _hd1675516790_)
                                    (let ((_e1675716795_
                                           (gx#stx-e _hd1675516790_)))
                                      (let ((_hd1675816798_
                                             (##car _e1675716795_))
                                            (_tl1675916800_
                                             (##cdr _e1675716795_)))
                                        (if (gx#identifier? _hd1675816798_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1675816798_)
                                                (if (gx#stx-pair?
                                                     _tl1675916800_)
                                                    (let ((_e1676016803_
                                                           (gx#stx-e
                                                            _tl1675916800_)))
                                                      (let ((_hd1676116806_
                                                             (##car _e1676016803_))
                                                            (_tl1676216808_
                                                             (##cdr _e1676016803_)))
                                                        (if (gx#stx-null?
                                                             _tl1676216808_)
                                                            ((lambda (_L16811_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L16812_)
                       (let ((_type-e1682916831_
                              (table-ref
                               gxc#basic-expression-type-builtin
                               (gxc#generate-runtime-binding-id _L16812_)
                               '#f)))
                         (if _type-e1682916831_
                             (let ((_type-e16834_ _type-e1682916831_))
                               (_type-e16834_ _stx16744_ _L16811_))
                             '#f)))
                     _tl1675616792_
                     _hd1676116806_)
                    (_g1674616774_ _g1674816777_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1674616774_
                                                     _g1674816777_))
                                                (_g1674616774_ _g1674816777_))
                                            (_g1674616774_ _g1674816777_))))
                                    (_g1674616774_ _g1674816777_))))
                            (_g1674616774_ _g1674816777_))))
                    (_g1674616774_ _g1674816777_)))))
        (_g1674516836_ _stx16744_))))
  (define gxc#basic-expression-type-make-struct-type
    (lambda (_stx16229_ _args16230_)
      (let* ((_g1623416347_
              (lambda (_g1623516344_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1623516344_)))
             (_g1623316354_
              (lambda (_g1623516350_)
                ((lambda ()
                   (begin
                     (gxc#verbose
                      '"make-struct-type: can't infer type "
                      (gx#syntax->datum _stx16229_))
                     '#f)))))
             (_g1623216561_
              (lambda (_g1623516357_)
                (if (gx#stx-pair? _g1623516357_)
                    (let ((_e1629516359_ (gx#stx-e _g1623516357_)))
                      (let ((_hd1629616362_ (##car _e1629516359_))
                            (_tl1629716364_ (##cdr _e1629516359_)))
                        (if (gx#stx-pair? _hd1629616362_)
                            (let ((_e1629816367_ (gx#stx-e _hd1629616362_)))
                              (let ((_hd1629916370_ (##car _e1629816367_))
                                    (_tl1630016372_ (##cdr _e1629816367_)))
                                (if (gx#identifier? _hd1629916370_)
                                    (if (gx#stx-eq? '%#quote _hd1629916370_)
                                        (if (gx#stx-pair? _tl1630016372_)
                                            (let ((_e1630116375_
                                                   (gx#stx-e _tl1630016372_)))
                                              (let ((_hd1630216378_
                                                     (##car _e1630116375_))
                                                    (_tl1630316380_
                                                     (##cdr _e1630116375_)))
                                                (if (gx#stx-null?
                                                     _tl1630316380_)
                                                    (if (gx#stx-pair?
                                                         _tl1629716364_)
                                                        (let ((_e1630416383_
                                                               (gx#stx-e
                                                                _tl1629716364_)))
                                                          (let ((_hd1630516386_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1630416383_))
                        (_tl1630616388_ (##cdr _e1630416383_)))
                    (if (gx#stx-pair? _hd1630516386_)
                        (let ((_e1630716391_ (gx#stx-e _hd1630516386_)))
                          (let ((_hd1630816394_ (##car _e1630716391_))
                                (_tl1630916396_ (##cdr _e1630716391_)))
                            (if (gx#identifier? _hd1630816394_)
                                (if (gx#stx-eq? '%#ref _hd1630816394_)
                                    (if (gx#stx-pair? _tl1630916396_)
                                        (let ((_e1631016399_
                                               (gx#stx-e _tl1630916396_)))
                                          (let ((_hd1631116402_
                                                 (##car _e1631016399_))
                                                (_tl1631216404_
                                                 (##cdr _e1631016399_)))
                                            (if (gx#stx-null? _tl1631216404_)
                                                (if (gx#stx-pair?
                                                     _tl1630616388_)
                                                    (let ((_e1631316407_
                                                           (gx#stx-e
                                                            _tl1630616388_)))
                                                      (let ((_hd1631416410_
                                                             (##car _e1631316407_))
                                                            (_tl1631516412_
                                                             (##cdr _e1631316407_)))
                                                        (if (gx#stx-pair?
                                                             _hd1631416410_)
                                                            (let ((_e1631616415_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1631416410_)))
                      (let ((_hd1631716418_ (##car _e1631616415_))
                            (_tl1631816420_ (##cdr _e1631616415_)))
                        (if (gx#identifier? _hd1631716418_)
                            (if (gx#stx-eq? '%#quote _hd1631716418_)
                                (if (gx#stx-pair? _tl1631816420_)
                                    (let ((_e1631916423_
                                           (gx#stx-e _tl1631816420_)))
                                      (let ((_hd1632016426_
                                             (##car _e1631916423_))
                                            (_tl1632116428_
                                             (##cdr _e1631916423_)))
                                        (if (gx#stx-null? _tl1632116428_)
                                            (if (gx#stx-pair? _tl1631516412_)
                                                (let ((_e1632216431_
                                                       (gx#stx-e
                                                        _tl1631516412_)))
                                                  (let ((_hd1632316434_
                                                         (##car _e1632216431_))
                                                        (_tl1632416436_
                                                         (##cdr _e1632216431_)))
                                                    (if (gx#stx-pair?
                                                         _tl1632416436_)
                                                        (let ((_e1632516439_
                                                               (gx#stx-e
                                                                _tl1632416436_)))
                                                          (let ((_hd1632616442_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1632516439_))
                        (_tl1632716444_ (##cdr _e1632516439_)))
                    (if (gx#stx-pair? _hd1632616442_)
                        (let ((_e1632816447_ (gx#stx-e _hd1632616442_)))
                          (let ((_hd1632916450_ (##car _e1632816447_))
                                (_tl1633016452_ (##cdr _e1632816447_)))
                            (if (gx#identifier? _hd1632916450_)
                                (if (gx#stx-eq? '%#quote _hd1632916450_)
                                    (if (gx#stx-pair? _tl1633016452_)
                                        (let ((_e1633116455_
                                               (gx#stx-e _tl1633016452_)))
                                          (let ((_hd1633216458_
                                                 (##car _e1633116455_))
                                                (_tl1633316460_
                                                 (##cdr _e1633116455_)))
                                            (if (gx#stx-null? _tl1633316460_)
                                                (if (gx#stx-pair?
                                                     _tl1632716444_)
                                                    (let ((_e1633416463_
                                                           (gx#stx-e
                                                            _tl1632716444_)))
                                                      (let ((_hd1633516466_
                                                             (##car _e1633416463_))
                                                            (_tl1633616468_
                                                             (##cdr _e1633416463_)))
                                                        (if (gx#stx-pair?
                                                             _hd1633516466_)
                                                            (let ((_e1633716471_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1633516466_)))
                      (let ((_hd1633816474_ (##car _e1633716471_))
                            (_tl1633916476_ (##cdr _e1633716471_)))
                        (if (gx#identifier? _hd1633816474_)
                            (if (gx#stx-eq? '%#quote _hd1633816474_)
                                (if (gx#stx-pair? _tl1633916476_)
                                    (let ((_e1634016479_
                                           (gx#stx-e _tl1633916476_)))
                                      (let ((_hd1634116482_
                                             (##car _e1634016479_))
                                            (_tl1634216484_
                                             (##cdr _e1634016479_)))
                                        (if (gx#stx-null? _tl1634216484_)
                                            (if (gx#stx-null? _tl1633616468_)
                                                ((lambda (_L16487_
                                                          _L16488_
                                                          _L16489_
                                                          _L16490_
                                                          _L16491_
                                                          _L16492_)
                                                   (let* ((_super-t16538_
                                                           (if (gx#stx-e
                                                                _L16491_)
                                                               (gxc#generate-runtime-binding-id
                                                                _L16491_)
                                                               '#f))
                                                          (_super-type16540_
                                                           (if _super-t16538_
                                                               (gxc#optimizer-resolve-type
                                                                _super-t16538_)
                                                               '#f)))
                                                     (begin
                                                       (if (if _super-type16540_
                                                               (not (##structure-instance-of?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _super-type16540_
                             'gxc#!struct-type::t))
                       '#f)
                   (gxc#raise-compile-error
                    '"Illegal struct-type construction; invalid super type"
                    _stx16229_
                    _L16491_)
                   '#!void)
               (let ((_fields16556_ (gx#stx-e _L16490_))
                     (_xfields16557_
                      (if _super-type16540_
                          (let ((_super-fields1654216545_
                                 (##structure-ref
                                  _super-type16540_
                                  '3
                                  gxc#!struct-type::t
                                  '#f))
                                (_super-xfields1654316547_
                                 (##structure-ref
                                  _super-type16540_
                                  '4
                                  gxc#!struct-type::t
                                  '#f)))
                            (if _super-fields1654216545_
                                (if _super-xfields1654316547_
                                    (let ((_super-fields16550_
                                           _super-fields1654216545_)
                                          (_super-xfields16551_
                                           _super-xfields1654316547_))
                                      (fx+ _super-fields16550_
                                           _super-xfields16551_))
                                    '#f)
                                '#f))
                          '#f))
                     (_plist16558_ (gx#stx-e _L16488_))
                     (_ctor16559_
                      (let ((_$e16553_ (gx#stx-e _L16487_)))
                        (if _$e16553_
                            (values _$e16553_)
                            (if _super-type16540_
                                (##structure-ref
                                 _super-type16540_
                                 '5
                                 gxc#!struct-type::t
                                 '#f)
                                (if _super-t16538_ '#!void '#f))))))
                 (let ((__obj23600 (make-object gxc#!struct-type::t '7)))
                   (begin
                     (gxc#!struct-type:::init!
                      __obj23600
                      (gx#stx-e _L16492_)
                      _super-t16538_
                      _fields16556_
                      _xfields16557_
                      _ctor16559_
                      _plist16558_)
                     __obj23600))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1634116482_
                                                 _hd1633216458_
                                                 _hd1632316434_
                                                 _hd1632016426_
                                                 _hd1631116402_
                                                 _hd1630216378_)
                                                (_g1623316354_ _g1623516357_))
                                            (_g1623316354_ _g1623516357_))))
                                    (_g1623316354_ _g1623516357_))
                                (_g1623316354_ _g1623516357_))
                            (_g1623316354_ _g1623516357_))))
                    (_g1623316354_ _g1623516357_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1623316354_
                                                     _g1623516357_))
                                                (_g1623316354_
                                                 _g1623516357_))))
                                        (_g1623316354_ _g1623516357_))
                                    (_g1623316354_ _g1623516357_))
                                (_g1623316354_ _g1623516357_))))
                        (_g1623316354_ _g1623516357_))))
                (_g1623316354_ _g1623516357_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1623316354_ _g1623516357_))
                                            (_g1623316354_ _g1623516357_))))
                                    (_g1623316354_ _g1623516357_))
                                (_g1623316354_ _g1623516357_))
                            (_g1623316354_ _g1623516357_))))
                    (_g1623316354_ _g1623516357_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1623316354_
                                                     _g1623516357_))
                                                (_g1623316354_
                                                 _g1623516357_))))
                                        (_g1623316354_ _g1623516357_))
                                    (_g1623316354_ _g1623516357_))
                                (_g1623316354_ _g1623516357_))))
                        (_g1623316354_ _g1623516357_))))
                (_g1623316354_ _g1623516357_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1623316354_
                                                     _g1623516357_))))
                                            (_g1623316354_ _g1623516357_))
                                        (_g1623316354_ _g1623516357_))
                                    (_g1623316354_ _g1623516357_))))
                            (_g1623316354_ _g1623516357_))))
                    (_g1623316354_ _g1623516357_))))
             (_g1623116741_
              (lambda (_g1623516564_)
                (if (gx#stx-pair? _g1623516564_)
                    (let ((_e1624116566_ (gx#stx-e _g1623516564_)))
                      (let ((_hd1624216569_ (##car _e1624116566_))
                            (_tl1624316571_ (##cdr _e1624116566_)))
                        (if (gx#stx-pair? _hd1624216569_)
                            (let ((_e1624416574_ (gx#stx-e _hd1624216569_)))
                              (let ((_hd1624516577_ (##car _e1624416574_))
                                    (_tl1624616579_ (##cdr _e1624416574_)))
                                (if (gx#identifier? _hd1624516577_)
                                    (if (gx#stx-eq? '%#quote _hd1624516577_)
                                        (if (gx#stx-pair? _tl1624616579_)
                                            (let ((_e1624716582_
                                                   (gx#stx-e _tl1624616579_)))
                                              (let ((_hd1624816585_
                                                     (##car _e1624716582_))
                                                    (_tl1624916587_
                                                     (##cdr _e1624716582_)))
                                                (if (gx#stx-null?
                                                     _tl1624916587_)
                                                    (if (gx#stx-pair?
                                                         _tl1624316571_)
                                                        (let ((_e1625016590_
                                                               (gx#stx-e
                                                                _tl1624316571_)))
                                                          (let ((_hd1625116593_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1625016590_))
                        (_tl1625216595_ (##cdr _e1625016590_)))
                    (if (gx#stx-pair? _hd1625116593_)
                        (let ((_e1625316598_ (gx#stx-e _hd1625116593_)))
                          (let ((_hd1625416601_ (##car _e1625316598_))
                                (_tl1625516603_ (##cdr _e1625316598_)))
                            (if (gx#identifier? _hd1625416601_)
                                (if (gx#stx-eq? '%#quote _hd1625416601_)
                                    (if (gx#stx-pair? _tl1625516603_)
                                        (let ((_e1625616606_
                                               (gx#stx-e _tl1625516603_)))
                                          (let ((_hd1625716609_
                                                 (##car _e1625616606_))
                                                (_tl1625816611_
                                                 (##cdr _e1625616606_)))
                                            (if (gx#stx-datum? _hd1625716609_)
                                                (if (equal? (gx#stx-e
                                                             _hd1625716609_)
                                                            '#f)
                                                    (if (gx#stx-null?
                                                         _tl1625816611_)
                                                        (if (gx#stx-pair?
                                                             _tl1625216595_)
                                                            (let ((_e1625916614_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1625216595_)))
                      (let ((_hd1626016617_ (##car _e1625916614_))
                            (_tl1626116619_ (##cdr _e1625916614_)))
                        (if (gx#stx-pair? _hd1626016617_)
                            (let ((_e1626216622_ (gx#stx-e _hd1626016617_)))
                              (let ((_hd1626316625_ (##car _e1626216622_))
                                    (_tl1626416627_ (##cdr _e1626216622_)))
                                (if (gx#identifier? _hd1626316625_)
                                    (if (gx#stx-eq? '%#quote _hd1626316625_)
                                        (if (gx#stx-pair? _tl1626416627_)
                                            (let ((_e1626516630_
                                                   (gx#stx-e _tl1626416627_)))
                                              (let ((_hd1626616633_
                                                     (##car _e1626516630_))
                                                    (_tl1626716635_
                                                     (##cdr _e1626516630_)))
                                                (if (gx#stx-null?
                                                     _tl1626716635_)
                                                    (if (gx#stx-pair?
                                                         _tl1626116619_)
                                                        (let ((_e1626816638_
                                                               (gx#stx-e
                                                                _tl1626116619_)))
                                                          (let ((_hd1626916641_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1626816638_))
                        (_tl1627016643_ (##cdr _e1626816638_)))
                    (if (gx#stx-pair? _tl1627016643_)
                        (let ((_e1627116646_ (gx#stx-e _tl1627016643_)))
                          (let ((_hd1627216649_ (##car _e1627116646_))
                                (_tl1627316651_ (##cdr _e1627116646_)))
                            (if (gx#stx-pair? _hd1627216649_)
                                (let ((_e1627416654_
                                       (gx#stx-e _hd1627216649_)))
                                  (let ((_hd1627516657_ (##car _e1627416654_))
                                        (_tl1627616659_ (##cdr _e1627416654_)))
                                    (if (gx#identifier? _hd1627516657_)
                                        (if (gx#stx-eq?
                                             '%#quote
                                             _hd1627516657_)
                                            (if (gx#stx-pair? _tl1627616659_)
                                                (let ((_e1627716662_
                                                       (gx#stx-e
                                                        _tl1627616659_)))
                                                  (let ((_hd1627816665_
                                                         (##car _e1627716662_))
                                                        (_tl1627916667_
                                                         (##cdr _e1627716662_)))
                                                    (if (gx#stx-null?
                                                         _tl1627916667_)
                                                        (if (gx#stx-pair?
                                                             _tl1627316651_)
                                                            (let ((_e1628016670_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1627316651_)))
                      (let ((_hd1628116673_ (##car _e1628016670_))
                            (_tl1628216675_ (##cdr _e1628016670_)))
                        (if (gx#stx-pair? _hd1628116673_)
                            (let ((_e1628316678_ (gx#stx-e _hd1628116673_)))
                              (let ((_hd1628416681_ (##car _e1628316678_))
                                    (_tl1628516683_ (##cdr _e1628316678_)))
                                (if (gx#identifier? _hd1628416681_)
                                    (if (gx#stx-eq? '%#quote _hd1628416681_)
                                        (if (gx#stx-pair? _tl1628516683_)
                                            (let ((_e1628616686_
                                                   (gx#stx-e _tl1628516683_)))
                                              (let ((_hd1628716689_
                                                     (##car _e1628616686_))
                                                    (_tl1628816691_
                                                     (##cdr _e1628616686_)))
                                                (if (gx#stx-null?
                                                     _tl1628816691_)
                                                    (if (gx#stx-null?
                                                         _tl1628216675_)
                                                        ((lambda (_L16694_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L16695_
                          _L16696_
                          _L16697_
                          _L16698_)
                   (let ((__obj23601 (make-object gxc#!struct-type::t '7)))
                     (begin
                       (gxc#!struct-type:::init!
                        __obj23601
                        (gx#stx-e _L16698_)
                        '#f
                        (gx#stx-e _L16697_)
                        '0
                        (gx#stx-e _L16694_)
                        (gx#stx-e _L16695_))
                       __obj23601)))
                 _hd1628716689_
                 _hd1627816665_
                 _hd1626916641_
                 _hd1626616633_
                 _hd1624816585_)
                (_g1623216561_ _g1623516564_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1623216561_
                                                     _g1623516564_))))
                                            (_g1623216561_ _g1623516564_))
                                        (_g1623216561_ _g1623516564_))
                                    (_g1623216561_ _g1623516564_))))
                            (_g1623216561_ _g1623516564_))))
                    (_g1623216561_ _g1623516564_))
                (_g1623216561_ _g1623516564_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1623216561_ _g1623516564_))
                                            (_g1623216561_ _g1623516564_))
                                        (_g1623216561_ _g1623516564_))))
                                (_g1623216561_ _g1623516564_))))
                        (_g1623216561_ _g1623516564_))))
                (_g1623216561_ _g1623516564_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1623216561_
                                                     _g1623516564_))))
                                            (_g1623216561_ _g1623516564_))
                                        (_g1623216561_ _g1623516564_))
                                    (_g1623216561_ _g1623516564_))))
                            (_g1623216561_ _g1623516564_))))
                    (_g1623216561_ _g1623516564_))
                (_g1623216561_ _g1623516564_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1623216561_
                                                     _g1623516564_))
                                                (_g1623216561_
                                                 _g1623516564_))))
                                        (_g1623216561_ _g1623516564_))
                                    (_g1623216561_ _g1623516564_))
                                (_g1623216561_ _g1623516564_))))
                        (_g1623216561_ _g1623516564_))))
                (_g1623216561_ _g1623516564_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1623216561_
                                                     _g1623516564_))))
                                            (_g1623216561_ _g1623516564_))
                                        (_g1623216561_ _g1623516564_))
                                    (_g1623216561_ _g1623516564_))))
                            (_g1623216561_ _g1623516564_))))
                    (_g1623216561_ _g1623516564_)))))
        (_g1623116741_ _args16230_))))
  (define gxc#basic-expression-type-make-struct-predicate
    (lambda (_stx16155_ _args16156_)
      (let* ((_g1615916175_
              (lambda (_g1616016172_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1616016172_)))
             (_g1615816182_ (lambda (_g1616016178_) ((lambda () '#f))))
             (_g1615716226_
              (lambda (_g1616016185_)
                (if (gx#stx-pair? _g1616016185_)
                    (let ((_e1616216187_ (gx#stx-e _g1616016185_)))
                      (let ((_hd1616316190_ (##car _e1616216187_))
                            (_tl1616416192_ (##cdr _e1616216187_)))
                        (if (gx#stx-pair? _hd1616316190_)
                            (let ((_e1616516195_ (gx#stx-e _hd1616316190_)))
                              (let ((_hd1616616198_ (##car _e1616516195_))
                                    (_tl1616716200_ (##cdr _e1616516195_)))
                                (if (gx#identifier? _hd1616616198_)
                                    (if (gx#stx-eq? '%#ref _hd1616616198_)
                                        (if (gx#stx-pair? _tl1616716200_)
                                            (let ((_e1616816203_
                                                   (gx#stx-e _tl1616716200_)))
                                              (let ((_hd1616916206_
                                                     (##car _e1616816203_))
                                                    (_tl1617016208_
                                                     (##cdr _e1616816203_)))
                                                (if (gx#stx-null?
                                                     _tl1617016208_)
                                                    (if (gx#stx-null?
                                                         _tl1616416192_)
                                                        ((lambda (_L16211_)
                                                           (##structure
                                                            gxc#!struct-pred::t
                                                            (gxc#generate-runtime-binding-id
                                                             _L16211_)))
                                                         _hd1616916206_)
                                                        (_g1615816182_
                                                         _g1616016185_))
                                                    (_g1615816182_
                                                     _g1616016185_))))
                                            (_g1615816182_ _g1616016185_))
                                        (_g1615816182_ _g1616016185_))
                                    (_g1615816182_ _g1616016185_))))
                            (_g1615816182_ _g1616016185_))))
                    (_g1615816182_ _g1616016185_)))))
        (_g1615716226_ _args16156_))))
  (begin
    (define gxc#basic-expression-type-make-struct-field-accessor__opt-lambda16024
      (lambda (_stx16026_ _args16027_ _unchecked?16028_)
        (let* ((_g1603116057_
                (lambda (_g1603216054_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1603216054_)))
               (_g1603016064_ (lambda (_g1603216060_) ((lambda () '#f))))
               (_g1602916140_
                (lambda (_g1603216067_)
                  (if (gx#stx-pair? _g1603216067_)
                      (let ((_e1603516069_ (gx#stx-e _g1603216067_)))
                        (let ((_hd1603616072_ (##car _e1603516069_))
                              (_tl1603716074_ (##cdr _e1603516069_)))
                          (if (gx#stx-pair? _hd1603616072_)
                              (let ((_e1603816077_ (gx#stx-e _hd1603616072_)))
                                (let ((_hd1603916080_ (##car _e1603816077_))
                                      (_tl1604016082_ (##cdr _e1603816077_)))
                                  (if (gx#identifier? _hd1603916080_)
                                      (if (gx#stx-eq? '%#ref _hd1603916080_)
                                          (if (gx#stx-pair? _tl1604016082_)
                                              (let ((_e1604116085_
                                                     (gx#stx-e
                                                      _tl1604016082_)))
                                                (let ((_hd1604216088_
                                                       (##car _e1604116085_))
                                                      (_tl1604316090_
                                                       (##cdr _e1604116085_)))
                                                  (if (gx#stx-null?
                                                       _tl1604316090_)
                                                      (if (gx#stx-pair?
                                                           _tl1603716074_)
                                                          (let ((_e1604416093_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1603716074_)))
                    (let ((_hd1604516096_ (##car _e1604416093_))
                          (_tl1604616098_ (##cdr _e1604416093_)))
                      (if (gx#stx-pair? _hd1604516096_)
                          (let ((_e1604716101_ (gx#stx-e _hd1604516096_)))
                            (let ((_hd1604816104_ (##car _e1604716101_))
                                  (_tl1604916106_ (##cdr _e1604716101_)))
                              (if (gx#identifier? _hd1604816104_)
                                  (if (gx#stx-eq? '%#quote _hd1604816104_)
                                      (if (gx#stx-pair? _tl1604916106_)
                                          (let ((_e1605016109_
                                                 (gx#stx-e _tl1604916106_)))
                                            (let ((_hd1605116112_
                                                   (##car _e1605016109_))
                                                  (_tl1605216114_
                                                   (##cdr _e1605016109_)))
                                              (if (gx#stx-null? _tl1605216114_)
                                                  (if (gx#stx-null?
                                                       _tl1604616098_)
                                                      ((lambda (_L16117_
                                                                _L16118_)
                                                         (##structure
                                                          gxc#!struct-getf::t
                                                          (gxc#generate-runtime-binding-id
                                                           _L16118_)
                                                          (gx#stx-e _L16117_)
                                                          _unchecked?16028_))
                                                       _hd1605116112_
                                                       _hd1604216088_)
                                                      (_g1603016064_
                                                       _g1603216067_))
                                                  (_g1603016064_
                                                   _g1603216067_))))
                                          (_g1603016064_ _g1603216067_))
                                      (_g1603016064_ _g1603216067_))
                                  (_g1603016064_ _g1603216067_))))
                          (_g1603016064_ _g1603216067_))))
                  (_g1603016064_ _g1603216067_))
              (_g1603016064_ _g1603216067_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1603016064_ _g1603216067_))
                                          (_g1603016064_ _g1603216067_))
                                      (_g1603016064_ _g1603216067_))))
                              (_g1603016064_ _g1603216067_))))
                      (_g1603016064_ _g1603216067_)))))
          (_g1602916140_ _args16027_))))
    (begin
      (define gxc#basic-expression-type-make-struct-field-accessor__0
        (lambda (_stx16146_ _args16147_)
          (let ((_unchecked?16149_ '#f))
            (gxc#basic-expression-type-make-struct-field-accessor__opt-lambda16024
             _stx16146_
             _args16147_
             _unchecked?16149_))))
      (define gxc#basic-expression-type-make-struct-field-accessor
        (lambda _g23665_
          (let ((_g23664_ (length _g23665_)))
            (cond ((fx= _g23664_ 2)
                   (apply gxc#basic-expression-type-make-struct-field-accessor__0
                          _g23665_))
                  ((fx= _g23664_ 3)
                   (apply gxc#basic-expression-type-make-struct-field-accessor__opt-lambda16024
                          _g23665_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#basic-expression-type-make-struct-field-accessor
                    _g23665_))))))))
  (begin
    (define gxc#basic-expression-type-make-struct-field-mutator__opt-lambda15894
      (lambda (_stx15896_ _args15897_ _unchecked?15898_)
        (let* ((_g1590115927_
                (lambda (_g1590215924_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1590215924_)))
               (_g1590015934_ (lambda (_g1590215930_) ((lambda () '#f))))
               (_g1589916010_
                (lambda (_g1590215937_)
                  (if (gx#stx-pair? _g1590215937_)
                      (let ((_e1590515939_ (gx#stx-e _g1590215937_)))
                        (let ((_hd1590615942_ (##car _e1590515939_))
                              (_tl1590715944_ (##cdr _e1590515939_)))
                          (if (gx#stx-pair? _hd1590615942_)
                              (let ((_e1590815947_ (gx#stx-e _hd1590615942_)))
                                (let ((_hd1590915950_ (##car _e1590815947_))
                                      (_tl1591015952_ (##cdr _e1590815947_)))
                                  (if (gx#identifier? _hd1590915950_)
                                      (if (gx#stx-eq? '%#ref _hd1590915950_)
                                          (if (gx#stx-pair? _tl1591015952_)
                                              (let ((_e1591115955_
                                                     (gx#stx-e
                                                      _tl1591015952_)))
                                                (let ((_hd1591215958_
                                                       (##car _e1591115955_))
                                                      (_tl1591315960_
                                                       (##cdr _e1591115955_)))
                                                  (if (gx#stx-null?
                                                       _tl1591315960_)
                                                      (if (gx#stx-pair?
                                                           _tl1590715944_)
                                                          (let ((_e1591415963_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1590715944_)))
                    (let ((_hd1591515966_ (##car _e1591415963_))
                          (_tl1591615968_ (##cdr _e1591415963_)))
                      (if (gx#stx-pair? _hd1591515966_)
                          (let ((_e1591715971_ (gx#stx-e _hd1591515966_)))
                            (let ((_hd1591815974_ (##car _e1591715971_))
                                  (_tl1591915976_ (##cdr _e1591715971_)))
                              (if (gx#identifier? _hd1591815974_)
                                  (if (gx#stx-eq? '%#quote _hd1591815974_)
                                      (if (gx#stx-pair? _tl1591915976_)
                                          (let ((_e1592015979_
                                                 (gx#stx-e _tl1591915976_)))
                                            (let ((_hd1592115982_
                                                   (##car _e1592015979_))
                                                  (_tl1592215984_
                                                   (##cdr _e1592015979_)))
                                              (if (gx#stx-null? _tl1592215984_)
                                                  (if (gx#stx-null?
                                                       _tl1591615968_)
                                                      ((lambda (_L15987_
                                                                _L15988_)
                                                         (##structure
                                                          gxc#!struct-setf::t
                                                          (gxc#generate-runtime-binding-id
                                                           _L15988_)
                                                          (gx#stx-e _L15987_)
                                                          _unchecked?15898_))
                                                       _hd1592115982_
                                                       _hd1591215958_)
                                                      (_g1590015934_
                                                       _g1590215937_))
                                                  (_g1590015934_
                                                   _g1590215937_))))
                                          (_g1590015934_ _g1590215937_))
                                      (_g1590015934_ _g1590215937_))
                                  (_g1590015934_ _g1590215937_))))
                          (_g1590015934_ _g1590215937_))))
                  (_g1590015934_ _g1590215937_))
              (_g1590015934_ _g1590215937_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1590015934_ _g1590215937_))
                                          (_g1590015934_ _g1590215937_))
                                      (_g1590015934_ _g1590215937_))))
                              (_g1590015934_ _g1590215937_))))
                      (_g1590015934_ _g1590215937_)))))
          (_g1589916010_ _args15897_))))
    (begin
      (define gxc#basic-expression-type-make-struct-field-mutator__0
        (lambda (_stx16016_ _args16017_)
          (let ((_unchecked?16019_ '#f))
            (gxc#basic-expression-type-make-struct-field-mutator__opt-lambda15894
             _stx16016_
             _args16017_
             _unchecked?16019_))))
      (define gxc#basic-expression-type-make-struct-field-mutator
        (lambda _g23667_
          (let ((_g23666_ (length _g23667_)))
            (cond ((fx= _g23666_ 2)
                   (apply gxc#basic-expression-type-make-struct-field-mutator__0
                          _g23667_))
                  ((fx= _g23666_ 3)
                   (apply gxc#basic-expression-type-make-struct-field-mutator__opt-lambda15894
                          _g23667_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#basic-expression-type-make-struct-field-mutator
                    _g23667_))))))))
  (define gxc#basic-expression-type-make-struct-field-unchecked-accessor
    (lambda (_stx15892_ _args15893_)
      (gxc#basic-expression-type-make-struct-field-accessor__opt-lambda16024
       _stx15892_
       _args15893_
       '#t)))
  (define gxc#basic-expression-type-make-struct-field-unchecked-mutator
    (lambda (_stx15889_ _args15890_)
      (gxc#basic-expression-type-make-struct-field-mutator__opt-lambda15894
       _stx15889_
       _args15890_
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
    (lambda (_stx15838_)
      (let* ((_g1584015853_
              (lambda (_g1584115850_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1584115850_)))
             (_g1583915886_
              (lambda (_g1584115856_)
                (if (gx#stx-pair? _g1584115856_)
                    (let ((_e1584315858_ (gx#stx-e _g1584115856_)))
                      (let ((_hd1584415861_ (##car _e1584315858_))
                            (_tl1584515863_ (##cdr _e1584315858_)))
                        (if (gx#stx-pair? _tl1584515863_)
                            (let ((_e1584615866_ (gx#stx-e _tl1584515863_)))
                              (let ((_hd1584715869_ (##car _e1584615866_))
                                    (_tl1584815871_ (##cdr _e1584615866_)))
                                (if (gx#stx-null? _tl1584815871_)
                                    ((lambda (_L15874_)
                                       (gxc#optimizer-lookup-type
                                        (gxc#generate-runtime-binding-id
                                         _L15874_)))
                                     _hd1584715869_)
                                    (_g1584015853_ _g1584115856_))))
                            (_g1584015853_ _g1584115856_))))
                    (_g1584015853_ _g1584115856_)))))
        (_g1583915886_ _stx15838_))))
  (define gxc#optimize-call%
    (lambda (_stx15744_)
      (let* ((_g1574715767_
              (lambda (_g1574815764_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1574815764_)))
             (_g1574615774_
              (lambda (_g1574815770_)
                ((lambda () (gxc#xform-call% _stx15744_)))))
             (_g1574515835_
              (lambda (_g1574815777_)
                (if (gx#stx-pair? _g1574815777_)
                    (let ((_e1575115779_ (gx#stx-e _g1574815777_)))
                      (let ((_hd1575215782_ (##car _e1575115779_))
                            (_tl1575315784_ (##cdr _e1575115779_)))
                        (if (gx#stx-pair? _tl1575315784_)
                            (let ((_e1575415787_ (gx#stx-e _tl1575315784_)))
                              (let ((_hd1575515790_ (##car _e1575415787_))
                                    (_tl1575615792_ (##cdr _e1575415787_)))
                                (if (gx#stx-pair? _hd1575515790_)
                                    (let ((_e1575715795_
                                           (gx#stx-e _hd1575515790_)))
                                      (let ((_hd1575815798_
                                             (##car _e1575715795_))
                                            (_tl1575915800_
                                             (##cdr _e1575715795_)))
                                        (if (gx#identifier? _hd1575815798_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1575815798_)
                                                (if (gx#stx-pair?
                                                     _tl1575915800_)
                                                    (let ((_e1576015803_
                                                           (gx#stx-e
                                                            _tl1575915800_)))
                                                      (let ((_hd1576115806_
                                                             (##car _e1576015803_))
                                                            (_tl1576215808_
                                                             (##cdr _e1576015803_)))
                                                        (if (gx#stx-null?
                                                             _tl1576215808_)
                                                            ((lambda (_L15811_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L15812_)
                       (let* ((_rator-id15830_
                               (gxc#generate-runtime-binding-id _L15812_))
                              (_rator-type15832_
                               (gxc#optimizer-resolve-type _rator-id15830_)))
                         (if (##structure-instance-of?
                              _rator-type15832_
                              'gxc#!procedure::t)
                             (begin
                               (gxc#verbose
                                '"optimize-call "
                                _rator-id15830_
                                '" => "
                                _rator-type15832_
                                '" "
                                (##structure-ref
                                 _rator-type15832_
                                 '1
                                 gxc#!type::t
                                 '#f))
                               (call-method
                                _rator-type15832_
                                'optimize-call
                                _stx15744_
                                _L15811_))
                             (if (not _rator-type15832_)
                                 (gxc#xform-call% _stx15744_)
                                 (gxc#raise-compile-error
                                  '"Illegal application; not a procedure"
                                  _stx15744_
                                  _rator-type15832_)))))
                     _tl1575615792_
                     _hd1576115806_)
                    (_g1574615774_ _g1574815777_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1574615774_
                                                     _g1574815777_))
                                                (_g1574615774_ _g1574815777_))
                                            (_g1574615774_ _g1574815777_))))
                                    (_g1574615774_ _g1574815777_))))
                            (_g1574615774_ _g1574815777_))))
                    (_g1574615774_ _g1574815777_)))))
        (_g1574515835_ _stx15744_))))
  (define gxc#!struct-pred::optimize-call
    (lambda (_self15598_ _stx15599_ _args15600_)
      (let* ((_self1560115607_ _self15598_)
             (_E1560315611_
              (lambda () (error '"No clause matching" _self1560115607_)))
             (_K1560415736_
              (lambda (_struct-t15614_)
                (let* ((_struct-type15616_
                        (gxc#optimizer-resolve-type _struct-t15614_))
                       (_struct-type1561715631_ _struct-type15616_)
                       (_E1562115635_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1561715631_)))
                       (_else1562015639_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx15599_
                           _struct-t15614_
                           _struct-type15616_)))
                       (_try-match1561915647_
                        (lambda ()
                          (let ((_K1562215644_
                                 (lambda () (gxc#xform-call% _stx15599_))))
                            (if (##eq? _struct-type1561715631_ '#f)
                                (_K1562215644_)
                                (_else1562015639_)))))
                       (_K1562315711_
                        (lambda (_plist15650_ _struct-type-id15651_)
                          (let* ((_g1565415664_
                                  (lambda (_g1565515661_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1565515661_)))
                                 (_g1565315671_
                                  (lambda (_g1565515667_)
                                    ((lambda ()
                                       (gxc#raise-compile-error
                                        '"Illegal struct predicate application"
                                        _stx15599_)))))
                                 (_g1565215708_
                                  (lambda (_g1565515674_)
                                    (if (gx#stx-pair? _g1565515674_)
                                        (let ((_e1565715676_
                                               (gx#stx-e _g1565515674_)))
                                          (let ((_hd1565815679_
                                                 (##car _e1565715676_))
                                                (_tl1565915681_
                                                 (##cdr _e1565715676_)))
                                            (if (gx#stx-null? _tl1565915681_)
                                                ((lambda (_L15684_)
                                                   (let ((_expr15705_
                                                          (gxc#compile-e
                                                           _L15684_))
                                                         (_op15706_
                                                          (if (if _plist15650_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (assgetq 'final: _plist15650_)
                          '#f)
                      '%#struct-direct-instance?
                      '%#struct-instance?)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gxc#xform-wrap-source
                                                      (cons _op15706_
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _struct-type-id15651_ '()))
                          (cons _expr15705_ '())))
              _stx15599_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1565815679_)
                                                (_g1565315671_
                                                 _g1565515674_))))
                                        (_g1565315671_ _g1565515674_)))))
                            (_g1565215708_ _args15600_)))))
                  (if (##structure-instance-of?
                       _struct-type1561715631_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1562415714_
                              (##vector-ref _struct-type1561715631_ '1))
                             (_struct-type-id15717_ _e1562415714_)
                             (_e1562515719_
                              (##vector-ref _struct-type1561715631_ '2))
                             (_e1562615722_
                              (##vector-ref _struct-type1561715631_ '3))
                             (_e1562715725_
                              (##vector-ref _struct-type1561715631_ '4))
                             (_e1562815728_
                              (##vector-ref _struct-type1561715631_ '5))
                             (_e1562915731_
                              (##vector-ref _struct-type1561715631_ '6))
                             (_plist15734_ _e1562915731_))
                        (_K1562315711_ _plist15734_ _struct-type-id15717_))
                      (_try-match1561915647_))))))
        (if (##structure-instance-of?
             _self1560115607_
             (##type-id gxc#!struct-pred::t))
            (let* ((_e1560515739_ (##vector-ref _self1560115607_ '1))
                   (_struct-t15742_ _e1560515739_))
              (_K1560415736_ _struct-t15742_))
            (_E1560315611_)))))
  (bind-method!
   gxc#!struct-pred::t
   'optimize-call
   gxc#!struct-pred::optimize-call
   '#f)
  (define gxc#!struct-cons::optimize-call
    (lambda (_self15372_ _stx15373_ _args15374_)
      (let* ((_self1537515381_ _self15372_)
             (_E1537715385_
              (lambda () (error '"No clause matching" _self1537515381_)))
             (_K1537815468_
              (lambda (_struct-t15388_)
                (let* ((_struct-type15390_
                        (gxc#optimizer-resolve-type _struct-t15388_))
                       (_struct-type1539115404_ _struct-type15390_)
                       (_E1539515408_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1539115404_)))
                       (_else1539415412_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct constructor application; not a struct type"
                           _stx15373_
                           _struct-t15388_
                           _struct-type15390_)))
                       (_try-match1539315420_
                        (lambda ()
                          (let ((_K1539615417_
                                 (lambda ()
                                   (begin
                                     (gxc#verbose
                                      '"cannot inline struct constructor; unknown struct type "
                                      _struct-t15388_)
                                     (gxc#xform-call% _stx15373_)))))
                            (if (##eq? _struct-type1539115404_ '#f)
                                (_K1539615417_)
                                (_else1539415412_)))))
                       (_K1539715442_
                        (lambda (_ctor15423_
                                 _xfields15424_
                                 _fields15425_
                                 _type-id15426_)
                          (let* ((_args15428_ (map gxc#compile-e _args15374_))
                                 (_$e15430_
                                  (if _ctor15423_
                                      (if _xfields15424_
                                          (gxc#!struct-type-lookup-method
                                           _struct-type15390_
                                           _ctor15423_)
                                          '#f)
                                      '#f)))
                            (if _$e15430_
                                ((lambda (_kons15433_)
                                   (let ((_$obj15435_
                                          (make-symbol (gensym '__obj))))
                                     (gxc#xform-wrap-source
                                      (cons '%#let-values
                                            (cons (cons (cons (cons _$obj15435_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (cons '%#call
                                  (cons (cons '%#ref (cons 'make-object '()))
                                        (cons (cons '%#ref
                                                    (cons _struct-t15388_ '()))
                                              (cons (cons '%#quote
                                                          (cons (fx+ _fields15425_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _xfields15424_)
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
                                    (cons (cons '%#ref (cons _kons15433_ '()))
                                          (cons (cons '%#ref
                                                      (cons _$obj15435_ '()))
                                                _args15428_)))
                              _stx15373_))
                            (cons (cons '%#ref (cons _$obj15435_ '())) '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _stx15373_)))
                                 _$e15430_)
                                (if (let ((_$e15437_ _ctor15423_))
                                      (if _$e15437_
                                          _$e15437_
                                          (not _xfields15424_)))
                                    (gxc#xform-wrap-source
                                     (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons 'make-struct-instance
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _struct-t15388_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _args15428_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _stx15373_)
                                    (let ((_arity15440_
                                           (fx+ _fields15425_ _xfields15424_)))
                                      (if (fx= _arity15440_
                                               (length _args15428_))
                                          (gxc#xform-wrap-source
                                           (cons '%#call
                                                 (cons (cons '%#ref
                                                             (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons '%#ref (cons _struct-t15388_ '())) _args15428_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _stx15373_)
                                          (gxc#raise-compile-error
                                           '"Illegal struct constructor application; arity mismatch"
                                           _stx15373_
                                           _struct-t15388_
                                           _arity15440_)))))))))
                  (if (##structure-instance-of?
                       _struct-type1539115404_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1539815445_
                              (##vector-ref _struct-type1539115404_ '1))
                             (_type-id15448_ _e1539815445_)
                             (_e1539915450_
                              (##vector-ref _struct-type1539115404_ '2))
                             (_e1540015453_
                              (##vector-ref _struct-type1539115404_ '3))
                             (_fields15456_ _e1540015453_)
                             (_e1540115458_
                              (##vector-ref _struct-type1539115404_ '4))
                             (_xfields15461_ _e1540115458_)
                             (_e1540215463_
                              (##vector-ref _struct-type1539115404_ '5))
                             (_ctor15466_ _e1540215463_))
                        (_K1539715442_
                         _ctor15466_
                         _xfields15461_
                         _fields15456_
                         _type-id15448_))
                      (_try-match1539315420_))))))
        (if (##structure-instance-of?
             _self1537515381_
             (##type-id gxc#!struct-cons::t))
            (let* ((_e1537915471_ (##vector-ref _self1537515381_ '1))
                   (_struct-t15474_ _e1537915471_))
              (_K1537815468_ _struct-t15474_))
            (_E1537715385_)))))
  (bind-method!
   gxc#!struct-cons::t
   'optimize-call
   gxc#!struct-cons::optimize-call
   '#f)
  (define gxc#!struct-getf::optimize-call
    (lambda (_self15083_ _stx15084_ _args15085_)
      (let* ((_self1508615094_ _self15083_)
             (_E1508815098_
              (lambda () (error '"No clause matching" _self1508615094_)))
             (_K1508915232_
              (lambda (_unchecked?15101_ _off15102_ _struct-t15103_)
                (let* ((_struct-type15105_
                        (gxc#optimizer-resolve-type _struct-t15103_))
                       (_struct-type1510615120_ _struct-type15105_)
                       (_E1511015124_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1510615120_)))
                       (_else1510915128_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx15084_
                           _struct-t15103_
                           _struct-type15105_)))
                       (_try-match1510815136_
                        (lambda ()
                          (let ((_K1511115133_
                                 (lambda () (gxc#xform-call% _stx15084_))))
                            (if (##eq? _struct-type1510615120_ '#f)
                                (_K1511115133_)
                                (_else1510915128_)))))
                       (_K1511215203_
                        (lambda (_plist15139_
                                 _xfields15140_
                                 _fields15141_
                                 _struct-type-id15142_)
                          (if _xfields15140_
                              (let* ((_g1514515155_
                                      (lambda (_g1514615152_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g1514615152_)))
                                     (_g1514415162_
                                      (lambda (_g1514615158_)
                                        ((lambda ()
                                           (gxc#raise-compile-error
                                            '"Illegal struct accessor application"
                                            _stx15084_)))))
                                     (_g1514315200_
                                      (lambda (_g1514615165_)
                                        (if (gx#stx-pair? _g1514615165_)
                                            (let ((_e1514815167_
                                                   (gx#stx-e _g1514615165_)))
                                              (let ((_hd1514915170_
                                                     (##car _e1514815167_))
                                                    (_tl1515015172_
                                                     (##cdr _e1514815167_)))
                                                (if (gx#stx-null?
                                                     _tl1515015172_)
                                                    ((lambda (_L15175_)
                                                       (let ((_expr15196_
                                                              (gxc#compile-e
                                                               _L15175_))
                                                             (_off15197_
                                                              (fx+ _off15102_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xfields15140_
                           '1))
                     (_op15198_
                      (if _unchecked?15101_
                          '%#struct-unchecked-ref
                          (if (if _plist15139_
                                  (assgetq 'final: _plist15139_)
                                  '#f)
                              '%#struct-direct-ref
                              '%#struct-ref))))
                 (gxc#xform-wrap-source
                  (cons _op15198_
                        (cons (cons '%#ref (cons _struct-t15103_ '()))
                              (cons (cons '%#quote (cons _off15197_ '()))
                                    (cons _expr15196_ '()))))
                  _stx15084_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd1514915170_)
                                                    (_g1514415162_
                                                     _g1514615165_))))
                                            (_g1514415162_ _g1514615165_)))))
                                (_g1514315200_ _args15085_))
                              (begin
                                (gxc#verbose
                                 '"struct-getf: incomplete struct "
                                 _struct-type-id15142_)
                                (gxc#xform-call% _stx15084_))))))
                  (if (##structure-instance-of?
                       _struct-type1510615120_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1511315206_
                              (##vector-ref _struct-type1510615120_ '1))
                             (_struct-type-id15209_ _e1511315206_)
                             (_e1511415211_
                              (##vector-ref _struct-type1510615120_ '2))
                             (_e1511515214_
                              (##vector-ref _struct-type1510615120_ '3))
                             (_fields15217_ _e1511515214_)
                             (_e1511615219_
                              (##vector-ref _struct-type1510615120_ '4))
                             (_xfields15222_ _e1511615219_)
                             (_e1511715224_
                              (##vector-ref _struct-type1510615120_ '5))
                             (_e1511815227_
                              (##vector-ref _struct-type1510615120_ '6))
                             (_plist15230_ _e1511815227_))
                        (_K1511215203_
                         _plist15230_
                         _xfields15222_
                         _fields15217_
                         _struct-type-id15209_))
                      (_try-match1510815136_))))))
        (if (##structure-instance-of?
             _self1508615094_
             (##type-id gxc#!struct-getf::t))
            (let* ((_e1509015235_ (##vector-ref _self1508615094_ '1))
                   (_struct-t15238_ _e1509015235_)
                   (_e1509115240_ (##vector-ref _self1508615094_ '2))
                   (_off15243_ _e1509115240_)
                   (_e1509215245_ (##vector-ref _self1508615094_ '3))
                   (_unchecked?15248_ _e1509215245_))
              (_K1508915232_ _unchecked?15248_ _off15243_ _struct-t15238_))
            (_E1508815098_)))))
  (bind-method!
   gxc#!struct-getf::t
   'optimize-call
   gxc#!struct-getf::optimize-call
   '#f)
  (define gxc#!struct-setf::optimize-call
    (lambda (_self14777_ _stx14778_ _args14779_)
      (let* ((_self1478014788_ _self14777_)
             (_E1478214792_
              (lambda () (error '"No clause matching" _self1478014788_)))
             (_K1478314943_
              (lambda (_unchecked?14795_ _off14796_ _struct-t14797_)
                (let* ((_struct-type14799_
                        (gxc#optimizer-resolve-type _struct-t14797_))
                       (_struct-type1480014814_ _struct-type14799_)
                       (_E1480414818_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1480014814_)))
                       (_else1480314822_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx14778_
                           _struct-t14797_
                           _struct-type14799_)))
                       (_try-match1480214830_
                        (lambda ()
                          (let ((_K1480514827_
                                 (lambda () (gxc#xform-call% _stx14778_))))
                            (if (##eq? _struct-type1480014814_ '#f)
                                (_K1480514827_)
                                (_else1480314822_)))))
                       (_K1480614914_
                        (lambda (_plist14833_
                                 _xfields14834_
                                 _fields14835_
                                 _struct-type-id14836_)
                          (if _xfields14834_
                              (let* ((_g1483914853_
                                      (lambda (_g1484014850_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g1484014850_)))
                                     (_g1483814860_
                                      (lambda (_g1484014856_)
                                        ((lambda ()
                                           (gxc#raise-compile-error
                                            '"Illegal struct mutator application"
                                            _stx14778_)))))
                                     (_g1483714911_
                                      (lambda (_g1484014863_)
                                        (if (gx#stx-pair? _g1484014863_)
                                            (let ((_e1484314865_
                                                   (gx#stx-e _g1484014863_)))
                                              (let ((_hd1484414868_
                                                     (##car _e1484314865_))
                                                    (_tl1484514870_
                                                     (##cdr _e1484314865_)))
                                                (if (gx#stx-pair?
                                                     _tl1484514870_)
                                                    (let ((_e1484614873_
                                                           (gx#stx-e
                                                            _tl1484514870_)))
                                                      (let ((_hd1484714876_
                                                             (##car _e1484614873_))
                                                            (_tl1484814878_
                                                             (##cdr _e1484614873_)))
                                                        (if (gx#stx-null?
                                                             _tl1484814878_)
                                                            ((lambda (_L14881_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L14882_)
                       (let ((_expr14906_ (gxc#compile-e _L14882_))
                             (_val14907_ (gxc#compile-e _L14881_))
                             (_off14908_ (fx+ _off14796_ _xfields14834_ '1))
                             (_op14909_
                              (if _unchecked?14795_
                                  '%#struct-unchecked-set!
                                  (if (if _plist14833_
                                          (assgetq 'final: _plist14833_)
                                          '#f)
                                      '%#struct-direct-set!
                                      '%#struct-set!))))
                         (gxc#xform-wrap-source
                          (cons _op14909_
                                (cons (cons '%#ref (cons _struct-t14797_ '()))
                                      (cons (cons '%#quote
                                                  (cons _off14908_ '()))
                                            (cons _expr14906_
                                                  (cons _val14907_ '())))))
                          _stx14778_)))
                     _hd1484714876_
                     _hd1484414868_)
                    (_g1483814860_ _g1484014863_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1483814860_
                                                     _g1484014863_))))
                                            (_g1483814860_ _g1484014863_)))))
                                (_g1483714911_ _args14779_))
                              (begin
                                (gxc#verbose
                                 '"struct-setf: incomplete struct "
                                 _struct-type-id14836_)
                                (gxc#xform-call% _stx14778_))))))
                  (if (##structure-instance-of?
                       _struct-type1480014814_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1480714917_
                              (##vector-ref _struct-type1480014814_ '1))
                             (_struct-type-id14920_ _e1480714917_)
                             (_e1480814922_
                              (##vector-ref _struct-type1480014814_ '2))
                             (_e1480914925_
                              (##vector-ref _struct-type1480014814_ '3))
                             (_fields14928_ _e1480914925_)
                             (_e1481014930_
                              (##vector-ref _struct-type1480014814_ '4))
                             (_xfields14933_ _e1481014930_)
                             (_e1481114935_
                              (##vector-ref _struct-type1480014814_ '5))
                             (_e1481214938_
                              (##vector-ref _struct-type1480014814_ '6))
                             (_plist14941_ _e1481214938_))
                        (_K1480614914_
                         _plist14941_
                         _xfields14933_
                         _fields14928_
                         _struct-type-id14920_))
                      (_try-match1480214830_))))))
        (if (##structure-instance-of?
             _self1478014788_
             (##type-id gxc#!struct-setf::t))
            (let* ((_e1478414946_ (##vector-ref _self1478014788_ '1))
                   (_struct-t14949_ _e1478414946_)
                   (_e1478514951_ (##vector-ref _self1478014788_ '2))
                   (_off14954_ _e1478514951_)
                   (_e1478614956_ (##vector-ref _self1478014788_ '3))
                   (_unchecked?14959_ _e1478614956_))
              (_K1478314943_ _unchecked?14959_ _off14954_ _struct-t14949_))
            (_E1478214792_)))))
  (bind-method!
   gxc#!struct-setf::t
   'optimize-call
   gxc#!struct-setf::optimize-call
   '#f)
  (define gxc#!lambda::optimize-call
    (lambda (_self14611_ _stx14612_ _args14613_)
      (let* ((_self1461414623_ _self14611_)
             (_E1461614627_
              (lambda () (error '"No clause matching" _self1461414623_)))
             (_K1461714634_
              (lambda (_inline14630_ _dispatch14631_ _arity14632_)
                (begin
                  (if (gxc#!lambda-arity-match? _self14611_ _args14613_)
                      '#!void
                      (gxc#raise-compile-error
                       '"Illegal lambda application; arity mismatch"
                       _stx14612_
                       _arity14632_))
                  (if _inline14630_
                      (begin
                        (gxc#verbose '"inline lambda")
                        (gxc#compile-e
                         (gxc#xform-wrap-source
                          (_inline14630_ _stx14612_)
                          _stx14612_)))
                      (if _dispatch14631_
                          (begin
                            (gxc#verbose
                             '"dispatch lambda => "
                             _dispatch14631_)
                            (gxc#compile-e
                             (gxc#xform-wrap-source
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons _dispatch14631_ '()))
                                          _args14613_))
                              _stx14612_)))
                          (gxc#xform-call% _stx14612_)))))))
        (if (##structure-instance-of?
             _self1461414623_
             (##type-id gxc#!lambda::t))
            (let* ((_e1461814637_ (##vector-ref _self1461414623_ '1))
                   (_e1461914640_ (##vector-ref _self1461414623_ '2))
                   (_arity14643_ _e1461914640_)
                   (_e1462014645_ (##vector-ref _self1461414623_ '3))
                   (_dispatch14648_ _e1462014645_)
                   (_e1462114650_ (##vector-ref _self1461414623_ '4))
                   (_inline14653_ _e1462114650_))
              (_K1461714634_ _inline14653_ _dispatch14648_ _arity14643_))
            (_E1461614627_)))))
  (bind-method! gxc#!lambda::t 'optimize-call gxc#!lambda::optimize-call '#f)
  (define gxc#!case-lambda::optimize-call
    (lambda (_self14450_ _stx14451_ _args14452_)
      (let* ((_self1445314460_ _self14450_)
             (_E1445514464_
              (lambda () (error '"No clause matching" _self1445314460_)))
             (_K1445614478_
              (lambda (_clauses14467_)
                (let ((_$e14473_
                       (find (lambda (_g1446814470_)
                               (gxc#!lambda-arity-match?
                                _g1446814470_
                                _args14452_))
                             _clauses14467_)))
                  (if _$e14473_
                      ((lambda (_clause14476_)
                         (call-method
                          _clause14476_
                          'optimize-call
                          _stx14451_
                          _args14452_))
                       _$e14473_)
                      (gxc#raise-compile-error
                       '"Illegal case-lambda application; arity mismatch"
                       _stx14451_
                       (map gxc#!lambda-arity _clauses14467_)))))))
        (if (##structure-instance-of?
             _self1445314460_
             (##type-id gxc#!case-lambda::t))
            (let* ((_e1445714481_ (##vector-ref _self1445314460_ '1))
                   (_e1445814484_ (##vector-ref _self1445314460_ '2))
                   (_clauses14487_ _e1445814484_))
              (_K1445614478_ _clauses14487_))
            (_E1445514464_)))))
  (bind-method!
   gxc#!case-lambda::t
   'optimize-call
   gxc#!case-lambda::optimize-call
   '#f)
  (define gxc#!lambda-arity-match?
    (lambda (_self14264_ _args14265_)
      (let* ((_self1426614273_ _self14264_)
             (_E1426814277_
              (lambda () (error '"No clause matching" _self1426614273_)))
             (_K1426914317_
              (lambda (_arity14280_)
                (let* ((_arity1428114290_ _arity14280_)
                       (_E1428414294_
                        (lambda ()
                          (error '"No clause matching" _arity1428114290_)))
                       (_try-match1428314310_
                        (lambda ()
                          (let ((_K1428514300_
                                 (lambda (_arity14298_)
                                   (fx>= (length _args14265_) _arity14298_))))
                            (if (##pair? _arity1428114290_)
                                (let ((_hd1428614303_
                                       (##car _arity1428114290_))
                                      (_tl1428714305_
                                       (##cdr _arity1428114290_)))
                                  (let ((_arity14308_ _hd1428614303_))
                                    (if (##null? _tl1428714305_)
                                        (_K1428514300_ _arity14308_)
                                        (_E1428414294_))))
                                (_E1428414294_)))))
                       (_K1428814314_
                        (lambda () (fx= (length _args14265_) _arity14280_))))
                  (if (fixnum? _arity1428114290_)
                      (_K1428814314_)
                      (_try-match1428314310_))))))
        (if (##structure-instance-of?
             _self1426614273_
             (##type-id gxc#!lambda::t))
            (let* ((_e1427014320_ (##vector-ref _self1426614273_ '1))
                   (_e1427114323_ (##vector-ref _self1426614273_ '2))
                   (_arity14326_ _e1427114323_))
              (_K1426914317_ _arity14326_))
            (_E1426814277_)))))
  (define gxc#generate-ssxi-module%
    (lambda (_stx14204_)
      (let* ((_g1420614220_
              (lambda (_g1420714217_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1420714217_)))
             (_g1420514261_
              (lambda (_g1420714223_)
                (if (gx#stx-pair? _g1420714223_)
                    (let ((_e1421014225_ (gx#stx-e _g1420714223_)))
                      (let ((_hd1421114228_ (##car _e1421014225_))
                            (_tl1421214230_ (##cdr _e1421014225_)))
                        (if (gx#stx-pair? _tl1421214230_)
                            (let ((_e1421314233_ (gx#stx-e _tl1421214230_)))
                              (let ((_hd1421414236_ (##car _e1421314233_))
                                    (_tl1421514238_ (##cdr _e1421314233_)))
                                ((lambda (_L14241_ _L14242_)
                                   (let* ((_ctx14255_
                                           (gx#syntax-local-e__0 _L14242_))
                                          (_code14257_
                                           (##structure-ref
                                            _ctx14255_
                                            '11
                                            gx#module-context::t
                                            '#f)))
                                     (call-with-parameters
                                      (lambda () (gxc#compile-e _code14257_))
                                      gx#current-expander-context
                                      _ctx14255_)))
                                 _tl1421514238_
                                 _hd1421414236_)))
                            (_g1420614220_ _g1420714223_))))
                    (_g1420614220_ _g1420714223_)))))
        (_g1420514261_ _stx14204_))))
  (define gxc#generate-ssxi-define-values%
    (lambda (_stx14014_)
      (letrec ((_generate-e14016_
                (lambda (_id14193_)
                  (let* ((_sym14195_
                          (if (gx#identifier? (gx#datum->syntax__0 '#f 'id))
                              (gxc#generate-runtime-binding-id _id14193_)
                              '#f))
                         (_$e14197_
                          (if _sym14195_
                              (gxc#optimizer-lookup-type _sym14195_)
                              '#f)))
                    (if _$e14197_
                        ((lambda (_type14200_)
                           (begin
                             (gxc#verbose '"generate typedecl " _sym14195_)
                             (let ((_typedecl14202_
                                    (call-method _type14200_ 'typedecl)))
                               (cons 'declare-type
                                     (cons _sym14195_
                                           (cons _typedecl14202_ '()))))))
                         _$e14197_)
                        '(begin))))))
        (let* ((_g1401914057_
                (lambda (_g1402014054_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1402014054_)))
               (_g1401814138_
                (lambda (_g1402014060_)
                  (if (gx#stx-pair? _g1402014060_)
                      (let ((_e1403514062_ (gx#stx-e _g1402014060_)))
                        (let ((_hd1403614065_ (##car _e1403514062_))
                              (_tl1403714067_ (##cdr _e1403514062_)))
                          (if (gx#stx-pair? _tl1403714067_)
                              (let ((_e1403814070_ (gx#stx-e _tl1403714067_)))
                                (let ((_hd1403914073_ (##car _e1403814070_))
                                      (_tl1404014075_ (##cdr _e1403814070_)))
                                  (if (gx#stx-pair/null? _hd1403914073_)
                                      (if (fx>= (gx#stx-length _hd1403914073_)
                                                '0)
                                          (let ((_g23668_
                                                 (gx#syntax-split-splice
                                                  _hd1403914073_
                                                  '0)))
                                            (begin
                                              (let ((_g23669_
                                                     (values-count _g23668_)))
                                                (if (not (fx= _g23669_ 2))
                                                    (error "Context expects 2 values"
                                                           _g23669_)))
                                              (let ((_target1404114078_
                                                     (values-ref _g23668_ 0))
                                                    (_tl1404314080_
                                                     (values-ref _g23668_ 1)))
                                                (if (gx#stx-null?
                                                     _tl1404314080_)
                                                    (letrec ((_loop1404414083_
                                                              (lambda (_hd1404214086_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _id1404814088_)
                        (if (gx#stx-pair? _hd1404214086_)
                            (let ((_e1404514091_ (gx#stx-e _hd1404214086_)))
                              (let ((_lp-hd1404614094_ (##car _e1404514091_))
                                    (_lp-tl1404714096_ (##cdr _e1404514091_)))
                                (_loop1404414083_
                                 _lp-tl1404714096_
                                 (cons _lp-hd1404614094_ _id1404814088_))))
                            (let ((_id1404914099_ (reverse _id1404814088_)))
                              (if (gx#stx-pair? _tl1404014075_)
                                  (let ((_e1405014102_
                                         (gx#stx-e _tl1404014075_)))
                                    (let ((_hd1405114105_
                                           (##car _e1405014102_))
                                          (_tl1405214107_
                                           (##cdr _e1405014102_)))
                                      (if (gx#stx-null? _tl1405214107_)
                                          ((lambda (_L14110_)
                                             (let ((_types14136_
                                                    (map _generate-e14016_
                                                         (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g1412814131_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g1412914133_)
                             (cons _g1412814131_ _g1412914133_))
                           '()
                           _L14110_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons 'begin _types14136_)))
                                           _id1404914099_)
                                          (_g1401914057_ _g1402014060_))))
                                  (_g1401914057_ _g1402014060_)))))))
              (_loop1404414083_ _target1404114078_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1401914057_
                                                     _g1402014060_)))))
                                          (_g1401914057_ _g1402014060_))
                                      (_g1401914057_ _g1402014060_))))
                              (_g1401914057_ _g1402014060_))))
                      (_g1401914057_ _g1402014060_))))
               (_g1401714190_
                (lambda (_g1402014141_)
                  (if (gx#stx-pair? _g1402014141_)
                      (let ((_e1402214143_ (gx#stx-e _g1402014141_)))
                        (let ((_hd1402314146_ (##car _e1402214143_))
                              (_tl1402414148_ (##cdr _e1402214143_)))
                          (if (gx#stx-pair? _tl1402414148_)
                              (let ((_e1402514151_ (gx#stx-e _tl1402414148_)))
                                (let ((_hd1402614154_ (##car _e1402514151_))
                                      (_tl1402714156_ (##cdr _e1402514151_)))
                                  (if (gx#stx-pair? _hd1402614154_)
                                      (let ((_e1402814159_
                                             (gx#stx-e _hd1402614154_)))
                                        (let ((_hd1402914162_
                                               (##car _e1402814159_))
                                              (_tl1403014164_
                                               (##cdr _e1402814159_)))
                                          (if (gx#stx-null? _tl1403014164_)
                                              (if (gx#stx-pair? _tl1402714156_)
                                                  (let ((_e1403114167_
                                                         (gx#stx-e
                                                          _tl1402714156_)))
                                                    (let ((_hd1403214170_
                                                           (##car _e1403114167_))
                                                          (_tl1403314172_
                                                           (##cdr _e1403114167_)))
                                                      (if (gx#stx-null?
                                                           _tl1403314172_)
                                                          ((lambda (_L14175_)
                                                             (_generate-e14016_
                                                              _L14175_))
                                                           _hd1402914162_)
                                                          (_g1401814138_
                                                           _g1402014141_))))
                                                  (_g1401814138_
                                                   _g1402014141_))
                                              (_g1401814138_ _g1402014141_))))
                                      (_g1401814138_ _g1402014141_))))
                              (_g1401814138_ _g1402014141_))))
                      (_g1401814138_ _g1402014141_)))))
          (_g1401714190_ _stx14014_)))))
  (define gxc#generate-ssxi-call%
    (lambda (_stx13568_)
      (let* ((_g1357213674_
              (lambda (_g1357313671_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1357313671_)))
             (_g1357113681_ (lambda (_g1357313677_) ((lambda () '(begin)))))
             (_g1357013831_
              (lambda (_g1357313684_)
                (if (gx#stx-pair? _g1357313684_)
                    (let ((_e1363113686_ (gx#stx-e _g1357313684_)))
                      (let ((_hd1363213689_ (##car _e1363113686_))
                            (_tl1363313691_ (##cdr _e1363113686_)))
                        (if (gx#stx-pair? _tl1363313691_)
                            (let ((_e1363413694_ (gx#stx-e _tl1363313691_)))
                              (let ((_hd1363513697_ (##car _e1363413694_))
                                    (_tl1363613699_ (##cdr _e1363413694_)))
                                (if (gx#stx-pair? _hd1363513697_)
                                    (let ((_e1363713702_
                                           (gx#stx-e _hd1363513697_)))
                                      (let ((_hd1363813705_
                                             (##car _e1363713702_))
                                            (_tl1363913707_
                                             (##cdr _e1363713702_)))
                                        (if (gx#identifier? _hd1363813705_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1363813705_)
                                                (if (gx#stx-pair?
                                                     _tl1363913707_)
                                                    (let ((_e1364013710_
                                                           (gx#stx-e
                                                            _tl1363913707_)))
                                                      (let ((_hd1364113713_
                                                             (##car _e1364013710_))
                                                            (_tl1364213715_
                                                             (##cdr _e1364013710_)))
                                                        (if (gx#stx-null?
                                                             _tl1364213715_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1363613699_)
                        (let ((_e1364313718_ (gx#stx-e _tl1363613699_)))
                          (let ((_hd1364413721_ (##car _e1364313718_))
                                (_tl1364513723_ (##cdr _e1364313718_)))
                            (if (gx#stx-pair? _hd1364413721_)
                                (let ((_e1364613726_
                                       (gx#stx-e _hd1364413721_)))
                                  (let ((_hd1364713729_ (##car _e1364613726_))
                                        (_tl1364813731_ (##cdr _e1364613726_)))
                                    (if (gx#identifier? _hd1364713729_)
                                        (if (gx#stx-eq? '%#ref _hd1364713729_)
                                            (if (gx#stx-pair? _tl1364813731_)
                                                (let ((_e1364913734_
                                                       (gx#stx-e
                                                        _tl1364813731_)))
                                                  (let ((_hd1365013737_
                                                         (##car _e1364913734_))
                                                        (_tl1365113739_
                                                         (##cdr _e1364913734_)))
                                                    (if (gx#stx-null?
                                                         _tl1365113739_)
                                                        (if (gx#stx-pair?
                                                             _tl1364513723_)
                                                            (let ((_e1365213742_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1364513723_)))
                      (let ((_hd1365313745_ (##car _e1365213742_))
                            (_tl1365413747_ (##cdr _e1365213742_)))
                        (if (gx#stx-pair? _hd1365313745_)
                            (let ((_e1365513750_ (gx#stx-e _hd1365313745_)))
                              (let ((_hd1365613753_ (##car _e1365513750_))
                                    (_tl1365713755_ (##cdr _e1365513750_)))
                                (if (gx#identifier? _hd1365613753_)
                                    (if (gx#stx-eq? '%#quote _hd1365613753_)
                                        (if (gx#stx-pair? _tl1365713755_)
                                            (let ((_e1365813758_
                                                   (gx#stx-e _tl1365713755_)))
                                              (let ((_hd1365913761_
                                                     (##car _e1365813758_))
                                                    (_tl1366013763_
                                                     (##cdr _e1365813758_)))
                                                (if (gx#stx-null?
                                                     _tl1366013763_)
                                                    (if (gx#stx-pair?
                                                         _tl1365413747_)
                                                        (let ((_e1366113766_
                                                               (gx#stx-e
                                                                _tl1365413747_)))
                                                          (let ((_hd1366213769_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1366113766_))
                        (_tl1366313771_ (##cdr _e1366113766_)))
                    (if (gx#stx-pair? _hd1366213769_)
                        (let ((_e1366413774_ (gx#stx-e _hd1366213769_)))
                          (let ((_hd1366513777_ (##car _e1366413774_))
                                (_tl1366613779_ (##cdr _e1366413774_)))
                            (if (gx#identifier? _hd1366513777_)
                                (if (gx#stx-eq? '%#ref _hd1366513777_)
                                    (if (gx#stx-pair? _tl1366613779_)
                                        (let ((_e1366713782_
                                               (gx#stx-e _tl1366613779_)))
                                          (let ((_hd1366813785_
                                                 (##car _e1366713782_))
                                                (_tl1366913787_
                                                 (##cdr _e1366713782_)))
                                            (if (gx#stx-null? _tl1366913787_)
                                                (if (gx#stx-null?
                                                     _tl1366313771_)
                                                    ((lambda (_L13790_
                                                              _L13791_
                                                              _L13792_
                                                              _L13793_)
                                                       (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax__0 '#f '-bind-method))
                        'bind-method!)
                   (cons 'declare-method
                         (cons (gxc#generate-runtime-binding-id _L13792_)
                               (cons (gx#stx-e _L13791_)
                                     (cons (gxc#generate-runtime-binding-id
                                            _L13790_)
                                           (cons '#f '())))))
                   (_g1357113681_ _g1357313684_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd1366813785_
                                                     _hd1365913761_
                                                     _hd1365013737_
                                                     _hd1364113713_)
                                                    (_g1357113681_
                                                     _g1357313684_))
                                                (_g1357113681_
                                                 _g1357313684_))))
                                        (_g1357113681_ _g1357313684_))
                                    (_g1357113681_ _g1357313684_))
                                (_g1357113681_ _g1357313684_))))
                        (_g1357113681_ _g1357313684_))))
                (_g1357113681_ _g1357313684_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1357113681_
                                                     _g1357313684_))))
                                            (_g1357113681_ _g1357313684_))
                                        (_g1357113681_ _g1357313684_))
                                    (_g1357113681_ _g1357313684_))))
                            (_g1357113681_ _g1357313684_))))
                    (_g1357113681_ _g1357313684_))
                (_g1357113681_ _g1357313684_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1357113681_ _g1357313684_))
                                            (_g1357113681_ _g1357313684_))
                                        (_g1357113681_ _g1357313684_))))
                                (_g1357113681_ _g1357313684_))))
                        (_g1357113681_ _g1357313684_))
                    (_g1357113681_ _g1357313684_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1357113681_
                                                     _g1357313684_))
                                                (_g1357113681_ _g1357313684_))
                                            (_g1357113681_ _g1357313684_))))
                                    (_g1357113681_ _g1357313684_))))
                            (_g1357113681_ _g1357313684_))))
                    (_g1357113681_ _g1357313684_))))
             (_g1356914011_
              (lambda (_g1357313834_)
                (if (gx#stx-pair? _g1357313834_)
                    (let ((_e1357913836_ (gx#stx-e _g1357313834_)))
                      (let ((_hd1358013839_ (##car _e1357913836_))
                            (_tl1358113841_ (##cdr _e1357913836_)))
                        (if (gx#stx-pair? _tl1358113841_)
                            (let ((_e1358213844_ (gx#stx-e _tl1358113841_)))
                              (let ((_hd1358313847_ (##car _e1358213844_))
                                    (_tl1358413849_ (##cdr _e1358213844_)))
                                (if (gx#stx-pair? _hd1358313847_)
                                    (let ((_e1358513852_
                                           (gx#stx-e _hd1358313847_)))
                                      (let ((_hd1358613855_
                                             (##car _e1358513852_))
                                            (_tl1358713857_
                                             (##cdr _e1358513852_)))
                                        (if (gx#identifier? _hd1358613855_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1358613855_)
                                                (if (gx#stx-pair?
                                                     _tl1358713857_)
                                                    (let ((_e1358813860_
                                                           (gx#stx-e
                                                            _tl1358713857_)))
                                                      (let ((_hd1358913863_
                                                             (##car _e1358813860_))
                                                            (_tl1359013865_
                                                             (##cdr _e1358813860_)))
                                                        (if (gx#stx-null?
                                                             _tl1359013865_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1358413849_)
                        (let ((_e1359113868_ (gx#stx-e _tl1358413849_)))
                          (let ((_hd1359213871_ (##car _e1359113868_))
                                (_tl1359313873_ (##cdr _e1359113868_)))
                            (if (gx#stx-pair? _hd1359213871_)
                                (let ((_e1359413876_
                                       (gx#stx-e _hd1359213871_)))
                                  (let ((_hd1359513879_ (##car _e1359413876_))
                                        (_tl1359613881_ (##cdr _e1359413876_)))
                                    (if (gx#identifier? _hd1359513879_)
                                        (if (gx#stx-eq? '%#ref _hd1359513879_)
                                            (if (gx#stx-pair? _tl1359613881_)
                                                (let ((_e1359713884_
                                                       (gx#stx-e
                                                        _tl1359613881_)))
                                                  (let ((_hd1359813887_
                                                         (##car _e1359713884_))
                                                        (_tl1359913889_
                                                         (##cdr _e1359713884_)))
                                                    (if (gx#stx-null?
                                                         _tl1359913889_)
                                                        (if (gx#stx-pair?
                                                             _tl1359313873_)
                                                            (let ((_e1360013892_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1359313873_)))
                      (let ((_hd1360113895_ (##car _e1360013892_))
                            (_tl1360213897_ (##cdr _e1360013892_)))
                        (if (gx#stx-pair? _hd1360113895_)
                            (let ((_e1360313900_ (gx#stx-e _hd1360113895_)))
                              (let ((_hd1360413903_ (##car _e1360313900_))
                                    (_tl1360513905_ (##cdr _e1360313900_)))
                                (if (gx#identifier? _hd1360413903_)
                                    (if (gx#stx-eq? '%#quote _hd1360413903_)
                                        (if (gx#stx-pair? _tl1360513905_)
                                            (let ((_e1360613908_
                                                   (gx#stx-e _tl1360513905_)))
                                              (let ((_hd1360713911_
                                                     (##car _e1360613908_))
                                                    (_tl1360813913_
                                                     (##cdr _e1360613908_)))
                                                (if (gx#stx-null?
                                                     _tl1360813913_)
                                                    (if (gx#stx-pair?
                                                         _tl1360213897_)
                                                        (let ((_e1360913916_
                                                               (gx#stx-e
                                                                _tl1360213897_)))
                                                          (let ((_hd1361013919_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1360913916_))
                        (_tl1361113921_ (##cdr _e1360913916_)))
                    (if (gx#stx-pair? _hd1361013919_)
                        (let ((_e1361213924_ (gx#stx-e _hd1361013919_)))
                          (let ((_hd1361313927_ (##car _e1361213924_))
                                (_tl1361413929_ (##cdr _e1361213924_)))
                            (if (gx#identifier? _hd1361313927_)
                                (if (gx#stx-eq? '%#ref _hd1361313927_)
                                    (if (gx#stx-pair? _tl1361413929_)
                                        (let ((_e1361513932_
                                               (gx#stx-e _tl1361413929_)))
                                          (let ((_hd1361613935_
                                                 (##car _e1361513932_))
                                                (_tl1361713937_
                                                 (##cdr _e1361513932_)))
                                            (if (gx#stx-null? _tl1361713937_)
                                                (if (gx#stx-pair?
                                                     _tl1361113921_)
                                                    (let ((_e1361813940_
                                                           (gx#stx-e
                                                            _tl1361113921_)))
                                                      (let ((_hd1361913943_
                                                             (##car _e1361813940_))
                                                            (_tl1362013945_
                                                             (##cdr _e1361813940_)))
                                                        (if (gx#stx-pair?
                                                             _hd1361913943_)
                                                            (let ((_e1362113948_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1361913943_)))
                      (let ((_hd1362213951_ (##car _e1362113948_))
                            (_tl1362313953_ (##cdr _e1362113948_)))
                        (if (gx#identifier? _hd1362213951_)
                            (if (gx#stx-eq? '%#quote _hd1362213951_)
                                (if (gx#stx-pair? _tl1362313953_)
                                    (let ((_e1362413956_
                                           (gx#stx-e _tl1362313953_)))
                                      (let ((_hd1362513959_
                                             (##car _e1362413956_))
                                            (_tl1362613961_
                                             (##cdr _e1362413956_)))
                                        (if (gx#stx-null? _tl1362613961_)
                                            (if (gx#stx-null? _tl1362013945_)
                                                ((lambda (_L13964_
                                                          _L13965_
                                                          _L13966_
                                                          _L13967_
                                                          _L13968_)
                                                   (if (eq? (gxc#generate-runtime-binding-id
                                                             _L13968_)
                                                            'bind-method!)
                                                       (cons 'declare-method
                                                             (cons (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L13967_)
                           (cons (gx#stx-e _L13966_)
                                 (cons (gxc#generate-runtime-binding-id
                                        _L13965_)
                                       (cons (gx#stx-e _L13964_) '())))))
               (_g1357013831_ _g1357313834_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1362513959_
                                                 _hd1361613935_
                                                 _hd1360713911_
                                                 _hd1359813887_
                                                 _hd1358913863_)
                                                (_g1357013831_ _g1357313834_))
                                            (_g1357013831_ _g1357313834_))))
                                    (_g1357013831_ _g1357313834_))
                                (_g1357013831_ _g1357313834_))
                            (_g1357013831_ _g1357313834_))))
                    (_g1357013831_ _g1357313834_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1357013831_
                                                     _g1357313834_))
                                                (_g1357013831_
                                                 _g1357313834_))))
                                        (_g1357013831_ _g1357313834_))
                                    (_g1357013831_ _g1357313834_))
                                (_g1357013831_ _g1357313834_))))
                        (_g1357013831_ _g1357313834_))))
                (_g1357013831_ _g1357313834_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1357013831_
                                                     _g1357313834_))))
                                            (_g1357013831_ _g1357313834_))
                                        (_g1357013831_ _g1357313834_))
                                    (_g1357013831_ _g1357313834_))))
                            (_g1357013831_ _g1357313834_))))
                    (_g1357013831_ _g1357313834_))
                (_g1357013831_ _g1357313834_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1357013831_ _g1357313834_))
                                            (_g1357013831_ _g1357313834_))
                                        (_g1357013831_ _g1357313834_))))
                                (_g1357013831_ _g1357313834_))))
                        (_g1357013831_ _g1357313834_))
                    (_g1357013831_ _g1357313834_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1357013831_
                                                     _g1357313834_))
                                                (_g1357013831_ _g1357313834_))
                                            (_g1357013831_ _g1357313834_))))
                                    (_g1357013831_ _g1357313834_))))
                            (_g1357013831_ _g1357313834_))))
                    (_g1357013831_ _g1357313834_)))))
        (_g1356914011_ _stx13568_))))
  (define gxc#!alias::typedecl
    (lambda (_self13544_)
      (let* ((_self1354513551_ _self13544_)
             (_E1354713555_
              (lambda () (error '"No clause matching" _self1354513551_)))
             (_K1354813560_
              (lambda (_alias-id13558_)
                (cons '@alias (cons _alias-id13558_ '())))))
        (if (##structure-instance-of?
             _self1354513551_
             (##type-id gxc#!alias::t))
            (let* ((_e1354913563_ (##vector-ref _self1354513551_ '1))
                   (_alias-id13566_ _e1354913563_))
              (_K1354813560_ _alias-id13566_))
            (_E1354713555_)))))
  (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f)
  (define gxc#!struct-type::typedecl
    (lambda (_self13366_)
      (let* ((_self1336713378_ _self13366_)
             (_E1336913382_
              (lambda () (error '"No clause matching" _self1336713378_)))
             (_K1337013391_
              (lambda (_plist13385_
                       _ctor13386_
                       _fields13387_
                       _super13388_
                       _type-id13389_)
                (cons '@struct-type
                      (cons _type-id13389_
                            (cons _super13388_
                                  (cons _fields13387_
                                        (cons _ctor13386_
                                              (cons _plist13385_ '())))))))))
        (if (##structure-instance-of?
             _self1336713378_
             (##type-id gxc#!struct-type::t))
            (let* ((_e1337113394_ (##vector-ref _self1336713378_ '1))
                   (_type-id13397_ _e1337113394_)
                   (_e1337213399_ (##vector-ref _self1336713378_ '2))
                   (_super13402_ _e1337213399_)
                   (_e1337313404_ (##vector-ref _self1336713378_ '3))
                   (_fields13407_ _e1337313404_)
                   (_e1337413409_ (##vector-ref _self1336713378_ '4))
                   (_e1337513412_ (##vector-ref _self1336713378_ '5))
                   (_ctor13415_ _e1337513412_)
                   (_e1337613417_ (##vector-ref _self1336713378_ '6))
                   (_plist13420_ _e1337613417_))
              (_K1337013391_
               _plist13420_
               _ctor13415_
               _fields13407_
               _super13402_
               _type-id13397_))
            (_E1336913382_)))))
  (bind-method! gxc#!struct-type::t 'typedecl gxc#!struct-type::typedecl '#f)
  (define gxc#!struct-pred::typedecl
    (lambda (_self13220_)
      (let* ((_self1322113227_ _self13220_)
             (_E1322313231_
              (lambda () (error '"No clause matching" _self1322113227_)))
             (_K1322413236_
              (lambda (_struct-t13234_)
                (cons '@struct-pred (cons _struct-t13234_ '())))))
        (if (##structure-instance-of?
             _self1322113227_
             (##type-id gxc#!struct-pred::t))
            (let* ((_e1322513239_ (##vector-ref _self1322113227_ '1))
                   (_struct-t13242_ _e1322513239_))
              (_K1322413236_ _struct-t13242_))
            (_E1322313231_)))))
  (bind-method! gxc#!struct-pred::t 'typedecl gxc#!struct-pred::typedecl '#f)
  (define gxc#!struct-cons::typedecl
    (lambda (_self13074_)
      (let* ((_self1307513081_ _self13074_)
             (_E1307713085_
              (lambda () (error '"No clause matching" _self1307513081_)))
             (_K1307813090_
              (lambda (_struct-t13088_)
                (cons '@struct-cons (cons _struct-t13088_ '())))))
        (if (##structure-instance-of?
             _self1307513081_
             (##type-id gxc#!struct-cons::t))
            (let* ((_e1307913093_ (##vector-ref _self1307513081_ '1))
                   (_struct-t13096_ _e1307913093_))
              (_K1307813090_ _struct-t13096_))
            (_E1307713085_)))))
  (bind-method! gxc#!struct-cons::t 'typedecl gxc#!struct-cons::typedecl '#f)
  (define gxc#!struct-getf::typedecl
    (lambda (_self12914_)
      (let* ((_self1291512923_ _self12914_)
             (_E1291712927_
              (lambda () (error '"No clause matching" _self1291512923_)))
             (_K1291812934_
              (lambda (_unchecked?12930_ _off12931_ _struct-t12932_)
                (cons '@struct-getf
                      (cons _struct-t12932_
                            (cons _off12931_ (cons _unchecked?12930_ '())))))))
        (if (##structure-instance-of?
             _self1291512923_
             (##type-id gxc#!struct-getf::t))
            (let* ((_e1291912937_ (##vector-ref _self1291512923_ '1))
                   (_struct-t12940_ _e1291912937_)
                   (_e1292012942_ (##vector-ref _self1291512923_ '2))
                   (_off12945_ _e1292012942_)
                   (_e1292112947_ (##vector-ref _self1291512923_ '3))
                   (_unchecked?12950_ _e1292112947_))
              (_K1291812934_ _unchecked?12950_ _off12945_ _struct-t12940_))
            (_E1291712927_)))))
  (bind-method! gxc#!struct-getf::t 'typedecl gxc#!struct-getf::typedecl '#f)
  (define gxc#!struct-setf::typedecl
    (lambda (_self12754_)
      (let* ((_self1275512763_ _self12754_)
             (_E1275712767_
              (lambda () (error '"No clause matching" _self1275512763_)))
             (_K1275812774_
              (lambda (_unchecked?12770_ _off12771_ _struct-t12772_)
                (cons '@struct-setf
                      (cons _struct-t12772_
                            (cons _off12771_ (cons _unchecked?12770_ '())))))))
        (if (##structure-instance-of?
             _self1275512763_
             (##type-id gxc#!struct-setf::t))
            (let* ((_e1275912777_ (##vector-ref _self1275512763_ '1))
                   (_struct-t12780_ _e1275912777_)
                   (_e1276012782_ (##vector-ref _self1275512763_ '2))
                   (_off12785_ _e1276012782_)
                   (_e1276112787_ (##vector-ref _self1275512763_ '3))
                   (_unchecked?12790_ _e1276112787_))
              (_K1275812774_ _unchecked?12790_ _off12785_ _struct-t12780_))
            (_E1275712767_)))))
  (bind-method! gxc#!struct-setf::t 'typedecl gxc#!struct-setf::typedecl '#f)
  (define gxc#!lambda::typedecl
    (lambda (_self12580_)
      (let* ((_self1258112591_ _self12580_)
             (_E1258312595_
              (lambda () (error '"No clause matching" _self1258112591_)))
             (_K1258412606_
              (lambda (_typedecl12598_
                       _inline12599_
                       _dispatch12600_
                       _arity12601_)
                (if _inline12599_
                    (let ((_$e12603_ _typedecl12598_))
                      (if _$e12603_
                          _$e12603_
                          (error '"Cannot generate typedecl for inline rules")))
                    (cons '@lambda
                          (cons _arity12601_ (cons _dispatch12600_ '())))))))
        (if (##structure-instance-of?
             _self1258112591_
             (##type-id gxc#!lambda::t))
            (let* ((_e1258512609_ (##vector-ref _self1258112591_ '1))
                   (_e1258612612_ (##vector-ref _self1258112591_ '2))
                   (_arity12615_ _e1258612612_)
                   (_e1258712617_ (##vector-ref _self1258112591_ '3))
                   (_dispatch12620_ _e1258712617_)
                   (_e1258812622_ (##vector-ref _self1258112591_ '4))
                   (_inline12625_ _e1258812622_)
                   (_e1258912627_ (##vector-ref _self1258112591_ '5))
                   (_typedecl12630_ _e1258912627_))
              (_K1258412606_
               _typedecl12630_
               _inline12625_
               _dispatch12620_
               _arity12615_))
            (_E1258312595_)))))
  (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f)
  (define gxc#!case-lambda::typedecl
    (lambda (_self12391_)
      (letrec ((_clause-e12393_
                (lambda (_clause12423_)
                  (let* ((_clause1242412432_ _clause12423_)
                         (_E1242612436_
                          (lambda ()
                            (error '"No clause matching" _clause1242412432_)))
                         (_K1242712442_
                          (lambda (_dispatch12439_ _arity12440_)
                            (cons _arity12440_ (cons _dispatch12439_ '())))))
                    (if (##structure-instance-of?
                         _clause1242412432_
                         (##type-id gxc#!lambda::t))
                        (let* ((_e1242812445_
                                (##vector-ref _clause1242412432_ '1))
                               (_e1242912448_
                                (##vector-ref _clause1242412432_ '2))
                               (_arity12451_ _e1242912448_)
                               (_e1243012453_
                                (##vector-ref _clause1242412432_ '3))
                               (_dispatch12456_ _e1243012453_))
                          (_K1242712442_ _dispatch12456_ _arity12451_))
                        (_E1242612436_))))))
        (let* ((_self1239412401_ _self12391_)
               (_E1239612405_
                (lambda () (error '"No clause matching" _self1239412401_)))
               (_K1239712412_
                (lambda (_clauses12408_)
                  (let ((_clauses12410_ (map _clause-e12393_ _clauses12408_)))
                    (cons '@case-lambda _clauses12410_)))))
          (if (##structure-instance-of?
               _self1239412401_
               (##type-id gxc#!case-lambda::t))
              (let* ((_e1239812415_ (##vector-ref _self1239412401_ '1))
                     (_e1239912418_ (##vector-ref _self1239412401_ '2))
                     (_clauses12421_ _e1239912418_))
                (_K1239712412_ _clauses12421_))
              (_E1239612405_))))))
  (bind-method! gxc#!case-lambda::t 'typedecl gxc#!case-lambda::typedecl '#f)
  (define gxc#identifier-symbol
    (lambda (_stx12267_) (gxc#generate-runtime-binding-id _stx12267_))))
