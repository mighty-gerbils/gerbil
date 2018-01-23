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
    (lambda _$args23579_
      (apply make-struct-instance gxc#optimizer-info::t _$args23579_)))
  (define gxc#optimizer-info-type
    (make-struct-field-accessor gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi
    (make-struct-field-accessor gxc#optimizer-info::t '1))
  (define gxc#optimizer-info-type-set!
    (make-struct-field-mutator gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi-set!
    (make-struct-field-mutator gxc#optimizer-info::t '1))
  (define gxc#optimizer-info:::init!
    (lambda (_self23577_)
      (if (##fx< '2 (##vector-length _self23577_))
          (begin
            (##vector-set! _self23577_ '1 (make-hash-table-eq))
            (##vector-set! _self23577_ '2 (make-hash-table-eq)))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self23577_))))
  (bind-method! gxc#optimizer-info::t ':init! gxc#optimizer-info:::init! '#f)
  (define gxc#optimizer-info-init!
    (lambda ()
      (if (gxc#current-compile-optimizer-info)
          '#!void
          (gxc#current-compile-optimizer-info
           (let ((__obj23591 (make-object gxc#optimizer-info::t '2)))
             (begin (gxc#optimizer-info:::init! __obj23591) __obj23591))))))
  (define gxc#optimize!
    (lambda (_ctx23449_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#optimizer-load-ssxi-deps _ctx23449_)
           (table-set!
            (##structure-ref
             (gxc#current-compile-optimizer-info)
             '2
             gxc#optimizer-info::t
             '#f)
            (##structure-ref _ctx23449_ '1 gx#expander-context::t '#f)
            '#t)
           (let ((_code23452_
                  (gxc#optimize-source
                   (##structure-ref _ctx23449_ '11 gx#module-context::t '#f))))
             (##structure-set!
              _ctx23449_
              _code23452_
              '11
              gx#module-context::t
              '#f))))
       gxc#current-compile-mutators
       (make-hash-table-eq)
       gxc#current-compile-local-type
       (make-hash-table-eq))))
  (define gxc#optimizer-load-ssxi-deps
    (lambda (_ctx23394_)
      (letrec* ((_deps23396_
                 (let* ((_imports23440_
                         (##structure-ref
                          _ctx23394_
                          '8
                          gx#module-context::t
                          '#f))
                        (_$e23442_
                         (gx#core-context-prelude__opt-lambda13129
                          _ctx23394_)))
                   (if _$e23442_
                       ((lambda (_g2344423446_)
                          (cons _g2344423446_ _imports23440_))
                        _$e23442_)
                       _imports23440_))))
        (let _lp23398_ ((_rest23400_ _deps23396_))
          (let* ((_rest2340123409_ _rest23400_)
                 (_E2340423413_
                  (lambda () (error '"No clause matching" _rest2340123409_)))
                 (_else2340323417_ (lambda () '#!void))
                 (_K2340523428_
                  (lambda (_rest23420_ _hd23421_)
                    (if (##structure-instance-of?
                         _hd23421_
                         'gx#module-context::t)
                        (begin
                          (if (table-ref
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)
                               (##structure-ref
                                _hd23421_
                                '1
                                gx#expander-context::t
                                '#f)
                               '#f)
                              '#!void
                              (begin
                                (let ((_$e23423_
                                       (gx#core-context-prelude__opt-lambda13129
                                        _hd23421_)))
                                  (if _$e23423_
                                      ((lambda (_pre23426_)
                                         (_lp23398_
                                          (cons _pre23426_
                                                (##structure-ref
                                                 _hd23421_
                                                 '8
                                                 gx#module-context::t
                                                 '#f))))
                                       _$e23423_)
                                      (_lp23398_
                                       (##structure-ref
                                        _hd23421_
                                        '8
                                        gx#module-context::t
                                        '#f))))
                                (gxc#optimizer-load-ssxi _hd23421_)))
                          (_lp23398_ _rest23420_))
                        (if (##structure-instance-of?
                             _hd23421_
                             'gx#prelude-context::t)
                            (begin
                              (if (table-ref
                                   (##structure-ref
                                    (gxc#current-compile-optimizer-info)
                                    '2
                                    gxc#optimizer-info::t
                                    '#f)
                                   (##structure-ref
                                    _hd23421_
                                    '1
                                    gx#expander-context::t
                                    '#f)
                                   '#f)
                                  '#!void
                                  (begin
                                    (_lp23398_
                                     (##structure-ref
                                      _hd23421_
                                      '7
                                      gx#prelude-context::t
                                      '#f))
                                    (gxc#optimizer-load-ssxi _hd23421_)))
                              (_lp23398_ _rest23420_))
                            (if (##structure-direct-instance-of?
                                 _hd23421_
                                 'gx#module-import::t)
                                (_lp23398_
                                 (cons (##direct-structure-ref
                                        _hd23421_
                                        '1
                                        gx#module-import::t
                                        '#f)
                                       _rest23420_))
                                (if (##structure-direct-instance-of?
                                     _hd23421_
                                     'gx#module-export::t)
                                    (_lp23398_
                                     (cons (##direct-structure-ref
                                            _hd23421_
                                            '1
                                            gx#module-export::t
                                            '#f)
                                           _rest23420_))
                                    (if (##structure-direct-instance-of?
                                         _hd23421_
                                         'gx#import-set::t)
                                        (_lp23398_
                                         (cons (##direct-structure-ref
                                                _hd23421_
                                                '1
                                                gx#import-set::t
                                                '#f)
                                               _rest23420_))
                                        (error '"Unexpected module import"
                                               _hd23421_)))))))))
            (if (##pair? _rest2340123409_)
                (let ((_hd2340623431_ (##car _rest2340123409_))
                      (_tl2340723433_ (##cdr _rest2340123409_)))
                  (let* ((_hd23436_ _hd2340623431_)
                         (_rest23438_ _tl2340723433_))
                    (_K2340523428_ _rest23438_ _hd23436_)))
                (_else2340323417_)))))))
  (define gxc#optimizer-load-ssxi
    (lambda (_ctx23374_)
      (if (if (##structure-instance-of? _ctx23374_ 'gx#module-context::t)
              (list? (##structure-ref _ctx23374_ '7 gx#module-context::t '#f))
              '#f)
          '#!void
          (let* ((_ht23376_
                  (##structure-ref
                   (gxc#current-compile-optimizer-info)
                   '2
                   gxc#optimizer-info::t
                   '#f))
                 (_id23378_
                  (##structure-ref _ctx23374_ '1 gx#expander-context::t '#f))
                 (_mod23380_ (table-ref _ht23376_ _id23378_ '#f)))
            (let ((_$e23383_ _mod23380_))
              (if _$e23383_
                  _$e23383_
                  (let* ((_mod23386_ (gxc#optimizer-import-ssxi _ctx23374_))
                         (_val23391_
                          (let ((_$e23388_ _mod23386_))
                            (if _$e23388_ _$e23388_ '#!void))))
                    (begin
                      (table-set! _ht23376_ _id23378_ _val23391_)
                      _val23391_))))))))
  (define gxc#optimizer-import-ssxi
    (lambda (_ctx23351_)
      (letrec ((_catch-e23353_
                (lambda (_exn23372_)
                  (begin
                    (if (gxc#current-compile-verbose)
                        (begin
                          (displayln
                           '"Failed to load ssxi module for "
                           (##structure-ref
                            _ctx23351_
                            '1
                            gx#expander-context::t
                            '#f))
                          (display-exception _exn23372_))
                        '#!void)
                    '#f)))
               (_import-e23354_
                (lambda ()
                  (let* ((_str-id23357_
                          (string-append
                           (symbol->string
                            (##structure-ref
                             _ctx23351_
                             '1
                             gx#expander-context::t
                             '#f))
                           '".ssxi"))
                         (_artefact-path23365_
                          (let ((_odir2335823360_
                                 (gxc#current-compile-output-dir)))
                            (if _odir2335823360_
                                (let ((_odir23363_ _odir2335823360_))
                                  (path-expand
                                   (string-append _str-id23357_ '".ss")
                                   _odir23363_))
                                '#f)))
                         (_library-path23367_
                          (string->symbol
                           (string-append '":" _str-id23357_ '".ss")))
                         (_ssxi-path23369_
                          (if (if _artefact-path23365_
                                  (file-exists? _artefact-path23365_)
                                  '#f)
                              _artefact-path23365_
                              _library-path23367_)))
                    (begin
                      (gxc#verbose '"Loading ssxi module " _ssxi-path23369_)
                      (gx#import-module__opt-lambda13164
                       _ssxi-path23369_
                       '#t
                       '#t))))))
        (if (##structure-ref _ctx23351_ '1 gx#expander-context::t '#f)
            (with-exception-catcher _catch-e23353_ _import-e23354_)
            '#f))))
  (define gxc#!type::t (make-struct-type 'gxc#!type::t '#f '1 '!type '() '#f))
  (define gxc#!type? (make-struct-predicate gxc#!type::t))
  (define gxc#make-!type
    (lambda _$args23348_
      (apply make-struct-instance gxc#!type::t _$args23348_)))
  (define gxc#!type-id (make-struct-field-accessor gxc#!type::t '0))
  (define gxc#!type-id-set! (make-struct-field-mutator gxc#!type::t '0))
  (define gxc#!alias::t
    (make-struct-type 'gxc#!alias::t gxc#!type::t '0 '!alias '() '#f))
  (define gxc#!alias? (make-struct-predicate gxc#!alias::t))
  (define gxc#make-!alias
    (lambda _$args23345_
      (apply make-struct-instance gxc#!alias::t _$args23345_)))
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
    (lambda _$args23342_
      (apply make-struct-instance gxc#!struct-type::t _$args23342_)))
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
    (lambda _$args23339_
      (apply make-struct-instance gxc#!procedure::t _$args23339_)))
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
    (lambda _$args23336_
      (apply make-struct-instance gxc#!struct-pred::t _$args23336_)))
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
    (lambda _$args23333_
      (apply make-struct-instance gxc#!struct-cons::t _$args23333_)))
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
    (lambda _$args23330_
      (apply make-struct-instance gxc#!struct-getf::t _$args23330_)))
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
    (lambda _$args23327_
      (apply make-struct-instance gxc#!struct-setf::t _$args23327_)))
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
    (lambda _$args23324_
      (apply make-struct-instance gxc#!lambda::t _$args23324_)))
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
    (lambda _$args23321_
      (apply make-struct-instance gxc#!case-lambda::t _$args23321_)))
  (define gxc#!case-lambda-clauses
    (make-struct-field-accessor gxc#!case-lambda::t '0))
  (define gxc#!case-lambda-clauses-set!
    (make-struct-field-mutator gxc#!case-lambda::t '0))
  (define gxc#!struct-type:::init!
    (lambda (_self23313_
             _id23314_
             _super23315_
             _fields23316_
             _xfields23317_
             _ctor23318_
             _plist23319_)
      (if (##fx< '7 (##vector-length _self23313_))
          (begin
            (##vector-set! _self23313_ '1 _id23314_)
            (##vector-set! _self23313_ '2 _super23315_)
            (##vector-set! _self23313_ '3 _fields23316_)
            (##vector-set! _self23313_ '4 _xfields23317_)
            (##vector-set! _self23313_ '5 _ctor23318_)
            (##vector-set! _self23313_ '6 _plist23319_)
            (##vector-set! _self23313_ '7 '#f))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self23313_))))
  (bind-method! gxc#!struct-type::t ':init! gxc#!struct-type:::init! '#f)
  (begin
    (define gxc#!lambda:::init!__opt-lambda23155
      (lambda (_self23157_
               _id23158_
               _arity23159_
               _dispatch23160_
               _inline23161_
               _typedecl23162_)
        (if (##fx< '5 (##vector-length _self23157_))
            (begin
              (##vector-set! _self23157_ '1 _id23158_)
              (##vector-set! _self23157_ '2 _arity23159_)
              (##vector-set! _self23157_ '3 _dispatch23160_)
              (##vector-set! _self23157_ '4 _inline23161_)
              (##vector-set! _self23157_ '5 _typedecl23162_))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self23157_))))
    (begin
      (define gxc#!lambda:::init!__0
        (lambda (_self23167_ _id23168_ _arity23169_ _dispatch23170_)
          (let* ((_inline23172_ '#f) (_typedecl23174_ '#f))
            (if (##fx< '5 (##vector-length _self23167_))
                (begin
                  (##vector-set! _self23167_ '1 _id23168_)
                  (##vector-set! _self23167_ '2 _arity23169_)
                  (##vector-set! _self23167_ '3 _dispatch23170_)
                  (##vector-set! _self23167_ '4 _inline23172_)
                  (##vector-set! _self23167_ '5 _typedecl23174_))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self23167_)))))
      (define gxc#!lambda:::init!__1
        (lambda (_self23176_
                 _id23177_
                 _arity23178_
                 _dispatch23179_
                 _inline23180_)
          (let ((_typedecl23182_ '#f))
            (if (##fx< '5 (##vector-length _self23176_))
                (begin
                  (##vector-set! _self23176_ '1 _id23177_)
                  (##vector-set! _self23176_ '2 _arity23178_)
                  (##vector-set! _self23176_ '3 _dispatch23179_)
                  (##vector-set! _self23176_ '4 _inline23180_)
                  (##vector-set! _self23176_ '5 _typedecl23182_))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self23176_)))))
      (define gxc#!lambda:::init!
        (lambda _g23599_
          (let ((_g23598_ (length _g23599_)))
            (cond ((fx= _g23598_ 4) (apply gxc#!lambda:::init!__0 _g23599_))
                  ((fx= _g23598_ 5) (apply gxc#!lambda:::init!__1 _g23599_))
                  ((fx= _g23598_ 6)
                   (apply (lambda (_self23184_
                                   _id23185_
                                   _arity23186_
                                   _dispatch23187_
                                   _inline23188_
                                   _typedecl23189_)
                            (if (##fx< '5 (##vector-length _self23184_))
                                (begin
                                  (##vector-set! _self23184_ '1 _id23185_)
                                  (##vector-set! _self23184_ '2 _arity23186_)
                                  (##vector-set!
                                   _self23184_
                                   '3
                                   _dispatch23187_)
                                  (##vector-set! _self23184_ '4 _inline23188_)
                                  (##vector-set!
                                   _self23184_
                                   '5
                                   _typedecl23189_))
                                (error '"struct-instance-init!: too many arguments for struct"
                                       _self23184_)))
                          _g23599_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#!lambda:::init!
                    _g23599_))))))))
  (bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f)
  (define gxc#!struct-type-vtab
    (lambda (_type23027_)
      (let ((_$e23029_
             (##structure-ref _type23027_ '7 gxc#!struct-type::t '#f)))
        (if _$e23029_
            (values _$e23029_)
            (let ((_vtab23032_ (make-hash-table-eq)))
              (begin
                (##structure-set!
                 _type23027_
                 _vtab23032_
                 '7
                 gxc#!struct-type::t
                 '#f)
                _vtab23032_))))))
  (define gxc#!struct-type-lookup-method
    (lambda (_type23018_ _method23019_)
      (let ((_vtab2302023022_
             (##structure-ref _type23018_ '7 gxc#!struct-type::t '#f)))
        (if _vtab2302023022_
            (let ((_vtab23025_ _vtab2302023022_))
              (table-ref _vtab23025_ _method23019_ '#f))
            '#f))))
  (begin
    (define gxc#optimizer-declare-type!__opt-lambda23000
      (lambda (_sym23002_ _type23003_ _local?23004_)
        (begin
          (if (##structure-instance-of? _type23003_ 'gxc#!type::t)
              '#!void
              (error '"bad declaration: expected !type"
                     _sym23002_
                     _type23003_))
          (gxc#verbose
           '"declare-type "
           _sym23002_
           '" "
           (struct->list _type23003_))
          (table-set!
           (if _local?23004_
               (gxc#current-compile-local-type)
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '1
                gxc#optimizer-info::t
                '#f))
           _sym23002_
           _type23003_))))
    (begin
      (define gxc#optimizer-declare-type!__0
        (lambda (_sym23009_ _type23010_)
          (let ((_local?23012_ '#f))
            (gxc#optimizer-declare-type!__opt-lambda23000
             _sym23009_
             _type23010_
             _local?23012_))))
      (define gxc#optimizer-declare-type!
        (lambda _g23601_
          (let ((_g23600_ (length _g23601_)))
            (cond ((fx= _g23600_ 2)
                   (apply gxc#optimizer-declare-type!__0 _g23601_))
                  ((fx= _g23600_ 3)
                   (apply gxc#optimizer-declare-type!__opt-lambda23000
                          _g23601_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-declare-type!
                    _g23601_))))))))
  (begin
    (define gxc#optimizer-declare-method!__opt-lambda22976
      (lambda (_type-t22978_ _method22979_ _sym22980_ _rebind?22981_)
        (let ((_type22983_ (gxc#optimizer-resolve-type _type-t22978_)))
          (if (##structure-instance-of? _type22983_ 'gxc#!struct-type::t)
              (let ((_vtab22985_ (gxc#!struct-type-vtab _type22983_)))
                (if _rebind?22981_
                    (if (hash-key? _vtab22985_ _method22979_)
                        (gxc#verbose
                         '"declare-method: [warning] skip rebind on existing method"
                         _type-t22978_
                         '" "
                         _method22979_)
                        (gxc#verbose
                         '"declare-method: skip rebind method "
                         _type-t22978_
                         '" "
                         _method22979_))
                    (if (hash-key? _vtab22985_ _method22979_)
                        (error '"declare-method: duplicate method declaration")
                        (begin
                          (gxc#verbose
                           '"declare-method "
                           _type-t22978_
                           '" "
                           _method22979_
                           '" => "
                           _sym22980_)
                          (table-set! _vtab22985_ _method22979_ _sym22980_)))))
              (if (not _type22983_)
                  (gxc#verbose '"declare-method: unknown type " _type-t22978_)
                  (error '"declare-method: bad method declaration; no method table"
                         _type-t22978_
                         _type22983_))))))
    (begin
      (define gxc#optimizer-declare-method!__0
        (lambda (_type-t22990_ _method22991_ _sym22992_)
          (let ((_rebind?22994_ '#f))
            (gxc#optimizer-declare-method!__opt-lambda22976
             _type-t22990_
             _method22991_
             _sym22992_
             _rebind?22994_))))
      (define gxc#optimizer-declare-method!
        (lambda _g23603_
          (let ((_g23602_ (length _g23603_)))
            (cond ((fx= _g23602_ 3)
                   (apply gxc#optimizer-declare-method!__0 _g23603_))
                  ((fx= _g23602_ 4)
                   (apply gxc#optimizer-declare-method!__opt-lambda22976
                          _g23603_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-declare-method!
                    _g23603_))))))))
  (define gxc#optimizer-lookup-type
    (lambda (_sym22966_)
      (let ((_$e22974_
             (let ((_ht2296722969_ (gxc#current-compile-local-type)))
               (if _ht2296722969_
                   (let ((_ht22972_ _ht2296722969_))
                     (table-ref _ht22972_ _sym22966_ '#f))
                   '#f))))
        (if _$e22974_
            _$e22974_
            (table-ref
             (##structure-ref
              (gxc#current-compile-optimizer-info)
              '1
              gxc#optimizer-info::t
              '#f)
             _sym22966_
             '#f)))))
  (define gxc#optimizer-resolve-type
    (lambda (_sym22958_)
      (let ((_type2295922961_ (gxc#optimizer-lookup-type _sym22958_)))
        (if _type2295922961_
            (let ((_type22964_ _type2295922961_))
              (if (##structure-instance-of? _type22964_ 'gxc#!alias::t)
                  (gxc#optimizer-resolve-type
                   (##structure-ref _type22964_ '1 gxc#!type::t '#f))
                  _type22964_))
            '#f))))
  (define gxc#optimizer-lookup-method
    (lambda (_type-t22953_ _method22954_)
      (let ((_type22956_ (gxc#optimizer-resolve-type _type-t22953_)))
        (if (##structure-instance-of? _type22956_ 'gxc#!struct-type::t)
            (gxc#!struct-type-lookup-method _type22956_ _method22954_)
            '#f))))
  (define gxc#optimize-source
    (lambda (_stx22949_)
      (begin
        (gxc#apply-collect-mutators _stx22949_)
        (let ((_stx22951_ (gxc#apply-lift-top-lambdas _stx22949_)))
          (begin
            (gxc#apply-collect-type-info _stx22951_)
            (gxc#apply-optimize-call _stx22951_))))))
  (define gxc#&identity-expression
    (make-promise
     (lambda ()
       (let ((_tbl22946_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl22946_ '%#begin-annotation gxc#xform-identity)
           (table-set! _tbl22946_ '%#lambda gxc#xform-identity)
           (table-set! _tbl22946_ '%#case-lambda gxc#xform-identity)
           (table-set! _tbl22946_ '%#let-values gxc#xform-identity)
           (table-set! _tbl22946_ '%#letrec-values gxc#xform-identity)
           (table-set! _tbl22946_ '%#letrec*-values gxc#xform-identity)
           (table-set! _tbl22946_ '%#quote gxc#xform-identity)
           (table-set! _tbl22946_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl22946_ '%#call gxc#xform-identity)
           (table-set! _tbl22946_ '%#if gxc#xform-identity)
           (table-set! _tbl22946_ '%#ref gxc#xform-identity)
           (table-set! _tbl22946_ '%#set! gxc#xform-identity)
           (table-set! _tbl22946_ '%#struct-instance? gxc#xform-identity)
           (table-set!
            _tbl22946_
            '%#struct-direct-instance?
            gxc#xform-identity)
           (table-set! _tbl22946_ '%#struct-ref gxc#xform-identity)
           (table-set! _tbl22946_ '%#struct-set! gxc#xform-identity)
           (table-set! _tbl22946_ '%#struct-direct-ref gxc#xform-identity)
           (table-set! _tbl22946_ '%#struct-direct-set! gxc#xform-identity)
           (table-set! _tbl22946_ '%#struct-unchecked-ref gxc#xform-identity)
           (table-set! _tbl22946_ '%#struct-unchecked-set! gxc#xform-identity)
           _tbl22946_)))))
  (define gxc#&identity-special-form
    (make-promise
     (lambda ()
       (let ((_tbl22942_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl22942_ '%#begin gxc#xform-identity)
           (table-set! _tbl22942_ '%#begin-syntax gxc#xform-identity)
           (table-set! _tbl22942_ '%#begin-foreign gxc#xform-identity)
           (table-set! _tbl22942_ '%#module gxc#xform-identity)
           (table-set! _tbl22942_ '%#import gxc#xform-identity)
           (table-set! _tbl22942_ '%#export gxc#xform-identity)
           (table-set! _tbl22942_ '%#provide gxc#xform-identity)
           (table-set! _tbl22942_ '%#extern gxc#xform-identity)
           (table-set! _tbl22942_ '%#define-values gxc#xform-identity)
           (table-set! _tbl22942_ '%#define-syntax gxc#xform-identity)
           (table-set! _tbl22942_ '%#define-alias gxc#xform-identity)
           (table-set! _tbl22942_ '%#declare gxc#xform-identity)
           _tbl22942_)))))
  (define gxc#&identity
    (make-promise
     (lambda ()
       (let ((_tbl22938_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl22938_ (force gxc#&identity-special-form))
           (hash-copy! _tbl22938_ (force gxc#&identity-expression))
           _tbl22938_)))))
  (define gxc#&basic-xform-expression
    (make-promise
     (lambda ()
       (let ((_tbl22934_ (make-hash-table-eq)))
         (begin
           (table-set!
            _tbl22934_
            '%#begin-annotation
            gxc#xform-begin-annotation%)
           (table-set! _tbl22934_ '%#lambda gxc#xform-lambda%)
           (table-set! _tbl22934_ '%#case-lambda gxc#xform-case-lambda%)
           (table-set! _tbl22934_ '%#let-values gxc#xform-let-values%)
           (table-set! _tbl22934_ '%#letrec-values gxc#xform-let-values%)
           (table-set! _tbl22934_ '%#letrec*-values gxc#xform-let-values%)
           (table-set! _tbl22934_ '%#quote gxc#xform-identity)
           (table-set! _tbl22934_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl22934_ '%#call gxc#xform-operands)
           (table-set! _tbl22934_ '%#if gxc#xform-operands)
           (table-set! _tbl22934_ '%#ref gxc#xform-identity)
           (table-set! _tbl22934_ '%#set! gxc#xform-setq%)
           (table-set! _tbl22934_ '%#struct-instance? gxc#xform-operands)
           (table-set!
            _tbl22934_
            '%#struct-direct-instance?
            gxc#xform-operands)
           (table-set! _tbl22934_ '%#struct-ref gxc#xform-operands)
           (table-set! _tbl22934_ '%#struct-set! gxc#xform-operands)
           (table-set! _tbl22934_ '%#struct-direct-ref gxc#xform-operands)
           (table-set! _tbl22934_ '%#struct-direct-set! gxc#xform-operands)
           (table-set! _tbl22934_ '%#struct-unchecked-ref gxc#xform-operands)
           (table-set! _tbl22934_ '%#struct-unchecked-set! gxc#xform-operands)
           _tbl22934_)))))
  (define gxc#&basic-xform
    (make-promise
     (lambda ()
       (let ((_tbl22930_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl22930_ (force gxc#&basic-xform-expression))
           (hash-copy! _tbl22930_ (force gxc#&identity))
           (table-set! _tbl22930_ '%#begin gxc#xform-begin%)
           (table-set! _tbl22930_ '%#module gxc#xform-module%)
           (table-set! _tbl22930_ '%#define-values gxc#xform-define-values%)
           _tbl22930_)))))
  (define gxc#&collect-mutators
    (make-promise
     (lambda ()
       (let ((_tbl22926_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl22926_ (force gxc#&void))
           (table-set! _tbl22926_ '%#begin gxc#collect-begin%)
           (table-set! _tbl22926_ '%#module gxc#collect-module%)
           (table-set!
            _tbl22926_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl22926_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl22926_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl22926_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl22926_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl22926_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl22926_ '%#call gxc#collect-operands)
           (table-set! _tbl22926_ '%#if gxc#collect-operands)
           (table-set! _tbl22926_ '%#set! gxc#collect-mutators-setq%)
           (table-set! _tbl22926_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl22926_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl22926_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl22926_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl22926_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl22926_ '%#struct-direct-set! gxc#collect-operands)
           (table-set! _tbl22926_ '%#struct-unchecked-ref gxc#collect-operands)
           (table-set!
            _tbl22926_
            '%#struct-unchecked-set!
            gxc#collect-operands)
           _tbl22926_)))))
  (define gxc#apply-collect-mutators
    (lambda (_stx22919_ . _args22921_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx22919_ _args22921_))
       gxc#current-compile-methods
       (force gxc#&collect-mutators))))
  (define gxc#&lift-top-lambdas
    (make-promise
     (lambda ()
       (let ((_tbl22916_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl22916_ (force gxc#&basic-xform))
           (table-set!
            _tbl22916_
            '%#define-values
            gxc#lift-top-lambda-define-values%)
           (table-set!
            _tbl22916_
            '%#let-values
            gxc#lift-top-lambda-let-values%)
           (table-set!
            _tbl22916_
            '%#letrec-values
            gxc#lift-top-lambda-letrec-values%)
           (table-set!
            _tbl22916_
            '%#letrec*-values
            gxc#lift-top-lambda-letrec-values%)
           _tbl22916_)))))
  (define gxc#apply-lift-top-lambdas
    (lambda (_stx22909_ . _args22911_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx22909_ _args22911_))
       gxc#current-compile-methods
       (force gxc#&lift-top-lambdas))))
  (define gxc#&expression-subst
    (make-promise
     (lambda ()
       (let ((_tbl22906_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl22906_ (force gxc#&basic-xform-expression))
           (table-set! _tbl22906_ '%#begin gxc#xform-begin%)
           (table-set! _tbl22906_ '%#ref gxc#expression-subst-ref%)
           _tbl22906_)))))
  (define gxc#apply-expression-subst
    (lambda (_stx22899_ . _args22901_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx22899_ _args22901_))
       gxc#current-compile-methods
       (force gxc#&expression-subst))))
  (define gxc#&collect-type-info
    (make-promise
     (lambda ()
       (let ((_tbl22896_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl22896_ (force gxc#&void))
           (table-set! _tbl22896_ '%#begin gxc#collect-begin%)
           (table-set! _tbl22896_ '%#module gxc#collect-module%)
           (table-set!
            _tbl22896_
            '%#define-values
            gxc#collect-type-define-values%)
           (table-set!
            _tbl22896_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl22896_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl22896_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl22896_ '%#let-values gxc#collect-type-let-values%)
           (table-set!
            _tbl22896_
            '%#letrec-values
            gxc#collect-type-let-values%)
           (table-set!
            _tbl22896_
            '%#letrec*-values
            gxc#collect-type-let-values%)
           (table-set! _tbl22896_ '%#call gxc#collect-type-call%)
           (table-set! _tbl22896_ '%#if gxc#collect-operands)
           (table-set! _tbl22896_ '%#set! gxc#collect-body-setq%)
           _tbl22896_)))))
  (define gxc#apply-collect-type-info
    (lambda (_stx22889_ . _args22891_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx22889_ _args22891_))
       gxc#current-compile-methods
       (force gxc#&collect-type-info))))
  (define gxc#&basic-expression-type
    (make-promise
     (lambda ()
       (let ((_tbl22886_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl22886_ (force gxc#&false))
           (table-set! _tbl22886_ '%#begin gxc#basic-expression-type-begin%)
           (table-set!
            _tbl22886_
            '%#begin-annotation
            gxc#basic-expression-type-begin-annotation%)
           (table-set! _tbl22886_ '%#lambda gxc#basic-expression-type-lambda%)
           (table-set!
            _tbl22886_
            '%#case-lambda
            gxc#basic-expression-type-case-lambda%)
           (table-set! _tbl22886_ '%#call gxc#basic-expression-type-call%)
           (table-set! _tbl22886_ '%#ref gxc#basic-expression-type-ref%)
           _tbl22886_)))))
  (define gxc#apply-basic-expression-type
    (lambda (_stx22879_ . _args22881_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx22879_ _args22881_))
       gxc#current-compile-methods
       (force gxc#&basic-expression-type))))
  (define gxc#&optimize-call
    (make-promise
     (lambda ()
       (let ((_tbl22876_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl22876_ (force gxc#&basic-xform))
           (table-set! _tbl22876_ '%#call gxc#optimize-call%)
           _tbl22876_)))))
  (define gxc#apply-optimize-call
    (lambda (_stx22869_ . _args22871_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx22869_ _args22871_))
       gxc#current-compile-methods
       (force gxc#&optimize-call))))
  (define gxc#&generate-ssxi
    (make-promise
     (lambda ()
       (let ((_tbl22866_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl22866_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl22866_ '%#begin gxc#generate-runtime-begin%)
           (table-set! _tbl22866_ '%#module gxc#generate-ssxi-module%)
           (table-set!
            _tbl22866_
            '%#define-values
            gxc#generate-ssxi-define-values%)
           (table-set! _tbl22866_ '%#call gxc#generate-ssxi-call%)
           _tbl22866_)))))
  (define gxc#apply-generate-ssxi
    (lambda (_stx22859_ . _args22861_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx22859_ _args22861_))
       gxc#current-compile-methods
       (force gxc#&generate-ssxi))))
  (define gxc#xform-identity (lambda (_stx22856_ . _args22857_) _stx22856_))
  (define gxc#xform-wrap-source
    (lambda (_stx22853_ _src-stx22854_)
      (gx#stx-wrap-source _stx22853_ (gx#stx-source _src-stx22854_))))
  (define gxc#xform-apply-compile-e
    (lambda (_args22847_)
      (lambda (_g2284822850_)
        (apply gxc#compile-e _g2284822850_ _args22847_))))
  (define gxc#xform-begin%
    (lambda (_stx22806_ . _args22807_)
      (let* ((_g2280922819_
              (lambda (_g2281022816_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2281022816_)))
             (_g2280822844_
              (lambda (_g2281022822_)
                (if (gx#stx-pair? _g2281022822_)
                    (let ((_e2281222824_ (gx#stx-e _g2281022822_)))
                      (let ((_hd2281322827_ (##car _e2281222824_))
                            (_tl2281422829_ (##cdr _e2281222824_)))
                        ((lambda (_L22832_)
                           (let ((_forms22842_
                                  (map (gxc#xform-apply-compile-e _args22807_)
                                       _L22832_)))
                             (gxc#xform-wrap-source
                              (cons '%#begin _forms22842_)
                              _stx22806_)))
                         _tl2281422829_)))
                    (_g2280922819_ _g2281022822_)))))
        (_g2280822844_ _stx22806_))))
  (define gxc#xform-module%
    (lambda (_stx22743_ . _args22744_)
      (let* ((_g2274622760_
              (lambda (_g2274722757_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2274722757_)))
             (_g2274522803_
              (lambda (_g2274722763_)
                (if (gx#stx-pair? _g2274722763_)
                    (let ((_e2275022765_ (gx#stx-e _g2274722763_)))
                      (let ((_hd2275122768_ (##car _e2275022765_))
                            (_tl2275222770_ (##cdr _e2275022765_)))
                        (if (gx#stx-pair? _tl2275222770_)
                            (let ((_e2275322773_ (gx#stx-e _tl2275222770_)))
                              (let ((_hd2275422776_ (##car _e2275322773_))
                                    (_tl2275522778_ (##cdr _e2275322773_)))
                                ((lambda (_L22781_ _L22782_)
                                   (let* ((_ctx22795_
                                           (gx#syntax-local-e__0 _L22782_))
                                          (_code22797_
                                           (##structure-ref
                                            _ctx22795_
                                            '11
                                            gx#module-context::t
                                            '#f))
                                          (_code22800_
                                           (call-with-parameters
                                            (lambda ()
                                              (apply gxc#compile-e
                                                     _code22797_
                                                     _args22744_))
                                            gx#current-expander-context
                                            _ctx22795_)))
                                     (begin
                                       (##structure-set!
                                        _ctx22795_
                                        _code22800_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _L22782_
                                                    (cons _code22800_ '())))
                                        _stx22743_))))
                                 _tl2275522778_
                                 _hd2275422776_)))
                            (_g2274622760_ _g2274722763_))))
                    (_g2274622760_ _g2274722763_)))))
        (_g2274522803_ _stx22743_))))
  (define gxc#xform-define-values%
    (lambda (_stx22673_ . _args22674_)
      (let* ((_g2267622693_
              (lambda (_g2267722690_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2267722690_)))
             (_g2267522740_
              (lambda (_g2267722696_)
                (if (gx#stx-pair? _g2267722696_)
                    (let ((_e2268022698_ (gx#stx-e _g2267722696_)))
                      (let ((_hd2268122701_ (##car _e2268022698_))
                            (_tl2268222703_ (##cdr _e2268022698_)))
                        (if (gx#stx-pair? _tl2268222703_)
                            (let ((_e2268322706_ (gx#stx-e _tl2268222703_)))
                              (let ((_hd2268422709_ (##car _e2268322706_))
                                    (_tl2268522711_ (##cdr _e2268322706_)))
                                (if (gx#stx-pair? _tl2268522711_)
                                    (let ((_e2268622714_
                                           (gx#stx-e _tl2268522711_)))
                                      (let ((_hd2268722717_
                                             (##car _e2268622714_))
                                            (_tl2268822719_
                                             (##cdr _e2268622714_)))
                                        (if (gx#stx-null? _tl2268822719_)
                                            ((lambda (_L22722_ _L22723_)
                                               (let ((_expr22738_
                                                      (apply gxc#compile-e
                                                             _L22722_
                                                             _args22674_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#define-values
                                                        (cons _L22723_
                                                              (cons _expr22738_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx22673_)))
                                             _hd2268722717_
                                             _hd2268422709_)
                                            (_g2267622693_ _g2267722696_))))
                                    (_g2267622693_ _g2267722696_))))
                            (_g2267622693_ _g2267722696_))))
                    (_g2267622693_ _g2267722696_)))))
        (_g2267522740_ _stx22673_))))
  (define gxc#xform-begin-annotation%
    (lambda (_stx22603_ . _args22604_)
      (let* ((_g2260622623_
              (lambda (_g2260722620_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2260722620_)))
             (_g2260522670_
              (lambda (_g2260722626_)
                (if (gx#stx-pair? _g2260722626_)
                    (let ((_e2261022628_ (gx#stx-e _g2260722626_)))
                      (let ((_hd2261122631_ (##car _e2261022628_))
                            (_tl2261222633_ (##cdr _e2261022628_)))
                        (if (gx#stx-pair? _tl2261222633_)
                            (let ((_e2261322636_ (gx#stx-e _tl2261222633_)))
                              (let ((_hd2261422639_ (##car _e2261322636_))
                                    (_tl2261522641_ (##cdr _e2261322636_)))
                                (if (gx#stx-pair? _tl2261522641_)
                                    (let ((_e2261622644_
                                           (gx#stx-e _tl2261522641_)))
                                      (let ((_hd2261722647_
                                             (##car _e2261622644_))
                                            (_tl2261822649_
                                             (##cdr _e2261622644_)))
                                        (if (gx#stx-null? _tl2261822649_)
                                            ((lambda (_L22652_ _L22653_)
                                               (let ((_expr22668_
                                                      (apply gxc#compile-e
                                                             _L22652_
                                                             _args22604_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#begin-annotation
                                                        (cons _L22653_
                                                              (cons _expr22668_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx22603_)))
                                             _hd2261722647_
                                             _hd2261422639_)
                                            (_g2260622623_ _g2260722626_))))
                                    (_g2260622623_ _g2260722626_))))
                            (_g2260622623_ _g2260722626_))))
                    (_g2260622623_ _g2260722626_)))))
        (_g2260522670_ _stx22603_))))
  (define gxc#xform-lambda%
    (lambda (_stx22546_ . _args22547_)
      (let* ((_g2254922563_
              (lambda (_g2255022560_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2255022560_)))
             (_g2254822600_
              (lambda (_g2255022566_)
                (if (gx#stx-pair? _g2255022566_)
                    (let ((_e2255322568_ (gx#stx-e _g2255022566_)))
                      (let ((_hd2255422571_ (##car _e2255322568_))
                            (_tl2255522573_ (##cdr _e2255322568_)))
                        (if (gx#stx-pair? _tl2255522573_)
                            (let ((_e2255622576_ (gx#stx-e _tl2255522573_)))
                              (let ((_hd2255722579_ (##car _e2255622576_))
                                    (_tl2255822581_ (##cdr _e2255622576_)))
                                ((lambda (_L22584_ _L22585_)
                                   (let ((_body22598_
                                          (map (gxc#xform-apply-compile-e
                                                _args22547_)
                                               _L22584_)))
                                     (gxc#xform-wrap-source
                                      (cons '%#lambda
                                            (cons _L22585_ _body22598_))
                                      _stx22546_)))
                                 _tl2255822581_
                                 _hd2255722579_)))
                            (_g2254922563_ _g2255022566_))))
                    (_g2254922563_ _g2255022566_)))))
        (_g2254822600_ _stx22546_))))
  (define gxc#xform-case-lambda%
    (lambda (_stx22459_ . _args22460_)
      (letrec ((_clause-e22462_
                (lambda (_clause22503_)
                  (let* ((_g2250522516_
                          (lambda (_g2250622513_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g2250622513_)))
                         (_g2250422543_
                          (lambda (_g2250622519_)
                            (if (gx#stx-pair? _g2250622519_)
                                (let ((_e2250922521_ (gx#stx-e _g2250622519_)))
                                  (let ((_hd2251022524_ (##car _e2250922521_))
                                        (_tl2251122526_ (##cdr _e2250922521_)))
                                    ((lambda (_L22529_ _L22530_)
                                       (let ((_body22541_
                                              (map (gxc#xform-apply-compile-e
                                                    _args22460_)
                                                   _L22529_)))
                                         (cons _L22530_ _body22541_)))
                                     _tl2251122526_
                                     _hd2251022524_)))
                                (_g2250522516_ _g2250622519_)))))
                    (_g2250422543_ _clause22503_)))))
        (let* ((_g2246422474_
                (lambda (_g2246522471_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2246522471_)))
               (_g2246322500_
                (lambda (_g2246522477_)
                  (if (gx#stx-pair? _g2246522477_)
                      (let ((_e2246722479_ (gx#stx-e _g2246522477_)))
                        (let ((_hd2246822482_ (##car _e2246722479_))
                              (_tl2246922484_ (##cdr _e2246722479_)))
                          ((lambda (_L22487_)
                             (let ((_clauses22498_
                                    (map _clause-e22462_ _L22487_)))
                               (gxc#xform-wrap-source
                                (cons '%#case-lambda _clauses22498_)
                                _stx22459_)))
                           _tl2246922484_)))
                      (_g2246422474_ _g2246522477_)))))
          (_g2246322500_ _stx22459_)))))
  (define gxc#xform-let-values%
    (lambda (_stx22253_ . _args22254_)
      (let* ((_g2225622289_
              (lambda (_g2225722286_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2225722286_)))
             (_g2225522456_
              (lambda (_g2225722292_)
                (if (gx#stx-pair? _g2225722292_)
                    (let ((_e2226222294_ (gx#stx-e _g2225722292_)))
                      (let ((_hd2226322297_ (##car _e2226222294_))
                            (_tl2226422299_ (##cdr _e2226222294_)))
                        (if (gx#stx-pair? _tl2226422299_)
                            (let ((_e2226522302_ (gx#stx-e _tl2226422299_)))
                              (let ((_hd2226622305_ (##car _e2226522302_))
                                    (_tl2226722307_ (##cdr _e2226522302_)))
                                (if (gx#stx-pair/null? _hd2226622305_)
                                    (if (fx>= (gx#stx-length _hd2226622305_)
                                              '0)
                                        (let ((_g23604_
                                               (gx#syntax-split-splice
                                                _hd2226622305_
                                                '0)))
                                          (begin
                                            (let ((_g23605_
                                                   (values-count _g23604_)))
                                              (if (not (fx= _g23605_ 2))
                                                  (error "Context expects 2 values"
                                                         _g23605_)))
                                            (let ((_target2226822310_
                                                   (values-ref _g23604_ 0))
                                                  (_tl2227022312_
                                                   (values-ref _g23604_ 1)))
                                              (if (gx#stx-null? _tl2227022312_)
                                                  (letrec ((_loop2227122315_
                                                            (lambda (_hd2226922318_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr2227522320_
                             _hd2227622322_)
                      (if (gx#stx-pair? _hd2226922318_)
                          (let ((_e2227222325_ (gx#stx-e _hd2226922318_)))
                            (let ((_lp-hd2227322328_ (##car _e2227222325_))
                                  (_lp-tl2227422330_ (##cdr _e2227222325_)))
                              (if (gx#stx-pair? _lp-hd2227322328_)
                                  (let ((_e2227922333_
                                         (gx#stx-e _lp-hd2227322328_)))
                                    (let ((_hd2228022336_
                                           (##car _e2227922333_))
                                          (_tl2228122338_
                                           (##cdr _e2227922333_)))
                                      (if (gx#stx-pair? _tl2228122338_)
                                          (let ((_e2228222341_
                                                 (gx#stx-e _tl2228122338_)))
                                            (let ((_hd2228322344_
                                                   (##car _e2228222341_))
                                                  (_tl2228422346_
                                                   (##cdr _e2228222341_)))
                                              (if (gx#stx-null? _tl2228422346_)
                                                  (_loop2227122315_
                                                   _lp-tl2227422330_
                                                   (cons _hd2228322344_
                                                         _expr2227522320_)
                                                   (cons _hd2228022336_
                                                         _hd2227622322_))
                                                  (_g2225622289_
                                                   _g2225722292_))))
                                          (_g2225622289_ _g2225722292_))))
                                  (_g2225622289_ _g2225722292_))))
                          (let ((_expr2227722349_ (reverse _expr2227522320_))
                                (_hd2227822351_ (reverse _hd2227622322_)))
                            ((lambda (_L22354_ _L22355_ _L22356_ _L22357_)
                               (let* ((_g2237622392_
                                       (lambda (_g2237722389_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2237722389_)))
                                      (_g2237522446_
                                       (lambda (_g2237722395_)
                                         (if (gx#stx-pair/null? _g2237722395_)
                                             (if (fx>= (gx#stx-length
                                                        _g2237722395_)
                                                       '0)
                                                 (let ((_g23606_
                                                        (gx#syntax-split-splice
                                                         _g2237722395_
                                                         '0)))
                                                   (begin
                                                     (let ((_g23607_
                                                            (values-count
                                                             _g23606_)))
                                                       (if (not (fx= _g23607_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g23607_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2237922397_
                                                            (values-ref
                                                             _g23606_
                                                             0))
                                                           (_tl2238122399_
                                                            (values-ref
                                                             _g23606_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2238122399_)
                                                           (letrec ((_loop2238222402_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2238022405_ _expr2238622407_)
                               (if (gx#stx-pair? _hd2238022405_)
                                   (let ((_e2238322410_
                                          (gx#syntax-e _hd2238022405_)))
                                     (let ((_lp-hd2238422413_
                                            (##car _e2238322410_))
                                           (_lp-tl2238522415_
                                            (##cdr _e2238322410_)))
                                       (_loop2238222402_
                                        _lp-tl2238522415_
                                        (cons _lp-hd2238422413_
                                              _expr2238622407_))))
                                   (let ((_expr2238722418_
                                          (reverse _expr2238622407_)))
                                     ((lambda (_L22421_)
                                        (let ()
                                          (let ((_body22434_
                                                 (map (gxc#xform-apply-compile-e
                                                       _args22254_)
                                                      _L22354_)))
                                            (gxc#xform-wrap-source
                                             (cons _L22357_
                                                   (cons (begin
                                                           (gx#syntax-check-splice-targets
                                                            _L22421_
                                                            _L22356_)
                                                           (foldr (lambda (_g2243522439_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g2243622441_
                                   _g2243722443_)
                            (cons (cons _g2243622441_ (cons _g2243522439_ '()))
                                  _g2243722443_))
                          '()
                          _L22421_
                          _L22356_))
                 _body22434_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _stx22253_))))
                                      _expr2238722418_))))))
                     (_loop2238222402_ _target2237922397_ '()))
                   (_g2237622392_ _g2237722395_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2237622392_ _g2237722395_))
                                             (_g2237622392_ _g2237722395_)))))
                                 (_g2237522446_
                                  (map (gxc#xform-apply-compile-e _args22254_)
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g2244822451_
                                                          _g2244922453_)
                                                   (cons _g2244822451_
                                                         _g2244922453_))
                                                 '()
                                                 _L22355_))))))
                             _tl2226722307_
                             _expr2227722349_
                             _hd2227822351_
                             _hd2226322297_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop2227122315_
                                                     _target2226822310_
                                                     '()
                                                     '()))
                                                  (_g2225622289_
                                                   _g2225722292_)))))
                                        (_g2225622289_ _g2225722292_))
                                    (_g2225622289_ _g2225722292_))))
                            (_g2225622289_ _g2225722292_))))
                    (_g2225622289_ _g2225722292_)))))
        (_g2225522456_ _stx22253_))))
  (define gxc#xform-operands
    (lambda (_stx22209_ . _args22210_)
      (let* ((_g2221222223_
              (lambda (_g2221322220_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2221322220_)))
             (_g2221122250_
              (lambda (_g2221322226_)
                (if (gx#stx-pair? _g2221322226_)
                    (let ((_e2221622228_ (gx#stx-e _g2221322226_)))
                      (let ((_hd2221722231_ (##car _e2221622228_))
                            (_tl2221822233_ (##cdr _e2221622228_)))
                        ((lambda (_L22236_ _L22237_)
                           (let ((_rands22248_
                                  (map (gxc#xform-apply-compile-e _args22210_)
                                       _L22236_)))
                             (gxc#xform-wrap-source
                              (cons _L22237_ _rands22248_)
                              _stx22209_)))
                         _tl2221822233_
                         _hd2221722231_)))
                    (_g2221222223_ _g2221322226_)))))
        (_g2221122250_ _stx22209_))))
  (define gxc#xform-call% gxc#xform-operands)
  (define gxc#xform-setq%
    (lambda (_stx22139_ . _args22140_)
      (let* ((_g2214222159_
              (lambda (_g2214322156_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2214322156_)))
             (_g2214122206_
              (lambda (_g2214322162_)
                (if (gx#stx-pair? _g2214322162_)
                    (let ((_e2214622164_ (gx#stx-e _g2214322162_)))
                      (let ((_hd2214722167_ (##car _e2214622164_))
                            (_tl2214822169_ (##cdr _e2214622164_)))
                        (if (gx#stx-pair? _tl2214822169_)
                            (let ((_e2214922172_ (gx#stx-e _tl2214822169_)))
                              (let ((_hd2215022175_ (##car _e2214922172_))
                                    (_tl2215122177_ (##cdr _e2214922172_)))
                                (if (gx#stx-pair? _tl2215122177_)
                                    (let ((_e2215222180_
                                           (gx#stx-e _tl2215122177_)))
                                      (let ((_hd2215322183_
                                             (##car _e2215222180_))
                                            (_tl2215422185_
                                             (##cdr _e2215222180_)))
                                        (if (gx#stx-null? _tl2215422185_)
                                            ((lambda (_L22188_ _L22189_)
                                               (let ((_expr22204_
                                                      (apply gxc#compile-e
                                                             _L22188_
                                                             _args22140_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#set!
                                                        (cons _L22189_
                                                              (cons _expr22204_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx22139_)))
                                             _hd2215322183_
                                             _hd2215022175_)
                                            (_g2214222159_ _g2214322162_))))
                                    (_g2214222159_ _g2214322162_))))
                            (_g2214222159_ _g2214322162_))))
                    (_g2214222159_ _g2214322162_)))))
        (_g2214122206_ _stx22139_))))
  (define gxc#collect-mutators-setq%
    (lambda (_stx22070_)
      (let* ((_g2207222089_
              (lambda (_g2207322086_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2207322086_)))
             (_g2207122136_
              (lambda (_g2207322092_)
                (if (gx#stx-pair? _g2207322092_)
                    (let ((_e2207622094_ (gx#stx-e _g2207322092_)))
                      (let ((_hd2207722097_ (##car _e2207622094_))
                            (_tl2207822099_ (##cdr _e2207622094_)))
                        (if (gx#stx-pair? _tl2207822099_)
                            (let ((_e2207922102_ (gx#stx-e _tl2207822099_)))
                              (let ((_hd2208022105_ (##car _e2207922102_))
                                    (_tl2208122107_ (##cdr _e2207922102_)))
                                (if (gx#stx-pair? _tl2208122107_)
                                    (let ((_e2208222110_
                                           (gx#stx-e _tl2208122107_)))
                                      (let ((_hd2208322113_
                                             (##car _e2208222110_))
                                            (_tl2208422115_
                                             (##cdr _e2208222110_)))
                                        (if (gx#stx-null? _tl2208422115_)
                                            ((lambda (_L22118_ _L22119_)
                                               (let ((_sym22134_
                                                      (gxc#generate-runtime-binding-id
                                                       _L22119_)))
                                                 (begin
                                                   (gxc#verbose
                                                    '"collect mutator "
                                                    _sym22134_)
                                                   (table-set!
                                                    (gxc#current-compile-mutators)
                                                    _sym22134_
                                                    '#t)
                                                   (gxc#compile-e _L22118_))))
                                             _hd2208322113_
                                             _hd2208022105_)
                                            (_g2207222089_ _g2207322092_))))
                                    (_g2207222089_ _g2207322092_))))
                            (_g2207222089_ _g2207322092_))))
                    (_g2207222089_ _g2207322092_)))))
        (_g2207122136_ _stx22070_))))
  (define gxc#dispatch-lambda-form?
    (lambda (_form21304_)
      (let* ((_g2130921466_
              (lambda (_g2131021463_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2131021463_)))
             (_g2130821473_ (lambda (_g2131021469_) ((lambda () '#f))))
             (_g2130721613_
              (lambda (_g2131021476_)
                (if (gx#stx-pair? _g2131021476_)
                    (let ((_e2142621478_ (gx#stx-e _g2131021476_)))
                      (let ((_hd2142721481_ (##car _e2142621478_))
                            (_tl2142821483_ (##cdr _e2142621478_)))
                        (if (gx#stx-pair? _tl2142821483_)
                            (let ((_e2142921486_ (gx#stx-e _tl2142821483_)))
                              (let ((_hd2143021489_ (##car _e2142921486_))
                                    (_tl2143121491_ (##cdr _e2142921486_)))
                                (if (gx#stx-pair? _hd2143021489_)
                                    (let ((_e2143221494_
                                           (gx#stx-e _hd2143021489_)))
                                      (let ((_hd2143321497_
                                             (##car _e2143221494_))
                                            (_tl2143421499_
                                             (##cdr _e2143221494_)))
                                        (if (gx#identifier? _hd2143321497_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd2143321497_)
                                                (if (gx#stx-pair?
                                                     _tl2143421499_)
                                                    (let ((_e2143521502_
                                                           (gx#stx-e
                                                            _tl2143421499_)))
                                                      (let ((_hd2143621505_
                                                             (##car _e2143521502_))
                                                            (_tl2143721507_
                                                             (##cdr _e2143521502_)))
                                                        (if (gx#stx-pair?
                                                             _hd2143621505_)
                                                            (let ((_e2143821510_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2143621505_)))
                      (let ((_hd2143921513_ (##car _e2143821510_))
                            (_tl2144021515_ (##cdr _e2143821510_)))
                        (if (gx#identifier? _hd2143921513_)
                            (if (gx#stx-eq? '%#ref _hd2143921513_)
                                (if (gx#stx-pair? _tl2144021515_)
                                    (let ((_e2144121518_
                                           (gx#stx-e _tl2144021515_)))
                                      (let ((_hd2144221521_
                                             (##car _e2144121518_))
                                            (_tl2144321523_
                                             (##cdr _e2144121518_)))
                                        (if (gx#stx-null? _tl2144321523_)
                                            (if (gx#stx-pair? _tl2143721507_)
                                                (let ((_e2144421526_
                                                       (gx#stx-e
                                                        _tl2143721507_)))
                                                  (let ((_hd2144521529_
                                                         (##car _e2144421526_))
                                                        (_tl2144621531_
                                                         (##cdr _e2144421526_)))
                                                    (if (gx#stx-pair?
                                                         _hd2144521529_)
                                                        (let ((_e2144721534_
                                                               (gx#stx-e
                                                                _hd2144521529_)))
                                                          (let ((_hd2144821537_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2144721534_))
                        (_tl2144921539_ (##cdr _e2144721534_)))
                    (if (gx#identifier? _hd2144821537_)
                        (if (gx#stx-eq? '%#ref _hd2144821537_)
                            (if (gx#stx-pair? _tl2144921539_)
                                (let ((_e2145021542_
                                       (gx#stx-e _tl2144921539_)))
                                  (let ((_hd2145121545_ (##car _e2145021542_))
                                        (_tl2145221547_ (##cdr _e2145021542_)))
                                    (if (gx#stx-null? _tl2145221547_)
                                        (if (gx#stx-pair? _tl2144621531_)
                                            (let ((_e2145321550_
                                                   (gx#stx-e _tl2144621531_)))
                                              (let ((_hd2145421553_
                                                     (##car _e2145321550_))
                                                    (_tl2145521555_
                                                     (##cdr _e2145321550_)))
                                                (if (gx#stx-pair?
                                                     _hd2145421553_)
                                                    (let ((_e2145621558_
                                                           (gx#stx-e
                                                            _hd2145421553_)))
                                                      (let ((_hd2145721561_
                                                             (##car _e2145621558_))
                                                            (_tl2145821563_
                                                             (##cdr _e2145621558_)))
                                                        (if (gx#identifier?
                                                             _hd2145721561_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2145721561_)
                        (if (gx#stx-pair? _tl2145821563_)
                            (let ((_e2145921566_ (gx#stx-e _tl2145821563_)))
                              (let ((_hd2146021569_ (##car _e2145921566_))
                                    (_tl2146121571_ (##cdr _e2145921566_)))
                                (if (gx#stx-null? _tl2146121571_)
                                    (if (gx#stx-null? _tl2145521555_)
                                        (if (gx#stx-null? _tl2143121491_)
                                            ((lambda (_L21574_
                                                      _L21575_
                                                      _L21576_
                                                      _L21577_)
                                               (if (if (gx#identifier?
                                                        _L21577_)
                                                       (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L21576_)
                        'apply)
                   (if (gx#free-identifier=? _L21577_ _L21574_)
                       (not (gx#free-identifier=? _L21575_ _L21577_))
                       '#f)
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#t
                                                   (_g2130821473_
                                                    _g2131021476_)))
                                             _hd2146021569_
                                             _hd2145121545_
                                             _hd2144221521_
                                             _hd2142721481_)
                                            (_g2130821473_ _g2131021476_))
                                        (_g2130821473_ _g2131021476_))
                                    (_g2130821473_ _g2131021476_))))
                            (_g2130821473_ _g2131021476_))
                        (_g2130821473_ _g2131021476_))
                    (_g2130821473_ _g2131021476_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2130821473_
                                                     _g2131021476_))))
                                            (_g2130821473_ _g2131021476_))
                                        (_g2130821473_ _g2131021476_))))
                                (_g2130821473_ _g2131021476_))
                            (_g2130821473_ _g2131021476_))
                        (_g2130821473_ _g2131021476_))))
                (_g2130821473_ _g2131021476_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2130821473_ _g2131021476_))
                                            (_g2130821473_ _g2131021476_))))
                                    (_g2130821473_ _g2131021476_))
                                (_g2130821473_ _g2131021476_))
                            (_g2130821473_ _g2131021476_))))
                    (_g2130821473_ _g2131021476_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2130821473_
                                                     _g2131021476_))
                                                (_g2130821473_ _g2131021476_))
                                            (_g2130821473_ _g2131021476_))))
                                    (_g2130821473_ _g2131021476_))))
                            (_g2130821473_ _g2131021476_))))
                    (_g2130821473_ _g2131021476_))))
             (_g2130621873_
              (lambda (_g2131021616_)
                (if (gx#stx-pair? _g2131021616_)
                    (let ((_e2136221618_ (gx#stx-e _g2131021616_)))
                      (let ((_hd2136321621_ (##car _e2136221618_))
                            (_tl2136421623_ (##cdr _e2136221618_)))
                        (if (gx#stx-pair/null? _hd2136321621_)
                            (if (fx>= (gx#stx-length _hd2136321621_) '0)
                                (let ((_g23608_
                                       (gx#syntax-split-splice
                                        _hd2136321621_
                                        '0)))
                                  (begin
                                    (let ((_g23609_ (values-count _g23608_)))
                                      (if (not (fx= _g23609_ 2))
                                          (error "Context expects 2 values"
                                                 _g23609_)))
                                    (let ((_target2136521626_
                                           (values-ref _g23608_ 0))
                                          (_tl2136721628_
                                           (values-ref _g23608_ 1)))
                                      (letrec ((_loop2136821631_
                                                (lambda (_hd2136621634_
                                                         _arg2137221636_)
                                                  (if (gx#stx-pair?
                                                       _hd2136621634_)
                                                      (let ((_e2136921639_
                                                             (gx#stx-e
                                                              _hd2136621634_)))
                                                        (let ((_lp-hd2137021642_
                                                               (##car _e2136921639_))
                                                              (_lp-tl2137121644_
                                                               (##cdr _e2136921639_)))
                                                          (_loop2136821631_
                                                           _lp-tl2137121644_
                                                           (cons _lp-hd2137021642_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _arg2137221636_))))
              (let ((_arg2137321647_ (reverse _arg2137221636_)))
                (if (gx#stx-pair? _tl2136421623_)
                    (let ((_e2137421650_ (gx#stx-e _tl2136421623_)))
                      (let ((_hd2137521653_ (##car _e2137421650_))
                            (_tl2137621655_ (##cdr _e2137421650_)))
                        (if (gx#stx-pair? _hd2137521653_)
                            (let ((_e2137721658_ (gx#stx-e _hd2137521653_)))
                              (let ((_hd2137821661_ (##car _e2137721658_))
                                    (_tl2137921663_ (##cdr _e2137721658_)))
                                (if (gx#identifier? _hd2137821661_)
                                    (if (gx#stx-eq? '%#call _hd2137821661_)
                                        (if (gx#stx-pair? _tl2137921663_)
                                            (let ((_e2138021666_
                                                   (gx#stx-e _tl2137921663_)))
                                              (let ((_hd2138121669_
                                                     (##car _e2138021666_))
                                                    (_tl2138221671_
                                                     (##cdr _e2138021666_)))
                                                (if (gx#stx-pair?
                                                     _hd2138121669_)
                                                    (let ((_e2138321674_
                                                           (gx#stx-e
                                                            _hd2138121669_)))
                                                      (let ((_hd2138421677_
                                                             (##car _e2138321674_))
                                                            (_tl2138521679_
                                                             (##cdr _e2138321674_)))
                                                        (if (gx#identifier?
                                                             _hd2138421677_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2138421677_)
                        (if (gx#stx-pair? _tl2138521679_)
                            (let ((_e2138621682_ (gx#stx-e _tl2138521679_)))
                              (let ((_hd2138721685_ (##car _e2138621682_))
                                    (_tl2138821687_ (##cdr _e2138621682_)))
                                (if (gx#stx-null? _tl2138821687_)
                                    (if (gx#stx-pair? _tl2138221671_)
                                        (let ((_e2138921690_
                                               (gx#stx-e _tl2138221671_)))
                                          (let ((_hd2139021693_
                                                 (##car _e2138921690_))
                                                (_tl2139121695_
                                                 (##cdr _e2138921690_)))
                                            (if (gx#stx-pair? _hd2139021693_)
                                                (let ((_e2139221698_
                                                       (gx#stx-e
                                                        _hd2139021693_)))
                                                  (let ((_hd2139321701_
                                                         (##car _e2139221698_))
                                                        (_tl2139421703_
                                                         (##cdr _e2139221698_)))
                                                    (if (gx#identifier?
                                                         _hd2139321701_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd2139321701_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2139421703_)
                        (let ((_e2139521706_ (gx#stx-e _tl2139421703_)))
                          (let ((_hd2139621709_ (##car _e2139521706_))
                                (_tl2139721711_ (##cdr _e2139521706_)))
                            (if (gx#stx-null? _tl2139721711_)
                                (if (gx#stx-pair/null? _tl2139121695_)
                                    (if (fx>= (gx#stx-length _tl2139121695_)
                                              '1)
                                        (let ((_g23610_
                                               (gx#syntax-split-splice
                                                _tl2139121695_
                                                '1)))
                                          (begin
                                            (let ((_g23611_
                                                   (values-count _g23610_)))
                                              (if (not (fx= _g23611_ 2))
                                                  (error "Context expects 2 values"
                                                         _g23611_)))
                                            (let ((_target2139821714_
                                                   (values-ref _g23610_ 0))
                                                  (_tl2140021716_
                                                   (values-ref _g23610_ 1)))
                                              (if (gx#stx-pair? _tl2140021716_)
                                                  (let ((_e2140721719_
                                                         (gx#stx-e
                                                          _tl2140021716_)))
                                                    (let ((_hd2140821722_
                                                           (##car _e2140721719_))
                                                          (_tl2140921724_
                                                           (##cdr _e2140721719_)))
                                                      (if (gx#stx-pair?
                                                           _hd2140821722_)
                                                          (let ((_e2141021727_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2140821722_)))
                    (let ((_hd2141121730_ (##car _e2141021727_))
                          (_tl2141221732_ (##cdr _e2141021727_)))
                      (if (gx#identifier? _hd2141121730_)
                          (if (gx#stx-eq? '%#ref _hd2141121730_)
                              (if (gx#stx-pair? _tl2141221732_)
                                  (let ((_e2141321735_
                                         (gx#stx-e _tl2141221732_)))
                                    (let ((_hd2141421738_
                                           (##car _e2141321735_))
                                          (_tl2141521740_
                                           (##cdr _e2141321735_)))
                                      (if (gx#stx-null? _tl2141521740_)
                                          (if (gx#stx-null? _tl2140921724_)
                                              (letrec ((_loop2140121743_
                                                        (lambda (_hd2139921746_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _xarg2140521748_)
                  (if (gx#stx-pair? _hd2139921746_)
                      (let ((_e2140221751_ (gx#stx-e _hd2139921746_)))
                        (let ((_lp-hd2140321754_ (##car _e2140221751_))
                              (_lp-tl2140421756_ (##cdr _e2140221751_)))
                          (if (gx#stx-pair? _lp-hd2140321754_)
                              (let ((_e2141621759_
                                     (gx#stx-e _lp-hd2140321754_)))
                                (let ((_hd2141721762_ (##car _e2141621759_))
                                      (_tl2141821764_ (##cdr _e2141621759_)))
                                  (if (gx#identifier? _hd2141721762_)
                                      (if (gx#stx-eq? '%#ref _hd2141721762_)
                                          (if (gx#stx-pair? _tl2141821764_)
                                              (let ((_e2141921767_
                                                     (gx#stx-e
                                                      _tl2141821764_)))
                                                (let ((_hd2142021770_
                                                       (##car _e2141921767_))
                                                      (_tl2142121772_
                                                       (##cdr _e2141921767_)))
                                                  (if (gx#stx-null?
                                                       _tl2142121772_)
                                                      (_loop2140121743_
                                                       _lp-tl2140421756_
                                                       (cons _hd2142021770_
                                                             _xarg2140521748_))
                                                      (_g2130721613_
                                                       _g2131021616_))))
                                              (_g2130721613_ _g2131021616_))
                                          (_g2130721613_ _g2131021616_))
                                      (_g2130721613_ _g2131021616_))))
                              (_g2130721613_ _g2131021616_))))
                      (let ((_xarg2140621775_ (reverse _xarg2140521748_)))
                        (if (gx#stx-null? _tl2137621655_)
                            ((lambda (_L21778_
                                      _L21779_
                                      _L21780_
                                      _L21781_
                                      _L21782_
                                      _L21783_)
                               (if (if (gx#identifier-list?
                                        (begin
                                          '#!void
                                          (foldr1 (lambda (_g2182621829_
                                                           _g2182721831_)
                                                    (cons _g2182621829_
                                                          _g2182721831_))
                                                  '()
                                                  _L21783_)))
                                       (if (gx#identifier? _L21782_)
                                           (if (eq? (gxc#generate-runtime-binding-id
                                                     _L21781_)
                                                    'apply)
                                               (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr1 (lambda (_g2183321836_ _g2183421838_)
                                    (cons _g2183321836_ _g2183421838_))
                                  '()
                                  _L21783_)))
                (length (begin
                          '#!void
                          (foldr1 (lambda (_g2184021843_ _g2184121845_)
                                    (cons _g2184021843_ _g2184121845_))
                                  '()
                                  _L21779_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (andmap gx#free-identifier=?
                                                               (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#!void
                         (foldr1 (lambda (_g2184721850_ _g2184821852_)
                                   (cons _g2184721850_ _g2184821852_))
                                 '()
                                 _L21783_))
                       (begin
                         '#!void
                         (foldr1 (lambda (_g2185421857_ _g2185521859_)
                                   (cons _g2185421857_ _g2185521859_))
                                 '()
                                 _L21779_)))
               (if (gx#free-identifier=? _L21782_ _L21778_)
                   (not (find (lambda (_g2186121863_)
                                (gx#free-identifier=? _g2186121863_ _L21780_))
                              (begin
                                '#!void
                                (foldr1 (lambda (_g2186521868_ _g2186621870_)
                                          (cons _g2186521868_ _g2186621870_))
                                        (cons _L21782_ '())
                                        _L21783_))))
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#f)
                                               '#f)
                                           '#f)
                                       '#f)
                                   '#t
                                   (_g2130721613_ _g2131021616_)))
                             _hd2141421738_
                             _xarg2140621775_
                             _hd2139621709_
                             _hd2138721685_
                             _tl2136721628_
                             _arg2137321647_)
                            (_g2130721613_ _g2131021616_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop2140121743_
                                                 _target2139821714_
                                                 '()))
                                              (_g2130721613_ _g2131021616_))
                                          (_g2130721613_ _g2131021616_))))
                                  (_g2130721613_ _g2131021616_))
                              (_g2130721613_ _g2131021616_))
                          (_g2130721613_ _g2131021616_))))
                  (_g2130721613_ _g2131021616_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2130721613_
                                                   _g2131021616_)))))
                                        (_g2130721613_ _g2131021616_))
                                    (_g2130721613_ _g2131021616_))
                                (_g2130721613_ _g2131021616_))))
                        (_g2130721613_ _g2131021616_))
                    (_g2130721613_ _g2131021616_))
                (_g2130721613_ _g2131021616_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2130721613_
                                                 _g2131021616_))))
                                        (_g2130721613_ _g2131021616_))
                                    (_g2130721613_ _g2131021616_))))
                            (_g2130721613_ _g2131021616_))
                        (_g2130721613_ _g2131021616_))
                    (_g2130721613_ _g2131021616_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2130721613_
                                                     _g2131021616_))))
                                            (_g2130721613_ _g2131021616_))
                                        (_g2130721613_ _g2131021616_))
                                    (_g2130721613_ _g2131021616_))))
                            (_g2130721613_ _g2131021616_))))
                    (_g2130721613_ _g2131021616_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop2136821631_
                                         _target2136521626_
                                         '())))))
                                (_g2130721613_ _g2131021616_))
                            (_g2130721613_ _g2131021616_))))
                    (_g2130721613_ _g2131021616_))))
             (_g2130522067_
              (lambda (_g2131021876_)
                (if (gx#stx-pair? _g2131021876_)
                    (let ((_e2131421878_ (gx#stx-e _g2131021876_)))
                      (let ((_hd2131521881_ (##car _e2131421878_))
                            (_tl2131621883_ (##cdr _e2131421878_)))
                        (if (gx#stx-pair/null? _hd2131521881_)
                            (if (fx>= (gx#stx-length _hd2131521881_) '0)
                                (let ((_g23612_
                                       (gx#syntax-split-splice
                                        _hd2131521881_
                                        '0)))
                                  (begin
                                    (let ((_g23613_ (values-count _g23612_)))
                                      (if (not (fx= _g23613_ 2))
                                          (error "Context expects 2 values"
                                                 _g23613_)))
                                    (let ((_target2131721886_
                                           (values-ref _g23612_ 0))
                                          (_tl2131921888_
                                           (values-ref _g23612_ 1)))
                                      (if (gx#stx-null? _tl2131921888_)
                                          (letrec ((_loop2132021891_
                                                    (lambda (_hd2131821894_
                                                             _arg2132421896_)
                                                      (if (gx#stx-pair?
                                                           _hd2131821894_)
                                                          (let ((_e2132121899_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2131821894_)))
                    (let ((_lp-hd2132221902_ (##car _e2132121899_))
                          (_lp-tl2132321904_ (##cdr _e2132121899_)))
                      (_loop2132021891_
                       _lp-tl2132321904_
                       (cons _lp-hd2132221902_ _arg2132421896_))))
                  (let ((_arg2132521907_ (reverse _arg2132421896_)))
                    (if (gx#stx-pair? _tl2131621883_)
                        (let ((_e2132621910_ (gx#stx-e _tl2131621883_)))
                          (let ((_hd2132721913_ (##car _e2132621910_))
                                (_tl2132821915_ (##cdr _e2132621910_)))
                            (if (gx#stx-pair? _hd2132721913_)
                                (let ((_e2132921918_
                                       (gx#stx-e _hd2132721913_)))
                                  (let ((_hd2133021921_ (##car _e2132921918_))
                                        (_tl2133121923_ (##cdr _e2132921918_)))
                                    (if (gx#identifier? _hd2133021921_)
                                        (if (gx#stx-eq? '%#call _hd2133021921_)
                                            (if (gx#stx-pair? _tl2133121923_)
                                                (let ((_e2133221926_
                                                       (gx#stx-e
                                                        _tl2133121923_)))
                                                  (let ((_hd2133321929_
                                                         (##car _e2133221926_))
                                                        (_tl2133421931_
                                                         (##cdr _e2133221926_)))
                                                    (if (gx#stx-pair?
                                                         _hd2133321929_)
                                                        (let ((_e2133521934_
                                                               (gx#stx-e
                                                                _hd2133321929_)))
                                                          (let ((_hd2133621937_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2133521934_))
                        (_tl2133721939_ (##cdr _e2133521934_)))
                    (if (gx#identifier? _hd2133621937_)
                        (if (gx#stx-eq? '%#ref _hd2133621937_)
                            (if (gx#stx-pair? _tl2133721939_)
                                (let ((_e2133821942_
                                       (gx#stx-e _tl2133721939_)))
                                  (let ((_hd2133921945_ (##car _e2133821942_))
                                        (_tl2134021947_ (##cdr _e2133821942_)))
                                    (if (gx#stx-null? _tl2134021947_)
                                        (if (gx#stx-pair/null? _tl2133421931_)
                                            (if (fx>= (gx#stx-length
                                                       _tl2133421931_)
                                                      '0)
                                                (let ((_g23614_
                                                       (gx#syntax-split-splice
                                                        _tl2133421931_
                                                        '0)))
                                                  (begin
                                                    (let ((_g23615_
                                                           (values-count
                                                            _g23614_)))
                                                      (if (not (fx= _g23615_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g23615_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2134121950_
                                                           (values-ref
                                                            _g23614_
                                                            0))
                                                          (_tl2134321952_
                                                           (values-ref
                                                            _g23614_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl2134321952_)
                                                          (letrec ((_loop2134421955_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd2134221958_ _xarg2134821960_)
                              (if (gx#stx-pair? _hd2134221958_)
                                  (let ((_e2134521963_
                                         (gx#stx-e _hd2134221958_)))
                                    (let ((_lp-hd2134621966_
                                           (##car _e2134521963_))
                                          (_lp-tl2134721968_
                                           (##cdr _e2134521963_)))
                                      (if (gx#stx-pair? _lp-hd2134621966_)
                                          (let ((_e2135021971_
                                                 (gx#stx-e _lp-hd2134621966_)))
                                            (let ((_hd2135121974_
                                                   (##car _e2135021971_))
                                                  (_tl2135221976_
                                                   (##cdr _e2135021971_)))
                                              (if (gx#identifier?
                                                   _hd2135121974_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd2135121974_)
                                                      (if (gx#stx-pair?
                                                           _tl2135221976_)
                                                          (let ((_e2135321979_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2135221976_)))
                    (let ((_hd2135421982_ (##car _e2135321979_))
                          (_tl2135521984_ (##cdr _e2135321979_)))
                      (if (gx#stx-null? _tl2135521984_)
                          (_loop2134421955_
                           _lp-tl2134721968_
                           (cons _hd2135421982_ _xarg2134821960_))
                          (_g2130621873_ _g2131021876_))))
                  (_g2130621873_ _g2131021876_))
              (_g2130621873_ _g2131021876_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2130621873_
                                                   _g2131021876_))))
                                          (_g2130621873_ _g2131021876_))))
                                  (let ((_xarg2134921987_
                                         (reverse _xarg2134821960_)))
                                    (if (gx#stx-null? _tl2132821915_)
                                        ((lambda (_L21990_ _L21991_ _L21992_)
                                           (if (if (gx#identifier-list?
                                                    (begin
                                                      '#!void
                                                      (foldr1 (lambda (_g2202022023_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2202122025_)
                        (cons _g2202022023_ _g2202122025_))
                      '()
                      _L21992_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#!void
                              (foldr1 (lambda (_g2202722030_ _g2202822032_)
                                        (cons _g2202722030_ _g2202822032_))
                                      '()
                                      _L21992_)))
                    (length (begin
                              '#!void
                              (foldr1 (lambda (_g2203422037_ _g2203522039_)
                                        (cons _g2203422037_ _g2203522039_))
                                      '()
                                      _L21990_))))
               (if (andmap gx#free-identifier=?
                           (begin
                             '#!void
                             (foldr1 (lambda (_g2204122044_ _g2204222046_)
                                       (cons _g2204122044_ _g2204222046_))
                                     '()
                                     _L21992_))
                           (begin
                             '#!void
                             (foldr1 (lambda (_g2204822051_ _g2204922053_)
                                       (cons _g2204822051_ _g2204922053_))
                                     '()
                                     _L21990_)))
                   (not (find (lambda (_g2205522057_)
                                (gx#free-identifier=? _g2205522057_ _L21991_))
                              (begin
                                '#!void
                                (foldr1 (lambda (_g2205922062_ _g2206022064_)
                                          (cons _g2205922062_ _g2206022064_))
                                        '()
                                        _L21992_))))
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#f)
                                               '#t
                                               (_g2130621873_ _g2131021876_)))
                                         _xarg2134921987_
                                         _hd2133921945_
                                         _arg2132521907_)
                                        (_g2130621873_ _g2131021876_)))))))
                    (_loop2134421955_ _target2134121950_ '()))
                  (_g2130621873_ _g2131021876_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2130621873_ _g2131021876_))
                                            (_g2130621873_ _g2131021876_))
                                        (_g2130621873_ _g2131021876_))))
                                (_g2130621873_ _g2131021876_))
                            (_g2130621873_ _g2131021876_))
                        (_g2130621873_ _g2131021876_))))
                (_g2130621873_ _g2131021876_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2130621873_ _g2131021876_))
                                            (_g2130621873_ _g2131021876_))
                                        (_g2130621873_ _g2131021876_))))
                                (_g2130621873_ _g2131021876_))))
                        (_g2130621873_ _g2131021876_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop2132021891_
                                             _target2131721886_
                                             '()))
                                          (_g2130621873_ _g2131021876_)))))
                                (_g2130621873_ _g2131021876_))
                            (_g2130621873_ _g2131021876_))))
                    (_g2130621873_ _g2131021876_)))))
        (_g2130522067_ _form21304_))))
  (define gxc#dispatch-lambda-form-delegate
    (lambda (_form20772_)
      (let* ((_g2077620900_
              (lambda (_g2077720897_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2077720897_)))
             (_g2077521017_
              (lambda (_g2077720903_)
                (if (gx#stx-pair? _g2077720903_)
                    (let ((_e2086620905_ (gx#stx-e _g2077720903_)))
                      (let ((_hd2086720908_ (##car _e2086620905_))
                            (_tl2086820910_ (##cdr _e2086620905_)))
                        (if (gx#stx-pair? _tl2086820910_)
                            (let ((_e2086920913_ (gx#stx-e _tl2086820910_)))
                              (let ((_hd2087020916_ (##car _e2086920913_))
                                    (_tl2087120918_ (##cdr _e2086920913_)))
                                (if (gx#stx-pair? _hd2087020916_)
                                    (let ((_e2087220921_
                                           (gx#stx-e _hd2087020916_)))
                                      (let ((_hd2087320924_
                                             (##car _e2087220921_))
                                            (_tl2087420926_
                                             (##cdr _e2087220921_)))
                                        (if (gx#identifier? _hd2087320924_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd2087320924_)
                                                (if (gx#stx-pair?
                                                     _tl2087420926_)
                                                    (let ((_e2087520929_
                                                           (gx#stx-e
                                                            _tl2087420926_)))
                                                      (let ((_hd2087620932_
                                                             (##car _e2087520929_))
                                                            (_tl2087720934_
                                                             (##cdr _e2087520929_)))
                                                        (if (gx#stx-pair?
                                                             _hd2087620932_)
                                                            (let ((_e2087820937_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2087620932_)))
                      (let ((_hd2087920940_ (##car _e2087820937_))
                            (_tl2088020942_ (##cdr _e2087820937_)))
                        (if (gx#identifier? _hd2087920940_)
                            (if (gx#stx-eq? '%#ref _hd2087920940_)
                                (if (gx#stx-pair? _tl2088020942_)
                                    (let ((_e2088120945_
                                           (gx#stx-e _tl2088020942_)))
                                      (let ((_hd2088220948_
                                             (##car _e2088120945_))
                                            (_tl2088320950_
                                             (##cdr _e2088120945_)))
                                        (if (gx#stx-null? _tl2088320950_)
                                            (if (gx#stx-pair? _tl2087720934_)
                                                (let ((_e2088420953_
                                                       (gx#stx-e
                                                        _tl2087720934_)))
                                                  (let ((_hd2088520956_
                                                         (##car _e2088420953_))
                                                        (_tl2088620958_
                                                         (##cdr _e2088420953_)))
                                                    (if (gx#stx-pair?
                                                         _hd2088520956_)
                                                        (let ((_e2088720961_
                                                               (gx#stx-e
                                                                _hd2088520956_)))
                                                          (let ((_hd2088820964_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2088720961_))
                        (_tl2088920966_ (##cdr _e2088720961_)))
                    (if (gx#identifier? _hd2088820964_)
                        (if (gx#stx-eq? '%#ref _hd2088820964_)
                            (if (gx#stx-pair? _tl2088920966_)
                                (let ((_e2089020969_
                                       (gx#stx-e _tl2088920966_)))
                                  (let ((_hd2089120972_ (##car _e2089020969_))
                                        (_tl2089220974_ (##cdr _e2089020969_)))
                                    (if (gx#stx-null? _tl2089220974_)
                                        (if (gx#stx-pair? _tl2088620958_)
                                            (let ((_e2089320977_
                                                   (gx#stx-e _tl2088620958_)))
                                              (let ((_hd2089420980_
                                                     (##car _e2089320977_))
                                                    (_tl2089520982_
                                                     (##cdr _e2089320977_)))
                                                (if (gx#stx-null?
                                                     _tl2089520982_)
                                                    (if (gx#stx-null?
                                                         _tl2087120918_)
                                                        ((lambda (_L20985_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L20986_
                          _L20987_)
                   (gxc#generate-runtime-binding-id _L20985_))
                 _hd2089120972_
                 _hd2088220948_
                 _hd2086720908_)
                (_g2077620900_ _g2077720903_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2077620900_
                                                     _g2077720903_))))
                                            (_g2077620900_ _g2077720903_))
                                        (_g2077620900_ _g2077720903_))))
                                (_g2077620900_ _g2077720903_))
                            (_g2077620900_ _g2077720903_))
                        (_g2077620900_ _g2077720903_))))
                (_g2077620900_ _g2077720903_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2077620900_ _g2077720903_))
                                            (_g2077620900_ _g2077720903_))))
                                    (_g2077620900_ _g2077720903_))
                                (_g2077620900_ _g2077720903_))
                            (_g2077620900_ _g2077720903_))))
                    (_g2077620900_ _g2077720903_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2077620900_
                                                     _g2077720903_))
                                                (_g2077620900_ _g2077720903_))
                                            (_g2077620900_ _g2077720903_))))
                                    (_g2077620900_ _g2077720903_))))
                            (_g2077620900_ _g2077720903_))))
                    (_g2077620900_ _g2077720903_))))
             (_g2077421153_
              (lambda (_g2077721020_)
                (if (gx#stx-pair? _g2077721020_)
                    (let ((_e2082721022_ (gx#stx-e _g2077721020_)))
                      (let ((_hd2082821025_ (##car _e2082721022_))
                            (_tl2082921027_ (##cdr _e2082721022_)))
                        (if (gx#stx-pair/null? _hd2082821025_)
                            (if (fx>= (gx#stx-length _hd2082821025_) '0)
                                (let ((_g23616_
                                       (gx#syntax-split-splice
                                        _hd2082821025_
                                        '0)))
                                  (begin
                                    (let ((_g23617_ (values-count _g23616_)))
                                      (if (not (fx= _g23617_ 2))
                                          (error "Context expects 2 values"
                                                 _g23617_)))
                                    (let ((_target2083021030_
                                           (values-ref _g23616_ 0))
                                          (_tl2083221032_
                                           (values-ref _g23616_ 1)))
                                      (letrec ((_loop2083321035_
                                                (lambda (_hd2083121038_
                                                         _arg2083721040_)
                                                  (if (gx#stx-pair?
                                                       _hd2083121038_)
                                                      (let ((_e2083421043_
                                                             (gx#stx-e
                                                              _hd2083121038_)))
                                                        (let ((_lp-hd2083521046_
                                                               (##car _e2083421043_))
                                                              (_lp-tl2083621048_
                                                               (##cdr _e2083421043_)))
                                                          (_loop2083321035_
                                                           _lp-tl2083621048_
                                                           (cons _lp-hd2083521046_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _arg2083721040_))))
              (let ((_arg2083821051_ (reverse _arg2083721040_)))
                (if (gx#stx-pair? _tl2082921027_)
                    (let ((_e2083921054_ (gx#stx-e _tl2082921027_)))
                      (let ((_hd2084021057_ (##car _e2083921054_))
                            (_tl2084121059_ (##cdr _e2083921054_)))
                        (if (gx#stx-pair? _hd2084021057_)
                            (let ((_e2084221062_ (gx#stx-e _hd2084021057_)))
                              (let ((_hd2084321065_ (##car _e2084221062_))
                                    (_tl2084421067_ (##cdr _e2084221062_)))
                                (if (gx#identifier? _hd2084321065_)
                                    (if (gx#stx-eq? '%#call _hd2084321065_)
                                        (if (gx#stx-pair? _tl2084421067_)
                                            (let ((_e2084521070_
                                                   (gx#stx-e _tl2084421067_)))
                                              (let ((_hd2084621073_
                                                     (##car _e2084521070_))
                                                    (_tl2084721075_
                                                     (##cdr _e2084521070_)))
                                                (if (gx#stx-pair?
                                                     _hd2084621073_)
                                                    (let ((_e2084821078_
                                                           (gx#stx-e
                                                            _hd2084621073_)))
                                                      (let ((_hd2084921081_
                                                             (##car _e2084821078_))
                                                            (_tl2085021083_
                                                             (##cdr _e2084821078_)))
                                                        (if (gx#identifier?
                                                             _hd2084921081_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2084921081_)
                        (if (gx#stx-pair? _tl2085021083_)
                            (let ((_e2085121086_ (gx#stx-e _tl2085021083_)))
                              (let ((_hd2085221089_ (##car _e2085121086_))
                                    (_tl2085321091_ (##cdr _e2085121086_)))
                                (if (gx#stx-null? _tl2085321091_)
                                    (if (gx#stx-pair? _tl2084721075_)
                                        (let ((_e2085421094_
                                               (gx#stx-e _tl2084721075_)))
                                          (let ((_hd2085521097_
                                                 (##car _e2085421094_))
                                                (_tl2085621099_
                                                 (##cdr _e2085421094_)))
                                            (if (gx#stx-pair? _hd2085521097_)
                                                (let ((_e2085721102_
                                                       (gx#stx-e
                                                        _hd2085521097_)))
                                                  (let ((_hd2085821105_
                                                         (##car _e2085721102_))
                                                        (_tl2085921107_
                                                         (##cdr _e2085721102_)))
                                                    (if (gx#identifier?
                                                         _hd2085821105_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd2085821105_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2085921107_)
                        (let ((_e2086021110_ (gx#stx-e _tl2085921107_)))
                          (let ((_hd2086121113_ (##car _e2086021110_))
                                (_tl2086221115_ (##cdr _e2086021110_)))
                            (if (gx#stx-null? _tl2086221115_)
                                (if (gx#stx-null? _tl2084121059_)
                                    ((lambda (_L21118_
                                              _L21119_
                                              _L21120_
                                              _L21121_)
                                       (gxc#generate-runtime-binding-id
                                        _L21118_))
                                     _hd2086121113_
                                     _hd2085221089_
                                     _tl2083221032_
                                     _arg2083821051_)
                                    (_g2077521017_ _g2077721020_))
                                (_g2077521017_ _g2077721020_))))
                        (_g2077521017_ _g2077721020_))
                    (_g2077521017_ _g2077721020_))
                (_g2077521017_ _g2077721020_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2077521017_
                                                 _g2077721020_))))
                                        (_g2077521017_ _g2077721020_))
                                    (_g2077521017_ _g2077721020_))))
                            (_g2077521017_ _g2077721020_))
                        (_g2077521017_ _g2077721020_))
                    (_g2077521017_ _g2077721020_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2077521017_
                                                     _g2077721020_))))
                                            (_g2077521017_ _g2077721020_))
                                        (_g2077521017_ _g2077721020_))
                                    (_g2077521017_ _g2077721020_))))
                            (_g2077521017_ _g2077721020_))))
                    (_g2077521017_ _g2077721020_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop2083321035_
                                         _target2083021030_
                                         '())))))
                                (_g2077521017_ _g2077721020_))
                            (_g2077521017_ _g2077721020_))))
                    (_g2077521017_ _g2077721020_))))
             (_g2077321301_
              (lambda (_g2077721156_)
                (if (gx#stx-pair? _g2077721156_)
                    (let ((_e2078121158_ (gx#stx-e _g2077721156_)))
                      (let ((_hd2078221161_ (##car _e2078121158_))
                            (_tl2078321163_ (##cdr _e2078121158_)))
                        (if (gx#stx-pair/null? _hd2078221161_)
                            (if (fx>= (gx#stx-length _hd2078221161_) '0)
                                (let ((_g23618_
                                       (gx#syntax-split-splice
                                        _hd2078221161_
                                        '0)))
                                  (begin
                                    (let ((_g23619_ (values-count _g23618_)))
                                      (if (not (fx= _g23619_ 2))
                                          (error "Context expects 2 values"
                                                 _g23619_)))
                                    (let ((_target2078421166_
                                           (values-ref _g23618_ 0))
                                          (_tl2078621168_
                                           (values-ref _g23618_ 1)))
                                      (if (gx#stx-null? _tl2078621168_)
                                          (letrec ((_loop2078721171_
                                                    (lambda (_hd2078521174_
                                                             _arg2079121176_)
                                                      (if (gx#stx-pair?
                                                           _hd2078521174_)
                                                          (let ((_e2078821179_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2078521174_)))
                    (let ((_lp-hd2078921182_ (##car _e2078821179_))
                          (_lp-tl2079021184_ (##cdr _e2078821179_)))
                      (_loop2078721171_
                       _lp-tl2079021184_
                       (cons _lp-hd2078921182_ _arg2079121176_))))
                  (let ((_arg2079221187_ (reverse _arg2079121176_)))
                    (if (gx#stx-pair? _tl2078321163_)
                        (let ((_e2079321190_ (gx#stx-e _tl2078321163_)))
                          (let ((_hd2079421193_ (##car _e2079321190_))
                                (_tl2079521195_ (##cdr _e2079321190_)))
                            (if (gx#stx-pair? _hd2079421193_)
                                (let ((_e2079621198_
                                       (gx#stx-e _hd2079421193_)))
                                  (let ((_hd2079721201_ (##car _e2079621198_))
                                        (_tl2079821203_ (##cdr _e2079621198_)))
                                    (if (gx#identifier? _hd2079721201_)
                                        (if (gx#stx-eq? '%#call _hd2079721201_)
                                            (if (gx#stx-pair? _tl2079821203_)
                                                (let ((_e2079921206_
                                                       (gx#stx-e
                                                        _tl2079821203_)))
                                                  (let ((_hd2080021209_
                                                         (##car _e2079921206_))
                                                        (_tl2080121211_
                                                         (##cdr _e2079921206_)))
                                                    (if (gx#stx-pair?
                                                         _hd2080021209_)
                                                        (let ((_e2080221214_
                                                               (gx#stx-e
                                                                _hd2080021209_)))
                                                          (let ((_hd2080321217_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2080221214_))
                        (_tl2080421219_ (##cdr _e2080221214_)))
                    (if (gx#identifier? _hd2080321217_)
                        (if (gx#stx-eq? '%#ref _hd2080321217_)
                            (if (gx#stx-pair? _tl2080421219_)
                                (let ((_e2080521222_
                                       (gx#stx-e _tl2080421219_)))
                                  (let ((_hd2080621225_ (##car _e2080521222_))
                                        (_tl2080721227_ (##cdr _e2080521222_)))
                                    (if (gx#stx-null? _tl2080721227_)
                                        (if (gx#stx-pair/null? _tl2080121211_)
                                            (if (fx>= (gx#stx-length
                                                       _tl2080121211_)
                                                      '0)
                                                (let ((_g23620_
                                                       (gx#syntax-split-splice
                                                        _tl2080121211_
                                                        '0)))
                                                  (begin
                                                    (let ((_g23621_
                                                           (values-count
                                                            _g23620_)))
                                                      (if (not (fx= _g23621_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g23621_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2080821230_
                                                           (values-ref
                                                            _g23620_
                                                            0))
                                                          (_tl2081021232_
                                                           (values-ref
                                                            _g23620_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl2081021232_)
                                                          (letrec ((_loop2081121235_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd2080921238_ _xarg2081521240_)
                              (if (gx#stx-pair? _hd2080921238_)
                                  (let ((_e2081221243_
                                         (gx#stx-e _hd2080921238_)))
                                    (let ((_lp-hd2081321246_
                                           (##car _e2081221243_))
                                          (_lp-tl2081421248_
                                           (##cdr _e2081221243_)))
                                      (if (gx#stx-pair? _lp-hd2081321246_)
                                          (let ((_e2081721251_
                                                 (gx#stx-e _lp-hd2081321246_)))
                                            (let ((_hd2081821254_
                                                   (##car _e2081721251_))
                                                  (_tl2081921256_
                                                   (##cdr _e2081721251_)))
                                              (if (gx#identifier?
                                                   _hd2081821254_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd2081821254_)
                                                      (if (gx#stx-pair?
                                                           _tl2081921256_)
                                                          (let ((_e2082021259_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2081921256_)))
                    (let ((_hd2082121262_ (##car _e2082021259_))
                          (_tl2082221264_ (##cdr _e2082021259_)))
                      (if (gx#stx-null? _tl2082221264_)
                          (_loop2081121235_
                           _lp-tl2081421248_
                           (cons _hd2082121262_ _xarg2081521240_))
                          (_g2077421153_ _g2077721156_))))
                  (_g2077421153_ _g2077721156_))
              (_g2077421153_ _g2077721156_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2077421153_
                                                   _g2077721156_))))
                                          (_g2077421153_ _g2077721156_))))
                                  (let ((_xarg2081621267_
                                         (reverse _xarg2081521240_)))
                                    (if (gx#stx-null? _tl2079521195_)
                                        ((lambda (_L21270_ _L21271_ _L21272_)
                                           (gxc#generate-runtime-binding-id
                                            _L21271_))
                                         _xarg2081621267_
                                         _hd2080621225_
                                         _arg2079221187_)
                                        (_g2077421153_ _g2077721156_)))))))
                    (_loop2081121235_ _target2080821230_ '()))
                  (_g2077421153_ _g2077721156_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2077421153_ _g2077721156_))
                                            (_g2077421153_ _g2077721156_))
                                        (_g2077421153_ _g2077721156_))))
                                (_g2077421153_ _g2077721156_))
                            (_g2077421153_ _g2077721156_))
                        (_g2077421153_ _g2077721156_))))
                (_g2077421153_ _g2077721156_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2077421153_ _g2077721156_))
                                            (_g2077421153_ _g2077721156_))
                                        (_g2077421153_ _g2077721156_))))
                                (_g2077421153_ _g2077721156_))))
                        (_g2077421153_ _g2077721156_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop2078721171_
                                             _target2078421166_
                                             '()))
                                          (_g2077421153_ _g2077721156_)))))
                                (_g2077421153_ _g2077721156_))
                            (_g2077421153_ _g2077721156_))))
                    (_g2077421153_ _g2077721156_)))))
        (_g2077321301_ _form20772_))))
  (define gxc#lambda-form-arity
    (lambda (_form20576_)
      (let* ((_g2057820592_
              (lambda (_g2057920589_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2057920589_)))
             (_g2057720769_
              (lambda (_g2057920595_)
                (if (gx#stx-pair? _g2057920595_)
                    (let ((_e2058220597_ (gx#stx-e _g2057920595_)))
                      (let ((_hd2058320600_ (##car _e2058220597_))
                            (_tl2058420602_ (##cdr _e2058220597_)))
                        (if (gx#stx-pair? _tl2058420602_)
                            (let ((_e2058520605_ (gx#stx-e _tl2058420602_)))
                              (let ((_hd2058620608_ (##car _e2058520605_))
                                    (_tl2058720610_ (##cdr _e2058520605_)))
                                (if (gx#stx-null? _tl2058720610_)
                                    ((lambda (_L20613_ _L20614_)
                                       (let* ((_g2062920657_
                                               (lambda (_g2063020654_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g2063020654_)))
                                              (_g2062820670_
                                               (lambda (_g2063020660_)
                                                 ((lambda (_L20662_)
                                                    (cons '0 '()))
                                                  _g2063020660_)))
                                              (_g2062720719_
                                               (lambda (_g2063020673_)
                                                 (if (gx#stx-pair/null?
                                                      _g2063020673_)
                                                     (if (fx>= (gx#stx-length
                                                                _g2063020673_)
                                                               '0)
                                                         (let ((_g23622_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2063020673_
                         '0)))
                   (begin
                     (let ((_g23623_ (values-count _g23622_)))
                       (if (not (fx= _g23623_ 2))
                           (error "Context expects 2 values" _g23623_)))
                     (let ((_target2064320675_ (values-ref _g23622_ 0))
                           (_tl2064520677_ (values-ref _g23622_ 1)))
                       (letrec ((_loop2064620680_
                                 (lambda (_hd2064420683_ _arg2065020685_)
                                   (if (gx#stx-pair? _hd2064420683_)
                                       (let ((_e2064720688_
                                              (gx#stx-e _hd2064420683_)))
                                         (let ((_lp-hd2064820691_
                                                (##car _e2064720688_))
                                               (_lp-tl2064920693_
                                                (##cdr _e2064720688_)))
                                           (_loop2064620680_
                                            _lp-tl2064920693_
                                            (cons _lp-hd2064820691_
                                                  _arg2065020685_))))
                                       (let ((_arg2065120696_
                                              (reverse _arg2065020685_)))
                                         ((lambda (_L20699_ _L20700_)
                                            (cons (length (begin
                                                            '#!void
                                                            (foldr1 (lambda (_g2071120714_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g2071220716_)
                              (cons _g2071120714_ _g2071220716_))
                            '()
                            _L20700_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                          _tl2064520677_
                                          _arg2065120696_))))))
                         (_loop2064620680_ _target2064320675_ '())))))
                 (_g2062820670_ _g2063020673_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2062820670_
                                                      _g2063020673_))))
                                              (_g2062620766_
                                               (lambda (_g2063020722_)
                                                 (if (gx#stx-pair/null?
                                                      _g2063020722_)
                                                     (if (fx>= (gx#stx-length
                                                                _g2063020722_)
                                                               '0)
                                                         (let ((_g23624_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2063020722_
                         '0)))
                   (begin
                     (let ((_g23625_ (values-count _g23624_)))
                       (if (not (fx= _g23625_ 2))
                           (error "Context expects 2 values" _g23625_)))
                     (let ((_target2063220724_ (values-ref _g23624_ 0))
                           (_tl2063420726_ (values-ref _g23624_ 1)))
                       (if (gx#stx-null? _tl2063420726_)
                           (letrec ((_loop2063520729_
                                     (lambda (_hd2063320732_ _arg2063920734_)
                                       (if (gx#stx-pair? _hd2063320732_)
                                           (let ((_e2063620737_
                                                  (gx#stx-e _hd2063320732_)))
                                             (let ((_lp-hd2063720740_
                                                    (##car _e2063620737_))
                                                   (_lp-tl2063820742_
                                                    (##cdr _e2063620737_)))
                                               (_loop2063520729_
                                                _lp-tl2063820742_
                                                (cons _lp-hd2063720740_
                                                      _arg2063920734_))))
                                           (let ((_arg2064020745_
                                                  (reverse _arg2063920734_)))
                                             ((lambda (_L20748_)
                                                (length (begin
                                                          '#!void
                                                          (foldr1 (lambda (_g2075820761_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g2075920763_)
                            (cons _g2075820761_ _g2075920763_))
                          '()
                          _L20748_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _arg2064020745_))))))
                             (_loop2063520729_ _target2063220724_ '()))
                           (_g2062720719_ _g2063020722_)))))
                 (_g2062720719_ _g2063020722_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2062720719_
                                                      _g2063020722_)))))
                                         (_g2062620766_ _L20614_)))
                                     _hd2058620608_
                                     _hd2058320600_)
                                    (_g2057820592_ _g2057920595_))))
                            (_g2057820592_ _g2057920595_))))
                    (_g2057820592_ _g2057920595_)))))
        (_g2057720769_ _form20576_))))
  (define gxc#lambda-expr?
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
                            (if (gx#stx-eq? '%#lambda _hd2053620557_)
                                ((lambda (_L20562_) '#t) _tl2053720559_)
                                (_g2053120549_ _g2053320552_))
                            (_g2053120549_ _g2053320552_))))
                    (_g2053120549_ _g2053320552_)))))
        (_g2053020573_ _expr20529_))))
  (define gxc#case-lambda-expr?
    (lambda (_expr20482_)
      (let* ((_g2048520495_
              (lambda (_g2048620492_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2048620492_)))
             (_g2048420502_ (lambda (_g2048620498_) ((lambda () '#f))))
             (_g2048320526_
              (lambda (_g2048620505_)
                (if (gx#stx-pair? _g2048620505_)
                    (let ((_e2048820507_ (gx#stx-e _g2048620505_)))
                      (let ((_hd2048920510_ (##car _e2048820507_))
                            (_tl2049020512_ (##cdr _e2048820507_)))
                        (if (gx#identifier? _hd2048920510_)
                            (if (gx#stx-eq? '%#case-lambda _hd2048920510_)
                                ((lambda (_L20515_) '#t) _tl2049020512_)
                                (_g2048420502_ _g2048620505_))
                            (_g2048420502_ _g2048620505_))))
                    (_g2048420502_ _g2048620505_)))))
        (_g2048320526_ _expr20482_))))
  (define gxc#opt-lambda-expr?
    (lambda (_expr20351_)
      (let* ((_g2035420384_
              (lambda (_g2035520381_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2035520381_)))
             (_g2035320391_ (lambda (_g2035520387_) ((lambda () '#f))))
             (_g2035220479_
              (lambda (_g2035520394_)
                (if (gx#stx-pair? _g2035520394_)
                    (let ((_e2035920396_ (gx#stx-e _g2035520394_)))
                      (let ((_hd2036020399_ (##car _e2035920396_))
                            (_tl2036120401_ (##cdr _e2035920396_)))
                        (if (gx#identifier? _hd2036020399_)
                            (if (gx#stx-eq? '%#let-values _hd2036020399_)
                                (if (gx#stx-pair? _tl2036120401_)
                                    (let ((_e2036220404_
                                           (gx#stx-e _tl2036120401_)))
                                      (let ((_hd2036320407_
                                             (##car _e2036220404_))
                                            (_tl2036420409_
                                             (##cdr _e2036220404_)))
                                        (if (gx#stx-pair? _hd2036320407_)
                                            (let ((_e2036520412_
                                                   (gx#stx-e _hd2036320407_)))
                                              (let ((_hd2036620415_
                                                     (##car _e2036520412_))
                                                    (_tl2036720417_
                                                     (##cdr _e2036520412_)))
                                                (if (gx#stx-pair?
                                                     _hd2036620415_)
                                                    (let ((_e2036820420_
                                                           (gx#stx-e
                                                            _hd2036620415_)))
                                                      (let ((_hd2036920423_
                                                             (##car _e2036820420_))
                                                            (_tl2037020425_
                                                             (##cdr _e2036820420_)))
                                                        (if (gx#stx-pair?
                                                             _hd2036920423_)
                                                            (let ((_e2037120428_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2036920423_)))
                      (let ((_hd2037220431_ (##car _e2037120428_))
                            (_tl2037320433_ (##cdr _e2037120428_)))
                        (if (gx#stx-null? _tl2037320433_)
                            (if (gx#stx-pair? _tl2037020425_)
                                (let ((_e2037420436_
                                       (gx#stx-e _tl2037020425_)))
                                  (let ((_hd2037520439_ (##car _e2037420436_))
                                        (_tl2037620441_ (##cdr _e2037420436_)))
                                    (if (gx#stx-null? _tl2037620441_)
                                        (if (gx#stx-null? _tl2036720417_)
                                            (if (gx#stx-pair? _tl2036420409_)
                                                (let ((_e2037720444_
                                                       (gx#stx-e
                                                        _tl2036420409_)))
                                                  (let ((_hd2037820447_
                                                         (##car _e2037720444_))
                                                        (_tl2037920449_
                                                         (##cdr _e2037720444_)))
                                                    (if (gx#stx-null?
                                                         _tl2037920449_)
                                                        ((lambda (_L20452_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L20453_
                          _L20454_)
                   (if (gx#identifier? _L20454_)
                       (if (gxc#lambda-expr? _L20453_)
                           (gxc#case-lambda-expr? _L20452_)
                           '#f)
                       '#f))
                 _hd2037820447_
                 _hd2037520439_
                 _hd2037220431_)
                (_g2035320391_ _g2035520394_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2035320391_ _g2035520394_))
                                            (_g2035320391_ _g2035520394_))
                                        (_g2035320391_ _g2035520394_))))
                                (_g2035320391_ _g2035520394_))
                            (_g2035320391_ _g2035520394_))))
                    (_g2035320391_ _g2035520394_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2035320391_
                                                     _g2035520394_))))
                                            (_g2035320391_ _g2035520394_))))
                                    (_g2035320391_ _g2035520394_))
                                (_g2035320391_ _g2035520394_))
                            (_g2035320391_ _g2035520394_))))
                    (_g2035320391_ _g2035520394_)))))
        (_g2035220479_ _expr20351_))))
  (begin
    (define gxc#lift-case-lambda-clauses__opt-lambda20091
      (lambda (_stx20093_ _id20094_ _clauses20095_ _gensym?20096_)
        (let _lp20098_ ((_rest20100_ _clauses20095_)
                        (_ids20101_ '())
                        (_impls20102_ '())
                        (_clauses20103_ '()))
          (let* ((_rest2010420112_ _rest20100_)
                 (_E2010720116_
                  (lambda () (error '"No clause matching" _rest2010420112_)))
                 (_else2010620120_
                  (lambda ()
                    (values (reverse _ids20101_)
                            (reverse _impls20102_)
                            (reverse _clauses20103_))))
                 (_K2010820325_
                  (lambda (_rest20123_ _clause20124_)
                    (if (gxc#dispatch-lambda-form? _clause20124_)
                        (_lp20098_
                         _rest20123_
                         _ids20101_
                         _impls20102_
                         (cons _clause20124_ _clauses20103_))
                        (let* ((_g2012620137_
                                (lambda (_g2012720134_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2012720134_)))
                               (_g2012520322_
                                (lambda (_g2012720140_)
                                  (if (gx#stx-pair? _g2012720140_)
                                      (let ((_e2013020142_
                                             (gx#stx-e _g2012720140_)))
                                        (let ((_hd2013120145_
                                               (##car _e2013020142_))
                                              (_tl2013220147_
                                               (##cdr _e2013020142_)))
                                          ((lambda (_L20150_ _L20151_)
                                             (let* ((_id20168_
                                                     (make-symbol
                                                      (gx#stx-e _id20094_)
                                                      '"__"
                                                      (length _clauses20103_)
                                                      (if _gensym?20096_
                                                          (gensym '__)
                                                          '"")))
                                                    (_id20170_
                                                     (gx#core-quote-syntax__1
                                                      _id20168_
                                                      (gx#stx-source
                                                       _stx20093_)))
                                                    (_impl20172_
                                                     (gxc#xform-wrap-source
                                                      (cons (gx#datum->syntax__0
                                                             '#f
                                                             '%#lambda)
                                                            (cons _L20151_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L20150_))
              _stx20093_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause20319_
                                                     (let* ((_g2017620204_
                                                             (lambda (_g2017720201_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2017720201_)))
                                                            (_g2017520220_
                                                             (lambda (_g2017720207_)
                                                               ((lambda (_L20209_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L20151_
                                (cons (gxc#xform-wrap-source
                                       (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'apply '()))
                                                   (cons (cons '%#ref
                                                               (cons _id20170_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                             (cons _L20209_ '()))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _stx20093_)
                                      '())))
                        _g2017720207_)))
                    (_g2017420269_
                     (lambda (_g2017720223_)
                       (if (gx#stx-pair/null? _g2017720223_)
                           (if (fx>= (gx#stx-length _g2017720223_) '0)
                               (let ((_g23626_
                                      (gx#syntax-split-splice
                                       _g2017720223_
                                       '0)))
                                 (begin
                                   (let ((_g23627_ (values-count _g23626_)))
                                     (if (not (fx= _g23627_ 2))
                                         (error "Context expects 2 values"
                                                _g23627_)))
                                   (let ((_target2019020225_
                                          (values-ref _g23626_ 0))
                                         (_tl2019220227_
                                          (values-ref _g23626_ 1)))
                                     (letrec ((_loop2019320230_
                                               (lambda (_hd2019120233_
                                                        _arg2019720235_)
                                                 (if (gx#stx-pair?
                                                      _hd2019120233_)
                                                     (let ((_e2019420238_
                                                            (gx#stx-e
                                                             _hd2019120233_)))
                                                       (let ((_lp-hd2019520241_
                                                              (##car _e2019420238_))
                                                             (_lp-tl2019620243_
                                                              (##cdr _e2019420238_)))
                                                         (_loop2019320230_
                                                          _lp-tl2019620243_
                                                          (cons _lp-hd2019520241_
                                                                _arg2019720235_))))
                                                     (let ((_arg2019820246_
                                                            (reverse _arg2019720235_)))
                                                       ((lambda (_L20249_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L20250_)
                  (cons _L20151_
                        (cons (gxc#xform-wrap-source
                               (cons '%#call
                                     (cons (cons '%#ref (cons 'apply '()))
                                           (cons (cons '%#ref
                                                       (cons _id20170_ '()))
                                                 (foldr1 cons
                                                         (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '%#ref)
                             (cons _L20249_ '()))
                       '())
                 (begin
                   '#!void
                   (foldr1 (lambda (_g2026120264_ _g2026220266_)
                             (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                         (cons _g2026120264_ '()))
                                   _g2026220266_))
                           '()
                           _L20250_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _stx20093_)
                              '())))
                _tl2019220227_
                _arg2019820246_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop2019320230_
                                        _target2019020225_
                                        '())))))
                               (_g2017520220_ _g2017720223_))
                           (_g2017520220_ _g2017720223_))))
                    (_g2017320316_
                     (lambda (_g2017720272_)
                       (if (gx#stx-pair/null? _g2017720272_)
                           (if (fx>= (gx#stx-length _g2017720272_) '0)
                               (let ((_g23628_
                                      (gx#syntax-split-splice
                                       _g2017720272_
                                       '0)))
                                 (begin
                                   (let ((_g23629_ (values-count _g23628_)))
                                     (if (not (fx= _g23629_ 2))
                                         (error "Context expects 2 values"
                                                _g23629_)))
                                   (let ((_target2017920274_
                                          (values-ref _g23628_ 0))
                                         (_tl2018120276_
                                          (values-ref _g23628_ 1)))
                                     (if (gx#stx-null? _tl2018120276_)
                                         (letrec ((_loop2018220279_
                                                   (lambda (_hd2018020282_
                                                            _arg2018620284_)
                                                     (if (gx#stx-pair?
                                                          _hd2018020282_)
                                                         (let ((_e2018320287_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd2018020282_)))
                   (let ((_lp-hd2018420290_ (##car _e2018320287_))
                         (_lp-tl2018520292_ (##cdr _e2018320287_)))
                     (_loop2018220279_
                      _lp-tl2018520292_
                      (cons _lp-hd2018420290_ _arg2018620284_))))
                 (let ((_arg2018720295_ (reverse _arg2018620284_)))
                   ((lambda (_L20298_)
                      (cons _L20151_
                            (cons (gxc#xform-wrap-source
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _id20170_ '()))
                                               (begin
                                                 '#!void
                                                 (foldr1 (lambda (_g2030820311_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g2030920313_)
                   (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                               (cons _g2030820311_ '()))
                         _g2030920313_))
                 '()
                 _L20298_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _stx20093_)
                                  '())))
                    _arg2018720295_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop2018220279_
                                            _target2017920274_
                                            '()))
                                         (_g2017420269_ _g2017720272_)))))
                               (_g2017420269_ _g2017720272_))
                           (_g2017420269_ _g2017720272_)))))
               (_g2017320316_ _L20151_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_lp20098_
                                                _rest20123_
                                                (cons _id20170_ _ids20101_)
                                                (cons _impl20172_ _impls20102_)
                                                (cons _clause20319_
                                                      _clauses20103_))))
                                           _tl2013220147_
                                           _hd2013120145_)))
                                      (_g2012620137_ _g2012720140_)))))
                          (_g2012520322_ _clause20124_))))))
            (if (##pair? _rest2010420112_)
                (let ((_hd2010920328_ (##car _rest2010420112_))
                      (_tl2011020330_ (##cdr _rest2010420112_)))
                  (let* ((_clause20333_ _hd2010920328_)
                         (_rest20335_ _tl2011020330_))
                    (_K2010820325_ _rest20335_ _clause20333_)))
                (_else2010620120_))))))
    (begin
      (define gxc#lift-case-lambda-clauses__0
        (lambda (_stx20340_ _id20341_ _clauses20342_)
          (let ((_gensym?20344_ '#f))
            (gxc#lift-case-lambda-clauses__opt-lambda20091
             _stx20340_
             _id20341_
             _clauses20342_
             _gensym?20344_))))
      (define gxc#lift-case-lambda-clauses
        (lambda _g23631_
          (let ((_g23630_ (length _g23631_)))
            (cond ((fx= _g23630_ 3)
                   (apply gxc#lift-case-lambda-clauses__0 _g23631_))
                  ((fx= _g23630_ 4)
                   (apply gxc#lift-case-lambda-clauses__opt-lambda20091
                          _g23631_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#lift-case-lambda-clauses
                    _g23631_))))))))
  (define gxc#lift-top-lambda-define-values%
    (lambda (_stx19682_)
      (letrec ((_case-lambda-clause-def19684_
                (lambda (_id20089_ _impl20090_)
                  (gxc#xform-wrap-source
                   (cons '%#define-values
                         (cons (cons _id20089_ '())
                               (cons (gxc#compile-e _impl20090_) '())))
                   _stx19682_))))
        (let* ((_g1968819733_
                (lambda (_g1968919730_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1968919730_)))
               (_g1968719779_
                (lambda (_g1968919736_)
                  (if (gx#stx-pair? _g1968919736_)
                      (let ((_e1972019738_ (gx#stx-e _g1968919736_)))
                        (let ((_hd1972119741_ (##car _e1972019738_))
                              (_tl1972219743_ (##cdr _e1972019738_)))
                          (if (gx#stx-pair? _tl1972219743_)
                              (let ((_e1972319746_ (gx#stx-e _tl1972219743_)))
                                (let ((_hd1972419749_ (##car _e1972319746_))
                                      (_tl1972519751_ (##cdr _e1972319746_)))
                                  (if (gx#stx-pair? _tl1972519751_)
                                      (let ((_e1972619754_
                                             (gx#stx-e _tl1972519751_)))
                                        (let ((_hd1972719757_
                                               (##car _e1972619754_))
                                              (_tl1972819759_
                                               (##cdr _e1972619754_)))
                                          (if (gx#stx-null? _tl1972819759_)
                                              ((lambda (_L19762_ _L19763_)
                                                 (gxc#xform-wrap-source
                                                  (cons '%#define-values
                                                        (cons _L19763_
                                                              (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L19762_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx19682_))
                                               _hd1972719757_
                                               _hd1972419749_)
                                              (_g1968819733_ _g1968919736_))))
                                      (_g1968819733_ _g1968919736_))))
                              (_g1968819733_ _g1968919736_))))
                      (_g1968819733_ _g1968919736_))))
               (_g1968619961_
                (lambda (_g1968919782_)
                  (if (gx#stx-pair? _g1968919782_)
                      (let ((_e1970619784_ (gx#stx-e _g1968919782_)))
                        (let ((_hd1970719787_ (##car _e1970619784_))
                              (_tl1970819789_ (##cdr _e1970619784_)))
                          (if (gx#stx-pair? _tl1970819789_)
                              (let ((_e1970919792_ (gx#stx-e _tl1970819789_)))
                                (let ((_hd1971019795_ (##car _e1970919792_))
                                      (_tl1971119797_ (##cdr _e1970919792_)))
                                  (if (gx#stx-pair? _hd1971019795_)
                                      (let ((_e1971219800_
                                             (gx#stx-e _hd1971019795_)))
                                        (let ((_hd1971319803_
                                               (##car _e1971219800_))
                                              (_tl1971419805_
                                               (##cdr _e1971219800_)))
                                          (if (gx#stx-null? _tl1971419805_)
                                              (if (gx#stx-pair? _tl1971119797_)
                                                  (let ((_e1971519808_
                                                         (gx#stx-e
                                                          _tl1971119797_)))
                                                    (let ((_hd1971619811_
                                                           (##car _e1971519808_))
                                                          (_tl1971719813_
                                                           (##cdr _e1971519808_)))
                                                      (if (gx#stx-null?
                                                           _tl1971719813_)
                                                          ((lambda (_L19816_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L19817_)
                     (if (if (gx#identifier? _L19817_)
                             (gxc#opt-lambda-expr? _L19816_)
                             '#f)
                         (let* ((_g1983319863_
                                 (lambda (_g1983419860_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1983419860_)))
                                (_g1983219958_
                                 (lambda (_g1983419866_)
                                   (if (gx#stx-pair? _g1983419866_)
                                       (let ((_e1983819868_
                                              (gx#stx-e _g1983419866_)))
                                         (let ((_hd1983919871_
                                                (##car _e1983819868_))
                                               (_tl1984019873_
                                                (##cdr _e1983819868_)))
                                           (if (gx#stx-pair? _tl1984019873_)
                                               (let ((_e1984119876_
                                                      (gx#stx-e
                                                       _tl1984019873_)))
                                                 (let ((_hd1984219879_
                                                        (##car _e1984119876_))
                                                       (_tl1984319881_
                                                        (##cdr _e1984119876_)))
                                                   (if (gx#stx-pair?
                                                        _hd1984219879_)
                                                       (let ((_e1984419884_
                                                              (gx#stx-e
                                                               _hd1984219879_)))
                                                         (let ((_hd1984519887_
                                                                (##car _e1984419884_))
                                                               (_tl1984619889_
                                                                (##cdr _e1984419884_)))
                                                           (if (gx#stx-pair?
                                                                _hd1984519887_)
                                                               (let ((_e1984719892_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1984519887_)))
                         (let ((_hd1984819895_ (##car _e1984719892_))
                               (_tl1984919897_ (##cdr _e1984719892_)))
                           (if (gx#stx-pair? _hd1984819895_)
                               (let ((_e1985019900_ (gx#stx-e _hd1984819895_)))
                                 (let ((_hd1985119903_ (##car _e1985019900_))
                                       (_tl1985219905_ (##cdr _e1985019900_)))
                                   (if (gx#stx-null? _tl1985219905_)
                                       (if (gx#stx-pair? _tl1984919897_)
                                           (let ((_e1985319908_
                                                  (gx#stx-e _tl1984919897_)))
                                             (let ((_hd1985419911_
                                                    (##car _e1985319908_))
                                                   (_tl1985519913_
                                                    (##cdr _e1985319908_)))
                                               (if (gx#stx-null?
                                                    _tl1985519913_)
                                                   (if (gx#stx-null?
                                                        _tl1984619889_)
                                                       (if (gx#stx-pair?
                                                            _tl1984319881_)
                                                           (let ((_e1985619916_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1984319881_)))
                     (let ((_hd1985719919_ (##car _e1985619916_))
                           (_tl1985819921_ (##cdr _e1985619916_)))
                       (if (gx#stx-null? _tl1985819921_)
                           ((lambda (_L19924_ _L19925_ _L19926_)
                              (let* ((_lambda-id19950_
                                      (make-symbol
                                       (gx#stx-e _L19817_)
                                       '"__"
                                       (gx#stx-e _L19926_)))
                                     (_lambda-id19952_
                                      (gx#core-quote-syntax__1
                                       _lambda-id19950_
                                       (gx#stx-source _stx19682_)))
                                     (_g23632_
                                      (gx#core-bind-runtime!__0
                                       _lambda-id19952_))
                                     (_new-case-lambda-expr19955_
                                      (gxc#apply-expression-subst
                                       _L19924_
                                       _L19926_
                                       _lambda-id19952_)))
                                (begin
                                  (gxc#verbose
                                   '"lift opt-lambda dispatch "
                                   (gxc#generate-runtime-binding-id _L19817_)
                                   '" => "
                                   (gxc#generate-runtime-binding-id
                                    _lambda-id19952_))
                                  (gxc#xform-wrap-source
                                   (cons '%#begin
                                         (cons (gxc#xform-wrap-source
                                                (cons '%#define-values
                                                      (cons (cons _lambda-id19952_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (gxc#compile-e _L19925_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _stx19682_)
                                               (cons (gxc#lift-top-lambda-define-values%
                                                      (gxc#xform-wrap-source
                                                       (cons '%#define-values
                                                             (cons (cons _L19817_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons _new-case-lambda-expr19955_ '())))
               _stx19682_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   _stx19682_))))
                            _hd1985719919_
                            _hd1985419911_
                            _hd1985119903_)
                           (_g1983319863_ _g1983419866_))))
                   (_g1983319863_ _g1983419866_))
               (_g1983319863_ _g1983419866_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1983319863_
                                                    _g1983419866_))))
                                           (_g1983319863_ _g1983419866_))
                                       (_g1983319863_ _g1983419866_))))
                               (_g1983319863_ _g1983419866_))))
                       (_g1983319863_ _g1983419866_))))
               (_g1983319863_ _g1983419866_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1983319863_ _g1983419866_))))
                                       (_g1983319863_ _g1983419866_)))))
                           (_g1983219958_ _L19816_))
                         (_g1968719779_ _g1968919782_)))
                   _hd1971619811_
                   _hd1971319803_)
                  (_g1968719779_ _g1968919782_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1968719779_
                                                   _g1968919782_))
                                              (_g1968719779_ _g1968919782_))))
                                      (_g1968719779_ _g1968919782_))))
                              (_g1968719779_ _g1968919782_))))
                      (_g1968719779_ _g1968919782_))))
               (_g1968520086_
                (lambda (_g1968919964_)
                  (if (gx#stx-pair? _g1968919964_)
                      (let ((_e1969219966_ (gx#stx-e _g1968919964_)))
                        (let ((_hd1969319969_ (##car _e1969219966_))
                              (_tl1969419971_ (##cdr _e1969219966_)))
                          (if (gx#stx-pair? _tl1969419971_)
                              (let ((_e1969519974_ (gx#stx-e _tl1969419971_)))
                                (let ((_hd1969619977_ (##car _e1969519974_))
                                      (_tl1969719979_ (##cdr _e1969519974_)))
                                  (if (gx#stx-pair? _hd1969619977_)
                                      (let ((_e1969819982_
                                             (gx#stx-e _hd1969619977_)))
                                        (let ((_hd1969919985_
                                               (##car _e1969819982_))
                                              (_tl1970019987_
                                               (##cdr _e1969819982_)))
                                          (if (gx#stx-null? _tl1970019987_)
                                              (if (gx#stx-pair? _tl1969719979_)
                                                  (let ((_e1970119990_
                                                         (gx#stx-e
                                                          _tl1969719979_)))
                                                    (let ((_hd1970219993_
                                                           (##car _e1970119990_))
                                                          (_tl1970319995_
                                                           (##cdr _e1970119990_)))
                                                      (if (gx#stx-null?
                                                           _tl1970319995_)
                                                          ((lambda (_L19998_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L19999_)
                     (if (if (gx#identifier? _L19999_)
                             (gxc#case-lambda-expr? _L19998_)
                             '#f)
                         (let* ((_g2001620030_
                                 (lambda (_g2001720027_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g2001720027_)))
                                (_g2001520061_
                                 (lambda (_g2001720033_)
                                   (if (gx#stx-pair? _g2001720033_)
                                       (let ((_e2002320035_
                                              (gx#stx-e _g2001720033_)))
                                         (let ((_hd2002420038_
                                                (##car _e2002320035_))
                                               (_tl2002520040_
                                                (##cdr _e2002320035_)))
                                           ((lambda (_L20043_)
                                              (let ((_g23633_
                                                     (gxc#lift-case-lambda-clauses__0
                                                      _stx19682_
                                                      _L19999_
                                                      _L20043_)))
                                                (begin
                                                  (let ((_g23634_
                                                         (values-count
                                                          _g23633_)))
                                                    (if (not (fx= _g23634_ 3))
                                                        (error "Context expects 3 values"
                                                               _g23634_)))
                                                  (let ((_ids20053_
                                                         (values-ref
                                                          _g23633_
                                                          0))
                                                        (_impls20054_
                                                         (values-ref
                                                          _g23633_
                                                          1))
                                                        (_clauses20055_
                                                         (values-ref
                                                          _g23633_
                                                          2)))
                                                    (let* ((_g23635_
                                                            (for-each
                                                             gx#core-bind-runtime!
                                                             _ids20053_))
                                                           (_defs20058_
                                                            (map _case-lambda-clause-def19684_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _ids20053_
                         _impls20054_)))
              (begin
                (gxc#verbose
                 '"lift case-lambda clauses "
                 (gxc#generate-runtime-binding-id _L19999_)
                 '" => "
                 (map gxc#identifier-symbol _ids20053_))
                (gxc#xform-wrap-source
                 (cons '%#begin
                       (foldr1 cons
                               (cons (gxc#xform-wrap-source
                                      (cons '%#define-values
                                            (cons (cons _L19999_ '())
                                                  (cons (gxc#xform-wrap-source
                                                         (cons '%#case-lambda
                                                               _clauses20055_)
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'case-lambda-expr))
                                                        '())))
                                      _stx19682_)
                                     '())
                               _defs20058_))
                 _stx19682_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _tl2002520040_)))
                                       (_g2001620030_ _g2001720033_))))
                                (_g2001420083_
                                 (lambda (_g2001720064_)
                                   (if (gx#stx-pair? _g2001720064_)
                                       (let ((_e2001920066_
                                              (gx#stx-e _g2001720064_)))
                                         (let ((_hd2002020069_
                                                (##car _e2001920066_))
                                               (_tl2002120071_
                                                (##cdr _e2001920066_)))
                                           ((lambda (_L20074_)
                                              (if (andmap1 gxc#dispatch-lambda-form?
                                                           _L20074_)
                                                  _stx19682_
                                                  (_g2001520061_
                                                   _g2001720064_)))
                                            _tl2002120071_)))
                                       (_g2001520061_ _g2001720064_)))))
                           (_g2001420083_ _L19998_))
                         (_g1968619961_ _g1968919964_)))
                   _hd1970219993_
                   _hd1969919985_)
                  (_g1968619961_ _g1968919964_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1968619961_
                                                   _g1968919964_))
                                              (_g1968619961_ _g1968919964_))))
                                      (_g1968619961_ _g1968919964_))))
                              (_g1968619961_ _g1968919964_))))
                      (_g1968619961_ _g1968919964_)))))
          (_g1968520086_ _stx19682_)))))
  (define gxc#lift-top-lambda-let-values%
    (lambda (_stx19105_)
      (letrec* ((_bind-e__opt-lambda19664__2358223583_
                 (lambda (_id19666_ _expr19667_ _compile?19668_)
                   (cons (cons _id19666_ '())
                         (cons (if _compile?19668_
                                   (gxc#compile-e _expr19667_)
                                   _expr19667_)
                               '()))))
                (_bind-e__0__2358423585_
                 (lambda (_id19673_ _expr19674_)
                   (let ((_compile?19676_ '#t))
                     (_bind-e__opt-lambda19664__2358223583_
                      _id19673_
                      _expr19674_
                      _compile?19676_))))
                (_bind-e19107_
                 (lambda _g23637_
                   (let ((_g23636_ (length _g23637_)))
                     (cond ((fx= _g23636_ 2)
                            (apply _bind-e__0__2358423585_ _g23637_))
                           ((fx= _g23636_ 3)
                            (apply _bind-e__opt-lambda19664__2358223583_
                                   _g23637_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g23637_))))))
                (_compile-bindings19108_
                 (lambda (_rest19250_)
                   (let _lp19252_ ((_rest19254_ _rest19250_)
                                   (_lift119255_ '())
                                   (_lift219256_ '())
                                   (_bind19257_ '()))
                     (let* ((_rest1925819266_ _rest19254_)
                            (_E1926119270_
                             (lambda ()
                               (error '"No clause matching" _rest1925819266_)))
                            (_else1926019274_
                             (lambda ()
                               (values (reverse _lift119255_)
                                       (reverse _lift219256_)
                                       (reverse _bind19257_))))
                            (_K1926219653_
                             (lambda (_rest19277_ _hd19278_)
                               (let* ((_g1928219318_
                                       (lambda (_g1928319315_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1928319315_)))
                                      (_g1928119359_
                                       (lambda (_g1928319321_)
                                         (if (gx#stx-pair? _g1928319321_)
                                             (let ((_e1930819323_
                                                    (gx#stx-e _g1928319321_)))
                                               (let ((_hd1930919326_
                                                      (##car _e1930819323_))
                                                     (_tl1931019328_
                                                      (##cdr _e1930819323_)))
                                                 (if (gx#stx-pair?
                                                      _tl1931019328_)
                                                     (let ((_e1931119331_
                                                            (gx#stx-e
                                                             _tl1931019328_)))
                                                       (let ((_hd1931219334_
                                                              (##car _e1931119331_))
                                                             (_tl1931319336_
                                                              (##cdr _e1931119331_)))
                                                         (if (gx#stx-null?
                                                              _tl1931319336_)
                                                             ((lambda (_L19339_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L19340_)
                        (_lp19252_
                         _rest19277_
                         _lift119255_
                         _lift219256_
                         (cons (cons _L19340_
                                     (cons (gxc#compile-e _L19339_) '()))
                               _bind19257_)))
                      _hd1931219334_
                      _hd1930919326_)
                     (_g1928219318_ _g1928319321_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1928219318_
                                                      _g1928319321_))))
                                             (_g1928219318_ _g1928319321_))))
                                      (_g1928019531_
                                       (lambda (_g1928319362_)
                                         (if (gx#stx-pair? _g1928319362_)
                                             (let ((_e1929719364_
                                                    (gx#stx-e _g1928319362_)))
                                               (let ((_hd1929819367_
                                                      (##car _e1929719364_))
                                                     (_tl1929919369_
                                                      (##cdr _e1929719364_)))
                                                 (if (gx#stx-pair?
                                                      _hd1929819367_)
                                                     (let ((_e1930019372_
                                                            (gx#stx-e
                                                             _hd1929819367_)))
                                                       (let ((_hd1930119375_
                                                              (##car _e1930019372_))
                                                             (_tl1930219377_
                                                              (##cdr _e1930019372_)))
                                                         (if (gx#stx-null?
                                                              _tl1930219377_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1929919369_)
                         (let ((_e1930319380_ (gx#stx-e _tl1929919369_)))
                           (let ((_hd1930419383_ (##car _e1930319380_))
                                 (_tl1930519385_ (##cdr _e1930319380_)))
                             (if (gx#stx-null? _tl1930519385_)
                                 ((lambda (_L19388_ _L19389_)
                                    (if (if (gx#identifier? _L19389_)
                                            (gxc#opt-lambda-expr? _L19388_)
                                            '#f)
                                        (let* ((_g1940319433_
                                                (lambda (_g1940419430_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1940419430_)))
                                               (_g1940219528_
                                                (lambda (_g1940419436_)
                                                  (if (gx#stx-pair?
                                                       _g1940419436_)
                                                      (let ((_e1940819438_
                                                             (gx#stx-e
                                                              _g1940419436_)))
                                                        (let ((_hd1940919441_
                                                               (##car _e1940819438_))
                                                              (_tl1941019443_
                                                               (##cdr _e1940819438_)))
                                                          (if (gx#stx-pair?
                                                               _tl1941019443_)
                                                              (let ((_e1941119446_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1941019443_)))
                        (let ((_hd1941219449_ (##car _e1941119446_))
                              (_tl1941319451_ (##cdr _e1941119446_)))
                          (if (gx#stx-pair? _hd1941219449_)
                              (let ((_e1941419454_ (gx#stx-e _hd1941219449_)))
                                (let ((_hd1941519457_ (##car _e1941419454_))
                                      (_tl1941619459_ (##cdr _e1941419454_)))
                                  (if (gx#stx-pair? _hd1941519457_)
                                      (let ((_e1941719462_
                                             (gx#stx-e _hd1941519457_)))
                                        (let ((_hd1941819465_
                                               (##car _e1941719462_))
                                              (_tl1941919467_
                                               (##cdr _e1941719462_)))
                                          (if (gx#stx-pair? _hd1941819465_)
                                              (let ((_e1942019470_
                                                     (gx#stx-e
                                                      _hd1941819465_)))
                                                (let ((_hd1942119473_
                                                       (##car _e1942019470_))
                                                      (_tl1942219475_
                                                       (##cdr _e1942019470_)))
                                                  (if (gx#stx-null?
                                                       _tl1942219475_)
                                                      (if (gx#stx-pair?
                                                           _tl1941919467_)
                                                          (let ((_e1942319478_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1941919467_)))
                    (let ((_hd1942419481_ (##car _e1942319478_))
                          (_tl1942519483_ (##cdr _e1942319478_)))
                      (if (gx#stx-null? _tl1942519483_)
                          (if (gx#stx-null? _tl1941619459_)
                              (if (gx#stx-pair? _tl1941319451_)
                                  (let ((_e1942619486_
                                         (gx#stx-e _tl1941319451_)))
                                    (let ((_hd1942719489_
                                           (##car _e1942619486_))
                                          (_tl1942819491_
                                           (##cdr _e1942619486_)))
                                      (if (gx#stx-null? _tl1942819491_)
                                          ((lambda (_L19494_ _L19495_ _L19496_)
                                             (let* ((_lambda-id19520_
                                                     (make-symbol
                                                      (gx#stx-e _L19389_)
                                                      '"__"
                                                      (gx#stx-e _L19496_)
                                                      (gensym '__)))
                                                    (_lambda-id19522_
                                                     (gx#core-quote-syntax__1
                                                      _lambda-id19520_
                                                      (gx#stx-source
                                                       _stx19105_)))
                                                    (_g23638_
                                                     (gx#core-bind-runtime!__0
                                                      _lambda-id19522_))
                                                    (_new-case-lambda-expr19525_
                                                     (gxc#apply-expression-subst
                                                      _L19494_
                                                      _L19496_
                                                      _lambda-id19522_)))
                                               (begin
                                                 (gxc#verbose
                                                  '"lift opt-lambda dispatch "
                                                  (gxc#generate-runtime-binding-id
                                                   _L19389_)
                                                  '" => "
                                                  (gxc#generate-runtime-binding-id
                                                   _lambda-id19522_))
                                                 (_lp19252_
                                                  (cons (_bind-e__opt-lambda19664__2358223583_
                                                         _L19389_
                                                         _new-case-lambda-expr19525_
                                                         '#f)
                                                        _rest19277_)
                                                  (cons (_bind-e__0__2358423585_
                                                         _lambda-id19522_
                                                         _L19495_)
                                                        _lift119255_)
                                                  _lift219256_
                                                  _bind19257_))))
                                           _hd1942719489_
                                           _hd1942419481_
                                           _hd1942119473_)
                                          (_g1940319433_ _g1940419436_))))
                                  (_g1940319433_ _g1940419436_))
                              (_g1940319433_ _g1940419436_))
                          (_g1940319433_ _g1940419436_))))
                  (_g1940319433_ _g1940419436_))
              (_g1940319433_ _g1940419436_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1940319433_ _g1940419436_))))
                                      (_g1940319433_ _g1940419436_))))
                              (_g1940319433_ _g1940419436_))))
                      (_g1940319433_ _g1940419436_))))
              (_g1940319433_ _g1940419436_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g1940219528_ _L19388_))
                                        (_g1928119359_ _g1928319362_)))
                                  _hd1930419383_
                                  _hd1930119375_)
                                 (_g1928119359_ _g1928319362_))))
                         (_g1928119359_ _g1928319362_))
                     (_g1928119359_ _g1928319362_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1928119359_
                                                      _g1928319362_))))
                                             (_g1928119359_ _g1928319362_))))
                                      (_g1927919650_
                                       (lambda (_g1928319534_)
                                         (if (gx#stx-pair? _g1928319534_)
                                             (let ((_e1928619536_
                                                    (gx#stx-e _g1928319534_)))
                                               (let ((_hd1928719539_
                                                      (##car _e1928619536_))
                                                     (_tl1928819541_
                                                      (##cdr _e1928619536_)))
                                                 (if (gx#stx-pair?
                                                      _hd1928719539_)
                                                     (let ((_e1928919544_
                                                            (gx#stx-e
                                                             _hd1928719539_)))
                                                       (let ((_hd1929019547_
                                                              (##car _e1928919544_))
                                                             (_tl1929119549_
                                                              (##cdr _e1928919544_)))
                                                         (if (gx#stx-null?
                                                              _tl1929119549_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1928819541_)
                         (let ((_e1929219552_ (gx#stx-e _tl1928819541_)))
                           (let ((_hd1929319555_ (##car _e1929219552_))
                                 (_tl1929419557_ (##cdr _e1929219552_)))
                             (if (gx#stx-null? _tl1929419557_)
                                 ((lambda (_L19560_ _L19561_)
                                    (if (if (gx#identifier? _L19561_)
                                            (gxc#case-lambda-expr? _L19560_)
                                            '#f)
                                        (let* ((_g1957619590_
                                                (lambda (_g1957719587_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1957719587_)))
                                               (_g1957519625_
                                                (lambda (_g1957719593_)
                                                  (if (gx#stx-pair?
                                                       _g1957719593_)
                                                      (let ((_e1958319595_
                                                             (gx#stx-e
                                                              _g1957719593_)))
                                                        (let ((_hd1958419598_
                                                               (##car _e1958319595_))
                                                              (_tl1958519600_
                                                               (##cdr _e1958319595_)))
                                                          ((lambda (_L19603_)
                                                             (let ((_g23639_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#lift-case-lambda-clauses__opt-lambda20091
                             _stx19105_
                             _L19561_
                             _L19603_
                             '#t)))
                       (begin
                         (let ((_g23640_ (values-count _g23639_)))
                           (if (not (fx= _g23640_ 3))
                               (error "Context expects 3 values" _g23640_)))
                         (let ((_ids19613_ (values-ref _g23639_ 0))
                               (_impls19614_ (values-ref _g23639_ 1))
                               (_clauses19615_ (values-ref _g23639_ 2)))
                           (let* ((_g23641_
                                   (for-each gx#core-bind-runtime! _ids19613_))
                                  (_xbind19618_
                                   (map _bind-e19107_ _ids19613_ _impls19614_))
                                  (_expr*19620_
                                   (gxc#xform-wrap-source
                                    (cons '%#case-lambda _clauses19615_)
                                    (gx#datum->syntax__0
                                     '#f
                                     'case-lambda-expr)))
                                  (_bind*19622_
                                   (_bind-e__opt-lambda19664__2358223583_
                                    _L19561_
                                    _expr*19620_
                                    '#f)))
                             (begin
                               (gxc#verbose
                                '"lift case-lambda clauses "
                                (gxc#generate-runtime-binding-id _L19561_)
                                '" => "
                                (map gxc#identifier-symbol _ids19613_))
                               (_lp19252_
                                _rest19277_
                                _lift119255_
                                (foldl1 cons _lift219256_ _xbind19618_)
                                (cons _bind*19622_ _bind19257_))))))))
                   _tl1958519600_)))
              (_g1957619590_ _g1957719593_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1957419647_
                                                (lambda (_g1957719628_)
                                                  (if (gx#stx-pair?
                                                       _g1957719628_)
                                                      (let ((_e1957919630_
                                                             (gx#stx-e
                                                              _g1957719628_)))
                                                        (let ((_hd1958019633_
                                                               (##car _e1957919630_))
                                                              (_tl1958119635_
                                                               (##cdr _e1957919630_)))
                                                          ((lambda (_L19638_)
                                                             (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _L19638_)
                         (_lp19252_
                          _rest19277_
                          _lift119255_
                          _lift219256_
                          (cons (_bind-e__opt-lambda19664__2358223583_
                                 _L19561_
                                 _L19560_
                                 '#f)
                                _bind19257_))
                         (_g1957519625_ _g1957719628_)))
                   _tl1958119635_)))
              (_g1957519625_ _g1957719628_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g1957419647_ _L19560_))
                                        (_g1928019531_ _g1928319534_)))
                                  _hd1929319555_
                                  _hd1929019547_)
                                 (_g1928019531_ _g1928319534_))))
                         (_g1928019531_ _g1928319534_))
                     (_g1928019531_ _g1928319534_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1928019531_
                                                      _g1928319534_))))
                                             (_g1928019531_ _g1928319534_)))))
                                 (_g1927919650_ _hd19278_)))))
                       (if (##pair? _rest1925819266_)
                           (let ((_hd1926319656_ (##car _rest1925819266_))
                                 (_tl1926419658_ (##cdr _rest1925819266_)))
                             (let* ((_hd19661_ _hd1926319656_)
                                    (_rest19663_ _tl1926419658_))
                               (_K1926219653_ _rest19663_ _hd19661_)))
                           (_else1926019274_)))))))
        (let* ((_g1911119137_
                (lambda (_g1911219134_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1911219134_)))
               (_g1911019144_
                (lambda (_g1911219140_)
                  ((lambda () (gxc#xform-let-values% _stx19105_)))))
               (_g1910919247_
                (lambda (_g1911219147_)
                  (if (gx#stx-pair? _g1911219147_)
                      (let ((_e1911519149_ (gx#stx-e _g1911219147_)))
                        (let ((_hd1911619152_ (##car _e1911519149_))
                              (_tl1911719154_ (##cdr _e1911519149_)))
                          (if (gx#stx-pair? _tl1911719154_)
                              (let ((_e1911819157_ (gx#stx-e _tl1911719154_)))
                                (let ((_hd1911919160_ (##car _e1911819157_))
                                      (_tl1912019162_ (##cdr _e1911819157_)))
                                  (if (gx#stx-pair/null? _hd1911919160_)
                                      (if (fx>= (gx#stx-length _hd1911919160_)
                                                '0)
                                          (let ((_g23642_
                                                 (gx#syntax-split-splice
                                                  _hd1911919160_
                                                  '0)))
                                            (begin
                                              (let ((_g23643_
                                                     (values-count _g23642_)))
                                                (if (not (fx= _g23643_ 2))
                                                    (error "Context expects 2 values"
                                                           _g23643_)))
                                              (let ((_target1912119165_
                                                     (values-ref _g23642_ 0))
                                                    (_tl1912319167_
                                                     (values-ref _g23642_ 1)))
                                                (if (gx#stx-null?
                                                     _tl1912319167_)
                                                    (letrec ((_loop1912419170_
                                                              (lambda (_hd1912219173_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind1912819175_)
                        (if (gx#stx-pair? _hd1912219173_)
                            (let ((_e1912519178_ (gx#stx-e _hd1912219173_)))
                              (let ((_lp-hd1912619181_ (##car _e1912519178_))
                                    (_lp-tl1912719183_ (##cdr _e1912519178_)))
                                (_loop1912419170_
                                 _lp-tl1912719183_
                                 (cons _lp-hd1912619181_ _bind1912819175_))))
                            (let ((_bind1912919186_
                                   (reverse _bind1912819175_)))
                              (if (gx#stx-pair? _tl1912019162_)
                                  (let ((_e1913019189_
                                         (gx#stx-e _tl1912019162_)))
                                    (let ((_hd1913119192_
                                           (##car _e1913019189_))
                                          (_tl1913219194_
                                           (##cdr _e1913019189_)))
                                      (if (gx#stx-null? _tl1913219194_)
                                          ((lambda (_L19197_ _L19198_)
                                             (if (ormap1 gxc#lift-top-lambda-binding?
                                                         (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g1921819221_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g1921919223_)
                             (cons _g1921819221_ _g1921919223_))
                           '()
                           _L19198_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (call-with-parameters
                                                  (lambda ()
                                                    (let ((_g23644_
                                                           (_compile-bindings19108_
                                                            (begin
                                                              '#!void
                                                              (foldr1 (lambda (_g1922619229_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1922719231_)
                                (cons _g1922619229_ _g1922719231_))
                              '()
                              _L19198_)))))
              (begin
                (let ((_g23645_ (values-count _g23644_)))
                  (if (not (fx= _g23645_ 3))
                      (error "Context expects 3 values" _g23645_)))
                (let ((_lift119234_ (values-ref _g23644_ 0))
                      (_lift219235_ (values-ref _g23644_ 1))
                      (_hd19236_ (values-ref _g23644_ 2)))
                  (let* ((_body19238_ (gxc#compile-e _L19197_))
                         (_expr19240_
                          (gxc#xform-wrap-source
                           (cons '%#let-values
                                 (cons _hd19236_ (cons _body19238_ '())))
                           _stx19105_))
                         (_expr19242_
                          (if (null? _lift219235_)
                              _expr19240_
                              (gxc#xform-wrap-source
                               (cons '%#let-values
                                     (cons _lift219235_
                                           (cons _expr19240_ '())))
                               _stx19105_)))
                         (_expr19244_
                          (if (null? _lift119234_)
                              _expr19242_
                              (gxc#xform-wrap-source
                               (cons '%#let-values
                                     (cons _lift119234_
                                           (cons _expr19242_ '())))
                               _stx19105_))))
                    _expr19244_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  gx#current-expander-context
                                                  (let ((__obj23592
                                                         (make-object
                                                          gx#local-context::t
                                                          '5)))
                                                    (begin
                                                      (gx#local-context:::init!__0
                                                       __obj23592)
                                                      __obj23592)))
                                                 (_g1911019144_
                                                  _g1911219147_)))
                                           _hd1913119192_
                                           _bind1912919186_)
                                          (_g1911019144_ _g1911219147_))))
                                  (_g1911019144_ _g1911219147_)))))))
              (_loop1912419170_ _target1912119165_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1911019144_
                                                     _g1911219147_)))))
                                          (_g1911019144_ _g1911219147_))
                                      (_g1911019144_ _g1911219147_))))
                              (_g1911019144_ _g1911219147_))))
                      (_g1911019144_ _g1911219147_)))))
          (_g1910919247_ _stx19105_)))))
  (define gxc#lift-top-lambda-letrec-values%
    (lambda (_stx18537_)
      (letrec* ((_bind-e__opt-lambda19087__2358723588_
                 (lambda (_id19089_ _expr19090_ _compile?19091_)
                   (cons (cons _id19089_ '())
                         (cons (if _compile?19091_
                                   (gxc#compile-e _expr19090_)
                                   _expr19090_)
                               '()))))
                (_bind-e__0__2358923590_
                 (lambda (_id19096_ _expr19097_)
                   (let ((_compile?19099_ '#t))
                     (_bind-e__opt-lambda19087__2358723588_
                      _id19096_
                      _expr19097_
                      _compile?19099_))))
                (_bind-e18539_
                 (lambda _g23647_
                   (let ((_g23646_ (length _g23647_)))
                     (cond ((fx= _g23646_ 2)
                            (apply _bind-e__0__2358923590_ _g23647_))
                           ((fx= _g23646_ 3)
                            (apply _bind-e__opt-lambda19087__2358723588_
                                   _g23647_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g23647_))))))
                (_compile-bindings18540_
                 (lambda (_rest18675_)
                   (let _lp18677_ ((_rest18679_ _rest18675_) (_bind18680_ '()))
                     (let* ((_rest1868118689_ _rest18679_)
                            (_E1868418693_
                             (lambda ()
                               (error '"No clause matching" _rest1868118689_)))
                            (_else1868318697_
                             (lambda () (reverse _bind18680_)))
                            (_K1868519076_
                             (lambda (_rest18700_ _hd18701_)
                               (let* ((_g1870518741_
                                       (lambda (_g1870618738_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1870618738_)))
                                      (_g1870418782_
                                       (lambda (_g1870618744_)
                                         (if (gx#stx-pair? _g1870618744_)
                                             (let ((_e1873118746_
                                                    (gx#stx-e _g1870618744_)))
                                               (let ((_hd1873218749_
                                                      (##car _e1873118746_))
                                                     (_tl1873318751_
                                                      (##cdr _e1873118746_)))
                                                 (if (gx#stx-pair?
                                                      _tl1873318751_)
                                                     (let ((_e1873418754_
                                                            (gx#stx-e
                                                             _tl1873318751_)))
                                                       (let ((_hd1873518757_
                                                              (##car _e1873418754_))
                                                             (_tl1873618759_
                                                              (##cdr _e1873418754_)))
                                                         (if (gx#stx-null?
                                                              _tl1873618759_)
                                                             ((lambda (_L18762_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L18763_)
                        (_lp18677_
                         _rest18700_
                         (cons (cons _L18763_
                                     (cons (gxc#compile-e _L18762_) '()))
                               _bind18680_)))
                      _hd1873518757_
                      _hd1873218749_)
                     (_g1870518741_ _g1870618744_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1870518741_
                                                      _g1870618744_))))
                                             (_g1870518741_ _g1870618744_))))
                                      (_g1870318954_
                                       (lambda (_g1870618785_)
                                         (if (gx#stx-pair? _g1870618785_)
                                             (let ((_e1872018787_
                                                    (gx#stx-e _g1870618785_)))
                                               (let ((_hd1872118790_
                                                      (##car _e1872018787_))
                                                     (_tl1872218792_
                                                      (##cdr _e1872018787_)))
                                                 (if (gx#stx-pair?
                                                      _hd1872118790_)
                                                     (let ((_e1872318795_
                                                            (gx#stx-e
                                                             _hd1872118790_)))
                                                       (let ((_hd1872418798_
                                                              (##car _e1872318795_))
                                                             (_tl1872518800_
                                                              (##cdr _e1872318795_)))
                                                         (if (gx#stx-null?
                                                              _tl1872518800_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1872218792_)
                         (let ((_e1872618803_ (gx#stx-e _tl1872218792_)))
                           (let ((_hd1872718806_ (##car _e1872618803_))
                                 (_tl1872818808_ (##cdr _e1872618803_)))
                             (if (gx#stx-null? _tl1872818808_)
                                 ((lambda (_L18811_ _L18812_)
                                    (if (if (gx#identifier? _L18812_)
                                            (gxc#opt-lambda-expr? _L18811_)
                                            '#f)
                                        (let* ((_g1882618856_
                                                (lambda (_g1882718853_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1882718853_)))
                                               (_g1882518951_
                                                (lambda (_g1882718859_)
                                                  (if (gx#stx-pair?
                                                       _g1882718859_)
                                                      (let ((_e1883118861_
                                                             (gx#stx-e
                                                              _g1882718859_)))
                                                        (let ((_hd1883218864_
                                                               (##car _e1883118861_))
                                                              (_tl1883318866_
                                                               (##cdr _e1883118861_)))
                                                          (if (gx#stx-pair?
                                                               _tl1883318866_)
                                                              (let ((_e1883418869_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1883318866_)))
                        (let ((_hd1883518872_ (##car _e1883418869_))
                              (_tl1883618874_ (##cdr _e1883418869_)))
                          (if (gx#stx-pair? _hd1883518872_)
                              (let ((_e1883718877_ (gx#stx-e _hd1883518872_)))
                                (let ((_hd1883818880_ (##car _e1883718877_))
                                      (_tl1883918882_ (##cdr _e1883718877_)))
                                  (if (gx#stx-pair? _hd1883818880_)
                                      (let ((_e1884018885_
                                             (gx#stx-e _hd1883818880_)))
                                        (let ((_hd1884118888_
                                               (##car _e1884018885_))
                                              (_tl1884218890_
                                               (##cdr _e1884018885_)))
                                          (if (gx#stx-pair? _hd1884118888_)
                                              (let ((_e1884318893_
                                                     (gx#stx-e
                                                      _hd1884118888_)))
                                                (let ((_hd1884418896_
                                                       (##car _e1884318893_))
                                                      (_tl1884518898_
                                                       (##cdr _e1884318893_)))
                                                  (if (gx#stx-null?
                                                       _tl1884518898_)
                                                      (if (gx#stx-pair?
                                                           _tl1884218890_)
                                                          (let ((_e1884618901_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1884218890_)))
                    (let ((_hd1884718904_ (##car _e1884618901_))
                          (_tl1884818906_ (##cdr _e1884618901_)))
                      (if (gx#stx-null? _tl1884818906_)
                          (if (gx#stx-null? _tl1883918882_)
                              (if (gx#stx-pair? _tl1883618874_)
                                  (let ((_e1884918909_
                                         (gx#stx-e _tl1883618874_)))
                                    (let ((_hd1885018912_
                                           (##car _e1884918909_))
                                          (_tl1885118914_
                                           (##cdr _e1884918909_)))
                                      (if (gx#stx-null? _tl1885118914_)
                                          ((lambda (_L18917_ _L18918_ _L18919_)
                                             (let* ((_lambda-id18943_
                                                     (make-symbol
                                                      (gx#stx-e _L18812_)
                                                      '"__"
                                                      (gx#stx-e _L18919_)
                                                      (gensym '__)))
                                                    (_lambda-id18945_
                                                     (gx#core-quote-syntax__1
                                                      _lambda-id18943_
                                                      (gx#stx-source
                                                       _stx18537_)))
                                                    (_g23648_
                                                     (gx#core-bind-runtime!__0
                                                      _lambda-id18945_))
                                                    (_new-case-lambda-expr18948_
                                                     (gxc#apply-expression-subst
                                                      _L18917_
                                                      _L18919_
                                                      _lambda-id18945_)))
                                               (begin
                                                 (gxc#verbose
                                                  '"lift opt-lambda dispatch "
                                                  (gxc#generate-runtime-binding-id
                                                   _L18812_)
                                                  '" => "
                                                  (gxc#generate-runtime-binding-id
                                                   _lambda-id18945_))
                                                 (_lp18677_
                                                  (cons (_bind-e__opt-lambda19087__2358723588_
                                                         _L18812_
                                                         _new-case-lambda-expr18948_
                                                         '#f)
                                                        _rest18700_)
                                                  (cons (_bind-e__0__2358923590_
                                                         _lambda-id18945_
                                                         _L18918_)
                                                        _bind18680_)))))
                                           _hd1885018912_
                                           _hd1884718904_
                                           _hd1884418896_)
                                          (_g1882618856_ _g1882718859_))))
                                  (_g1882618856_ _g1882718859_))
                              (_g1882618856_ _g1882718859_))
                          (_g1882618856_ _g1882718859_))))
                  (_g1882618856_ _g1882718859_))
              (_g1882618856_ _g1882718859_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1882618856_ _g1882718859_))))
                                      (_g1882618856_ _g1882718859_))))
                              (_g1882618856_ _g1882718859_))))
                      (_g1882618856_ _g1882718859_))))
              (_g1882618856_ _g1882718859_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g1882518951_ _L18811_))
                                        (_g1870418782_ _g1870618785_)))
                                  _hd1872718806_
                                  _hd1872418798_)
                                 (_g1870418782_ _g1870618785_))))
                         (_g1870418782_ _g1870618785_))
                     (_g1870418782_ _g1870618785_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1870418782_
                                                      _g1870618785_))))
                                             (_g1870418782_ _g1870618785_))))
                                      (_g1870219073_
                                       (lambda (_g1870618957_)
                                         (if (gx#stx-pair? _g1870618957_)
                                             (let ((_e1870918959_
                                                    (gx#stx-e _g1870618957_)))
                                               (let ((_hd1871018962_
                                                      (##car _e1870918959_))
                                                     (_tl1871118964_
                                                      (##cdr _e1870918959_)))
                                                 (if (gx#stx-pair?
                                                      _hd1871018962_)
                                                     (let ((_e1871218967_
                                                            (gx#stx-e
                                                             _hd1871018962_)))
                                                       (let ((_hd1871318970_
                                                              (##car _e1871218967_))
                                                             (_tl1871418972_
                                                              (##cdr _e1871218967_)))
                                                         (if (gx#stx-null?
                                                              _tl1871418972_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1871118964_)
                         (let ((_e1871518975_ (gx#stx-e _tl1871118964_)))
                           (let ((_hd1871618978_ (##car _e1871518975_))
                                 (_tl1871718980_ (##cdr _e1871518975_)))
                             (if (gx#stx-null? _tl1871718980_)
                                 ((lambda (_L18983_ _L18984_)
                                    (if (if (gx#identifier? _L18984_)
                                            (gxc#case-lambda-expr? _L18983_)
                                            '#f)
                                        (let* ((_g1899919013_
                                                (lambda (_g1900019010_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1900019010_)))
                                               (_g1899819048_
                                                (lambda (_g1900019016_)
                                                  (if (gx#stx-pair?
                                                       _g1900019016_)
                                                      (let ((_e1900619018_
                                                             (gx#stx-e
                                                              _g1900019016_)))
                                                        (let ((_hd1900719021_
                                                               (##car _e1900619018_))
                                                              (_tl1900819023_
                                                               (##cdr _e1900619018_)))
                                                          ((lambda (_L19026_)
                                                             (let ((_g23649_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#lift-case-lambda-clauses__opt-lambda20091
                             _stx18537_
                             _L18984_
                             _L19026_
                             '#t)))
                       (begin
                         (let ((_g23650_ (values-count _g23649_)))
                           (if (not (fx= _g23650_ 3))
                               (error "Context expects 3 values" _g23650_)))
                         (let ((_ids19036_ (values-ref _g23649_ 0))
                               (_impls19037_ (values-ref _g23649_ 1))
                               (_clauses19038_ (values-ref _g23649_ 2)))
                           (let* ((_g23651_
                                   (for-each gx#core-bind-runtime! _ids19036_))
                                  (_xbind19041_
                                   (map _bind-e18539_ _ids19036_ _impls19037_))
                                  (_expr*19043_
                                   (gxc#xform-wrap-source
                                    (cons '%#case-lambda _clauses19038_)
                                    (gx#datum->syntax__0
                                     '#f
                                     'case-lambda-expr)))
                                  (_bind*19045_
                                   (_bind-e__opt-lambda19087__2358723588_
                                    _L18984_
                                    _expr*19043_
                                    '#f)))
                             (begin
                               (gxc#verbose
                                '"lift case-lambda clauses "
                                (gxc#generate-runtime-binding-id _L18984_)
                                '" => "
                                (map gxc#identifier-symbol _ids19036_))
                               (_lp18677_
                                _rest18700_
                                (cons _bind*19045_
                                      (foldl1 cons
                                              _bind18680_
                                              _xbind19041_)))))))))
                   _tl1900819023_)))
              (_g1899919013_ _g1900019016_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1899719070_
                                                (lambda (_g1900019051_)
                                                  (if (gx#stx-pair?
                                                       _g1900019051_)
                                                      (let ((_e1900219053_
                                                             (gx#stx-e
                                                              _g1900019051_)))
                                                        (let ((_hd1900319056_
                                                               (##car _e1900219053_))
                                                              (_tl1900419058_
                                                               (##cdr _e1900219053_)))
                                                          ((lambda (_L19061_)
                                                             (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _L19061_)
                         (_lp18677_
                          _rest18700_
                          (cons (_bind-e__opt-lambda19087__2358723588_
                                 _L18984_
                                 _L18983_
                                 '#f)
                                _bind18680_))
                         (_g1899819048_ _g1900019051_)))
                   _tl1900419058_)))
              (_g1899819048_ _g1900019051_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g1899719070_ _L18983_))
                                        (_g1870318954_ _g1870618957_)))
                                  _hd1871618978_
                                  _hd1871318970_)
                                 (_g1870318954_ _g1870618957_))))
                         (_g1870318954_ _g1870618957_))
                     (_g1870318954_ _g1870618957_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1870318954_
                                                      _g1870618957_))))
                                             (_g1870318954_ _g1870618957_)))))
                                 (_g1870219073_ _hd18701_)))))
                       (if (##pair? _rest1868118689_)
                           (let ((_hd1868619079_ (##car _rest1868118689_))
                                 (_tl1868719081_ (##cdr _rest1868118689_)))
                             (let* ((_hd19084_ _hd1868619079_)
                                    (_rest19086_ _tl1868719081_))
                               (_K1868519076_ _rest19086_ _hd19084_)))
                           (_else1868318697_)))))))
        (let* ((_g1854318570_
                (lambda (_g1854418567_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1854418567_)))
               (_g1854218577_
                (lambda (_g1854418573_)
                  ((lambda () (gxc#xform-let-values% _stx18537_)))))
               (_g1854118672_
                (lambda (_g1854418580_)
                  (if (gx#stx-pair? _g1854418580_)
                      (let ((_e1854818582_ (gx#stx-e _g1854418580_)))
                        (let ((_hd1854918585_ (##car _e1854818582_))
                              (_tl1855018587_ (##cdr _e1854818582_)))
                          (if (gx#stx-pair? _tl1855018587_)
                              (let ((_e1855118590_ (gx#stx-e _tl1855018587_)))
                                (let ((_hd1855218593_ (##car _e1855118590_))
                                      (_tl1855318595_ (##cdr _e1855118590_)))
                                  (if (gx#stx-pair/null? _hd1855218593_)
                                      (if (fx>= (gx#stx-length _hd1855218593_)
                                                '0)
                                          (let ((_g23652_
                                                 (gx#syntax-split-splice
                                                  _hd1855218593_
                                                  '0)))
                                            (begin
                                              (let ((_g23653_
                                                     (values-count _g23652_)))
                                                (if (not (fx= _g23653_ 2))
                                                    (error "Context expects 2 values"
                                                           _g23653_)))
                                              (let ((_target1855418598_
                                                     (values-ref _g23652_ 0))
                                                    (_tl1855618600_
                                                     (values-ref _g23652_ 1)))
                                                (if (gx#stx-null?
                                                     _tl1855618600_)
                                                    (letrec ((_loop1855718603_
                                                              (lambda (_hd1855518606_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind1856118608_)
                        (if (gx#stx-pair? _hd1855518606_)
                            (let ((_e1855818611_ (gx#stx-e _hd1855518606_)))
                              (let ((_lp-hd1855918614_ (##car _e1855818611_))
                                    (_lp-tl1856018616_ (##cdr _e1855818611_)))
                                (_loop1855718603_
                                 _lp-tl1856018616_
                                 (cons _lp-hd1855918614_ _bind1856118608_))))
                            (let ((_bind1856218619_
                                   (reverse _bind1856118608_)))
                              (if (gx#stx-pair? _tl1855318595_)
                                  (let ((_e1856318622_
                                         (gx#stx-e _tl1855318595_)))
                                    (let ((_hd1856418625_
                                           (##car _e1856318622_))
                                          (_tl1856518627_
                                           (##cdr _e1856318622_)))
                                      (if (gx#stx-null? _tl1856518627_)
                                          ((lambda (_L18630_ _L18631_ _L18632_)
                                             (if (ormap1 gxc#lift-top-lambda-binding?
                                                         (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g1865318656_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g1865418658_)
                             (cons _g1865318656_ _g1865418658_))
                           '()
                           _L18631_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (call-with-parameters
                                                  (lambda ()
                                                    (let ((_hd18669_
                                                           (_compile-bindings18540_
                                                            (begin
                                                              '#!void
                                                              (foldr1 (lambda (_g1866118664_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1866218666_)
                                (cons _g1866118664_ _g1866218666_))
                              '()
                              _L18631_))))
                  (_body18670_ (gxc#compile-e _L18630_)))
              (gxc#xform-wrap-source
               (cons _L18632_ (cons _hd18669_ (cons _body18670_ '())))
               _stx18537_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  gx#current-expander-context
                                                  (let ((__obj23593
                                                         (make-object
                                                          gx#local-context::t
                                                          '5)))
                                                    (begin
                                                      (gx#local-context:::init!__0
                                                       __obj23593)
                                                      __obj23593)))
                                                 (_g1854218577_
                                                  _g1854418580_)))
                                           _hd1856418625_
                                           _bind1856218619_
                                           _hd1854918585_)
                                          (_g1854218577_ _g1854418580_))))
                                  (_g1854218577_ _g1854418580_)))))))
              (_loop1855718603_ _target1855418598_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1854218577_
                                                     _g1854418580_)))))
                                          (_g1854218577_ _g1854418580_))
                                      (_g1854218577_ _g1854418580_))))
                              (_g1854218577_ _g1854418580_))))
                      (_g1854218577_ _g1854418580_)))))
          (_g1854118672_ _stx18537_)))))
  (define gxc#lift-top-lambda-binding?
    (lambda (_bind18458_)
      (let* ((_g1846118478_
              (lambda (_g1846218475_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1846218475_)))
             (_g1846018485_ (lambda (_g1846218481_) ((lambda () '#f))))
             (_g1845918534_
              (lambda (_g1846218488_)
                (if (gx#stx-pair? _g1846218488_)
                    (let ((_e1846518490_ (gx#stx-e _g1846218488_)))
                      (let ((_hd1846618493_ (##car _e1846518490_))
                            (_tl1846718495_ (##cdr _e1846518490_)))
                        (if (gx#stx-pair? _hd1846618493_)
                            (let ((_e1846818498_ (gx#stx-e _hd1846618493_)))
                              (let ((_hd1846918501_ (##car _e1846818498_))
                                    (_tl1847018503_ (##cdr _e1846818498_)))
                                (if (gx#stx-null? _tl1847018503_)
                                    (if (gx#stx-pair? _tl1846718495_)
                                        (let ((_e1847118506_
                                               (gx#stx-e _tl1846718495_)))
                                          (let ((_hd1847218509_
                                                 (##car _e1847118506_))
                                                (_tl1847318511_
                                                 (##cdr _e1847118506_)))
                                            (if (gx#stx-null? _tl1847318511_)
                                                ((lambda (_L18514_ _L18515_)
                                                   (if (gx#identifier?
                                                        _L18515_)
                                                       (let ((_$e18531_
                                                              (gxc#case-lambda-expr?
                                                               _L18514_)))
                                                         (if _$e18531_
                                                             _$e18531_
                                                             (gxc#opt-lambda-expr?
                                                              _L18514_)))
                                                       '#f))
                                                 _hd1847218509_
                                                 _hd1846918501_)
                                                (_g1846018485_
                                                 _g1846218488_))))
                                        (_g1846018485_ _g1846218488_))
                                    (_g1846018485_ _g1846218488_))))
                            (_g1846018485_ _g1846218488_))))
                    (_g1846018485_ _g1846218488_)))))
        (_g1845918534_ _bind18458_))))
  (define gxc#expression-subst-ref%
    (lambda (_stx18396_ _id18397_ _new-id18398_)
      (let* ((_g1840118414_
              (lambda (_g1840218411_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1840218411_)))
             (_g1840018421_ (lambda (_g1840218417_) ((lambda () _stx18396_))))
             (_g1839918455_
              (lambda (_g1840218424_)
                (if (gx#stx-pair? _g1840218424_)
                    (let ((_e1840418426_ (gx#stx-e _g1840218424_)))
                      (let ((_hd1840518429_ (##car _e1840418426_))
                            (_tl1840618431_ (##cdr _e1840418426_)))
                        (if (gx#stx-pair? _tl1840618431_)
                            (let ((_e1840718434_ (gx#stx-e _tl1840618431_)))
                              (let ((_hd1840818437_ (##car _e1840718434_))
                                    (_tl1840918439_ (##cdr _e1840718434_)))
                                (if (gx#stx-null? _tl1840918439_)
                                    ((lambda (_L18442_)
                                       (if (gx#free-identifier=?
                                            _L18442_
                                            _id18397_)
                                           (gxc#xform-wrap-source
                                            (cons '%#ref
                                                  (cons _new-id18398_ '()))
                                            _stx18396_)
                                           (_g1840018421_ _g1840218424_)))
                                     _hd1840818437_)
                                    (_g1840018421_ _g1840218424_))))
                            (_g1840018421_ _g1840218424_))))
                    (_g1840018421_ _g1840218424_)))))
        (_g1839918455_ _stx18396_))))
  (define gxc#collect-type-define-values%
    (lambda (_stx18252_)
      (let* ((_g1825518286_
              (lambda (_g1825618283_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1825618283_)))
             (_g1825418331_
              (lambda (_g1825618289_)
                (if (gx#stx-pair? _g1825618289_)
                    (let ((_e1827318291_ (gx#stx-e _g1825618289_)))
                      (let ((_hd1827418294_ (##car _e1827318291_))
                            (_tl1827518296_ (##cdr _e1827318291_)))
                        (if (gx#stx-pair? _tl1827518296_)
                            (let ((_e1827618299_ (gx#stx-e _tl1827518296_)))
                              (let ((_hd1827718302_ (##car _e1827618299_))
                                    (_tl1827818304_ (##cdr _e1827618299_)))
                                (if (gx#stx-pair? _tl1827818304_)
                                    (let ((_e1827918307_
                                           (gx#stx-e _tl1827818304_)))
                                      (let ((_hd1828018310_
                                             (##car _e1827918307_))
                                            (_tl1828118312_
                                             (##cdr _e1827918307_)))
                                        (if (gx#stx-null? _tl1828118312_)
                                            ((lambda (_L18315_ _L18316_)
                                               (gxc#compile-e _L18315_))
                                             _hd1828018310_
                                             _hd1827718302_)
                                            (_g1825518286_ _g1825618289_))))
                                    (_g1825518286_ _g1825618289_))))
                            (_g1825518286_ _g1825618289_))))
                    (_g1825518286_ _g1825618289_))))
             (_g1825318393_
              (lambda (_g1825618334_)
                (if (gx#stx-pair? _g1825618334_)
                    (let ((_e1825918336_ (gx#stx-e _g1825618334_)))
                      (let ((_hd1826018339_ (##car _e1825918336_))
                            (_tl1826118341_ (##cdr _e1825918336_)))
                        (if (gx#stx-pair? _tl1826118341_)
                            (let ((_e1826218344_ (gx#stx-e _tl1826118341_)))
                              (let ((_hd1826318347_ (##car _e1826218344_))
                                    (_tl1826418349_ (##cdr _e1826218344_)))
                                (if (gx#stx-pair? _hd1826318347_)
                                    (let ((_e1826518352_
                                           (gx#stx-e _hd1826318347_)))
                                      (let ((_hd1826618355_
                                             (##car _e1826518352_))
                                            (_tl1826718357_
                                             (##cdr _e1826518352_)))
                                        (if (gx#stx-null? _tl1826718357_)
                                            (if (gx#stx-pair? _tl1826418349_)
                                                (let ((_e1826818360_
                                                       (gx#stx-e
                                                        _tl1826418349_)))
                                                  (let ((_hd1826918363_
                                                         (##car _e1826818360_))
                                                        (_tl1827018365_
                                                         (##cdr _e1826818360_)))
                                                    (if (gx#stx-null?
                                                         _tl1827018365_)
                                                        ((lambda (_L18368_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L18369_)
                   (if (gx#identifier? _L18369_)
                       (let ((_sym18385_
                              (gxc#generate-runtime-binding-id _L18369_)))
                         (begin
                           (if (table-ref
                                (gxc#current-compile-mutators)
                                _sym18385_
                                '#f)
                               (gxc#verbose
                                '"skipping type declaration for mutable binding "
                                _sym18385_)
                               (let ((_type1838618388_
                                      (gxc#apply-basic-expression-type
                                       _L18368_)))
                                 (if _type1838618388_
                                     (let ((_type18391_ _type1838618388_))
                                       (gxc#optimizer-declare-type!__0
                                        _sym18385_
                                        _type18391_))
                                     '#f)))
                           (gxc#compile-e _L18368_)))
                       (_g1825418331_ _g1825618334_)))
                 _hd1826918363_
                 _hd1826618355_)
                (_g1825418331_ _g1825618334_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1825418331_ _g1825618334_))
                                            (_g1825418331_ _g1825618334_))))
                                    (_g1825418331_ _g1825618334_))))
                            (_g1825418331_ _g1825618334_))))
                    (_g1825418331_ _g1825618334_)))))
        (_g1825318393_ _stx18252_))))
  (define gxc#collect-type-let-values%
    (lambda (_stx18037_)
      (letrec ((_collect-e18039_
                (lambda (_hd18196_ _expr18197_)
                  (let* ((_g1820018210_
                          (lambda (_g1820118207_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1820118207_)))
                         (_g1819918217_
                          (lambda (_g1820118213_) ((lambda () '#!void))))
                         (_g1819818249_
                          (lambda (_g1820118220_)
                            (if (gx#stx-pair? _g1820118220_)
                                (let ((_e1820318222_ (gx#stx-e _g1820118220_)))
                                  (let ((_hd1820418225_ (##car _e1820318222_))
                                        (_tl1820518227_ (##cdr _e1820318222_)))
                                    (if (gx#stx-null? _tl1820518227_)
                                        ((lambda (_L18230_)
                                           (if (gx#identifier? _L18230_)
                                               (let ((_sym18241_
                                                      (gxc#generate-runtime-binding-id
                                                       _L18230_)))
                                                 (if (table-ref
                                                      (gxc#current-compile-mutators)
                                                      _sym18241_
                                                      '#f)
                                                     (gxc#verbose
                                                      '"skipping type declaration for mutable binding "
                                                      _sym18241_)
                                                     (let ((_type1824218244_
                                                            (gxc#apply-basic-expression-type
                                                             _expr18197_)))
                                                       (if _type1824218244_
                                                           (let ((_type18247_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _type1824218244_))
                     (gxc#optimizer-declare-type!__opt-lambda23000
                      _sym18241_
                      _type18247_
                      '#t))
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1819918217_ _g1820118220_)))
                                         _hd1820418225_)
                                        (_g1819918217_ _g1820118220_))))
                                (_g1819918217_ _g1820118220_)))))
                    (_g1819818249_ _hd18196_)))))
        (let* ((_g1804118076_
                (lambda (_g1804218073_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1804218073_)))
               (_g1804018193_
                (lambda (_g1804218079_)
                  (if (gx#stx-pair? _g1804218079_)
                      (let ((_e1804618081_ (gx#stx-e _g1804218079_)))
                        (let ((_hd1804718084_ (##car _e1804618081_))
                              (_tl1804818086_ (##cdr _e1804618081_)))
                          (if (gx#stx-pair? _tl1804818086_)
                              (let ((_e1804918089_ (gx#stx-e _tl1804818086_)))
                                (let ((_hd1805018092_ (##car _e1804918089_))
                                      (_tl1805118094_ (##cdr _e1804918089_)))
                                  (if (gx#stx-pair/null? _hd1805018092_)
                                      (if (fx>= (gx#stx-length _hd1805018092_)
                                                '0)
                                          (let ((_g23654_
                                                 (gx#syntax-split-splice
                                                  _hd1805018092_
                                                  '0)))
                                            (begin
                                              (let ((_g23655_
                                                     (values-count _g23654_)))
                                                (if (not (fx= _g23655_ 2))
                                                    (error "Context expects 2 values"
                                                           _g23655_)))
                                              (let ((_target1805218097_
                                                     (values-ref _g23654_ 0))
                                                    (_tl1805418099_
                                                     (values-ref _g23654_ 1)))
                                                (if (gx#stx-null?
                                                     _tl1805418099_)
                                                    (letrec ((_loop1805518102_
                                                              (lambda (_hd1805318105_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _expr1805918107_
                               _hd1806018109_)
                        (if (gx#stx-pair? _hd1805318105_)
                            (let ((_e1805618112_ (gx#stx-e _hd1805318105_)))
                              (let ((_lp-hd1805718115_ (##car _e1805618112_))
                                    (_lp-tl1805818117_ (##cdr _e1805618112_)))
                                (if (gx#stx-pair? _lp-hd1805718115_)
                                    (let ((_e1806318120_
                                           (gx#stx-e _lp-hd1805718115_)))
                                      (let ((_hd1806418123_
                                             (##car _e1806318120_))
                                            (_tl1806518125_
                                             (##cdr _e1806318120_)))
                                        (if (gx#stx-pair? _tl1806518125_)
                                            (let ((_e1806618128_
                                                   (gx#stx-e _tl1806518125_)))
                                              (let ((_hd1806718131_
                                                     (##car _e1806618128_))
                                                    (_tl1806818133_
                                                     (##cdr _e1806618128_)))
                                                (if (gx#stx-null?
                                                     _tl1806818133_)
                                                    (_loop1805518102_
                                                     _lp-tl1805818117_
                                                     (cons _hd1806718131_
                                                           _expr1805918107_)
                                                     (cons _hd1806418123_
                                                           _hd1806018109_))
                                                    (_g1804118076_
                                                     _g1804218079_))))
                                            (_g1804118076_ _g1804218079_))))
                                    (_g1804118076_ _g1804218079_))))
                            (let ((_expr1806118136_ (reverse _expr1805918107_))
                                  (_hd1806218138_ (reverse _hd1806018109_)))
                              (if (gx#stx-pair? _tl1805118094_)
                                  (let ((_e1806918141_
                                         (gx#stx-e _tl1805118094_)))
                                    (let ((_hd1807018144_
                                           (##car _e1806918141_))
                                          (_tl1807118146_
                                           (##cdr _e1806918141_)))
                                      (if (gx#stx-null? _tl1807118146_)
                                          ((lambda (_L18149_ _L18150_ _L18151_)
                                             (begin
                                               (for-each
                                                _collect-e18039_
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g1817118174_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1817218176_)
                    (cons _g1817118174_ _g1817218176_))
                  '()
                  _L18151_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g1817818181_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1817918183_)
                    (cons _g1817818181_ _g1817918183_))
                  '()
                  _L18150_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (for-each
                                                gxc#compile-e
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g1818518188_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1818618190_)
                    (cons _g1818518188_ _g1818618190_))
                  '()
                  _L18150_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gxc#compile-e _L18149_)))
                                           _hd1807018144_
                                           _expr1806118136_
                                           _hd1806218138_)
                                          (_g1804118076_ _g1804218079_))))
                                  (_g1804118076_ _g1804218079_)))))))
              (_loop1805518102_ _target1805218097_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1804118076_
                                                     _g1804218079_)))))
                                          (_g1804118076_ _g1804218079_))
                                      (_g1804118076_ _g1804218079_))))
                              (_g1804118076_ _g1804218079_))))
                      (_g1804118076_ _g1804218079_)))))
          (_g1804018193_ _stx18037_)))))
  (define gxc#collect-type-call%
    (lambda (_stx17591_)
      (let* ((_g1759517697_
              (lambda (_g1759617694_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1759617694_)))
             (_g1759417704_ (lambda (_g1759617700_) ((lambda () '#!void))))
             (_g1759317854_
              (lambda (_g1759617707_)
                (if (gx#stx-pair? _g1759617707_)
                    (let ((_e1765417709_ (gx#stx-e _g1759617707_)))
                      (let ((_hd1765517712_ (##car _e1765417709_))
                            (_tl1765617714_ (##cdr _e1765417709_)))
                        (if (gx#stx-pair? _tl1765617714_)
                            (let ((_e1765717717_ (gx#stx-e _tl1765617714_)))
                              (let ((_hd1765817720_ (##car _e1765717717_))
                                    (_tl1765917722_ (##cdr _e1765717717_)))
                                (if (gx#stx-pair? _hd1765817720_)
                                    (let ((_e1766017725_
                                           (gx#stx-e _hd1765817720_)))
                                      (let ((_hd1766117728_
                                             (##car _e1766017725_))
                                            (_tl1766217730_
                                             (##cdr _e1766017725_)))
                                        (if (gx#identifier? _hd1766117728_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1766117728_)
                                                (if (gx#stx-pair?
                                                     _tl1766217730_)
                                                    (let ((_e1766317733_
                                                           (gx#stx-e
                                                            _tl1766217730_)))
                                                      (let ((_hd1766417736_
                                                             (##car _e1766317733_))
                                                            (_tl1766517738_
                                                             (##cdr _e1766317733_)))
                                                        (if (gx#stx-null?
                                                             _tl1766517738_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1765917722_)
                        (let ((_e1766617741_ (gx#stx-e _tl1765917722_)))
                          (let ((_hd1766717744_ (##car _e1766617741_))
                                (_tl1766817746_ (##cdr _e1766617741_)))
                            (if (gx#stx-pair? _hd1766717744_)
                                (let ((_e1766917749_
                                       (gx#stx-e _hd1766717744_)))
                                  (let ((_hd1767017752_ (##car _e1766917749_))
                                        (_tl1767117754_ (##cdr _e1766917749_)))
                                    (if (gx#identifier? _hd1767017752_)
                                        (if (gx#stx-eq? '%#ref _hd1767017752_)
                                            (if (gx#stx-pair? _tl1767117754_)
                                                (let ((_e1767217757_
                                                       (gx#stx-e
                                                        _tl1767117754_)))
                                                  (let ((_hd1767317760_
                                                         (##car _e1767217757_))
                                                        (_tl1767417762_
                                                         (##cdr _e1767217757_)))
                                                    (if (gx#stx-null?
                                                         _tl1767417762_)
                                                        (if (gx#stx-pair?
                                                             _tl1766817746_)
                                                            (let ((_e1767517765_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1766817746_)))
                      (let ((_hd1767617768_ (##car _e1767517765_))
                            (_tl1767717770_ (##cdr _e1767517765_)))
                        (if (gx#stx-pair? _hd1767617768_)
                            (let ((_e1767817773_ (gx#stx-e _hd1767617768_)))
                              (let ((_hd1767917776_ (##car _e1767817773_))
                                    (_tl1768017778_ (##cdr _e1767817773_)))
                                (if (gx#identifier? _hd1767917776_)
                                    (if (gx#stx-eq? '%#quote _hd1767917776_)
                                        (if (gx#stx-pair? _tl1768017778_)
                                            (let ((_e1768117781_
                                                   (gx#stx-e _tl1768017778_)))
                                              (let ((_hd1768217784_
                                                     (##car _e1768117781_))
                                                    (_tl1768317786_
                                                     (##cdr _e1768117781_)))
                                                (if (gx#stx-null?
                                                     _tl1768317786_)
                                                    (if (gx#stx-pair?
                                                         _tl1767717770_)
                                                        (let ((_e1768417789_
                                                               (gx#stx-e
                                                                _tl1767717770_)))
                                                          (let ((_hd1768517792_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1768417789_))
                        (_tl1768617794_ (##cdr _e1768417789_)))
                    (if (gx#stx-pair? _hd1768517792_)
                        (let ((_e1768717797_ (gx#stx-e _hd1768517792_)))
                          (let ((_hd1768817800_ (##car _e1768717797_))
                                (_tl1768917802_ (##cdr _e1768717797_)))
                            (if (gx#identifier? _hd1768817800_)
                                (if (gx#stx-eq? '%#ref _hd1768817800_)
                                    (if (gx#stx-pair? _tl1768917802_)
                                        (let ((_e1769017805_
                                               (gx#stx-e _tl1768917802_)))
                                          (let ((_hd1769117808_
                                                 (##car _e1769017805_))
                                                (_tl1769217810_
                                                 (##cdr _e1769017805_)))
                                            (if (gx#stx-null? _tl1769217810_)
                                                (if (gx#stx-null?
                                                     _tl1768617794_)
                                                    ((lambda (_L17813_
                                                              _L17814_
                                                              _L17815_
                                                              _L17816_)
                                                       (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax__0 '#f '-bind-method))
                        'bind-method!)
                   (gxc#optimizer-declare-method!__opt-lambda22976
                    (gxc#generate-runtime-binding-id _L17815_)
                    (gx#stx-e _L17814_)
                    (gxc#generate-runtime-binding-id _L17813_)
                    '#f)
                   (_g1759417704_ _g1759617707_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd1769117808_
                                                     _hd1768217784_
                                                     _hd1767317760_
                                                     _hd1766417736_)
                                                    (_g1759417704_
                                                     _g1759617707_))
                                                (_g1759417704_
                                                 _g1759617707_))))
                                        (_g1759417704_ _g1759617707_))
                                    (_g1759417704_ _g1759617707_))
                                (_g1759417704_ _g1759617707_))))
                        (_g1759417704_ _g1759617707_))))
                (_g1759417704_ _g1759617707_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1759417704_
                                                     _g1759617707_))))
                                            (_g1759417704_ _g1759617707_))
                                        (_g1759417704_ _g1759617707_))
                                    (_g1759417704_ _g1759617707_))))
                            (_g1759417704_ _g1759617707_))))
                    (_g1759417704_ _g1759617707_))
                (_g1759417704_ _g1759617707_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1759417704_ _g1759617707_))
                                            (_g1759417704_ _g1759617707_))
                                        (_g1759417704_ _g1759617707_))))
                                (_g1759417704_ _g1759617707_))))
                        (_g1759417704_ _g1759617707_))
                    (_g1759417704_ _g1759617707_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1759417704_
                                                     _g1759617707_))
                                                (_g1759417704_ _g1759617707_))
                                            (_g1759417704_ _g1759617707_))))
                                    (_g1759417704_ _g1759617707_))))
                            (_g1759417704_ _g1759617707_))))
                    (_g1759417704_ _g1759617707_))))
             (_g1759218034_
              (lambda (_g1759617857_)
                (if (gx#stx-pair? _g1759617857_)
                    (let ((_e1760217859_ (gx#stx-e _g1759617857_)))
                      (let ((_hd1760317862_ (##car _e1760217859_))
                            (_tl1760417864_ (##cdr _e1760217859_)))
                        (if (gx#stx-pair? _tl1760417864_)
                            (let ((_e1760517867_ (gx#stx-e _tl1760417864_)))
                              (let ((_hd1760617870_ (##car _e1760517867_))
                                    (_tl1760717872_ (##cdr _e1760517867_)))
                                (if (gx#stx-pair? _hd1760617870_)
                                    (let ((_e1760817875_
                                           (gx#stx-e _hd1760617870_)))
                                      (let ((_hd1760917878_
                                             (##car _e1760817875_))
                                            (_tl1761017880_
                                             (##cdr _e1760817875_)))
                                        (if (gx#identifier? _hd1760917878_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1760917878_)
                                                (if (gx#stx-pair?
                                                     _tl1761017880_)
                                                    (let ((_e1761117883_
                                                           (gx#stx-e
                                                            _tl1761017880_)))
                                                      (let ((_hd1761217886_
                                                             (##car _e1761117883_))
                                                            (_tl1761317888_
                                                             (##cdr _e1761117883_)))
                                                        (if (gx#stx-null?
                                                             _tl1761317888_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1760717872_)
                        (let ((_e1761417891_ (gx#stx-e _tl1760717872_)))
                          (let ((_hd1761517894_ (##car _e1761417891_))
                                (_tl1761617896_ (##cdr _e1761417891_)))
                            (if (gx#stx-pair? _hd1761517894_)
                                (let ((_e1761717899_
                                       (gx#stx-e _hd1761517894_)))
                                  (let ((_hd1761817902_ (##car _e1761717899_))
                                        (_tl1761917904_ (##cdr _e1761717899_)))
                                    (if (gx#identifier? _hd1761817902_)
                                        (if (gx#stx-eq? '%#ref _hd1761817902_)
                                            (if (gx#stx-pair? _tl1761917904_)
                                                (let ((_e1762017907_
                                                       (gx#stx-e
                                                        _tl1761917904_)))
                                                  (let ((_hd1762117910_
                                                         (##car _e1762017907_))
                                                        (_tl1762217912_
                                                         (##cdr _e1762017907_)))
                                                    (if (gx#stx-null?
                                                         _tl1762217912_)
                                                        (if (gx#stx-pair?
                                                             _tl1761617896_)
                                                            (let ((_e1762317915_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1761617896_)))
                      (let ((_hd1762417918_ (##car _e1762317915_))
                            (_tl1762517920_ (##cdr _e1762317915_)))
                        (if (gx#stx-pair? _hd1762417918_)
                            (let ((_e1762617923_ (gx#stx-e _hd1762417918_)))
                              (let ((_hd1762717926_ (##car _e1762617923_))
                                    (_tl1762817928_ (##cdr _e1762617923_)))
                                (if (gx#identifier? _hd1762717926_)
                                    (if (gx#stx-eq? '%#quote _hd1762717926_)
                                        (if (gx#stx-pair? _tl1762817928_)
                                            (let ((_e1762917931_
                                                   (gx#stx-e _tl1762817928_)))
                                              (let ((_hd1763017934_
                                                     (##car _e1762917931_))
                                                    (_tl1763117936_
                                                     (##cdr _e1762917931_)))
                                                (if (gx#stx-null?
                                                     _tl1763117936_)
                                                    (if (gx#stx-pair?
                                                         _tl1762517920_)
                                                        (let ((_e1763217939_
                                                               (gx#stx-e
                                                                _tl1762517920_)))
                                                          (let ((_hd1763317942_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1763217939_))
                        (_tl1763417944_ (##cdr _e1763217939_)))
                    (if (gx#stx-pair? _hd1763317942_)
                        (let ((_e1763517947_ (gx#stx-e _hd1763317942_)))
                          (let ((_hd1763617950_ (##car _e1763517947_))
                                (_tl1763717952_ (##cdr _e1763517947_)))
                            (if (gx#identifier? _hd1763617950_)
                                (if (gx#stx-eq? '%#ref _hd1763617950_)
                                    (if (gx#stx-pair? _tl1763717952_)
                                        (let ((_e1763817955_
                                               (gx#stx-e _tl1763717952_)))
                                          (let ((_hd1763917958_
                                                 (##car _e1763817955_))
                                                (_tl1764017960_
                                                 (##cdr _e1763817955_)))
                                            (if (gx#stx-null? _tl1764017960_)
                                                (if (gx#stx-pair?
                                                     _tl1763417944_)
                                                    (let ((_e1764117963_
                                                           (gx#stx-e
                                                            _tl1763417944_)))
                                                      (let ((_hd1764217966_
                                                             (##car _e1764117963_))
                                                            (_tl1764317968_
                                                             (##cdr _e1764117963_)))
                                                        (if (gx#stx-pair?
                                                             _hd1764217966_)
                                                            (let ((_e1764417971_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1764217966_)))
                      (let ((_hd1764517974_ (##car _e1764417971_))
                            (_tl1764617976_ (##cdr _e1764417971_)))
                        (if (gx#identifier? _hd1764517974_)
                            (if (gx#stx-eq? '%#quote _hd1764517974_)
                                (if (gx#stx-pair? _tl1764617976_)
                                    (let ((_e1764717979_
                                           (gx#stx-e _tl1764617976_)))
                                      (let ((_hd1764817982_
                                             (##car _e1764717979_))
                                            (_tl1764917984_
                                             (##cdr _e1764717979_)))
                                        (if (gx#stx-null? _tl1764917984_)
                                            (if (gx#stx-null? _tl1764317968_)
                                                ((lambda (_L17987_
                                                          _L17988_
                                                          _L17989_
                                                          _L17990_
                                                          _L17991_)
                                                   (if (eq? (gxc#generate-runtime-binding-id
                                                             _L17991_)
                                                            'bind-method!)
                                                       (gxc#optimizer-declare-method!__opt-lambda22976
                                                        (gxc#generate-runtime-binding-id
                                                         _L17990_)
                                                        (gx#stx-e _L17989_)
                                                        (gxc#generate-runtime-binding-id
                                                         _L17988_)
                                                        (gx#stx-e _L17987_))
                                                       (_g1759317854_
                                                        _g1759617857_)))
                                                 _hd1764817982_
                                                 _hd1763917958_
                                                 _hd1763017934_
                                                 _hd1762117910_
                                                 _hd1761217886_)
                                                (_g1759317854_ _g1759617857_))
                                            (_g1759317854_ _g1759617857_))))
                                    (_g1759317854_ _g1759617857_))
                                (_g1759317854_ _g1759617857_))
                            (_g1759317854_ _g1759617857_))))
                    (_g1759317854_ _g1759617857_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1759317854_
                                                     _g1759617857_))
                                                (_g1759317854_
                                                 _g1759617857_))))
                                        (_g1759317854_ _g1759617857_))
                                    (_g1759317854_ _g1759617857_))
                                (_g1759317854_ _g1759617857_))))
                        (_g1759317854_ _g1759617857_))))
                (_g1759317854_ _g1759617857_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1759317854_
                                                     _g1759617857_))))
                                            (_g1759317854_ _g1759617857_))
                                        (_g1759317854_ _g1759617857_))
                                    (_g1759317854_ _g1759617857_))))
                            (_g1759317854_ _g1759617857_))))
                    (_g1759317854_ _g1759617857_))
                (_g1759317854_ _g1759617857_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1759317854_ _g1759617857_))
                                            (_g1759317854_ _g1759617857_))
                                        (_g1759317854_ _g1759617857_))))
                                (_g1759317854_ _g1759617857_))))
                        (_g1759317854_ _g1759617857_))
                    (_g1759317854_ _g1759617857_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1759317854_
                                                     _g1759617857_))
                                                (_g1759317854_ _g1759617857_))
                                            (_g1759317854_ _g1759617857_))))
                                    (_g1759317854_ _g1759617857_))))
                            (_g1759317854_ _g1759617857_))))
                    (_g1759317854_ _g1759617857_)))))
        (_g1759218034_ _stx17591_))))
  (define gxc#basic-expression-type-begin%
    (lambda (_stx17531_)
      (let* ((_g1753417547_
              (lambda (_g1753517544_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1753517544_)))
             (_g1753317554_ (lambda (_g1753517550_) ((lambda () '#f))))
             (_g1753217588_
              (lambda (_g1753517557_)
                (if (gx#stx-pair? _g1753517557_)
                    (let ((_e1753717559_ (gx#stx-e _g1753517557_)))
                      (let ((_hd1753817562_ (##car _e1753717559_))
                            (_tl1753917564_ (##cdr _e1753717559_)))
                        (if (gx#stx-pair? _tl1753917564_)
                            (let ((_e1754017567_ (gx#stx-e _tl1753917564_)))
                              (let ((_hd1754117570_ (##car _e1754017567_))
                                    (_tl1754217572_ (##cdr _e1754017567_)))
                                (if (gx#stx-null? _tl1754217572_)
                                    ((lambda (_L17575_)
                                       (gxc#compile-e _L17575_))
                                     _hd1754117570_)
                                    (_g1753317554_ _g1753517557_))))
                            (_g1753317554_ _g1753517557_))))
                    (_g1753317554_ _g1753517557_)))))
        (_g1753217588_ _stx17531_))))
  (define gxc#basic-expression-type-begin-annotation%
    (lambda (_stx17464_)
      (let* ((_g1746617483_
              (lambda (_g1746717480_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1746717480_)))
             (_g1746517528_
              (lambda (_g1746717486_)
                (if (gx#stx-pair? _g1746717486_)
                    (let ((_e1747017488_ (gx#stx-e _g1746717486_)))
                      (let ((_hd1747117491_ (##car _e1747017488_))
                            (_tl1747217493_ (##cdr _e1747017488_)))
                        (if (gx#stx-pair? _tl1747217493_)
                            (let ((_e1747317496_ (gx#stx-e _tl1747217493_)))
                              (let ((_hd1747417499_ (##car _e1747317496_))
                                    (_tl1747517501_ (##cdr _e1747317496_)))
                                (if (gx#stx-pair? _tl1747517501_)
                                    (let ((_e1747617504_
                                           (gx#stx-e _tl1747517501_)))
                                      (let ((_hd1747717507_
                                             (##car _e1747617504_))
                                            (_tl1747817509_
                                             (##cdr _e1747617504_)))
                                        (if (gx#stx-null? _tl1747817509_)
                                            ((lambda (_L17512_ _L17513_)
                                               (gxc#compile-e _L17512_))
                                             _hd1747717507_
                                             _hd1747417499_)
                                            (_g1746617483_ _g1746717486_))))
                                    (_g1746617483_ _g1746717486_))))
                            (_g1746617483_ _g1746717486_))))
                    (_g1746617483_ _g1746717486_)))))
        (_g1746517528_ _stx17464_))))
  (define gxc#basic-expression-type-lambda%
    (lambda (_stx16889_)
      (let* ((_g1689417015_
              (lambda (_g1689517012_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1689517012_)))
             (_g1689317022_ (lambda (_g1689517018_) ((lambda () '#f))))
             (_g1689217046_
              (lambda (_g1689517025_)
                (if (gx#stx-pair? _g1689517025_)
                    (let ((_e1700817027_ (gx#stx-e _g1689517025_)))
                      (let ((_hd1700917030_ (##car _e1700817027_))
                            (_tl1701017032_ (##cdr _e1700817027_)))
                        ((lambda (_L17035_)
                           (if (gxc#dispatch-lambda-form? _L17035_)
                               (let ((__obj23594
                                      (make-object gxc#!lambda::t '5)))
                                 (begin
                                   (gxc#!lambda:::init!__0
                                    __obj23594
                                    'lambda
                                    (gxc#lambda-form-arity _L17035_)
                                    (gxc#dispatch-lambda-form-delegate
                                     _L17035_))
                                   __obj23594))
                               (_g1689317022_ _g1689517025_)))
                         _tl1701017032_)))
                    (_g1689317022_ _g1689517025_))))
             (_g1689117276_
              (lambda (_g1689517049_)
                (if (gx#stx-pair? _g1689517049_)
                    (let ((_e1695317051_ (gx#stx-e _g1689517049_)))
                      (let ((_hd1695417054_ (##car _e1695317051_))
                            (_tl1695517056_ (##cdr _e1695317051_)))
                        (if (gx#stx-pair? _tl1695517056_)
                            (let ((_e1695617059_ (gx#stx-e _tl1695517056_)))
                              (let ((_hd1695717062_ (##car _e1695617059_))
                                    (_tl1695817064_ (##cdr _e1695617059_)))
                                (if (gx#stx-pair/null? _hd1695717062_)
                                    (if (fx>= (gx#stx-length _hd1695717062_)
                                              '0)
                                        (let ((_g23656_
                                               (gx#syntax-split-splice
                                                _hd1695717062_
                                                '0)))
                                          (begin
                                            (let ((_g23657_
                                                   (values-count _g23656_)))
                                              (if (not (fx= _g23657_ 2))
                                                  (error "Context expects 2 values"
                                                         _g23657_)))
                                            (let ((_target1695917067_
                                                   (values-ref _g23656_ 0))
                                                  (_tl1696117069_
                                                   (values-ref _g23656_ 1)))
                                              (if (gx#stx-null? _tl1696117069_)
                                                  (letrec ((_loop1696217072_
                                                            (lambda (_hd1696017075_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _arg1696617077_)
                      (if (gx#stx-pair? _hd1696017075_)
                          (let ((_e1696317080_ (gx#stx-e _hd1696017075_)))
                            (let ((_lp-hd1696417083_ (##car _e1696317080_))
                                  (_lp-tl1696517085_ (##cdr _e1696317080_)))
                              (_loop1696217072_
                               _lp-tl1696517085_
                               (cons _lp-hd1696417083_ _arg1696617077_))))
                          (let ((_arg1696717088_ (reverse _arg1696617077_)))
                            (if (gx#stx-pair? _tl1695817064_)
                                (let ((_e1696817091_
                                       (gx#stx-e _tl1695817064_)))
                                  (let ((_hd1696917094_ (##car _e1696817091_))
                                        (_tl1697017096_ (##cdr _e1696817091_)))
                                    (if (gx#stx-pair? _hd1696917094_)
                                        (let ((_e1697117099_
                                               (gx#stx-e _hd1696917094_)))
                                          (let ((_hd1697217102_
                                                 (##car _e1697117099_))
                                                (_tl1697317104_
                                                 (##cdr _e1697117099_)))
                                            (if (gx#identifier? _hd1697217102_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd1697217102_)
                                                    (if (gx#stx-pair?
                                                         _tl1697317104_)
                                                        (let ((_e1697417107_
                                                               (gx#stx-e
                                                                _tl1697317104_)))
                                                          (let ((_hd1697517110_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1697417107_))
                        (_tl1697617112_ (##cdr _e1697417107_)))
                    (if (gx#stx-pair? _hd1697517110_)
                        (let ((_e1697717115_ (gx#stx-e _hd1697517110_)))
                          (let ((_hd1697817118_ (##car _e1697717115_))
                                (_tl1697917120_ (##cdr _e1697717115_)))
                            (if (gx#identifier? _hd1697817118_)
                                (if (gx#stx-eq? '%#ref _hd1697817118_)
                                    (if (gx#stx-pair? _tl1697917120_)
                                        (let ((_e1698017123_
                                               (gx#stx-e _tl1697917120_)))
                                          (let ((_hd1698117126_
                                                 (##car _e1698017123_))
                                                (_tl1698217128_
                                                 (##cdr _e1698017123_)))
                                            (if (gx#stx-null? _tl1698217128_)
                                                (if (gx#stx-pair?
                                                     _tl1697617112_)
                                                    (let ((_e1698317131_
                                                           (gx#stx-e
                                                            _tl1697617112_)))
                                                      (let ((_hd1698417134_
                                                             (##car _e1698317131_))
                                                            (_tl1698517136_
                                                             (##cdr _e1698317131_)))
                                                        (if (gx#stx-pair?
                                                             _hd1698417134_)
                                                            (let ((_e1698617139_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1698417134_)))
                      (let ((_hd1698717142_ (##car _e1698617139_))
                            (_tl1698817144_ (##cdr _e1698617139_)))
                        (if (gx#identifier? _hd1698717142_)
                            (if (gx#stx-eq? '%#ref _hd1698717142_)
                                (if (gx#stx-pair? _tl1698817144_)
                                    (let ((_e1698917147_
                                           (gx#stx-e _tl1698817144_)))
                                      (let ((_hd1699017150_
                                             (##car _e1698917147_))
                                            (_tl1699117152_
                                             (##cdr _e1698917147_)))
                                        (if (gx#stx-null? _tl1699117152_)
                                            (if (gx#stx-pair/null?
                                                 _tl1698517136_)
                                                (if (fx>= (gx#stx-length
                                                           _tl1698517136_)
                                                          '0)
                                                    (let ((_g23658_
                                                           (gx#syntax-split-splice
                                                            _tl1698517136_
                                                            '0)))
                                                      (begin
                                                        (let ((_g23659_
                                                               (values-count
                                                                _g23658_)))
                                                          (if (not (fx= _g23659_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                2))
                      (error "Context expects 2 values" _g23659_)))
                (let ((_target1699217155_ (values-ref _g23658_ 0))
                      (_tl1699417157_ (values-ref _g23658_ 1)))
                  (if (gx#stx-null? _tl1699417157_)
                      (letrec ((_loop1699517160_
                                (lambda (_hd1699317163_ _xarg1699917165_)
                                  (if (gx#stx-pair? _hd1699317163_)
                                      (let ((_e1699617168_
                                             (gx#stx-e _hd1699317163_)))
                                        (let ((_lp-hd1699717171_
                                               (##car _e1699617168_))
                                              (_lp-tl1699817173_
                                               (##cdr _e1699617168_)))
                                          (if (gx#stx-pair? _lp-hd1699717171_)
                                              (let ((_e1700117176_
                                                     (gx#stx-e
                                                      _lp-hd1699717171_)))
                                                (let ((_hd1700217179_
                                                       (##car _e1700117176_))
                                                      (_tl1700317181_
                                                       (##cdr _e1700117176_)))
                                                  (if (gx#identifier?
                                                       _hd1700217179_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd1700217179_)
                                                          (if (gx#stx-pair?
                                                               _tl1700317181_)
                                                              (let ((_e1700417184_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1700317181_)))
                        (let ((_hd1700517187_ (##car _e1700417184_))
                              (_tl1700617189_ (##cdr _e1700417184_)))
                          (if (gx#stx-null? _tl1700617189_)
                              (_loop1699517160_
                               _lp-tl1699817173_
                               (cons _hd1700517187_ _xarg1699917165_))
                              (_g1689217046_ _g1689517049_))))
                      (_g1689217046_ _g1689517049_))
                  (_g1689217046_ _g1689517049_))
              (_g1689217046_ _g1689517049_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1689217046_ _g1689517049_))))
                                      (let ((_xarg1700017192_
                                             (reverse _xarg1699917165_)))
                                        (if (gx#stx-null? _tl1697017096_)
                                            ((lambda (_L17195_
                                                      _L17196_
                                                      _L17197_
                                                      _L17198_)
                                               (if (if (gx#identifier-list?
                                                        (begin
                                                          '#!void
                                                          (foldr1 (lambda (_g1723517238_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g1723617240_)
                            (cons _g1723517238_ _g1723617240_))
                          '()
                          _L17198_)))
               (if (eq? (gxc#generate-runtime-binding-id _L17197_)
                        'make-struct-instance)
                   (if (fx= (length (begin
                                      '#!void
                                      (foldr1 (lambda (_g1724217245_
                                                       _g1724317247_)
                                                (cons _g1724217245_
                                                      _g1724317247_))
                                              '()
                                              _L17198_)))
                            (length (begin
                                      '#!void
                                      (foldr1 (lambda (_g1724917252_
                                                       _g1725017254_)
                                                (cons _g1724917252_
                                                      _g1725017254_))
                                              '()
                                              _L17195_))))
                       (andmap gx#free-identifier=?
                               (begin
                                 '#!void
                                 (foldr1 (lambda (_g1725617259_ _g1725717261_)
                                           (cons _g1725617259_ _g1725717261_))
                                         '()
                                         _L17198_))
                               (begin
                                 '#!void
                                 (foldr1 (lambda (_g1726317266_ _g1726417268_)
                                           (cons _g1726317266_ _g1726417268_))
                                         '()
                                         _L17195_)))
                       '#f)
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_type-t17271_
                                                           (gxc#generate-runtime-binding-id
                                                            _L17196_))
                                                          (_type17273_
                                                           (gxc#optimizer-resolve-type
                                                            _type-t17271_)))
                                                     (if (##structure-instance-of?
                                                          _type17273_
                                                          'gxc#!struct-type::t)
                                                         (##structure
                                                          gxc#!struct-cons::t
                                                          _type-t17271_)
                                                         '#f))
                                                   (_g1689217046_
                                                    _g1689517049_)))
                                             _xarg1700017192_
                                             _hd1699017150_
                                             _hd1698117126_
                                             _arg1696717088_)
                                            (_g1689217046_ _g1689517049_)))))))
                        (_loop1699517160_ _target1699217155_ '()))
                      (_g1689217046_ _g1689517049_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1689217046_
                                                     _g1689517049_))
                                                (_g1689217046_ _g1689517049_))
                                            (_g1689217046_ _g1689517049_))))
                                    (_g1689217046_ _g1689517049_))
                                (_g1689217046_ _g1689517049_))
                            (_g1689217046_ _g1689517049_))))
                    (_g1689217046_ _g1689517049_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1689217046_
                                                     _g1689517049_))
                                                (_g1689217046_
                                                 _g1689517049_))))
                                        (_g1689217046_ _g1689517049_))
                                    (_g1689217046_ _g1689517049_))
                                (_g1689217046_ _g1689517049_))))
                        (_g1689217046_ _g1689517049_))))
                (_g1689217046_ _g1689517049_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1689217046_
                                                     _g1689517049_))
                                                (_g1689217046_
                                                 _g1689517049_))))
                                        (_g1689217046_ _g1689517049_))))
                                (_g1689217046_ _g1689517049_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1696217072_
                                                     _target1695917067_
                                                     '()))
                                                  (_g1689217046_
                                                   _g1689517049_)))))
                                        (_g1689217046_ _g1689517049_))
                                    (_g1689217046_ _g1689517049_))))
                            (_g1689217046_ _g1689517049_))))
                    (_g1689217046_ _g1689517049_))))
             (_g1689017461_
              (lambda (_g1689517279_)
                (if (gx#stx-pair? _g1689517279_)
                    (let ((_e1690117281_ (gx#stx-e _g1689517279_)))
                      (let ((_hd1690217284_ (##car _e1690117281_))
                            (_tl1690317286_ (##cdr _e1690117281_)))
                        (if (gx#stx-pair? _tl1690317286_)
                            (let ((_e1690417289_ (gx#stx-e _tl1690317286_)))
                              (let ((_hd1690517292_ (##car _e1690417289_))
                                    (_tl1690617294_ (##cdr _e1690417289_)))
                                (if (gx#stx-pair? _tl1690617294_)
                                    (let ((_e1690717297_
                                           (gx#stx-e _tl1690617294_)))
                                      (let ((_hd1690817300_
                                             (##car _e1690717297_))
                                            (_tl1690917302_
                                             (##cdr _e1690717297_)))
                                        (if (gx#stx-pair? _hd1690817300_)
                                            (let ((_e1691017305_
                                                   (gx#stx-e _hd1690817300_)))
                                              (let ((_hd1691117308_
                                                     (##car _e1691017305_))
                                                    (_tl1691217310_
                                                     (##cdr _e1691017305_)))
                                                (if (gx#identifier?
                                                     _hd1691117308_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd1691117308_)
                                                        (if (gx#stx-pair?
                                                             _tl1691217310_)
                                                            (let ((_e1691317313_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1691217310_)))
                      (let ((_hd1691417316_ (##car _e1691317313_))
                            (_tl1691517318_ (##cdr _e1691317313_)))
                        (if (gx#stx-pair? _hd1691417316_)
                            (let ((_e1691617321_ (gx#stx-e _hd1691417316_)))
                              (let ((_hd1691717324_ (##car _e1691617321_))
                                    (_tl1691817326_ (##cdr _e1691617321_)))
                                (if (gx#identifier? _hd1691717324_)
                                    (if (gx#stx-eq? '%#ref _hd1691717324_)
                                        (if (gx#stx-pair? _tl1691817326_)
                                            (let ((_e1691917329_
                                                   (gx#stx-e _tl1691817326_)))
                                              (let ((_hd1692017332_
                                                     (##car _e1691917329_))
                                                    (_tl1692117334_
                                                     (##cdr _e1691917329_)))
                                                (if (gx#stx-null?
                                                     _tl1692117334_)
                                                    (if (gx#stx-pair?
                                                         _tl1691517318_)
                                                        (let ((_e1692217337_
                                                               (gx#stx-e
                                                                _tl1691517318_)))
                                                          (let ((_hd1692317340_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1692217337_))
                        (_tl1692417342_ (##cdr _e1692217337_)))
                    (if (gx#stx-pair? _hd1692317340_)
                        (let ((_e1692517345_ (gx#stx-e _hd1692317340_)))
                          (let ((_hd1692617348_ (##car _e1692517345_))
                                (_tl1692717350_ (##cdr _e1692517345_)))
                            (if (gx#identifier? _hd1692617348_)
                                (if (gx#stx-eq? '%#ref _hd1692617348_)
                                    (if (gx#stx-pair? _tl1692717350_)
                                        (let ((_e1692817353_
                                               (gx#stx-e _tl1692717350_)))
                                          (let ((_hd1692917356_
                                                 (##car _e1692817353_))
                                                (_tl1693017358_
                                                 (##cdr _e1692817353_)))
                                            (if (gx#stx-null? _tl1693017358_)
                                                (if (gx#stx-pair?
                                                     _tl1692417342_)
                                                    (let ((_e1693117361_
                                                           (gx#stx-e
                                                            _tl1692417342_)))
                                                      (let ((_hd1693217364_
                                                             (##car _e1693117361_))
                                                            (_tl1693317366_
                                                             (##cdr _e1693117361_)))
                                                        (if (gx#stx-pair?
                                                             _hd1693217364_)
                                                            (let ((_e1693417369_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1693217364_)))
                      (let ((_hd1693517372_ (##car _e1693417369_))
                            (_tl1693617374_ (##cdr _e1693417369_)))
                        (if (gx#identifier? _hd1693517372_)
                            (if (gx#stx-eq? '%#ref _hd1693517372_)
                                (if (gx#stx-pair? _tl1693617374_)
                                    (let ((_e1693717377_
                                           (gx#stx-e _tl1693617374_)))
                                      (let ((_hd1693817380_
                                             (##car _e1693717377_))
                                            (_tl1693917382_
                                             (##cdr _e1693717377_)))
                                        (if (gx#stx-null? _tl1693917382_)
                                            (if (gx#stx-pair? _tl1693317366_)
                                                (let ((_e1694017385_
                                                       (gx#stx-e
                                                        _tl1693317366_)))
                                                  (let ((_hd1694117388_
                                                         (##car _e1694017385_))
                                                        (_tl1694217390_
                                                         (##cdr _e1694017385_)))
                                                    (if (gx#stx-pair?
                                                         _hd1694117388_)
                                                        (let ((_e1694317393_
                                                               (gx#stx-e
                                                                _hd1694117388_)))
                                                          (let ((_hd1694417396_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1694317393_))
                        (_tl1694517398_ (##cdr _e1694317393_)))
                    (if (gx#identifier? _hd1694417396_)
                        (if (gx#stx-eq? '%#ref _hd1694417396_)
                            (if (gx#stx-pair? _tl1694517398_)
                                (let ((_e1694617401_
                                       (gx#stx-e _tl1694517398_)))
                                  (let ((_hd1694717404_ (##car _e1694617401_))
                                        (_tl1694817406_ (##cdr _e1694617401_)))
                                    (if (gx#stx-null? _tl1694817406_)
                                        (if (gx#stx-null? _tl1694217390_)
                                            (if (gx#stx-null? _tl1690917302_)
                                                ((lambda (_L17409_
                                                          _L17410_
                                                          _L17411_
                                                          _L17412_
                                                          _L17413_)
                                                   (if (if (gx#identifier?
                                                            _L17413_)
                                                           (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L17412_)
                            'apply)
                       (if (eq? (gxc#generate-runtime-binding-id _L17411_)
                                'make-struct-instance)
                           (gx#free-identifier=? _L17413_ _L17409_)
                           '#f)
                       '#f)
                   '#f)
               (let* ((_type-t17456_
                       (gxc#generate-runtime-binding-id _L17410_))
                      (_type17458_ (gxc#optimizer-resolve-type _type-t17456_)))
                 (if (##structure-instance-of?
                      _type17458_
                      'gxc#!struct-type::t)
                     (##structure gxc#!struct-cons::t _type-t17456_)
                     '#f))
               (_g1689117276_ _g1689517279_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1694717404_
                                                 _hd1693817380_
                                                 _hd1692917356_
                                                 _hd1692017332_
                                                 _hd1690517292_)
                                                (_g1689117276_ _g1689517279_))
                                            (_g1689117276_ _g1689517279_))
                                        (_g1689117276_ _g1689517279_))))
                                (_g1689117276_ _g1689517279_))
                            (_g1689117276_ _g1689517279_))
                        (_g1689117276_ _g1689517279_))))
                (_g1689117276_ _g1689517279_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1689117276_ _g1689517279_))
                                            (_g1689117276_ _g1689517279_))))
                                    (_g1689117276_ _g1689517279_))
                                (_g1689117276_ _g1689517279_))
                            (_g1689117276_ _g1689517279_))))
                    (_g1689117276_ _g1689517279_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1689117276_
                                                     _g1689517279_))
                                                (_g1689117276_
                                                 _g1689517279_))))
                                        (_g1689117276_ _g1689517279_))
                                    (_g1689117276_ _g1689517279_))
                                (_g1689117276_ _g1689517279_))))
                        (_g1689117276_ _g1689517279_))))
                (_g1689117276_ _g1689517279_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1689117276_
                                                     _g1689517279_))))
                                            (_g1689117276_ _g1689517279_))
                                        (_g1689117276_ _g1689517279_))
                                    (_g1689117276_ _g1689517279_))))
                            (_g1689117276_ _g1689517279_))))
                    (_g1689117276_ _g1689517279_))
                (_g1689117276_ _g1689517279_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1689117276_
                                                     _g1689517279_))))
                                            (_g1689117276_ _g1689517279_))))
                                    (_g1689117276_ _g1689517279_))))
                            (_g1689117276_ _g1689517279_))))
                    (_g1689117276_ _g1689517279_)))))
        (_g1689017461_ _stx16889_))))
  (define gxc#basic-expression-type-case-lambda%
    (lambda (_stx16835_)
      (letrec ((_clause-e16837_
                (lambda (_form16887_)
                  (let ((__obj23595 (make-object gxc#!lambda::t '5)))
                    (begin
                      (gxc#!lambda:::init!__0
                       __obj23595
                       'case-lambda-clause
                       (gxc#lambda-form-arity _form16887_)
                       (gxc#dispatch-lambda-form-delegate _form16887_))
                      __obj23595)))))
        (let* ((_g1684016850_
                (lambda (_g1684116847_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1684116847_)))
               (_g1683916857_ (lambda (_g1684116853_) ((lambda () '#f))))
               (_g1683816884_
                (lambda (_g1684116860_)
                  (if (gx#stx-pair? _g1684116860_)
                      (let ((_e1684316862_ (gx#stx-e _g1684116860_)))
                        (let ((_hd1684416865_ (##car _e1684316862_))
                              (_tl1684516867_ (##cdr _e1684316862_)))
                          ((lambda (_L16870_)
                             (if (andmap1 gxc#dispatch-lambda-form? _L16870_)
                                 (let ((_clauses16882_
                                        (map _clause-e16837_ _L16870_)))
                                   (##structure
                                    gxc#!case-lambda::t
                                    'case-lambda
                                    _clauses16882_))
                                 (_g1683916857_ _g1684116860_)))
                           _tl1684516867_)))
                      (_g1683916857_ _g1684116860_)))))
          (_g1683816884_ _stx16835_)))))
  (define gxc#basic-expression-type-builtin (make-hash-table-eq))
  (define gxc#basic-expression-type-call%
    (lambda (_stx16740_)
      (let* ((_g1674316763_
              (lambda (_g1674416760_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1674416760_)))
             (_g1674216770_ (lambda (_g1674416766_) ((lambda () '#f))))
             (_g1674116832_
              (lambda (_g1674416773_)
                (if (gx#stx-pair? _g1674416773_)
                    (let ((_e1674716775_ (gx#stx-e _g1674416773_)))
                      (let ((_hd1674816778_ (##car _e1674716775_))
                            (_tl1674916780_ (##cdr _e1674716775_)))
                        (if (gx#stx-pair? _tl1674916780_)
                            (let ((_e1675016783_ (gx#stx-e _tl1674916780_)))
                              (let ((_hd1675116786_ (##car _e1675016783_))
                                    (_tl1675216788_ (##cdr _e1675016783_)))
                                (if (gx#stx-pair? _hd1675116786_)
                                    (let ((_e1675316791_
                                           (gx#stx-e _hd1675116786_)))
                                      (let ((_hd1675416794_
                                             (##car _e1675316791_))
                                            (_tl1675516796_
                                             (##cdr _e1675316791_)))
                                        (if (gx#identifier? _hd1675416794_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1675416794_)
                                                (if (gx#stx-pair?
                                                     _tl1675516796_)
                                                    (let ((_e1675616799_
                                                           (gx#stx-e
                                                            _tl1675516796_)))
                                                      (let ((_hd1675716802_
                                                             (##car _e1675616799_))
                                                            (_tl1675816804_
                                                             (##cdr _e1675616799_)))
                                                        (if (gx#stx-null?
                                                             _tl1675816804_)
                                                            ((lambda (_L16807_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L16808_)
                       (let ((_type-e1682516827_
                              (table-ref
                               gxc#basic-expression-type-builtin
                               (gxc#generate-runtime-binding-id _L16808_)
                               '#f)))
                         (if _type-e1682516827_
                             (let ((_type-e16830_ _type-e1682516827_))
                               (_type-e16830_ _stx16740_ _L16807_))
                             '#f)))
                     _tl1675216788_
                     _hd1675716802_)
                    (_g1674216770_ _g1674416773_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1674216770_
                                                     _g1674416773_))
                                                (_g1674216770_ _g1674416773_))
                                            (_g1674216770_ _g1674416773_))))
                                    (_g1674216770_ _g1674416773_))))
                            (_g1674216770_ _g1674416773_))))
                    (_g1674216770_ _g1674416773_)))))
        (_g1674116832_ _stx16740_))))
  (define gxc#basic-expression-type-make-struct-type
    (lambda (_stx16225_ _args16226_)
      (let* ((_g1623016343_
              (lambda (_g1623116340_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1623116340_)))
             (_g1622916350_
              (lambda (_g1623116346_)
                ((lambda ()
                   (begin
                     (gxc#verbose
                      '"make-struct-type: can't infer type "
                      (gx#syntax->datum _stx16225_))
                     '#f)))))
             (_g1622816557_
              (lambda (_g1623116353_)
                (if (gx#stx-pair? _g1623116353_)
                    (let ((_e1629116355_ (gx#stx-e _g1623116353_)))
                      (let ((_hd1629216358_ (##car _e1629116355_))
                            (_tl1629316360_ (##cdr _e1629116355_)))
                        (if (gx#stx-pair? _hd1629216358_)
                            (let ((_e1629416363_ (gx#stx-e _hd1629216358_)))
                              (let ((_hd1629516366_ (##car _e1629416363_))
                                    (_tl1629616368_ (##cdr _e1629416363_)))
                                (if (gx#identifier? _hd1629516366_)
                                    (if (gx#stx-eq? '%#quote _hd1629516366_)
                                        (if (gx#stx-pair? _tl1629616368_)
                                            (let ((_e1629716371_
                                                   (gx#stx-e _tl1629616368_)))
                                              (let ((_hd1629816374_
                                                     (##car _e1629716371_))
                                                    (_tl1629916376_
                                                     (##cdr _e1629716371_)))
                                                (if (gx#stx-null?
                                                     _tl1629916376_)
                                                    (if (gx#stx-pair?
                                                         _tl1629316360_)
                                                        (let ((_e1630016379_
                                                               (gx#stx-e
                                                                _tl1629316360_)))
                                                          (let ((_hd1630116382_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1630016379_))
                        (_tl1630216384_ (##cdr _e1630016379_)))
                    (if (gx#stx-pair? _hd1630116382_)
                        (let ((_e1630316387_ (gx#stx-e _hd1630116382_)))
                          (let ((_hd1630416390_ (##car _e1630316387_))
                                (_tl1630516392_ (##cdr _e1630316387_)))
                            (if (gx#identifier? _hd1630416390_)
                                (if (gx#stx-eq? '%#ref _hd1630416390_)
                                    (if (gx#stx-pair? _tl1630516392_)
                                        (let ((_e1630616395_
                                               (gx#stx-e _tl1630516392_)))
                                          (let ((_hd1630716398_
                                                 (##car _e1630616395_))
                                                (_tl1630816400_
                                                 (##cdr _e1630616395_)))
                                            (if (gx#stx-null? _tl1630816400_)
                                                (if (gx#stx-pair?
                                                     _tl1630216384_)
                                                    (let ((_e1630916403_
                                                           (gx#stx-e
                                                            _tl1630216384_)))
                                                      (let ((_hd1631016406_
                                                             (##car _e1630916403_))
                                                            (_tl1631116408_
                                                             (##cdr _e1630916403_)))
                                                        (if (gx#stx-pair?
                                                             _hd1631016406_)
                                                            (let ((_e1631216411_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1631016406_)))
                      (let ((_hd1631316414_ (##car _e1631216411_))
                            (_tl1631416416_ (##cdr _e1631216411_)))
                        (if (gx#identifier? _hd1631316414_)
                            (if (gx#stx-eq? '%#quote _hd1631316414_)
                                (if (gx#stx-pair? _tl1631416416_)
                                    (let ((_e1631516419_
                                           (gx#stx-e _tl1631416416_)))
                                      (let ((_hd1631616422_
                                             (##car _e1631516419_))
                                            (_tl1631716424_
                                             (##cdr _e1631516419_)))
                                        (if (gx#stx-null? _tl1631716424_)
                                            (if (gx#stx-pair? _tl1631116408_)
                                                (let ((_e1631816427_
                                                       (gx#stx-e
                                                        _tl1631116408_)))
                                                  (let ((_hd1631916430_
                                                         (##car _e1631816427_))
                                                        (_tl1632016432_
                                                         (##cdr _e1631816427_)))
                                                    (if (gx#stx-pair?
                                                         _tl1632016432_)
                                                        (let ((_e1632116435_
                                                               (gx#stx-e
                                                                _tl1632016432_)))
                                                          (let ((_hd1632216438_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1632116435_))
                        (_tl1632316440_ (##cdr _e1632116435_)))
                    (if (gx#stx-pair? _hd1632216438_)
                        (let ((_e1632416443_ (gx#stx-e _hd1632216438_)))
                          (let ((_hd1632516446_ (##car _e1632416443_))
                                (_tl1632616448_ (##cdr _e1632416443_)))
                            (if (gx#identifier? _hd1632516446_)
                                (if (gx#stx-eq? '%#quote _hd1632516446_)
                                    (if (gx#stx-pair? _tl1632616448_)
                                        (let ((_e1632716451_
                                               (gx#stx-e _tl1632616448_)))
                                          (let ((_hd1632816454_
                                                 (##car _e1632716451_))
                                                (_tl1632916456_
                                                 (##cdr _e1632716451_)))
                                            (if (gx#stx-null? _tl1632916456_)
                                                (if (gx#stx-pair?
                                                     _tl1632316440_)
                                                    (let ((_e1633016459_
                                                           (gx#stx-e
                                                            _tl1632316440_)))
                                                      (let ((_hd1633116462_
                                                             (##car _e1633016459_))
                                                            (_tl1633216464_
                                                             (##cdr _e1633016459_)))
                                                        (if (gx#stx-pair?
                                                             _hd1633116462_)
                                                            (let ((_e1633316467_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1633116462_)))
                      (let ((_hd1633416470_ (##car _e1633316467_))
                            (_tl1633516472_ (##cdr _e1633316467_)))
                        (if (gx#identifier? _hd1633416470_)
                            (if (gx#stx-eq? '%#quote _hd1633416470_)
                                (if (gx#stx-pair? _tl1633516472_)
                                    (let ((_e1633616475_
                                           (gx#stx-e _tl1633516472_)))
                                      (let ((_hd1633716478_
                                             (##car _e1633616475_))
                                            (_tl1633816480_
                                             (##cdr _e1633616475_)))
                                        (if (gx#stx-null? _tl1633816480_)
                                            (if (gx#stx-null? _tl1633216464_)
                                                ((lambda (_L16483_
                                                          _L16484_
                                                          _L16485_
                                                          _L16486_
                                                          _L16487_
                                                          _L16488_)
                                                   (let* ((_super-t16534_
                                                           (if (gx#stx-e
                                                                _L16487_)
                                                               (gxc#generate-runtime-binding-id
                                                                _L16487_)
                                                               '#f))
                                                          (_super-type16536_
                                                           (if _super-t16534_
                                                               (gxc#optimizer-resolve-type
                                                                _super-t16534_)
                                                               '#f)))
                                                     (begin
                                                       (if (if _super-type16536_
                                                               (not (##structure-instance-of?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _super-type16536_
                             'gxc#!struct-type::t))
                       '#f)
                   (gxc#raise-compile-error
                    '"Illegal struct-type construction; invalid super type"
                    _stx16225_
                    _L16487_)
                   '#!void)
               (let ((_fields16552_ (gx#stx-e _L16486_))
                     (_xfields16553_
                      (if _super-type16536_
                          (let ((_super-fields1653816541_
                                 (##structure-ref
                                  _super-type16536_
                                  '3
                                  gxc#!struct-type::t
                                  '#f))
                                (_super-xfields1653916543_
                                 (##structure-ref
                                  _super-type16536_
                                  '4
                                  gxc#!struct-type::t
                                  '#f)))
                            (if _super-fields1653816541_
                                (if _super-xfields1653916543_
                                    (let ((_super-fields16546_
                                           _super-fields1653816541_)
                                          (_super-xfields16547_
                                           _super-xfields1653916543_))
                                      (fx+ _super-fields16546_
                                           _super-xfields16547_))
                                    '#f)
                                '#f))
                          '#f))
                     (_plist16554_ (gx#stx-e _L16484_))
                     (_ctor16555_
                      (let ((_$e16549_ (gx#stx-e _L16483_)))
                        (if _$e16549_
                            (values _$e16549_)
                            (if _super-type16536_
                                (##structure-ref
                                 _super-type16536_
                                 '5
                                 gxc#!struct-type::t
                                 '#f)
                                (if _super-t16534_ '#!void '#f))))))
                 (let ((__obj23596 (make-object gxc#!struct-type::t '7)))
                   (begin
                     (gxc#!struct-type:::init!
                      __obj23596
                      (gx#stx-e _L16488_)
                      _super-t16534_
                      _fields16552_
                      _xfields16553_
                      _ctor16555_
                      _plist16554_)
                     __obj23596))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1633716478_
                                                 _hd1632816454_
                                                 _hd1631916430_
                                                 _hd1631616422_
                                                 _hd1630716398_
                                                 _hd1629816374_)
                                                (_g1622916350_ _g1623116353_))
                                            (_g1622916350_ _g1623116353_))))
                                    (_g1622916350_ _g1623116353_))
                                (_g1622916350_ _g1623116353_))
                            (_g1622916350_ _g1623116353_))))
                    (_g1622916350_ _g1623116353_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1622916350_
                                                     _g1623116353_))
                                                (_g1622916350_
                                                 _g1623116353_))))
                                        (_g1622916350_ _g1623116353_))
                                    (_g1622916350_ _g1623116353_))
                                (_g1622916350_ _g1623116353_))))
                        (_g1622916350_ _g1623116353_))))
                (_g1622916350_ _g1623116353_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1622916350_ _g1623116353_))
                                            (_g1622916350_ _g1623116353_))))
                                    (_g1622916350_ _g1623116353_))
                                (_g1622916350_ _g1623116353_))
                            (_g1622916350_ _g1623116353_))))
                    (_g1622916350_ _g1623116353_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1622916350_
                                                     _g1623116353_))
                                                (_g1622916350_
                                                 _g1623116353_))))
                                        (_g1622916350_ _g1623116353_))
                                    (_g1622916350_ _g1623116353_))
                                (_g1622916350_ _g1623116353_))))
                        (_g1622916350_ _g1623116353_))))
                (_g1622916350_ _g1623116353_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1622916350_
                                                     _g1623116353_))))
                                            (_g1622916350_ _g1623116353_))
                                        (_g1622916350_ _g1623116353_))
                                    (_g1622916350_ _g1623116353_))))
                            (_g1622916350_ _g1623116353_))))
                    (_g1622916350_ _g1623116353_))))
             (_g1622716737_
              (lambda (_g1623116560_)
                (if (gx#stx-pair? _g1623116560_)
                    (let ((_e1623716562_ (gx#stx-e _g1623116560_)))
                      (let ((_hd1623816565_ (##car _e1623716562_))
                            (_tl1623916567_ (##cdr _e1623716562_)))
                        (if (gx#stx-pair? _hd1623816565_)
                            (let ((_e1624016570_ (gx#stx-e _hd1623816565_)))
                              (let ((_hd1624116573_ (##car _e1624016570_))
                                    (_tl1624216575_ (##cdr _e1624016570_)))
                                (if (gx#identifier? _hd1624116573_)
                                    (if (gx#stx-eq? '%#quote _hd1624116573_)
                                        (if (gx#stx-pair? _tl1624216575_)
                                            (let ((_e1624316578_
                                                   (gx#stx-e _tl1624216575_)))
                                              (let ((_hd1624416581_
                                                     (##car _e1624316578_))
                                                    (_tl1624516583_
                                                     (##cdr _e1624316578_)))
                                                (if (gx#stx-null?
                                                     _tl1624516583_)
                                                    (if (gx#stx-pair?
                                                         _tl1623916567_)
                                                        (let ((_e1624616586_
                                                               (gx#stx-e
                                                                _tl1623916567_)))
                                                          (let ((_hd1624716589_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1624616586_))
                        (_tl1624816591_ (##cdr _e1624616586_)))
                    (if (gx#stx-pair? _hd1624716589_)
                        (let ((_e1624916594_ (gx#stx-e _hd1624716589_)))
                          (let ((_hd1625016597_ (##car _e1624916594_))
                                (_tl1625116599_ (##cdr _e1624916594_)))
                            (if (gx#identifier? _hd1625016597_)
                                (if (gx#stx-eq? '%#quote _hd1625016597_)
                                    (if (gx#stx-pair? _tl1625116599_)
                                        (let ((_e1625216602_
                                               (gx#stx-e _tl1625116599_)))
                                          (let ((_hd1625316605_
                                                 (##car _e1625216602_))
                                                (_tl1625416607_
                                                 (##cdr _e1625216602_)))
                                            (if (gx#stx-datum? _hd1625316605_)
                                                (if (equal? (gx#stx-e
                                                             _hd1625316605_)
                                                            '#f)
                                                    (if (gx#stx-null?
                                                         _tl1625416607_)
                                                        (if (gx#stx-pair?
                                                             _tl1624816591_)
                                                            (let ((_e1625516610_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1624816591_)))
                      (let ((_hd1625616613_ (##car _e1625516610_))
                            (_tl1625716615_ (##cdr _e1625516610_)))
                        (if (gx#stx-pair? _hd1625616613_)
                            (let ((_e1625816618_ (gx#stx-e _hd1625616613_)))
                              (let ((_hd1625916621_ (##car _e1625816618_))
                                    (_tl1626016623_ (##cdr _e1625816618_)))
                                (if (gx#identifier? _hd1625916621_)
                                    (if (gx#stx-eq? '%#quote _hd1625916621_)
                                        (if (gx#stx-pair? _tl1626016623_)
                                            (let ((_e1626116626_
                                                   (gx#stx-e _tl1626016623_)))
                                              (let ((_hd1626216629_
                                                     (##car _e1626116626_))
                                                    (_tl1626316631_
                                                     (##cdr _e1626116626_)))
                                                (if (gx#stx-null?
                                                     _tl1626316631_)
                                                    (if (gx#stx-pair?
                                                         _tl1625716615_)
                                                        (let ((_e1626416634_
                                                               (gx#stx-e
                                                                _tl1625716615_)))
                                                          (let ((_hd1626516637_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1626416634_))
                        (_tl1626616639_ (##cdr _e1626416634_)))
                    (if (gx#stx-pair? _tl1626616639_)
                        (let ((_e1626716642_ (gx#stx-e _tl1626616639_)))
                          (let ((_hd1626816645_ (##car _e1626716642_))
                                (_tl1626916647_ (##cdr _e1626716642_)))
                            (if (gx#stx-pair? _hd1626816645_)
                                (let ((_e1627016650_
                                       (gx#stx-e _hd1626816645_)))
                                  (let ((_hd1627116653_ (##car _e1627016650_))
                                        (_tl1627216655_ (##cdr _e1627016650_)))
                                    (if (gx#identifier? _hd1627116653_)
                                        (if (gx#stx-eq?
                                             '%#quote
                                             _hd1627116653_)
                                            (if (gx#stx-pair? _tl1627216655_)
                                                (let ((_e1627316658_
                                                       (gx#stx-e
                                                        _tl1627216655_)))
                                                  (let ((_hd1627416661_
                                                         (##car _e1627316658_))
                                                        (_tl1627516663_
                                                         (##cdr _e1627316658_)))
                                                    (if (gx#stx-null?
                                                         _tl1627516663_)
                                                        (if (gx#stx-pair?
                                                             _tl1626916647_)
                                                            (let ((_e1627616666_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1626916647_)))
                      (let ((_hd1627716669_ (##car _e1627616666_))
                            (_tl1627816671_ (##cdr _e1627616666_)))
                        (if (gx#stx-pair? _hd1627716669_)
                            (let ((_e1627916674_ (gx#stx-e _hd1627716669_)))
                              (let ((_hd1628016677_ (##car _e1627916674_))
                                    (_tl1628116679_ (##cdr _e1627916674_)))
                                (if (gx#identifier? _hd1628016677_)
                                    (if (gx#stx-eq? '%#quote _hd1628016677_)
                                        (if (gx#stx-pair? _tl1628116679_)
                                            (let ((_e1628216682_
                                                   (gx#stx-e _tl1628116679_)))
                                              (let ((_hd1628316685_
                                                     (##car _e1628216682_))
                                                    (_tl1628416687_
                                                     (##cdr _e1628216682_)))
                                                (if (gx#stx-null?
                                                     _tl1628416687_)
                                                    (if (gx#stx-null?
                                                         _tl1627816671_)
                                                        ((lambda (_L16690_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L16691_
                          _L16692_
                          _L16693_
                          _L16694_)
                   (let ((__obj23597 (make-object gxc#!struct-type::t '7)))
                     (begin
                       (gxc#!struct-type:::init!
                        __obj23597
                        (gx#stx-e _L16694_)
                        '#f
                        (gx#stx-e _L16693_)
                        '0
                        (gx#stx-e _L16690_)
                        (gx#stx-e _L16691_))
                       __obj23597)))
                 _hd1628316685_
                 _hd1627416661_
                 _hd1626516637_
                 _hd1626216629_
                 _hd1624416581_)
                (_g1622816557_ _g1623116560_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1622816557_
                                                     _g1623116560_))))
                                            (_g1622816557_ _g1623116560_))
                                        (_g1622816557_ _g1623116560_))
                                    (_g1622816557_ _g1623116560_))))
                            (_g1622816557_ _g1623116560_))))
                    (_g1622816557_ _g1623116560_))
                (_g1622816557_ _g1623116560_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1622816557_ _g1623116560_))
                                            (_g1622816557_ _g1623116560_))
                                        (_g1622816557_ _g1623116560_))))
                                (_g1622816557_ _g1623116560_))))
                        (_g1622816557_ _g1623116560_))))
                (_g1622816557_ _g1623116560_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1622816557_
                                                     _g1623116560_))))
                                            (_g1622816557_ _g1623116560_))
                                        (_g1622816557_ _g1623116560_))
                                    (_g1622816557_ _g1623116560_))))
                            (_g1622816557_ _g1623116560_))))
                    (_g1622816557_ _g1623116560_))
                (_g1622816557_ _g1623116560_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1622816557_
                                                     _g1623116560_))
                                                (_g1622816557_
                                                 _g1623116560_))))
                                        (_g1622816557_ _g1623116560_))
                                    (_g1622816557_ _g1623116560_))
                                (_g1622816557_ _g1623116560_))))
                        (_g1622816557_ _g1623116560_))))
                (_g1622816557_ _g1623116560_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1622816557_
                                                     _g1623116560_))))
                                            (_g1622816557_ _g1623116560_))
                                        (_g1622816557_ _g1623116560_))
                                    (_g1622816557_ _g1623116560_))))
                            (_g1622816557_ _g1623116560_))))
                    (_g1622816557_ _g1623116560_)))))
        (_g1622716737_ _args16226_))))
  (define gxc#basic-expression-type-make-struct-predicate
    (lambda (_stx16151_ _args16152_)
      (let* ((_g1615516171_
              (lambda (_g1615616168_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1615616168_)))
             (_g1615416178_ (lambda (_g1615616174_) ((lambda () '#f))))
             (_g1615316222_
              (lambda (_g1615616181_)
                (if (gx#stx-pair? _g1615616181_)
                    (let ((_e1615816183_ (gx#stx-e _g1615616181_)))
                      (let ((_hd1615916186_ (##car _e1615816183_))
                            (_tl1616016188_ (##cdr _e1615816183_)))
                        (if (gx#stx-pair? _hd1615916186_)
                            (let ((_e1616116191_ (gx#stx-e _hd1615916186_)))
                              (let ((_hd1616216194_ (##car _e1616116191_))
                                    (_tl1616316196_ (##cdr _e1616116191_)))
                                (if (gx#identifier? _hd1616216194_)
                                    (if (gx#stx-eq? '%#ref _hd1616216194_)
                                        (if (gx#stx-pair? _tl1616316196_)
                                            (let ((_e1616416199_
                                                   (gx#stx-e _tl1616316196_)))
                                              (let ((_hd1616516202_
                                                     (##car _e1616416199_))
                                                    (_tl1616616204_
                                                     (##cdr _e1616416199_)))
                                                (if (gx#stx-null?
                                                     _tl1616616204_)
                                                    (if (gx#stx-null?
                                                         _tl1616016188_)
                                                        ((lambda (_L16207_)
                                                           (##structure
                                                            gxc#!struct-pred::t
                                                            (gxc#generate-runtime-binding-id
                                                             _L16207_)))
                                                         _hd1616516202_)
                                                        (_g1615416178_
                                                         _g1615616181_))
                                                    (_g1615416178_
                                                     _g1615616181_))))
                                            (_g1615416178_ _g1615616181_))
                                        (_g1615416178_ _g1615616181_))
                                    (_g1615416178_ _g1615616181_))))
                            (_g1615416178_ _g1615616181_))))
                    (_g1615416178_ _g1615616181_)))))
        (_g1615316222_ _args16152_))))
  (begin
    (define gxc#basic-expression-type-make-struct-field-accessor__opt-lambda16020
      (lambda (_stx16022_ _args16023_ _unchecked?16024_)
        (let* ((_g1602716053_
                (lambda (_g1602816050_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1602816050_)))
               (_g1602616060_ (lambda (_g1602816056_) ((lambda () '#f))))
               (_g1602516136_
                (lambda (_g1602816063_)
                  (if (gx#stx-pair? _g1602816063_)
                      (let ((_e1603116065_ (gx#stx-e _g1602816063_)))
                        (let ((_hd1603216068_ (##car _e1603116065_))
                              (_tl1603316070_ (##cdr _e1603116065_)))
                          (if (gx#stx-pair? _hd1603216068_)
                              (let ((_e1603416073_ (gx#stx-e _hd1603216068_)))
                                (let ((_hd1603516076_ (##car _e1603416073_))
                                      (_tl1603616078_ (##cdr _e1603416073_)))
                                  (if (gx#identifier? _hd1603516076_)
                                      (if (gx#stx-eq? '%#ref _hd1603516076_)
                                          (if (gx#stx-pair? _tl1603616078_)
                                              (let ((_e1603716081_
                                                     (gx#stx-e
                                                      _tl1603616078_)))
                                                (let ((_hd1603816084_
                                                       (##car _e1603716081_))
                                                      (_tl1603916086_
                                                       (##cdr _e1603716081_)))
                                                  (if (gx#stx-null?
                                                       _tl1603916086_)
                                                      (if (gx#stx-pair?
                                                           _tl1603316070_)
                                                          (let ((_e1604016089_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1603316070_)))
                    (let ((_hd1604116092_ (##car _e1604016089_))
                          (_tl1604216094_ (##cdr _e1604016089_)))
                      (if (gx#stx-pair? _hd1604116092_)
                          (let ((_e1604316097_ (gx#stx-e _hd1604116092_)))
                            (let ((_hd1604416100_ (##car _e1604316097_))
                                  (_tl1604516102_ (##cdr _e1604316097_)))
                              (if (gx#identifier? _hd1604416100_)
                                  (if (gx#stx-eq? '%#quote _hd1604416100_)
                                      (if (gx#stx-pair? _tl1604516102_)
                                          (let ((_e1604616105_
                                                 (gx#stx-e _tl1604516102_)))
                                            (let ((_hd1604716108_
                                                   (##car _e1604616105_))
                                                  (_tl1604816110_
                                                   (##cdr _e1604616105_)))
                                              (if (gx#stx-null? _tl1604816110_)
                                                  (if (gx#stx-null?
                                                       _tl1604216094_)
                                                      ((lambda (_L16113_
                                                                _L16114_)
                                                         (##structure
                                                          gxc#!struct-getf::t
                                                          (gxc#generate-runtime-binding-id
                                                           _L16114_)
                                                          (gx#stx-e _L16113_)
                                                          _unchecked?16024_))
                                                       _hd1604716108_
                                                       _hd1603816084_)
                                                      (_g1602616060_
                                                       _g1602816063_))
                                                  (_g1602616060_
                                                   _g1602816063_))))
                                          (_g1602616060_ _g1602816063_))
                                      (_g1602616060_ _g1602816063_))
                                  (_g1602616060_ _g1602816063_))))
                          (_g1602616060_ _g1602816063_))))
                  (_g1602616060_ _g1602816063_))
              (_g1602616060_ _g1602816063_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1602616060_ _g1602816063_))
                                          (_g1602616060_ _g1602816063_))
                                      (_g1602616060_ _g1602816063_))))
                              (_g1602616060_ _g1602816063_))))
                      (_g1602616060_ _g1602816063_)))))
          (_g1602516136_ _args16023_))))
    (begin
      (define gxc#basic-expression-type-make-struct-field-accessor__0
        (lambda (_stx16142_ _args16143_)
          (let ((_unchecked?16145_ '#f))
            (gxc#basic-expression-type-make-struct-field-accessor__opt-lambda16020
             _stx16142_
             _args16143_
             _unchecked?16145_))))
      (define gxc#basic-expression-type-make-struct-field-accessor
        (lambda _g23661_
          (let ((_g23660_ (length _g23661_)))
            (cond ((fx= _g23660_ 2)
                   (apply gxc#basic-expression-type-make-struct-field-accessor__0
                          _g23661_))
                  ((fx= _g23660_ 3)
                   (apply gxc#basic-expression-type-make-struct-field-accessor__opt-lambda16020
                          _g23661_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#basic-expression-type-make-struct-field-accessor
                    _g23661_))))))))
  (begin
    (define gxc#basic-expression-type-make-struct-field-mutator__opt-lambda15890
      (lambda (_stx15892_ _args15893_ _unchecked?15894_)
        (let* ((_g1589715923_
                (lambda (_g1589815920_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1589815920_)))
               (_g1589615930_ (lambda (_g1589815926_) ((lambda () '#f))))
               (_g1589516006_
                (lambda (_g1589815933_)
                  (if (gx#stx-pair? _g1589815933_)
                      (let ((_e1590115935_ (gx#stx-e _g1589815933_)))
                        (let ((_hd1590215938_ (##car _e1590115935_))
                              (_tl1590315940_ (##cdr _e1590115935_)))
                          (if (gx#stx-pair? _hd1590215938_)
                              (let ((_e1590415943_ (gx#stx-e _hd1590215938_)))
                                (let ((_hd1590515946_ (##car _e1590415943_))
                                      (_tl1590615948_ (##cdr _e1590415943_)))
                                  (if (gx#identifier? _hd1590515946_)
                                      (if (gx#stx-eq? '%#ref _hd1590515946_)
                                          (if (gx#stx-pair? _tl1590615948_)
                                              (let ((_e1590715951_
                                                     (gx#stx-e
                                                      _tl1590615948_)))
                                                (let ((_hd1590815954_
                                                       (##car _e1590715951_))
                                                      (_tl1590915956_
                                                       (##cdr _e1590715951_)))
                                                  (if (gx#stx-null?
                                                       _tl1590915956_)
                                                      (if (gx#stx-pair?
                                                           _tl1590315940_)
                                                          (let ((_e1591015959_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1590315940_)))
                    (let ((_hd1591115962_ (##car _e1591015959_))
                          (_tl1591215964_ (##cdr _e1591015959_)))
                      (if (gx#stx-pair? _hd1591115962_)
                          (let ((_e1591315967_ (gx#stx-e _hd1591115962_)))
                            (let ((_hd1591415970_ (##car _e1591315967_))
                                  (_tl1591515972_ (##cdr _e1591315967_)))
                              (if (gx#identifier? _hd1591415970_)
                                  (if (gx#stx-eq? '%#quote _hd1591415970_)
                                      (if (gx#stx-pair? _tl1591515972_)
                                          (let ((_e1591615975_
                                                 (gx#stx-e _tl1591515972_)))
                                            (let ((_hd1591715978_
                                                   (##car _e1591615975_))
                                                  (_tl1591815980_
                                                   (##cdr _e1591615975_)))
                                              (if (gx#stx-null? _tl1591815980_)
                                                  (if (gx#stx-null?
                                                       _tl1591215964_)
                                                      ((lambda (_L15983_
                                                                _L15984_)
                                                         (##structure
                                                          gxc#!struct-setf::t
                                                          (gxc#generate-runtime-binding-id
                                                           _L15984_)
                                                          (gx#stx-e _L15983_)
                                                          _unchecked?15894_))
                                                       _hd1591715978_
                                                       _hd1590815954_)
                                                      (_g1589615930_
                                                       _g1589815933_))
                                                  (_g1589615930_
                                                   _g1589815933_))))
                                          (_g1589615930_ _g1589815933_))
                                      (_g1589615930_ _g1589815933_))
                                  (_g1589615930_ _g1589815933_))))
                          (_g1589615930_ _g1589815933_))))
                  (_g1589615930_ _g1589815933_))
              (_g1589615930_ _g1589815933_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1589615930_ _g1589815933_))
                                          (_g1589615930_ _g1589815933_))
                                      (_g1589615930_ _g1589815933_))))
                              (_g1589615930_ _g1589815933_))))
                      (_g1589615930_ _g1589815933_)))))
          (_g1589516006_ _args15893_))))
    (begin
      (define gxc#basic-expression-type-make-struct-field-mutator__0
        (lambda (_stx16012_ _args16013_)
          (let ((_unchecked?16015_ '#f))
            (gxc#basic-expression-type-make-struct-field-mutator__opt-lambda15890
             _stx16012_
             _args16013_
             _unchecked?16015_))))
      (define gxc#basic-expression-type-make-struct-field-mutator
        (lambda _g23663_
          (let ((_g23662_ (length _g23663_)))
            (cond ((fx= _g23662_ 2)
                   (apply gxc#basic-expression-type-make-struct-field-mutator__0
                          _g23663_))
                  ((fx= _g23662_ 3)
                   (apply gxc#basic-expression-type-make-struct-field-mutator__opt-lambda15890
                          _g23663_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#basic-expression-type-make-struct-field-mutator
                    _g23663_))))))))
  (define gxc#basic-expression-type-make-struct-field-unchecked-accessor
    (lambda (_stx15888_ _args15889_)
      (gxc#basic-expression-type-make-struct-field-accessor__opt-lambda16020
       _stx15888_
       _args15889_
       '#t)))
  (define gxc#basic-expression-type-make-struct-field-unchecked-mutator
    (lambda (_stx15885_ _args15886_)
      (gxc#basic-expression-type-make-struct-field-mutator__opt-lambda15890
       _stx15885_
       _args15886_
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
    (lambda (_stx15834_)
      (let* ((_g1583615849_
              (lambda (_g1583715846_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1583715846_)))
             (_g1583515882_
              (lambda (_g1583715852_)
                (if (gx#stx-pair? _g1583715852_)
                    (let ((_e1583915854_ (gx#stx-e _g1583715852_)))
                      (let ((_hd1584015857_ (##car _e1583915854_))
                            (_tl1584115859_ (##cdr _e1583915854_)))
                        (if (gx#stx-pair? _tl1584115859_)
                            (let ((_e1584215862_ (gx#stx-e _tl1584115859_)))
                              (let ((_hd1584315865_ (##car _e1584215862_))
                                    (_tl1584415867_ (##cdr _e1584215862_)))
                                (if (gx#stx-null? _tl1584415867_)
                                    ((lambda (_L15870_)
                                       (gxc#optimizer-lookup-type
                                        (gxc#generate-runtime-binding-id
                                         _L15870_)))
                                     _hd1584315865_)
                                    (_g1583615849_ _g1583715852_))))
                            (_g1583615849_ _g1583715852_))))
                    (_g1583615849_ _g1583715852_)))))
        (_g1583515882_ _stx15834_))))
  (define gxc#optimize-call%
    (lambda (_stx15740_)
      (let* ((_g1574315763_
              (lambda (_g1574415760_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1574415760_)))
             (_g1574215770_
              (lambda (_g1574415766_)
                ((lambda () (gxc#xform-call% _stx15740_)))))
             (_g1574115831_
              (lambda (_g1574415773_)
                (if (gx#stx-pair? _g1574415773_)
                    (let ((_e1574715775_ (gx#stx-e _g1574415773_)))
                      (let ((_hd1574815778_ (##car _e1574715775_))
                            (_tl1574915780_ (##cdr _e1574715775_)))
                        (if (gx#stx-pair? _tl1574915780_)
                            (let ((_e1575015783_ (gx#stx-e _tl1574915780_)))
                              (let ((_hd1575115786_ (##car _e1575015783_))
                                    (_tl1575215788_ (##cdr _e1575015783_)))
                                (if (gx#stx-pair? _hd1575115786_)
                                    (let ((_e1575315791_
                                           (gx#stx-e _hd1575115786_)))
                                      (let ((_hd1575415794_
                                             (##car _e1575315791_))
                                            (_tl1575515796_
                                             (##cdr _e1575315791_)))
                                        (if (gx#identifier? _hd1575415794_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1575415794_)
                                                (if (gx#stx-pair?
                                                     _tl1575515796_)
                                                    (let ((_e1575615799_
                                                           (gx#stx-e
                                                            _tl1575515796_)))
                                                      (let ((_hd1575715802_
                                                             (##car _e1575615799_))
                                                            (_tl1575815804_
                                                             (##cdr _e1575615799_)))
                                                        (if (gx#stx-null?
                                                             _tl1575815804_)
                                                            ((lambda (_L15807_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L15808_)
                       (let* ((_rator-id15826_
                               (gxc#generate-runtime-binding-id _L15808_))
                              (_rator-type15828_
                               (gxc#optimizer-resolve-type _rator-id15826_)))
                         (if (##structure-instance-of?
                              _rator-type15828_
                              'gxc#!procedure::t)
                             (begin
                               (gxc#verbose
                                '"optimize-call "
                                _rator-id15826_
                                '" => "
                                _rator-type15828_
                                '" "
                                (##structure-ref
                                 _rator-type15828_
                                 '1
                                 gxc#!type::t
                                 '#f))
                               (call-method
                                _rator-type15828_
                                'optimize-call
                                _stx15740_
                                _L15807_))
                             (if (not _rator-type15828_)
                                 (gxc#xform-call% _stx15740_)
                                 (gxc#raise-compile-error
                                  '"Illegal application; not a procedure"
                                  _stx15740_
                                  _rator-type15828_)))))
                     _tl1575215788_
                     _hd1575715802_)
                    (_g1574215770_ _g1574415773_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1574215770_
                                                     _g1574415773_))
                                                (_g1574215770_ _g1574415773_))
                                            (_g1574215770_ _g1574415773_))))
                                    (_g1574215770_ _g1574415773_))))
                            (_g1574215770_ _g1574415773_))))
                    (_g1574215770_ _g1574415773_)))))
        (_g1574115831_ _stx15740_))))
  (define gxc#!struct-pred::optimize-call
    (lambda (_self15594_ _stx15595_ _args15596_)
      (let* ((_self1559715603_ _self15594_)
             (_E1559915607_
              (lambda () (error '"No clause matching" _self1559715603_)))
             (_K1560015732_
              (lambda (_struct-t15610_)
                (let* ((_struct-type15612_
                        (gxc#optimizer-resolve-type _struct-t15610_))
                       (_struct-type1561315627_ _struct-type15612_)
                       (_E1561715631_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1561315627_)))
                       (_else1561615635_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx15595_
                           _struct-t15610_
                           _struct-type15612_)))
                       (_try-match1561515643_
                        (lambda ()
                          (let ((_K1561815640_
                                 (lambda () (gxc#xform-call% _stx15595_))))
                            (if (##eq? _struct-type1561315627_ '#f)
                                (_K1561815640_)
                                (_else1561615635_)))))
                       (_K1561915707_
                        (lambda (_plist15646_ _struct-type-id15647_)
                          (let* ((_g1565015660_
                                  (lambda (_g1565115657_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1565115657_)))
                                 (_g1564915667_
                                  (lambda (_g1565115663_)
                                    ((lambda ()
                                       (gxc#raise-compile-error
                                        '"Illegal struct predicate application"
                                        _stx15595_)))))
                                 (_g1564815704_
                                  (lambda (_g1565115670_)
                                    (if (gx#stx-pair? _g1565115670_)
                                        (let ((_e1565315672_
                                               (gx#stx-e _g1565115670_)))
                                          (let ((_hd1565415675_
                                                 (##car _e1565315672_))
                                                (_tl1565515677_
                                                 (##cdr _e1565315672_)))
                                            (if (gx#stx-null? _tl1565515677_)
                                                ((lambda (_L15680_)
                                                   (let ((_expr15701_
                                                          (gxc#compile-e
                                                           _L15680_))
                                                         (_op15702_
                                                          (if (if _plist15646_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (assgetq 'final: _plist15646_)
                          '#f)
                      '%#struct-direct-instance?
                      '%#struct-instance?)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gxc#xform-wrap-source
                                                      (cons _op15702_
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _struct-type-id15647_ '()))
                          (cons _expr15701_ '())))
              _stx15595_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1565415675_)
                                                (_g1564915667_
                                                 _g1565115670_))))
                                        (_g1564915667_ _g1565115670_)))))
                            (_g1564815704_ _args15596_)))))
                  (if (##structure-instance-of?
                       _struct-type1561315627_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1562015710_
                              (##vector-ref _struct-type1561315627_ '1))
                             (_struct-type-id15713_ _e1562015710_)
                             (_e1562115715_
                              (##vector-ref _struct-type1561315627_ '2))
                             (_e1562215718_
                              (##vector-ref _struct-type1561315627_ '3))
                             (_e1562315721_
                              (##vector-ref _struct-type1561315627_ '4))
                             (_e1562415724_
                              (##vector-ref _struct-type1561315627_ '5))
                             (_e1562515727_
                              (##vector-ref _struct-type1561315627_ '6))
                             (_plist15730_ _e1562515727_))
                        (_K1561915707_ _plist15730_ _struct-type-id15713_))
                      (_try-match1561515643_))))))
        (if (##structure-instance-of?
             _self1559715603_
             (##type-id gxc#!struct-pred::t))
            (let* ((_e1560115735_ (##vector-ref _self1559715603_ '1))
                   (_struct-t15738_ _e1560115735_))
              (_K1560015732_ _struct-t15738_))
            (_E1559915607_)))))
  (bind-method!
   gxc#!struct-pred::t
   'optimize-call
   gxc#!struct-pred::optimize-call
   '#f)
  (define gxc#!struct-cons::optimize-call
    (lambda (_self15368_ _stx15369_ _args15370_)
      (let* ((_self1537115377_ _self15368_)
             (_E1537315381_
              (lambda () (error '"No clause matching" _self1537115377_)))
             (_K1537415464_
              (lambda (_struct-t15384_)
                (let* ((_struct-type15386_
                        (gxc#optimizer-resolve-type _struct-t15384_))
                       (_struct-type1538715400_ _struct-type15386_)
                       (_E1539115404_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1538715400_)))
                       (_else1539015408_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct constructor application; not a struct type"
                           _stx15369_
                           _struct-t15384_
                           _struct-type15386_)))
                       (_try-match1538915416_
                        (lambda ()
                          (let ((_K1539215413_
                                 (lambda ()
                                   (begin
                                     (gxc#verbose
                                      '"cannot inline struct constructor; unknown struct type "
                                      _struct-t15384_)
                                     (gxc#xform-call% _stx15369_)))))
                            (if (##eq? _struct-type1538715400_ '#f)
                                (_K1539215413_)
                                (_else1539015408_)))))
                       (_K1539315438_
                        (lambda (_ctor15419_
                                 _xfields15420_
                                 _fields15421_
                                 _type-id15422_)
                          (let* ((_args15424_ (map gxc#compile-e _args15370_))
                                 (_$e15426_
                                  (if _ctor15419_
                                      (if _xfields15420_
                                          (gxc#!struct-type-lookup-method
                                           _struct-type15386_
                                           _ctor15419_)
                                          '#f)
                                      '#f)))
                            (if _$e15426_
                                ((lambda (_kons15429_)
                                   (let ((_$obj15431_
                                          (make-symbol (gensym '__obj))))
                                     (gxc#xform-wrap-source
                                      (cons '%#let-values
                                            (cons (cons (cons (cons _$obj15431_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (cons '%#call
                                  (cons (cons '%#ref (cons 'make-object '()))
                                        (cons (cons '%#ref
                                                    (cons _struct-t15384_ '()))
                                              (cons (cons '%#quote
                                                          (cons (fx+ _fields15421_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _xfields15420_)
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
                                    (cons (cons '%#ref (cons _kons15429_ '()))
                                          (cons (cons '%#ref
                                                      (cons _$obj15431_ '()))
                                                _args15424_)))
                              _stx15369_))
                            (cons (cons '%#ref (cons _$obj15431_ '())) '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _stx15369_)))
                                 _$e15426_)
                                (if (let ((_$e15433_ _ctor15419_))
                                      (if _$e15433_
                                          _$e15433_
                                          (not _xfields15420_)))
                                    (gxc#xform-wrap-source
                                     (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons 'make-struct-instance
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _struct-t15384_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _args15424_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _stx15369_)
                                    (let ((_arity15436_
                                           (fx+ _fields15421_ _xfields15420_)))
                                      (if (fx= _arity15436_
                                               (length _args15424_))
                                          (gxc#xform-wrap-source
                                           (cons '%#call
                                                 (cons (cons '%#ref
                                                             (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons '%#ref (cons _struct-t15384_ '())) _args15424_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _stx15369_)
                                          (gxc#raise-compile-error
                                           '"Illegal struct constructor application; arity mismatch"
                                           _stx15369_
                                           _struct-t15384_
                                           _arity15436_)))))))))
                  (if (##structure-instance-of?
                       _struct-type1538715400_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1539415441_
                              (##vector-ref _struct-type1538715400_ '1))
                             (_type-id15444_ _e1539415441_)
                             (_e1539515446_
                              (##vector-ref _struct-type1538715400_ '2))
                             (_e1539615449_
                              (##vector-ref _struct-type1538715400_ '3))
                             (_fields15452_ _e1539615449_)
                             (_e1539715454_
                              (##vector-ref _struct-type1538715400_ '4))
                             (_xfields15457_ _e1539715454_)
                             (_e1539815459_
                              (##vector-ref _struct-type1538715400_ '5))
                             (_ctor15462_ _e1539815459_))
                        (_K1539315438_
                         _ctor15462_
                         _xfields15457_
                         _fields15452_
                         _type-id15444_))
                      (_try-match1538915416_))))))
        (if (##structure-instance-of?
             _self1537115377_
             (##type-id gxc#!struct-cons::t))
            (let* ((_e1537515467_ (##vector-ref _self1537115377_ '1))
                   (_struct-t15470_ _e1537515467_))
              (_K1537415464_ _struct-t15470_))
            (_E1537315381_)))))
  (bind-method!
   gxc#!struct-cons::t
   'optimize-call
   gxc#!struct-cons::optimize-call
   '#f)
  (define gxc#!struct-getf::optimize-call
    (lambda (_self15079_ _stx15080_ _args15081_)
      (let* ((_self1508215090_ _self15079_)
             (_E1508415094_
              (lambda () (error '"No clause matching" _self1508215090_)))
             (_K1508515228_
              (lambda (_unchecked?15097_ _off15098_ _struct-t15099_)
                (let* ((_struct-type15101_
                        (gxc#optimizer-resolve-type _struct-t15099_))
                       (_struct-type1510215116_ _struct-type15101_)
                       (_E1510615120_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1510215116_)))
                       (_else1510515124_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx15080_
                           _struct-t15099_
                           _struct-type15101_)))
                       (_try-match1510415132_
                        (lambda ()
                          (let ((_K1510715129_
                                 (lambda () (gxc#xform-call% _stx15080_))))
                            (if (##eq? _struct-type1510215116_ '#f)
                                (_K1510715129_)
                                (_else1510515124_)))))
                       (_K1510815199_
                        (lambda (_plist15135_
                                 _xfields15136_
                                 _fields15137_
                                 _struct-type-id15138_)
                          (if _xfields15136_
                              (let* ((_g1514115151_
                                      (lambda (_g1514215148_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g1514215148_)))
                                     (_g1514015158_
                                      (lambda (_g1514215154_)
                                        ((lambda ()
                                           (gxc#raise-compile-error
                                            '"Illegal struct accessor application"
                                            _stx15080_)))))
                                     (_g1513915196_
                                      (lambda (_g1514215161_)
                                        (if (gx#stx-pair? _g1514215161_)
                                            (let ((_e1514415163_
                                                   (gx#stx-e _g1514215161_)))
                                              (let ((_hd1514515166_
                                                     (##car _e1514415163_))
                                                    (_tl1514615168_
                                                     (##cdr _e1514415163_)))
                                                (if (gx#stx-null?
                                                     _tl1514615168_)
                                                    ((lambda (_L15171_)
                                                       (let ((_expr15192_
                                                              (gxc#compile-e
                                                               _L15171_))
                                                             (_off15193_
                                                              (fx+ _off15098_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xfields15136_
                           '1))
                     (_op15194_
                      (if _unchecked?15097_
                          '%#struct-unchecked-ref
                          (if (if _plist15135_
                                  (assgetq 'final: _plist15135_)
                                  '#f)
                              '%#struct-direct-ref
                              '%#struct-ref))))
                 (gxc#xform-wrap-source
                  (cons _op15194_
                        (cons (cons '%#ref (cons _struct-t15099_ '()))
                              (cons (cons '%#quote (cons _off15193_ '()))
                                    (cons _expr15192_ '()))))
                  _stx15080_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd1514515166_)
                                                    (_g1514015158_
                                                     _g1514215161_))))
                                            (_g1514015158_ _g1514215161_)))))
                                (_g1513915196_ _args15081_))
                              (begin
                                (gxc#verbose
                                 '"struct-getf: incomplete struct "
                                 _struct-type-id15138_)
                                (gxc#xform-call% _stx15080_))))))
                  (if (##structure-instance-of?
                       _struct-type1510215116_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1510915202_
                              (##vector-ref _struct-type1510215116_ '1))
                             (_struct-type-id15205_ _e1510915202_)
                             (_e1511015207_
                              (##vector-ref _struct-type1510215116_ '2))
                             (_e1511115210_
                              (##vector-ref _struct-type1510215116_ '3))
                             (_fields15213_ _e1511115210_)
                             (_e1511215215_
                              (##vector-ref _struct-type1510215116_ '4))
                             (_xfields15218_ _e1511215215_)
                             (_e1511315220_
                              (##vector-ref _struct-type1510215116_ '5))
                             (_e1511415223_
                              (##vector-ref _struct-type1510215116_ '6))
                             (_plist15226_ _e1511415223_))
                        (_K1510815199_
                         _plist15226_
                         _xfields15218_
                         _fields15213_
                         _struct-type-id15205_))
                      (_try-match1510415132_))))))
        (if (##structure-instance-of?
             _self1508215090_
             (##type-id gxc#!struct-getf::t))
            (let* ((_e1508615231_ (##vector-ref _self1508215090_ '1))
                   (_struct-t15234_ _e1508615231_)
                   (_e1508715236_ (##vector-ref _self1508215090_ '2))
                   (_off15239_ _e1508715236_)
                   (_e1508815241_ (##vector-ref _self1508215090_ '3))
                   (_unchecked?15244_ _e1508815241_))
              (_K1508515228_ _unchecked?15244_ _off15239_ _struct-t15234_))
            (_E1508415094_)))))
  (bind-method!
   gxc#!struct-getf::t
   'optimize-call
   gxc#!struct-getf::optimize-call
   '#f)
  (define gxc#!struct-setf::optimize-call
    (lambda (_self14773_ _stx14774_ _args14775_)
      (let* ((_self1477614784_ _self14773_)
             (_E1477814788_
              (lambda () (error '"No clause matching" _self1477614784_)))
             (_K1477914939_
              (lambda (_unchecked?14791_ _off14792_ _struct-t14793_)
                (let* ((_struct-type14795_
                        (gxc#optimizer-resolve-type _struct-t14793_))
                       (_struct-type1479614810_ _struct-type14795_)
                       (_E1480014814_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1479614810_)))
                       (_else1479914818_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx14774_
                           _struct-t14793_
                           _struct-type14795_)))
                       (_try-match1479814826_
                        (lambda ()
                          (let ((_K1480114823_
                                 (lambda () (gxc#xform-call% _stx14774_))))
                            (if (##eq? _struct-type1479614810_ '#f)
                                (_K1480114823_)
                                (_else1479914818_)))))
                       (_K1480214910_
                        (lambda (_plist14829_
                                 _xfields14830_
                                 _fields14831_
                                 _struct-type-id14832_)
                          (if _xfields14830_
                              (let* ((_g1483514849_
                                      (lambda (_g1483614846_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g1483614846_)))
                                     (_g1483414856_
                                      (lambda (_g1483614852_)
                                        ((lambda ()
                                           (gxc#raise-compile-error
                                            '"Illegal struct mutator application"
                                            _stx14774_)))))
                                     (_g1483314907_
                                      (lambda (_g1483614859_)
                                        (if (gx#stx-pair? _g1483614859_)
                                            (let ((_e1483914861_
                                                   (gx#stx-e _g1483614859_)))
                                              (let ((_hd1484014864_
                                                     (##car _e1483914861_))
                                                    (_tl1484114866_
                                                     (##cdr _e1483914861_)))
                                                (if (gx#stx-pair?
                                                     _tl1484114866_)
                                                    (let ((_e1484214869_
                                                           (gx#stx-e
                                                            _tl1484114866_)))
                                                      (let ((_hd1484314872_
                                                             (##car _e1484214869_))
                                                            (_tl1484414874_
                                                             (##cdr _e1484214869_)))
                                                        (if (gx#stx-null?
                                                             _tl1484414874_)
                                                            ((lambda (_L14877_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L14878_)
                       (let ((_expr14902_ (gxc#compile-e _L14878_))
                             (_val14903_ (gxc#compile-e _L14877_))
                             (_off14904_ (fx+ _off14792_ _xfields14830_ '1))
                             (_op14905_
                              (if _unchecked?14791_
                                  '%#struct-unchecked-set!
                                  (if (if _plist14829_
                                          (assgetq 'final: _plist14829_)
                                          '#f)
                                      '%#struct-direct-set!
                                      '%#struct-set!))))
                         (gxc#xform-wrap-source
                          (cons _op14905_
                                (cons (cons '%#ref (cons _struct-t14793_ '()))
                                      (cons (cons '%#quote
                                                  (cons _off14904_ '()))
                                            (cons _expr14902_
                                                  (cons _val14903_ '())))))
                          _stx14774_)))
                     _hd1484314872_
                     _hd1484014864_)
                    (_g1483414856_ _g1483614859_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1483414856_
                                                     _g1483614859_))))
                                            (_g1483414856_ _g1483614859_)))))
                                (_g1483314907_ _args14775_))
                              (begin
                                (gxc#verbose
                                 '"struct-setf: incomplete struct "
                                 _struct-type-id14832_)
                                (gxc#xform-call% _stx14774_))))))
                  (if (##structure-instance-of?
                       _struct-type1479614810_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1480314913_
                              (##vector-ref _struct-type1479614810_ '1))
                             (_struct-type-id14916_ _e1480314913_)
                             (_e1480414918_
                              (##vector-ref _struct-type1479614810_ '2))
                             (_e1480514921_
                              (##vector-ref _struct-type1479614810_ '3))
                             (_fields14924_ _e1480514921_)
                             (_e1480614926_
                              (##vector-ref _struct-type1479614810_ '4))
                             (_xfields14929_ _e1480614926_)
                             (_e1480714931_
                              (##vector-ref _struct-type1479614810_ '5))
                             (_e1480814934_
                              (##vector-ref _struct-type1479614810_ '6))
                             (_plist14937_ _e1480814934_))
                        (_K1480214910_
                         _plist14937_
                         _xfields14929_
                         _fields14924_
                         _struct-type-id14916_))
                      (_try-match1479814826_))))))
        (if (##structure-instance-of?
             _self1477614784_
             (##type-id gxc#!struct-setf::t))
            (let* ((_e1478014942_ (##vector-ref _self1477614784_ '1))
                   (_struct-t14945_ _e1478014942_)
                   (_e1478114947_ (##vector-ref _self1477614784_ '2))
                   (_off14950_ _e1478114947_)
                   (_e1478214952_ (##vector-ref _self1477614784_ '3))
                   (_unchecked?14955_ _e1478214952_))
              (_K1477914939_ _unchecked?14955_ _off14950_ _struct-t14945_))
            (_E1477814788_)))))
  (bind-method!
   gxc#!struct-setf::t
   'optimize-call
   gxc#!struct-setf::optimize-call
   '#f)
  (define gxc#!lambda::optimize-call
    (lambda (_self14607_ _stx14608_ _args14609_)
      (let* ((_self1461014619_ _self14607_)
             (_E1461214623_
              (lambda () (error '"No clause matching" _self1461014619_)))
             (_K1461314630_
              (lambda (_inline14626_ _dispatch14627_ _arity14628_)
                (begin
                  (if (gxc#!lambda-arity-match? _self14607_ _args14609_)
                      '#!void
                      (gxc#raise-compile-error
                       '"Illegal lambda application; arity mismatch"
                       _stx14608_
                       _arity14628_))
                  (if _inline14626_
                      (begin
                        (gxc#verbose '"inline lambda")
                        (gxc#compile-e
                         (gxc#xform-wrap-source
                          (_inline14626_ _stx14608_)
                          _stx14608_)))
                      (if _dispatch14627_
                          (begin
                            (gxc#verbose
                             '"dispatch lambda => "
                             _dispatch14627_)
                            (gxc#compile-e
                             (gxc#xform-wrap-source
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons _dispatch14627_ '()))
                                          _args14609_))
                              _stx14608_)))
                          (gxc#xform-call% _stx14608_)))))))
        (if (##structure-instance-of?
             _self1461014619_
             (##type-id gxc#!lambda::t))
            (let* ((_e1461414633_ (##vector-ref _self1461014619_ '1))
                   (_e1461514636_ (##vector-ref _self1461014619_ '2))
                   (_arity14639_ _e1461514636_)
                   (_e1461614641_ (##vector-ref _self1461014619_ '3))
                   (_dispatch14644_ _e1461614641_)
                   (_e1461714646_ (##vector-ref _self1461014619_ '4))
                   (_inline14649_ _e1461714646_))
              (_K1461314630_ _inline14649_ _dispatch14644_ _arity14639_))
            (_E1461214623_)))))
  (bind-method! gxc#!lambda::t 'optimize-call gxc#!lambda::optimize-call '#f)
  (define gxc#!case-lambda::optimize-call
    (lambda (_self14446_ _stx14447_ _args14448_)
      (let* ((_self1444914456_ _self14446_)
             (_E1445114460_
              (lambda () (error '"No clause matching" _self1444914456_)))
             (_K1445214474_
              (lambda (_clauses14463_)
                (let ((_$e14469_
                       (find (lambda (_g1446414466_)
                               (gxc#!lambda-arity-match?
                                _g1446414466_
                                _args14448_))
                             _clauses14463_)))
                  (if _$e14469_
                      ((lambda (_clause14472_)
                         (call-method
                          _clause14472_
                          'optimize-call
                          _stx14447_
                          _args14448_))
                       _$e14469_)
                      (gxc#raise-compile-error
                       '"Illegal case-lambda application; arity mismatch"
                       _stx14447_
                       (map gxc#!lambda-arity _clauses14463_)))))))
        (if (##structure-instance-of?
             _self1444914456_
             (##type-id gxc#!case-lambda::t))
            (let* ((_e1445314477_ (##vector-ref _self1444914456_ '1))
                   (_e1445414480_ (##vector-ref _self1444914456_ '2))
                   (_clauses14483_ _e1445414480_))
              (_K1445214474_ _clauses14483_))
            (_E1445114460_)))))
  (bind-method!
   gxc#!case-lambda::t
   'optimize-call
   gxc#!case-lambda::optimize-call
   '#f)
  (define gxc#!lambda-arity-match?
    (lambda (_self14260_ _args14261_)
      (let* ((_self1426214269_ _self14260_)
             (_E1426414273_
              (lambda () (error '"No clause matching" _self1426214269_)))
             (_K1426514313_
              (lambda (_arity14276_)
                (let* ((_arity1427714286_ _arity14276_)
                       (_E1428014290_
                        (lambda ()
                          (error '"No clause matching" _arity1427714286_)))
                       (_try-match1427914306_
                        (lambda ()
                          (let ((_K1428114296_
                                 (lambda (_arity14294_)
                                   (fx>= (length _args14261_) _arity14294_))))
                            (if (##pair? _arity1427714286_)
                                (let ((_hd1428214299_
                                       (##car _arity1427714286_))
                                      (_tl1428314301_
                                       (##cdr _arity1427714286_)))
                                  (let ((_arity14304_ _hd1428214299_))
                                    (if (##null? _tl1428314301_)
                                        (_K1428114296_ _arity14304_)
                                        (_E1428014290_))))
                                (_E1428014290_)))))
                       (_K1428414310_
                        (lambda () (fx= (length _args14261_) _arity14276_))))
                  (if (fixnum? _arity1427714286_)
                      (_K1428414310_)
                      (_try-match1427914306_))))))
        (if (##structure-instance-of?
             _self1426214269_
             (##type-id gxc#!lambda::t))
            (let* ((_e1426614316_ (##vector-ref _self1426214269_ '1))
                   (_e1426714319_ (##vector-ref _self1426214269_ '2))
                   (_arity14322_ _e1426714319_))
              (_K1426514313_ _arity14322_))
            (_E1426414273_)))))
  (define gxc#generate-ssxi-module%
    (lambda (_stx14200_)
      (let* ((_g1420214216_
              (lambda (_g1420314213_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1420314213_)))
             (_g1420114257_
              (lambda (_g1420314219_)
                (if (gx#stx-pair? _g1420314219_)
                    (let ((_e1420614221_ (gx#stx-e _g1420314219_)))
                      (let ((_hd1420714224_ (##car _e1420614221_))
                            (_tl1420814226_ (##cdr _e1420614221_)))
                        (if (gx#stx-pair? _tl1420814226_)
                            (let ((_e1420914229_ (gx#stx-e _tl1420814226_)))
                              (let ((_hd1421014232_ (##car _e1420914229_))
                                    (_tl1421114234_ (##cdr _e1420914229_)))
                                ((lambda (_L14237_ _L14238_)
                                   (let* ((_ctx14251_
                                           (gx#syntax-local-e__0 _L14238_))
                                          (_code14253_
                                           (##structure-ref
                                            _ctx14251_
                                            '11
                                            gx#module-context::t
                                            '#f)))
                                     (call-with-parameters
                                      (lambda () (gxc#compile-e _code14253_))
                                      gx#current-expander-context
                                      _ctx14251_)))
                                 _tl1421114234_
                                 _hd1421014232_)))
                            (_g1420214216_ _g1420314219_))))
                    (_g1420214216_ _g1420314219_)))))
        (_g1420114257_ _stx14200_))))
  (define gxc#generate-ssxi-define-values%
    (lambda (_stx14010_)
      (letrec ((_generate-e14012_
                (lambda (_id14189_)
                  (let* ((_sym14191_
                          (if (gx#identifier? (gx#datum->syntax__0 '#f 'id))
                              (gxc#generate-runtime-binding-id _id14189_)
                              '#f))
                         (_$e14193_
                          (if _sym14191_
                              (gxc#optimizer-lookup-type _sym14191_)
                              '#f)))
                    (if _$e14193_
                        ((lambda (_type14196_)
                           (begin
                             (gxc#verbose '"generate typedecl " _sym14191_)
                             (let ((_typedecl14198_
                                    (call-method _type14196_ 'typedecl)))
                               (cons 'declare-type
                                     (cons _sym14191_
                                           (cons _typedecl14198_ '()))))))
                         _$e14193_)
                        '(begin))))))
        (let* ((_g1401514053_
                (lambda (_g1401614050_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1401614050_)))
               (_g1401414134_
                (lambda (_g1401614056_)
                  (if (gx#stx-pair? _g1401614056_)
                      (let ((_e1403114058_ (gx#stx-e _g1401614056_)))
                        (let ((_hd1403214061_ (##car _e1403114058_))
                              (_tl1403314063_ (##cdr _e1403114058_)))
                          (if (gx#stx-pair? _tl1403314063_)
                              (let ((_e1403414066_ (gx#stx-e _tl1403314063_)))
                                (let ((_hd1403514069_ (##car _e1403414066_))
                                      (_tl1403614071_ (##cdr _e1403414066_)))
                                  (if (gx#stx-pair/null? _hd1403514069_)
                                      (if (fx>= (gx#stx-length _hd1403514069_)
                                                '0)
                                          (let ((_g23664_
                                                 (gx#syntax-split-splice
                                                  _hd1403514069_
                                                  '0)))
                                            (begin
                                              (let ((_g23665_
                                                     (values-count _g23664_)))
                                                (if (not (fx= _g23665_ 2))
                                                    (error "Context expects 2 values"
                                                           _g23665_)))
                                              (let ((_target1403714074_
                                                     (values-ref _g23664_ 0))
                                                    (_tl1403914076_
                                                     (values-ref _g23664_ 1)))
                                                (if (gx#stx-null?
                                                     _tl1403914076_)
                                                    (letrec ((_loop1404014079_
                                                              (lambda (_hd1403814082_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _id1404414084_)
                        (if (gx#stx-pair? _hd1403814082_)
                            (let ((_e1404114087_ (gx#stx-e _hd1403814082_)))
                              (let ((_lp-hd1404214090_ (##car _e1404114087_))
                                    (_lp-tl1404314092_ (##cdr _e1404114087_)))
                                (_loop1404014079_
                                 _lp-tl1404314092_
                                 (cons _lp-hd1404214090_ _id1404414084_))))
                            (let ((_id1404514095_ (reverse _id1404414084_)))
                              (if (gx#stx-pair? _tl1403614071_)
                                  (let ((_e1404614098_
                                         (gx#stx-e _tl1403614071_)))
                                    (let ((_hd1404714101_
                                           (##car _e1404614098_))
                                          (_tl1404814103_
                                           (##cdr _e1404614098_)))
                                      (if (gx#stx-null? _tl1404814103_)
                                          ((lambda (_L14106_)
                                             (let ((_types14132_
                                                    (map _generate-e14012_
                                                         (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g1412414127_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g1412514129_)
                             (cons _g1412414127_ _g1412514129_))
                           '()
                           _L14106_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons 'begin _types14132_)))
                                           _id1404514095_)
                                          (_g1401514053_ _g1401614056_))))
                                  (_g1401514053_ _g1401614056_)))))))
              (_loop1404014079_ _target1403714074_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1401514053_
                                                     _g1401614056_)))))
                                          (_g1401514053_ _g1401614056_))
                                      (_g1401514053_ _g1401614056_))))
                              (_g1401514053_ _g1401614056_))))
                      (_g1401514053_ _g1401614056_))))
               (_g1401314186_
                (lambda (_g1401614137_)
                  (if (gx#stx-pair? _g1401614137_)
                      (let ((_e1401814139_ (gx#stx-e _g1401614137_)))
                        (let ((_hd1401914142_ (##car _e1401814139_))
                              (_tl1402014144_ (##cdr _e1401814139_)))
                          (if (gx#stx-pair? _tl1402014144_)
                              (let ((_e1402114147_ (gx#stx-e _tl1402014144_)))
                                (let ((_hd1402214150_ (##car _e1402114147_))
                                      (_tl1402314152_ (##cdr _e1402114147_)))
                                  (if (gx#stx-pair? _hd1402214150_)
                                      (let ((_e1402414155_
                                             (gx#stx-e _hd1402214150_)))
                                        (let ((_hd1402514158_
                                               (##car _e1402414155_))
                                              (_tl1402614160_
                                               (##cdr _e1402414155_)))
                                          (if (gx#stx-null? _tl1402614160_)
                                              (if (gx#stx-pair? _tl1402314152_)
                                                  (let ((_e1402714163_
                                                         (gx#stx-e
                                                          _tl1402314152_)))
                                                    (let ((_hd1402814166_
                                                           (##car _e1402714163_))
                                                          (_tl1402914168_
                                                           (##cdr _e1402714163_)))
                                                      (if (gx#stx-null?
                                                           _tl1402914168_)
                                                          ((lambda (_L14171_)
                                                             (_generate-e14012_
                                                              _L14171_))
                                                           _hd1402514158_)
                                                          (_g1401414134_
                                                           _g1401614137_))))
                                                  (_g1401414134_
                                                   _g1401614137_))
                                              (_g1401414134_ _g1401614137_))))
                                      (_g1401414134_ _g1401614137_))))
                              (_g1401414134_ _g1401614137_))))
                      (_g1401414134_ _g1401614137_)))))
          (_g1401314186_ _stx14010_)))))
  (define gxc#generate-ssxi-call%
    (lambda (_stx13564_)
      (let* ((_g1356813670_
              (lambda (_g1356913667_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1356913667_)))
             (_g1356713677_ (lambda (_g1356913673_) ((lambda () '(begin)))))
             (_g1356613827_
              (lambda (_g1356913680_)
                (if (gx#stx-pair? _g1356913680_)
                    (let ((_e1362713682_ (gx#stx-e _g1356913680_)))
                      (let ((_hd1362813685_ (##car _e1362713682_))
                            (_tl1362913687_ (##cdr _e1362713682_)))
                        (if (gx#stx-pair? _tl1362913687_)
                            (let ((_e1363013690_ (gx#stx-e _tl1362913687_)))
                              (let ((_hd1363113693_ (##car _e1363013690_))
                                    (_tl1363213695_ (##cdr _e1363013690_)))
                                (if (gx#stx-pair? _hd1363113693_)
                                    (let ((_e1363313698_
                                           (gx#stx-e _hd1363113693_)))
                                      (let ((_hd1363413701_
                                             (##car _e1363313698_))
                                            (_tl1363513703_
                                             (##cdr _e1363313698_)))
                                        (if (gx#identifier? _hd1363413701_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1363413701_)
                                                (if (gx#stx-pair?
                                                     _tl1363513703_)
                                                    (let ((_e1363613706_
                                                           (gx#stx-e
                                                            _tl1363513703_)))
                                                      (let ((_hd1363713709_
                                                             (##car _e1363613706_))
                                                            (_tl1363813711_
                                                             (##cdr _e1363613706_)))
                                                        (if (gx#stx-null?
                                                             _tl1363813711_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1363213695_)
                        (let ((_e1363913714_ (gx#stx-e _tl1363213695_)))
                          (let ((_hd1364013717_ (##car _e1363913714_))
                                (_tl1364113719_ (##cdr _e1363913714_)))
                            (if (gx#stx-pair? _hd1364013717_)
                                (let ((_e1364213722_
                                       (gx#stx-e _hd1364013717_)))
                                  (let ((_hd1364313725_ (##car _e1364213722_))
                                        (_tl1364413727_ (##cdr _e1364213722_)))
                                    (if (gx#identifier? _hd1364313725_)
                                        (if (gx#stx-eq? '%#ref _hd1364313725_)
                                            (if (gx#stx-pair? _tl1364413727_)
                                                (let ((_e1364513730_
                                                       (gx#stx-e
                                                        _tl1364413727_)))
                                                  (let ((_hd1364613733_
                                                         (##car _e1364513730_))
                                                        (_tl1364713735_
                                                         (##cdr _e1364513730_)))
                                                    (if (gx#stx-null?
                                                         _tl1364713735_)
                                                        (if (gx#stx-pair?
                                                             _tl1364113719_)
                                                            (let ((_e1364813738_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1364113719_)))
                      (let ((_hd1364913741_ (##car _e1364813738_))
                            (_tl1365013743_ (##cdr _e1364813738_)))
                        (if (gx#stx-pair? _hd1364913741_)
                            (let ((_e1365113746_ (gx#stx-e _hd1364913741_)))
                              (let ((_hd1365213749_ (##car _e1365113746_))
                                    (_tl1365313751_ (##cdr _e1365113746_)))
                                (if (gx#identifier? _hd1365213749_)
                                    (if (gx#stx-eq? '%#quote _hd1365213749_)
                                        (if (gx#stx-pair? _tl1365313751_)
                                            (let ((_e1365413754_
                                                   (gx#stx-e _tl1365313751_)))
                                              (let ((_hd1365513757_
                                                     (##car _e1365413754_))
                                                    (_tl1365613759_
                                                     (##cdr _e1365413754_)))
                                                (if (gx#stx-null?
                                                     _tl1365613759_)
                                                    (if (gx#stx-pair?
                                                         _tl1365013743_)
                                                        (let ((_e1365713762_
                                                               (gx#stx-e
                                                                _tl1365013743_)))
                                                          (let ((_hd1365813765_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1365713762_))
                        (_tl1365913767_ (##cdr _e1365713762_)))
                    (if (gx#stx-pair? _hd1365813765_)
                        (let ((_e1366013770_ (gx#stx-e _hd1365813765_)))
                          (let ((_hd1366113773_ (##car _e1366013770_))
                                (_tl1366213775_ (##cdr _e1366013770_)))
                            (if (gx#identifier? _hd1366113773_)
                                (if (gx#stx-eq? '%#ref _hd1366113773_)
                                    (if (gx#stx-pair? _tl1366213775_)
                                        (let ((_e1366313778_
                                               (gx#stx-e _tl1366213775_)))
                                          (let ((_hd1366413781_
                                                 (##car _e1366313778_))
                                                (_tl1366513783_
                                                 (##cdr _e1366313778_)))
                                            (if (gx#stx-null? _tl1366513783_)
                                                (if (gx#stx-null?
                                                     _tl1365913767_)
                                                    ((lambda (_L13786_
                                                              _L13787_
                                                              _L13788_
                                                              _L13789_)
                                                       (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax__0 '#f '-bind-method))
                        'bind-method!)
                   (cons 'declare-method
                         (cons (gxc#generate-runtime-binding-id _L13788_)
                               (cons (gx#stx-e _L13787_)
                                     (cons (gxc#generate-runtime-binding-id
                                            _L13786_)
                                           (cons '#f '())))))
                   (_g1356713677_ _g1356913680_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd1366413781_
                                                     _hd1365513757_
                                                     _hd1364613733_
                                                     _hd1363713709_)
                                                    (_g1356713677_
                                                     _g1356913680_))
                                                (_g1356713677_
                                                 _g1356913680_))))
                                        (_g1356713677_ _g1356913680_))
                                    (_g1356713677_ _g1356913680_))
                                (_g1356713677_ _g1356913680_))))
                        (_g1356713677_ _g1356913680_))))
                (_g1356713677_ _g1356913680_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1356713677_
                                                     _g1356913680_))))
                                            (_g1356713677_ _g1356913680_))
                                        (_g1356713677_ _g1356913680_))
                                    (_g1356713677_ _g1356913680_))))
                            (_g1356713677_ _g1356913680_))))
                    (_g1356713677_ _g1356913680_))
                (_g1356713677_ _g1356913680_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1356713677_ _g1356913680_))
                                            (_g1356713677_ _g1356913680_))
                                        (_g1356713677_ _g1356913680_))))
                                (_g1356713677_ _g1356913680_))))
                        (_g1356713677_ _g1356913680_))
                    (_g1356713677_ _g1356913680_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1356713677_
                                                     _g1356913680_))
                                                (_g1356713677_ _g1356913680_))
                                            (_g1356713677_ _g1356913680_))))
                                    (_g1356713677_ _g1356913680_))))
                            (_g1356713677_ _g1356913680_))))
                    (_g1356713677_ _g1356913680_))))
             (_g1356514007_
              (lambda (_g1356913830_)
                (if (gx#stx-pair? _g1356913830_)
                    (let ((_e1357513832_ (gx#stx-e _g1356913830_)))
                      (let ((_hd1357613835_ (##car _e1357513832_))
                            (_tl1357713837_ (##cdr _e1357513832_)))
                        (if (gx#stx-pair? _tl1357713837_)
                            (let ((_e1357813840_ (gx#stx-e _tl1357713837_)))
                              (let ((_hd1357913843_ (##car _e1357813840_))
                                    (_tl1358013845_ (##cdr _e1357813840_)))
                                (if (gx#stx-pair? _hd1357913843_)
                                    (let ((_e1358113848_
                                           (gx#stx-e _hd1357913843_)))
                                      (let ((_hd1358213851_
                                             (##car _e1358113848_))
                                            (_tl1358313853_
                                             (##cdr _e1358113848_)))
                                        (if (gx#identifier? _hd1358213851_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1358213851_)
                                                (if (gx#stx-pair?
                                                     _tl1358313853_)
                                                    (let ((_e1358413856_
                                                           (gx#stx-e
                                                            _tl1358313853_)))
                                                      (let ((_hd1358513859_
                                                             (##car _e1358413856_))
                                                            (_tl1358613861_
                                                             (##cdr _e1358413856_)))
                                                        (if (gx#stx-null?
                                                             _tl1358613861_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1358013845_)
                        (let ((_e1358713864_ (gx#stx-e _tl1358013845_)))
                          (let ((_hd1358813867_ (##car _e1358713864_))
                                (_tl1358913869_ (##cdr _e1358713864_)))
                            (if (gx#stx-pair? _hd1358813867_)
                                (let ((_e1359013872_
                                       (gx#stx-e _hd1358813867_)))
                                  (let ((_hd1359113875_ (##car _e1359013872_))
                                        (_tl1359213877_ (##cdr _e1359013872_)))
                                    (if (gx#identifier? _hd1359113875_)
                                        (if (gx#stx-eq? '%#ref _hd1359113875_)
                                            (if (gx#stx-pair? _tl1359213877_)
                                                (let ((_e1359313880_
                                                       (gx#stx-e
                                                        _tl1359213877_)))
                                                  (let ((_hd1359413883_
                                                         (##car _e1359313880_))
                                                        (_tl1359513885_
                                                         (##cdr _e1359313880_)))
                                                    (if (gx#stx-null?
                                                         _tl1359513885_)
                                                        (if (gx#stx-pair?
                                                             _tl1358913869_)
                                                            (let ((_e1359613888_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1358913869_)))
                      (let ((_hd1359713891_ (##car _e1359613888_))
                            (_tl1359813893_ (##cdr _e1359613888_)))
                        (if (gx#stx-pair? _hd1359713891_)
                            (let ((_e1359913896_ (gx#stx-e _hd1359713891_)))
                              (let ((_hd1360013899_ (##car _e1359913896_))
                                    (_tl1360113901_ (##cdr _e1359913896_)))
                                (if (gx#identifier? _hd1360013899_)
                                    (if (gx#stx-eq? '%#quote _hd1360013899_)
                                        (if (gx#stx-pair? _tl1360113901_)
                                            (let ((_e1360213904_
                                                   (gx#stx-e _tl1360113901_)))
                                              (let ((_hd1360313907_
                                                     (##car _e1360213904_))
                                                    (_tl1360413909_
                                                     (##cdr _e1360213904_)))
                                                (if (gx#stx-null?
                                                     _tl1360413909_)
                                                    (if (gx#stx-pair?
                                                         _tl1359813893_)
                                                        (let ((_e1360513912_
                                                               (gx#stx-e
                                                                _tl1359813893_)))
                                                          (let ((_hd1360613915_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1360513912_))
                        (_tl1360713917_ (##cdr _e1360513912_)))
                    (if (gx#stx-pair? _hd1360613915_)
                        (let ((_e1360813920_ (gx#stx-e _hd1360613915_)))
                          (let ((_hd1360913923_ (##car _e1360813920_))
                                (_tl1361013925_ (##cdr _e1360813920_)))
                            (if (gx#identifier? _hd1360913923_)
                                (if (gx#stx-eq? '%#ref _hd1360913923_)
                                    (if (gx#stx-pair? _tl1361013925_)
                                        (let ((_e1361113928_
                                               (gx#stx-e _tl1361013925_)))
                                          (let ((_hd1361213931_
                                                 (##car _e1361113928_))
                                                (_tl1361313933_
                                                 (##cdr _e1361113928_)))
                                            (if (gx#stx-null? _tl1361313933_)
                                                (if (gx#stx-pair?
                                                     _tl1360713917_)
                                                    (let ((_e1361413936_
                                                           (gx#stx-e
                                                            _tl1360713917_)))
                                                      (let ((_hd1361513939_
                                                             (##car _e1361413936_))
                                                            (_tl1361613941_
                                                             (##cdr _e1361413936_)))
                                                        (if (gx#stx-pair?
                                                             _hd1361513939_)
                                                            (let ((_e1361713944_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1361513939_)))
                      (let ((_hd1361813947_ (##car _e1361713944_))
                            (_tl1361913949_ (##cdr _e1361713944_)))
                        (if (gx#identifier? _hd1361813947_)
                            (if (gx#stx-eq? '%#quote _hd1361813947_)
                                (if (gx#stx-pair? _tl1361913949_)
                                    (let ((_e1362013952_
                                           (gx#stx-e _tl1361913949_)))
                                      (let ((_hd1362113955_
                                             (##car _e1362013952_))
                                            (_tl1362213957_
                                             (##cdr _e1362013952_)))
                                        (if (gx#stx-null? _tl1362213957_)
                                            (if (gx#stx-null? _tl1361613941_)
                                                ((lambda (_L13960_
                                                          _L13961_
                                                          _L13962_
                                                          _L13963_
                                                          _L13964_)
                                                   (if (eq? (gxc#generate-runtime-binding-id
                                                             _L13964_)
                                                            'bind-method!)
                                                       (cons 'declare-method
                                                             (cons (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L13963_)
                           (cons (gx#stx-e _L13962_)
                                 (cons (gxc#generate-runtime-binding-id
                                        _L13961_)
                                       (cons (gx#stx-e _L13960_) '())))))
               (_g1356613827_ _g1356913830_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1362113955_
                                                 _hd1361213931_
                                                 _hd1360313907_
                                                 _hd1359413883_
                                                 _hd1358513859_)
                                                (_g1356613827_ _g1356913830_))
                                            (_g1356613827_ _g1356913830_))))
                                    (_g1356613827_ _g1356913830_))
                                (_g1356613827_ _g1356913830_))
                            (_g1356613827_ _g1356913830_))))
                    (_g1356613827_ _g1356913830_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1356613827_
                                                     _g1356913830_))
                                                (_g1356613827_
                                                 _g1356913830_))))
                                        (_g1356613827_ _g1356913830_))
                                    (_g1356613827_ _g1356913830_))
                                (_g1356613827_ _g1356913830_))))
                        (_g1356613827_ _g1356913830_))))
                (_g1356613827_ _g1356913830_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1356613827_
                                                     _g1356913830_))))
                                            (_g1356613827_ _g1356913830_))
                                        (_g1356613827_ _g1356913830_))
                                    (_g1356613827_ _g1356913830_))))
                            (_g1356613827_ _g1356913830_))))
                    (_g1356613827_ _g1356913830_))
                (_g1356613827_ _g1356913830_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1356613827_ _g1356913830_))
                                            (_g1356613827_ _g1356913830_))
                                        (_g1356613827_ _g1356913830_))))
                                (_g1356613827_ _g1356913830_))))
                        (_g1356613827_ _g1356913830_))
                    (_g1356613827_ _g1356913830_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1356613827_
                                                     _g1356913830_))
                                                (_g1356613827_ _g1356913830_))
                                            (_g1356613827_ _g1356913830_))))
                                    (_g1356613827_ _g1356913830_))))
                            (_g1356613827_ _g1356913830_))))
                    (_g1356613827_ _g1356913830_)))))
        (_g1356514007_ _stx13564_))))
  (define gxc#!alias::typedecl
    (lambda (_self13540_)
      (let* ((_self1354113547_ _self13540_)
             (_E1354313551_
              (lambda () (error '"No clause matching" _self1354113547_)))
             (_K1354413556_
              (lambda (_alias-id13554_)
                (cons '@alias (cons _alias-id13554_ '())))))
        (if (##structure-instance-of?
             _self1354113547_
             (##type-id gxc#!alias::t))
            (let* ((_e1354513559_ (##vector-ref _self1354113547_ '1))
                   (_alias-id13562_ _e1354513559_))
              (_K1354413556_ _alias-id13562_))
            (_E1354313551_)))))
  (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f)
  (define gxc#!struct-type::typedecl
    (lambda (_self13362_)
      (let* ((_self1336313374_ _self13362_)
             (_E1336513378_
              (lambda () (error '"No clause matching" _self1336313374_)))
             (_K1336613387_
              (lambda (_plist13381_
                       _ctor13382_
                       _fields13383_
                       _super13384_
                       _type-id13385_)
                (cons '@struct-type
                      (cons _type-id13385_
                            (cons _super13384_
                                  (cons _fields13383_
                                        (cons _ctor13382_
                                              (cons _plist13381_ '())))))))))
        (if (##structure-instance-of?
             _self1336313374_
             (##type-id gxc#!struct-type::t))
            (let* ((_e1336713390_ (##vector-ref _self1336313374_ '1))
                   (_type-id13393_ _e1336713390_)
                   (_e1336813395_ (##vector-ref _self1336313374_ '2))
                   (_super13398_ _e1336813395_)
                   (_e1336913400_ (##vector-ref _self1336313374_ '3))
                   (_fields13403_ _e1336913400_)
                   (_e1337013405_ (##vector-ref _self1336313374_ '4))
                   (_e1337113408_ (##vector-ref _self1336313374_ '5))
                   (_ctor13411_ _e1337113408_)
                   (_e1337213413_ (##vector-ref _self1336313374_ '6))
                   (_plist13416_ _e1337213413_))
              (_K1336613387_
               _plist13416_
               _ctor13411_
               _fields13403_
               _super13398_
               _type-id13393_))
            (_E1336513378_)))))
  (bind-method! gxc#!struct-type::t 'typedecl gxc#!struct-type::typedecl '#f)
  (define gxc#!struct-pred::typedecl
    (lambda (_self13216_)
      (let* ((_self1321713223_ _self13216_)
             (_E1321913227_
              (lambda () (error '"No clause matching" _self1321713223_)))
             (_K1322013232_
              (lambda (_struct-t13230_)
                (cons '@struct-pred (cons _struct-t13230_ '())))))
        (if (##structure-instance-of?
             _self1321713223_
             (##type-id gxc#!struct-pred::t))
            (let* ((_e1322113235_ (##vector-ref _self1321713223_ '1))
                   (_struct-t13238_ _e1322113235_))
              (_K1322013232_ _struct-t13238_))
            (_E1321913227_)))))
  (bind-method! gxc#!struct-pred::t 'typedecl gxc#!struct-pred::typedecl '#f)
  (define gxc#!struct-cons::typedecl
    (lambda (_self13070_)
      (let* ((_self1307113077_ _self13070_)
             (_E1307313081_
              (lambda () (error '"No clause matching" _self1307113077_)))
             (_K1307413086_
              (lambda (_struct-t13084_)
                (cons '@struct-cons (cons _struct-t13084_ '())))))
        (if (##structure-instance-of?
             _self1307113077_
             (##type-id gxc#!struct-cons::t))
            (let* ((_e1307513089_ (##vector-ref _self1307113077_ '1))
                   (_struct-t13092_ _e1307513089_))
              (_K1307413086_ _struct-t13092_))
            (_E1307313081_)))))
  (bind-method! gxc#!struct-cons::t 'typedecl gxc#!struct-cons::typedecl '#f)
  (define gxc#!struct-getf::typedecl
    (lambda (_self12910_)
      (let* ((_self1291112919_ _self12910_)
             (_E1291312923_
              (lambda () (error '"No clause matching" _self1291112919_)))
             (_K1291412930_
              (lambda (_unchecked?12926_ _off12927_ _struct-t12928_)
                (cons '@struct-getf
                      (cons _struct-t12928_
                            (cons _off12927_ (cons _unchecked?12926_ '())))))))
        (if (##structure-instance-of?
             _self1291112919_
             (##type-id gxc#!struct-getf::t))
            (let* ((_e1291512933_ (##vector-ref _self1291112919_ '1))
                   (_struct-t12936_ _e1291512933_)
                   (_e1291612938_ (##vector-ref _self1291112919_ '2))
                   (_off12941_ _e1291612938_)
                   (_e1291712943_ (##vector-ref _self1291112919_ '3))
                   (_unchecked?12946_ _e1291712943_))
              (_K1291412930_ _unchecked?12946_ _off12941_ _struct-t12936_))
            (_E1291312923_)))))
  (bind-method! gxc#!struct-getf::t 'typedecl gxc#!struct-getf::typedecl '#f)
  (define gxc#!struct-setf::typedecl
    (lambda (_self12750_)
      (let* ((_self1275112759_ _self12750_)
             (_E1275312763_
              (lambda () (error '"No clause matching" _self1275112759_)))
             (_K1275412770_
              (lambda (_unchecked?12766_ _off12767_ _struct-t12768_)
                (cons '@struct-setf
                      (cons _struct-t12768_
                            (cons _off12767_ (cons _unchecked?12766_ '())))))))
        (if (##structure-instance-of?
             _self1275112759_
             (##type-id gxc#!struct-setf::t))
            (let* ((_e1275512773_ (##vector-ref _self1275112759_ '1))
                   (_struct-t12776_ _e1275512773_)
                   (_e1275612778_ (##vector-ref _self1275112759_ '2))
                   (_off12781_ _e1275612778_)
                   (_e1275712783_ (##vector-ref _self1275112759_ '3))
                   (_unchecked?12786_ _e1275712783_))
              (_K1275412770_ _unchecked?12786_ _off12781_ _struct-t12776_))
            (_E1275312763_)))))
  (bind-method! gxc#!struct-setf::t 'typedecl gxc#!struct-setf::typedecl '#f)
  (define gxc#!lambda::typedecl
    (lambda (_self12576_)
      (let* ((_self1257712587_ _self12576_)
             (_E1257912591_
              (lambda () (error '"No clause matching" _self1257712587_)))
             (_K1258012602_
              (lambda (_typedecl12594_
                       _inline12595_
                       _dispatch12596_
                       _arity12597_)
                (if _inline12595_
                    (let ((_$e12599_ _typedecl12594_))
                      (if _$e12599_
                          _$e12599_
                          (error '"Cannot generate typedecl for inline rules")))
                    (cons '@lambda
                          (cons _arity12597_ (cons _dispatch12596_ '())))))))
        (if (##structure-instance-of?
             _self1257712587_
             (##type-id gxc#!lambda::t))
            (let* ((_e1258112605_ (##vector-ref _self1257712587_ '1))
                   (_e1258212608_ (##vector-ref _self1257712587_ '2))
                   (_arity12611_ _e1258212608_)
                   (_e1258312613_ (##vector-ref _self1257712587_ '3))
                   (_dispatch12616_ _e1258312613_)
                   (_e1258412618_ (##vector-ref _self1257712587_ '4))
                   (_inline12621_ _e1258412618_)
                   (_e1258512623_ (##vector-ref _self1257712587_ '5))
                   (_typedecl12626_ _e1258512623_))
              (_K1258012602_
               _typedecl12626_
               _inline12621_
               _dispatch12616_
               _arity12611_))
            (_E1257912591_)))))
  (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f)
  (define gxc#!case-lambda::typedecl
    (lambda (_self12387_)
      (letrec ((_clause-e12389_
                (lambda (_clause12419_)
                  (let* ((_clause1242012428_ _clause12419_)
                         (_E1242212432_
                          (lambda ()
                            (error '"No clause matching" _clause1242012428_)))
                         (_K1242312438_
                          (lambda (_dispatch12435_ _arity12436_)
                            (cons _arity12436_ (cons _dispatch12435_ '())))))
                    (if (##structure-instance-of?
                         _clause1242012428_
                         (##type-id gxc#!lambda::t))
                        (let* ((_e1242412441_
                                (##vector-ref _clause1242012428_ '1))
                               (_e1242512444_
                                (##vector-ref _clause1242012428_ '2))
                               (_arity12447_ _e1242512444_)
                               (_e1242612449_
                                (##vector-ref _clause1242012428_ '3))
                               (_dispatch12452_ _e1242612449_))
                          (_K1242312438_ _dispatch12452_ _arity12447_))
                        (_E1242212432_))))))
        (let* ((_self1239012397_ _self12387_)
               (_E1239212401_
                (lambda () (error '"No clause matching" _self1239012397_)))
               (_K1239312408_
                (lambda (_clauses12404_)
                  (let ((_clauses12406_ (map _clause-e12389_ _clauses12404_)))
                    (cons '@case-lambda _clauses12406_)))))
          (if (##structure-instance-of?
               _self1239012397_
               (##type-id gxc#!case-lambda::t))
              (let* ((_e1239412411_ (##vector-ref _self1239012397_ '1))
                     (_e1239512414_ (##vector-ref _self1239012397_ '2))
                     (_clauses12417_ _e1239512414_))
                (_K1239312408_ _clauses12417_))
              (_E1239212401_))))))
  (bind-method! gxc#!case-lambda::t 'typedecl gxc#!case-lambda::typedecl '#f)
  (define gxc#identifier-symbol
    (lambda (_stx12263_) (gxc#generate-runtime-binding-id _stx12263_))))
