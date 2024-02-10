(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1707565666)
  (begin
    (define gxc#&optimize-call
      (make-promise
       (lambda ()
         (let ((_tbl265818_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp270303 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-copy! _tbl265818_ __tmp270303))
           (let ()
             (declare (not safe))
             (table-set! _tbl265818_ '%#call gxc#optimize-call%))
           _tbl265818_))))
    (define gxc#apply-optimize-call
      (lambda (_stx265801_ . _args265803_)
        (let ((__tmp270305
               (lambda ()
                 (declare (not safe))
                 (if (null? _args265803_)
                     (gxc#compile-e__0 _stx265801_)
                     (let ((_arg1265808_ (car _args265803_))
                           (_rest265810_ (cdr _args265803_)))
                       (if (null? _rest265810_)
                           (gxc#compile-e__1 _stx265801_ _arg1265808_)
                           (let ((_arg2265813_ (car _rest265810_))
                                 (_rest265815_ (cdr _rest265810_)))
                             (if (null? _rest265815_)
                                 (gxc#compile-e__2
                                  _stx265801_
                                  _arg1265808_
                                  _arg2265813_)
                                 (apply gxc#compile-e
                                        _stx265801_
                                        _arg1265808_
                                        _arg2265813_
                                        _rest265815_))))))))
              (__tmp270304 (force gxc#&optimize-call)))
          (declare (not safe))
          (call-with-parameters
           __tmp270305
           gxc#current-compile-methods
           __tmp270304))))
    (define gxc#optimize-call%
      (lambda (_stx265656_)
        (let* ((___stx270053270054_ _stx265656_)
               (_g265659265679_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx270053270054_)))))
          (let ((___kont270055270056_
                 (lambda (_L265723_ _L265724_)
                   (let* ((_rator-id265742_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L265724_)))
                          (_rator-type265744_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id265742_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type265744_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp270306
                                  (##structure-ref
                                   _rator-type265744_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id265742_
                              '" => "
                              _rator-type265744_
                              '" "
                              __tmp270306))
                           (let ((_optimized265747_
                                  (let ((__method270301
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type265744_
                                            'optimize-call))))
                                    (if __method270301
                                        (__method270301
                                         _rator-type265744_
                                         _stx265656_
                                         _L265723_)
                                        (error '"Missing method"
                                               _rator-type265744_
                                               'optimize-call)))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type265744_))
                                 _optimized265747_
                                 (let* ((___stx270035270036_ _optimized265747_)
                                        (_g265750265760_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx270035270036_)))))
                                   (let ((___kont270037270038_
                                          (lambda (_L265780_)
                                            (let ((__tmp270307
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L265780_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp270307
                                               _stx265656_))))
                                         (___kont270039270040_
                                          (lambda () _optimized265747_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx270035270036_))
                                         (let ((_e265755265772_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx270035270036_))))
                                           (let ((_tl265753265777_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e265755265772_)))
                                                 (_hd265754265775_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e265755265772_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd265754265775_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd265754265775_))
                                                     (___kont270037270038_
                                                      _tl265753265777_)
                                                     (___kont270039270040_))
                                                 (___kont270039270040_))))
                                         (___kont270039270040_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type265744_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx265656_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _stx265656_
                                _rator-type265744_)))))))
                (___kont270057270058_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _stx265656_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx270053270054_))
                (let ((_e265665265691_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx270053270054_))))
                  (let ((_tl265663265696_
                         (let () (declare (not safe)) (##cdr _e265665265691_)))
                        (_hd265664265694_
                         (let ()
                           (declare (not safe))
                           (##car _e265665265691_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl265663265696_))
                        (let ((_e265668265699_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl265663265696_))))
                          (let ((_tl265666265704_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e265668265699_)))
                                (_hd265667265702_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e265668265699_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd265667265702_))
                                (let ((_e265671265707_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd265667265702_))))
                                  (let ((_tl265669265712_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e265671265707_)))
                                        (_hd265670265710_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e265671265707_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd265670265710_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd265670265710_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl265669265712_))
                                                (let ((_e265674265715_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl265669265712_))))
                                                  (let ((_tl265672265720_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e265674265715_)))
                                                        (_hd265673265718_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e265674265715_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl265672265720_))
                                                        (___kont270055270056_
                                                         _tl265666265704_
                                                         _hd265673265718_)
                                                        (___kont270057270058_))))
                                                (___kont270057270058_))
                                            (___kont270057270058_))
                                        (___kont270057270058_))))
                                (___kont270057270058_))))
                        (___kont270057270058_))))
                (___kont270057270058_))))))
    (define gxc#!predicate::optimize-call
      (lambda (_self265610_ _stx265611_ _args265612_)
        (let* ((_g265614265624_
                (lambda (_g265615265621_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g265615265621_))))
               (_g265613265653_
                (lambda (_g265615265627_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g265615265627_))
                      (let ((_e265619265629_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g265615265627_))))
                        (let ((_hd265618265632_
                               (let ()
                                 (declare (not safe))
                                 (##car _e265619265629_)))
                              (_tl265617265634_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e265619265629_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl265617265634_))
                              ((lambda (_L265637_)
                                 (let* ((_klass265648_
                                         (let ((__tmp270308
                                                (##structure-ref
                                                 _self265610_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx265611_
                                            __tmp270308)))
                                        (_object265650_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L265637_))))
                                   (if (##structure-ref
                                        _klass265648_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp270324
                                              (let ((__tmp270325
                                                     (let ((__tmp270327
                                                            (let ((__tmp270328
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp270329
                                  (##structure-ref
                                   _klass265648_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp270329 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp270328)))
                   (__tmp270326
                    (let () (declare (not safe)) (cons _object265650_ '()))))
               (declare (not safe))
               (cons __tmp270327 __tmp270326))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#struct-direct-instance?
                                                      __tmp270325))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp270324
                                          _stx265611_))
                                       (if (##structure-ref
                                            _klass265648_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp270318
                                                  (let ((__tmp270319
                                                         (let ((__tmp270321
                                                                (let ((__tmp270322
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp270323
                                      (##structure-ref
                                       _klass265648_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp270323 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp270322)))
                       (__tmp270320
                        (let ()
                          (declare (not safe))
                          (cons _object265650_ '()))))
                   (declare (not safe))
                   (cons __tmp270321 __tmp270320))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-instance?
                                                          __tmp270319))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp270318
                                              _stx265611_))
                                           (let ((__tmp270309
                                                  (let ((__tmp270310
                                                         (let ((__tmp270316
                                                                (let ((__tmp270317
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'class-instance? '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp270317)))
                       (__tmp270311
                        (let ((__tmp270313
                               (let ((__tmp270314
                                      (let ((__tmp270315
                                             (##structure-ref
                                              _self265610_
                                              '1
                                              gxc#!type::t
                                              '#f)))
                                        (declare (not safe))
                                        (cons __tmp270315 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp270314)))
                              (__tmp270312
                               (let ()
                                 (declare (not safe))
                                 (cons _object265650_ '()))))
                          (declare (not safe))
                          (cons __tmp270313 __tmp270312))))
                   (declare (not safe))
                   (cons __tmp270316 __tmp270311))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#call
                                                          __tmp270310))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp270309
                                              _stx265611_))))))
                               _hd265618265632_)
                              (let ()
                                (declare (not safe))
                                (_g265614265624_ _g265615265627_)))))
                      (let ()
                        (declare (not safe))
                        (_g265614265624_ _g265615265627_))))))
          (declare (not safe))
          (_g265613265653_ _args265612_))))
    (define gxc#!predicate::optimize-call::specialize
      (lambda (__t270014)
        (let ((__id270015
               (let ((__tmp270016
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t270014 'id))))
                 (if __tmp270016 __tmp270016 (error '"Unknown slot" 'id)))))
          (lambda (_self265610_ _stx265611_ _args265612_)
            (let* ((_g265614265624_
                    (lambda (_g265615265621_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g265615265621_))))
                   (_g265613265653_
                    (lambda (_g265615265627_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g265615265627_))
                          (let ((_e265619265629_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g265615265627_))))
                            (let ((_hd265618265632_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e265619265629_)))
                                  (_tl265617265634_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e265619265629_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl265617265634_))
                                  ((lambda (_L265637_)
                                     (let* ((_klass265648_
                                             (let ((__tmp270330
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self265610_
                                                       __id270015
                                                       __t270014
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx265611_
                                                __tmp270330)))
                                            (_object265650_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L265637_))))
                                       (if (##structure-ref
                                            _klass265648_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp270346
                                                  (let ((__tmp270347
                                                         (let ((__tmp270349
                                                                (let ((__tmp270350
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp270351
                                      (##structure-ref
                                       _klass265648_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp270351 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp270350)))
                       (__tmp270348
                        (let ()
                          (declare (not safe))
                          (cons _object265650_ '()))))
                   (declare (not safe))
                   (cons __tmp270349 __tmp270348))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-direct-instance?
                                                          __tmp270347))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp270346
                                              _stx265611_))
                                           (if (##structure-ref
                                                _klass265648_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp270340
                                                      (let ((__tmp270341
                                                             (let ((__tmp270343
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp270344
                                   (let ((__tmp270345
                                          (##structure-ref
                                           _klass265648_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp270345 '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp270344)))
                           (__tmp270342
                            (let ()
                              (declare (not safe))
                              (cons _object265650_ '()))))
                       (declare (not safe))
                       (cons __tmp270343 __tmp270342))))
                (declare (not safe))
                (cons '%#struct-instance? __tmp270341))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp270340
                                                  _stx265611_))
                                               (let ((__tmp270331
                                                      (let ((__tmp270332
                                                             (let ((__tmp270338
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp270339
                                   (let ()
                                     (declare (not safe))
                                     (cons 'class-instance? '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp270339)))
                           (__tmp270333
                            (let ((__tmp270335
                                   (let ((__tmp270336
                                          (let ((__tmp270337
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _self265610_
                                                    __id270015
                                                    __t270014
                                                    '#f))))
                                            (declare (not safe))
                                            (cons __tmp270337 '()))))
                                     (declare (not safe))
                                     (cons '%#ref __tmp270336)))
                                  (__tmp270334
                                   (let ()
                                     (declare (not safe))
                                     (cons _object265650_ '()))))
                              (declare (not safe))
                              (cons __tmp270335 __tmp270334))))
                       (declare (not safe))
                       (cons __tmp270338 __tmp270333))))
                (declare (not safe))
                (cons '%#call __tmp270332))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp270331
                                                  _stx265611_))))))
                                   _hd265618265632_)
                                  (let ()
                                    (declare (not safe))
                                    (_g265614265624_ _g265615265627_)))))
                          (let ()
                            (declare (not safe))
                            (_g265614265624_ _g265615265627_))))))
              (declare (not safe))
              (_g265613265653_ _args265612_))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!predicate::optimize-call
       gxc#!predicate::optimize-call::specialize))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#!constructor::optimize-call
      (lambda (_self265344_ _stx265345_ _args265346_)
        (let* ((_klass265348_
                (let ((__tmp270352
                       (##structure-ref _self265344_ '1 gxc#!type::t '#f)))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _stx265345_ __tmp270352)))
               (_fields265350_
                (let ((__tmp270353
                       (length (##structure-ref
                                _klass265348_
                                '5
                                gxc#!class::t
                                '#f))))
                  (declare (not safe))
                  (fx+ __tmp270353 '1)))
               (_args265352_ (map gxc#compile-e _args265346_)))
          (let ((_$e265355_
                 (##structure-ref _klass265348_ '6 gxc#!class::t '#f)))
            (if _$e265355_
                ((lambda (_ctor265358_)
                   (let ((_$obj265360_
                          (let ((__tmp270437 (gensym '__obj)))
                            (declare (not safe))
                            (make-symbol__0 __tmp270437)))
                         (_ctor-impl265361_
                          (let ()
                            (declare (not safe))
                            (gxc#!class-lookup-method
                             _klass265348_
                             _ctor265358_))))
                     (let ((__tmp270438
                            (let ((__tmp270439
                                   (let ((__tmp270504
                                          (let ((__tmp270505
                                                 (let ((__tmp270518
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj265360_
                                                                '())))
                                                       (__tmp270506
                                                        (let ((__tmp270507
                                                               (let ((__tmp270508
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp270516
                                     (let ((__tmp270517
                                            (let ()
                                              (declare (not safe))
                                              (cons 'make-object '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp270517)))
                                    (__tmp270509
                                     (let ((__tmp270513
                                            (let ((__tmp270514
                                                   (let ((__tmp270515
                                                          (##structure-ref
                                                           _self265344_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp270515 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp270514)))
                                           (__tmp270510
                                            (let ((__tmp270511
                                                   (let ((__tmp270512
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _fields265350_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#quote
                                                           __tmp270512))))
                                              (declare (not safe))
                                              (cons __tmp270511 '()))))
                                       (declare (not safe))
                                       (cons __tmp270513 __tmp270510))))
                                (declare (not safe))
                                (cons __tmp270516 __tmp270509))))
                         (declare (not safe))
                         (cons '%#call __tmp270508))))
                  (declare (not safe))
                  (cons __tmp270507 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp270518
                                                         __tmp270506))))
                                            (declare (not safe))
                                            (cons __tmp270505 '())))
                                         (__tmp270440
                                          (let ((__tmp270441
                                                 (let ((__tmp270442
                                                        (let ((__tmp270446
                                                               (if _ctor-impl265361_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp270498
                                  (let ((__tmp270502
                                         (let ((__tmp270503
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _ctor-impl265361_
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp270503)))
                                        (__tmp270499
                                         (let ((__tmp270500
                                                (let ((__tmp270501
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj265360_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp270501))))
                                           (declare (not safe))
                                           (cons __tmp270500 _args265352_))))
                                    (declare (not safe))
                                    (cons __tmp270502 __tmp270499))))
                             (declare (not safe))
                             (cons '%#call __tmp270498))
                           (let* ((_$ctor265363_
                                   (let ((__tmp270447 (gensym '__constructor)))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp270447)))
                                  (__tmp270448
                                   (let ((__tmp270483
                                          (let ((__tmp270484
                                                 (let ((__tmp270497
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$ctor265363_
                                                                '())))
                                                       (__tmp270485
                                                        (let ((__tmp270486
                                                               (let ((__tmp270487
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp270495
                                     (let ((__tmp270496
                                            (let ()
                                              (declare (not safe))
                                              (cons 'find-method '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp270496)))
                                    (__tmp270488
                                     (let ((__tmp270492
                                            (let ((__tmp270493
                                                   (let ((__tmp270494
                                                          (##structure-ref
                                                           _self265344_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp270494 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp270493)))
                                           (__tmp270489
                                            (let ((__tmp270490
                                                   (let ((__tmp270491
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _ctor265358_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#quote
                                                           __tmp270491))))
                                              (declare (not safe))
                                              (cons __tmp270490 '()))))
                                       (declare (not safe))
                                       (cons __tmp270492 __tmp270489))))
                                (declare (not safe))
                                (cons __tmp270495 __tmp270488))))
                         (declare (not safe))
                         (cons '%#call __tmp270487))))
                  (declare (not safe))
                  (cons __tmp270486 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp270497
                                                         __tmp270485))))
                                            (declare (not safe))
                                            (cons __tmp270484 '())))
                                         (__tmp270449
                                          (let ((__tmp270450
                                                 (let ((__tmp270451
                                                        (let ((__tmp270481
                                                               (let ((__tmp270482
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$ctor265363_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp270482)))
                      (__tmp270452
                       (let ((__tmp270474
                              (let ((__tmp270475
                                     (let ((__tmp270479
                                            (let ((__tmp270480
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$ctor265363_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp270480)))
                                           (__tmp270476
                                            (let ((__tmp270477
                                                   (let ((__tmp270478
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj265360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp270478))))
                                              (declare (not safe))
                                              (cons __tmp270477
                                                    _args265352_))))
                                       (declare (not safe))
                                       (cons __tmp270479 __tmp270476))))
                                (declare (not safe))
                                (cons '%#call __tmp270475)))
                             (__tmp270453
                              (let ((__tmp270454
                                     (let ((__tmp270455
                                            (let ((__tmp270472
                                                   (let ((__tmp270473
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp270473)))
                                                  (__tmp270456
                                                   (let ((__tmp270470
                                                          (let ((__tmp270471
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons '"missing constructor method implementation"
                                 '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp270471)))
                 (__tmp270457
                  (let ((__tmp270468
                         (let ((__tmp270469
                                (let ()
                                  (declare (not safe))
                                  (cons 'class: '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp270469)))
                        (__tmp270458
                         (let ((__tmp270465
                                (let ((__tmp270466
                                       (let ((__tmp270467
                                              (##structure-ref
                                               _self265344_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp270467 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp270466)))
                               (__tmp270459
                                (let ((__tmp270463
                                       (let ((__tmp270464
                                              (let ()
                                                (declare (not safe))
                                                (cons 'method: '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp270464)))
                                      (__tmp270460
                                       (let ((__tmp270461
                                              (let ((__tmp270462
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _ctor265358_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#quote __tmp270462))))
                                         (declare (not safe))
                                         (cons __tmp270461 '()))))
                                  (declare (not safe))
                                  (cons __tmp270463 __tmp270460))))
                           (declare (not safe))
                           (cons __tmp270465 __tmp270459))))
                    (declare (not safe))
                    (cons __tmp270468 __tmp270458))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp270470
                                                           __tmp270457))))
                                              (declare (not safe))
                                              (cons __tmp270472 __tmp270456))))
                                       (declare (not safe))
                                       (cons '%#call __tmp270455))))
                                (declare (not safe))
                                (cons __tmp270454 '()))))
                         (declare (not safe))
                         (cons __tmp270474 __tmp270453))))
                  (declare (not safe))
                  (cons __tmp270481 __tmp270452))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#if __tmp270451))))
                                            (declare (not safe))
                                            (cons __tmp270450 '()))))
                                     (declare (not safe))
                                     (cons __tmp270483 __tmp270449))))
                             (declare (not safe))
                             (cons '%#let-values __tmp270448))))
                      (__tmp270443
                       (let ((__tmp270444
                              (let ((__tmp270445
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj265360_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp270445))))
                         (declare (not safe))
                         (cons __tmp270444 '()))))
                  (declare (not safe))
                  (cons __tmp270446 __tmp270443))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#begin
                                                         __tmp270442))))
                                            (declare (not safe))
                                            (cons __tmp270441 '()))))
                                     (declare (not safe))
                                     (cons __tmp270504 __tmp270440))))
                              (declare (not safe))
                              (cons '%#let-values __tmp270439))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp270438 _stx265345_))))
                 _$e265355_)
                (if (##structure-ref _klass265348_ '7 gxc#!class::t '#f)
                    (if (fx= (length _args265352_)
                             (let ()
                               (declare (not safe))
                               (fx- _fields265350_ '1)))
                        (let ((__tmp270429
                               (let ((__tmp270430
                                      (let ((__tmp270435
                                             (let ((__tmp270436
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '##structure
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp270436)))
                                            (__tmp270431
                                             (let ((__tmp270432
                                                    (let ((__tmp270433
                                                           (let ((__tmp270434
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##structure-ref _self265344_ '1 gxc#!type::t '#f)))
                     (declare (not safe))
                     (cons __tmp270434 '()))))
              (declare (not safe))
              (cons '%#ref __tmp270433))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp270432
                                                     _args265352_))))
                                        (declare (not safe))
                                        (cons __tmp270435 __tmp270431))))
                                 (declare (not safe))
                                 (cons '%#call __tmp270430))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp270429 _stx265345_))
                        (let ((__tmp270428
                               (##structure-ref
                                _self265344_
                                '1
                                gxc#!type::t
                                '#f))
                              (__tmp270427
                               (length (##structure-ref
                                        _klass265348_
                                        '5
                                        gxc#!class::t
                                        '#f))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"illegal struct constructor application; arity mismatch"
                           _stx265345_
                           __tmp270428
                           __tmp270427)))
                    (let ((_$obj265365_
                           (let ((__tmp270354 (gensym '__obj)))
                             (declare (not safe))
                             (make-symbol__0 __tmp270354))))
                      (let _lp265367_ ((_rest265369_ _args265352_)
                                       (_initializers265370_ '()))
                        (let* ((___stx270091270092_ _rest265369_)
                               (_g265374265395_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     ___stx270091270092_)))))
                          (let ((___kont270093270094_
                                 (lambda (_L265449_ _L265450_ _L265451_)
                                   (let* ((_slot265480_
                                           (keyword->symbol
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _L265451_))))
                                          (_off265482_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#!class-slot->field-offset
                                              _klass265348_
                                              _slot265480_))))
                                     (if _off265482_
                                         (let ((__tmp270356
                                                (let ((__tmp270357
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _off265482_
                                                               _L265450_))))
                                                  (declare (not safe))
                                                  (cons __tmp270357
                                                        _initializers265370_))))
                                           (declare (not safe))
                                           (_lp265367_ _L265449_ __tmp270356))
                                         (let ((__tmp270355
                                                (##structure-ref
                                                 _self265344_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#raise-compile-error
                                            '"unknown slot"
                                            _stx265345_
                                            __tmp270355
                                            _slot265480_))))))
                                (___kont270095270096_
                                 (lambda ()
                                   (let ((__tmp270358
                                          (let ((__tmp270359
                                                 (let ((__tmp270382
                                                        (let ((__tmp270383
                                                               (let ((__tmp270396
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$obj265365_ '())))
                             (__tmp270384
                              (let ((__tmp270385
                                     (let ((__tmp270386
                                            (let ((__tmp270394
                                                   (let ((__tmp270395
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'make-object
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp270395)))
                                                  (__tmp270387
                                                   (let ((__tmp270391
                                                          (let ((__tmp270392
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp270393
                                (##structure-ref
                                 _self265344_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (cons __tmp270393 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp270392)))
                 (__tmp270388
                  (let ((__tmp270389
                         (let ((__tmp270390
                                (let ()
                                  (declare (not safe))
                                  (cons _fields265350_ '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp270390))))
                    (declare (not safe))
                    (cons __tmp270389 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp270391
                                                           __tmp270388))))
                                              (declare (not safe))
                                              (cons __tmp270394 __tmp270387))))
                                       (declare (not safe))
                                       (cons '%#call __tmp270386))))
                                (declare (not safe))
                                (cons __tmp270385 '()))))
                         (declare (not safe))
                         (cons __tmp270396 __tmp270384))))
                  (declare (not safe))
                  (cons __tmp270383 '())))
               (__tmp270360
                (let ((__tmp270361
                       (let ((__tmp270362
                              (let ((__tmp270379
                                     (let ((__tmp270380
                                            (let ((__tmp270381
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$obj265365_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp270381))))
                                       (declare (not safe))
                                       (cons __tmp270380 '())))
                                    (__tmp270363
                                     (let ((__tmp270364
                                            (lambda (_i265409_ _r265410_)
                                              (let ((__tmp270365
                                                     (let ((__tmp270366
                                                            (let ((__tmp270376
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp270377
                                  (let ((__tmp270378
                                         (##structure-ref
                                          _self265344_
                                          '1
                                          gxc#!type::t
                                          '#f)))
                                    (declare (not safe))
                                    (cons __tmp270378 '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp270377)))
                          (__tmp270367
                           (let ((__tmp270373
                                  (let ((__tmp270374
                                         (let ((__tmp270375 (car _i265409_)))
                                           (declare (not safe))
                                           (cons __tmp270375 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp270374)))
                                 (__tmp270368
                                  (let ((__tmp270371
                                         (let ((__tmp270372
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj265365_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp270372)))
                                        (__tmp270369
                                         (let ((__tmp270370 (cdr _i265409_)))
                                           (declare (not safe))
                                           (cons __tmp270370 '()))))
                                    (declare (not safe))
                                    (cons __tmp270371 __tmp270369))))
                             (declare (not safe))
                             (cons __tmp270373 __tmp270368))))
                      (declare (not safe))
                      (cons __tmp270376 __tmp270367))))
               (declare (not safe))
               (cons '%#struct-unchecked-set! __tmp270366))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp270365
                                                      _r265410_)))))
                                       (declare (not safe))
                                       (foldl1 __tmp270364
                                               '()
                                               _initializers265370_))))
                                (declare (not safe))
                                (foldr1 cons __tmp270379 __tmp270363))))
                         (declare (not safe))
                         (cons '%#begin __tmp270362))))
                  (declare (not safe))
                  (cons __tmp270361 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp270382
                                                         __tmp270360))))
                                            (declare (not safe))
                                            (cons '%#let-values __tmp270359))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp270358
                                      _stx265345_))))
                                (___kont270097270098_
                                 (lambda ()
                                   (let ((__tmp270397
                                          (let ((__tmp270398
                                                 (let ((__tmp270412
                                                        (let ((__tmp270413
                                                               (let ((__tmp270426
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$obj265365_ '())))
                             (__tmp270414
                              (let ((__tmp270415
                                     (let ((__tmp270416
                                            (let ((__tmp270424
                                                   (let ((__tmp270425
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'make-object
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp270425)))
                                                  (__tmp270417
                                                   (let ((__tmp270421
                                                          (let ((__tmp270422
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp270423
                                (##structure-ref
                                 _self265344_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (cons __tmp270423 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp270422)))
                 (__tmp270418
                  (let ((__tmp270419
                         (let ((__tmp270420
                                (let ()
                                  (declare (not safe))
                                  (cons _fields265350_ '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp270420))))
                    (declare (not safe))
                    (cons __tmp270419 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp270421
                                                           __tmp270418))))
                                              (declare (not safe))
                                              (cons __tmp270424 __tmp270417))))
                                       (declare (not safe))
                                       (cons '%#call __tmp270416))))
                                (declare (not safe))
                                (cons __tmp270415 '()))))
                         (declare (not safe))
                         (cons __tmp270426 __tmp270414))))
                  (declare (not safe))
                  (cons __tmp270413 '())))
               (__tmp270399
                (let ((__tmp270400
                       (let ((__tmp270401
                              (let ((__tmp270405
                                     (let ((__tmp270406
                                            (let ((__tmp270410
                                                   (let ((__tmp270411
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'class-instance-init!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp270411)))
                                                  (__tmp270407
                                                   (let ((__tmp270408
                                                          (let ((__tmp270409
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj265365_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp270409))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp270408
                                                           _args265352_))))
                                              (declare (not safe))
                                              (cons __tmp270410 __tmp270407))))
                                       (declare (not safe))
                                       (cons '%#call __tmp270406)))
                                    (__tmp270402
                                     (let ((__tmp270403
                                            (let ((__tmp270404
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$obj265365_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp270404))))
                                       (declare (not safe))
                                       (cons __tmp270403 '()))))
                                (declare (not safe))
                                (cons __tmp270405 __tmp270402))))
                         (declare (not safe))
                         (cons '%#begin __tmp270401))))
                  (declare (not safe))
                  (cons __tmp270400 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp270412
                                                         __tmp270399))))
                                            (declare (not safe))
                                            (cons '%#let-values __tmp270398))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp270397
                                      _stx265345_)))))
                            (let* ((_g265372265412_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? ___stx270091270092_))
                                          (___kont270095270096_)
                                          (___kont270097270098_))))
                                   (___match270128270129_
                                    (lambda (_e265381265417_
                                             _hd265380265420_
                                             _tl265379265422_
                                             _e265384265425_
                                             _hd265383265428_
                                             _tl265382265430_
                                             _e265387265433_
                                             _hd265386265436_
                                             _tl265385265438_
                                             _e265390265441_
                                             _hd265389265444_
                                             _tl265388265446_)
                                      (let ((_L265449_ _tl265388265446_)
                                            (_L265450_ _hd265389265444_)
                                            (_L265451_ _hd265386265436_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-keyword? _L265451_))
                                            (___kont270093270094_
                                             _L265449_
                                             _L265450_
                                             _L265451_)
                                            (___kont270097270098_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? ___stx270091270092_))
                                  (let ((_e265381265417_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e ___stx270091270092_))))
                                    (let ((_tl265379265422_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e265381265417_)))
                                          (_hd265380265420_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e265381265417_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd265380265420_))
                                          (let ((_e265384265425_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd265380265420_))))
                                            (let ((_tl265382265430_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e265384265425_)))
                                                  (_hd265383265428_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e265384265425_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd265383265428_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#quote
                                                         _hd265383265428_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl265382265430_))
                                                          (let ((_e265387265433_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl265382265430_))))
                    (let ((_tl265385265438_
                           (let ()
                             (declare (not safe))
                             (##cdr _e265387265433_)))
                          (_hd265386265436_
                           (let ()
                             (declare (not safe))
                             (##car _e265387265433_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl265385265438_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl265379265422_))
                              (let ((_e265390265441_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl265379265422_))))
                                (let ((_tl265388265446_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e265390265441_)))
                                      (_hd265389265444_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e265390265441_))))
                                  (___match270128270129_
                                   _e265381265417_
                                   _hd265380265420_
                                   _tl265379265422_
                                   _e265384265425_
                                   _hd265383265428_
                                   _tl265382265430_
                                   _e265387265433_
                                   _hd265386265436_
                                   _tl265385265438_
                                   _e265390265441_
                                   _hd265389265444_
                                   _tl265388265446_)))
                              (___kont270097270098_))
                          (___kont270097270098_))))
                  (___kont270097270098_))
              (___kont270097270098_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont270097270098_))))
                                          (___kont270097270098_))))
                                  (let ()
                                    (declare (not safe))
                                    (_g265372265412_))))))))))))))
    (define gxc#!constructor::optimize-call::specialize
      (lambda (__t270017)
        (let ((__id270018
               (let ((__tmp270019
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t270017 'id))))
                 (if __tmp270019 __tmp270019 (error '"Unknown slot" 'id)))))
          (lambda (_self265344_ _stx265345_ _args265346_)
            (let* ((_klass265348_
                    (let ((__tmp270519
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _self265344_
                              __id270018
                              __t270017
                              '#f))))
                      (declare (not safe))
                      (gxc#optimizer-resolve-class _stx265345_ __tmp270519)))
                   (_fields265350_
                    (let ((__tmp270520
                           (length (##structure-ref
                                    _klass265348_
                                    '5
                                    gxc#!class::t
                                    '#f))))
                      (declare (not safe))
                      (fx+ __tmp270520 '1)))
                   (_args265352_ (map gxc#compile-e _args265346_)))
              (let ((_$e265355_
                     (##structure-ref _klass265348_ '6 gxc#!class::t '#f)))
                (if _$e265355_
                    ((lambda (_ctor265358_)
                       (let ((_$obj265360_
                              (let ((__tmp270604 (gensym '__obj)))
                                (declare (not safe))
                                (make-symbol__0 __tmp270604)))
                             (_ctor-impl265361_
                              (let ()
                                (declare (not safe))
                                (gxc#!class-lookup-method
                                 _klass265348_
                                 _ctor265358_))))
                         (let ((__tmp270605
                                (let ((__tmp270606
                                       (let ((__tmp270671
                                              (let ((__tmp270672
                                                     (let ((__tmp270685
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$obj265360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp270673
                    (let ((__tmp270674
                           (let ((__tmp270675
                                  (let ((__tmp270683
                                         (let ((__tmp270684
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'make-object '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp270684)))
                                        (__tmp270676
                                         (let ((__tmp270680
                                                (let ((__tmp270681
                                                       (let ((__tmp270682
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self265344_
                         __id270018
                         __t270017
                         '#f))))
                 (declare (not safe))
                 (cons __tmp270682 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp270681)))
                                               (__tmp270677
                                                (let ((__tmp270678
                                                       (let ((__tmp270679
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _fields265350_ '()))))
                 (declare (not safe))
                 (cons '%#quote __tmp270679))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp270678 '()))))
                                           (declare (not safe))
                                           (cons __tmp270680 __tmp270677))))
                                    (declare (not safe))
                                    (cons __tmp270683 __tmp270676))))
                             (declare (not safe))
                             (cons '%#call __tmp270675))))
                      (declare (not safe))
                      (cons __tmp270674 '()))))
               (declare (not safe))
               (cons __tmp270685 __tmp270673))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp270672 '())))
                                             (__tmp270607
                                              (let ((__tmp270608
                                                     (let ((__tmp270609
                                                            (let ((__tmp270613
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _ctor-impl265361_
                               (let ((__tmp270665
                                      (let ((__tmp270669
                                             (let ((__tmp270670
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor-impl265361_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp270670)))
                                            (__tmp270666
                                             (let ((__tmp270667
                                                    (let ((__tmp270668
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$obj265360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp270668))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp270667
                                                     _args265352_))))
                                        (declare (not safe))
                                        (cons __tmp270669 __tmp270666))))
                                 (declare (not safe))
                                 (cons '%#call __tmp270665))
                               (let* ((_$ctor265363_
                                       (let ((__tmp270614
                                              (gensym '__constructor)))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp270614)))
                                      (__tmp270615
                                       (let ((__tmp270650
                                              (let ((__tmp270651
                                                     (let ((__tmp270664
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$ctor265363_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp270652
                    (let ((__tmp270653
                           (let ((__tmp270654
                                  (let ((__tmp270662
                                         (let ((__tmp270663
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'find-method '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp270663)))
                                        (__tmp270655
                                         (let ((__tmp270659
                                                (let ((__tmp270660
                                                       (let ((__tmp270661
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self265344_
                         __id270018
                         __t270017
                         '#f))))
                 (declare (not safe))
                 (cons __tmp270661 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp270660)))
                                               (__tmp270656
                                                (let ((__tmp270657
                                                       (let ((__tmp270658
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _ctor265358_ '()))))
                 (declare (not safe))
                 (cons '%#quote __tmp270658))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp270657 '()))))
                                           (declare (not safe))
                                           (cons __tmp270659 __tmp270656))))
                                    (declare (not safe))
                                    (cons __tmp270662 __tmp270655))))
                             (declare (not safe))
                             (cons '%#call __tmp270654))))
                      (declare (not safe))
                      (cons __tmp270653 '()))))
               (declare (not safe))
               (cons __tmp270664 __tmp270652))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp270651 '())))
                                             (__tmp270616
                                              (let ((__tmp270617
                                                     (let ((__tmp270618
                                                            (let ((__tmp270648
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp270649
                                  (let ()
                                    (declare (not safe))
                                    (cons _$ctor265363_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp270649)))
                          (__tmp270619
                           (let ((__tmp270641
                                  (let ((__tmp270642
                                         (let ((__tmp270646
                                                (let ((__tmp270647
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$ctor265363_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp270647)))
                                               (__tmp270643
                                                (let ((__tmp270644
                                                       (let ((__tmp270645
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj265360_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp270645))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp270644
                                                        _args265352_))))
                                           (declare (not safe))
                                           (cons __tmp270646 __tmp270643))))
                                    (declare (not safe))
                                    (cons '%#call __tmp270642)))
                                 (__tmp270620
                                  (let ((__tmp270621
                                         (let ((__tmp270622
                                                (let ((__tmp270639
                                                       (let ((__tmp270640
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'error '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp270640)))
              (__tmp270623
               (let ((__tmp270637
                      (let ((__tmp270638
                             (let ()
                               (declare (not safe))
                               (cons '"missing constructor method implementation"
                                     '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp270638)))
                     (__tmp270624
                      (let ((__tmp270635
                             (let ((__tmp270636
                                    (let ()
                                      (declare (not safe))
                                      (cons 'class: '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp270636)))
                            (__tmp270625
                             (let ((__tmp270632
                                    (let ((__tmp270633
                                           (let ((__tmp270634
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self265344_
                                                     __id270018
                                                     __t270017
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp270634 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp270633)))
                                   (__tmp270626
                                    (let ((__tmp270630
                                           (let ((__tmp270631
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'method: '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp270631)))
                                          (__tmp270627
                                           (let ((__tmp270628
                                                  (let ((__tmp270629
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _ctor265358_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#quote
                                                          __tmp270629))))
                                             (declare (not safe))
                                             (cons __tmp270628 '()))))
                                      (declare (not safe))
                                      (cons __tmp270630 __tmp270627))))
                               (declare (not safe))
                               (cons __tmp270632 __tmp270626))))
                        (declare (not safe))
                        (cons __tmp270635 __tmp270625))))
                 (declare (not safe))
                 (cons __tmp270637 __tmp270624))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp270639
                                                        __tmp270623))))
                                           (declare (not safe))
                                           (cons '%#call __tmp270622))))
                                    (declare (not safe))
                                    (cons __tmp270621 '()))))
                             (declare (not safe))
                             (cons __tmp270641 __tmp270620))))
                      (declare (not safe))
                      (cons __tmp270648 __tmp270619))))
               (declare (not safe))
               (cons '%#if __tmp270618))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp270617 '()))))
                                         (declare (not safe))
                                         (cons __tmp270650 __tmp270616))))
                                 (declare (not safe))
                                 (cons '%#let-values __tmp270615))))
                          (__tmp270610
                           (let ((__tmp270611
                                  (let ((__tmp270612
                                         (let ()
                                           (declare (not safe))
                                           (cons _$obj265360_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp270612))))
                             (declare (not safe))
                             (cons __tmp270611 '()))))
                      (declare (not safe))
                      (cons __tmp270613 __tmp270610))))
               (declare (not safe))
               (cons '%#begin __tmp270609))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp270608 '()))))
                                         (declare (not safe))
                                         (cons __tmp270671 __tmp270607))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp270606))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp270605 _stx265345_))))
                     _$e265355_)
                    (if (##structure-ref _klass265348_ '7 gxc#!class::t '#f)
                        (if (fx= (length _args265352_)
                                 (let ()
                                   (declare (not safe))
                                   (fx- _fields265350_ '1)))
                            (let ((__tmp270596
                                   (let ((__tmp270597
                                          (let ((__tmp270602
                                                 (let ((__tmp270603
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons '##structure
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp270603)))
                                                (__tmp270598
                                                 (let ((__tmp270599
                                                        (let ((__tmp270600
                                                               (let ((__tmp270601
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self265344_
                                 __id270018
                                 __t270017
                                 '#f))))
                         (declare (not safe))
                         (cons __tmp270601 '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp270600))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp270599
                                                         _args265352_))))
                                            (declare (not safe))
                                            (cons __tmp270602 __tmp270598))))
                                     (declare (not safe))
                                     (cons '%#call __tmp270597))))
                              (declare (not safe))
                              (gxc#xform-wrap-source __tmp270596 _stx265345_))
                            (let ((__tmp270595
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _self265344_
                                      __id270018
                                      __t270017
                                      '#f)))
                                  (__tmp270594
                                   (length (##structure-ref
                                            _klass265348_
                                            '5
                                            gxc#!class::t
                                            '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _stx265345_
                               __tmp270595
                               __tmp270594)))
                        (let ((_$obj265365_
                               (let ((__tmp270521 (gensym '__obj)))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp270521))))
                          (let _lp265367_ ((_rest265369_ _args265352_)
                                           (_initializers265370_ '()))
                            (let* ((___stx270133270134_ _rest265369_)
                                   (_g265374265395_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         ___stx270133270134_)))))
                              (let ((___kont270135270136_
                                     (lambda (_L265449_ _L265450_ _L265451_)
                                       (let* ((_slot265480_
                                               (keyword->symbol
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L265451_))))
                                              (_off265482_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _klass265348_
                                                  _slot265480_))))
                                         (if _off265482_
                                             (let ((__tmp270523
                                                    (let ((__tmp270524
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _off265482_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L265450_))))
              (declare (not safe))
              (cons __tmp270524 _initializers265370_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_lp265367_
                                                _L265449_
                                                __tmp270523))
                                             (let ((__tmp270522
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self265344_
                                                       __id270018
                                                       __t270017
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _stx265345_
                                                __tmp270522
                                                _slot265480_))))))
                                    (___kont270137270138_
                                     (lambda ()
                                       (let ((__tmp270525
                                              (let ((__tmp270526
                                                     (let ((__tmp270549
                                                            (let ((__tmp270550
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp270563
                                  (let ()
                                    (declare (not safe))
                                    (cons _$obj265365_ '())))
                                 (__tmp270551
                                  (let ((__tmp270552
                                         (let ((__tmp270553
                                                (let ((__tmp270561
                                                       (let ((__tmp270562
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'make-object '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp270562)))
              (__tmp270554
               (let ((__tmp270558
                      (let ((__tmp270559
                             (let ((__tmp270560
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _self265344_
                                       __id270018
                                       __t270017
                                       '#f))))
                               (declare (not safe))
                               (cons __tmp270560 '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp270559)))
                     (__tmp270555
                      (let ((__tmp270556
                             (let ((__tmp270557
                                    (let ()
                                      (declare (not safe))
                                      (cons _fields265350_ '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp270557))))
                        (declare (not safe))
                        (cons __tmp270556 '()))))
                 (declare (not safe))
                 (cons __tmp270558 __tmp270555))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp270561
                                                        __tmp270554))))
                                           (declare (not safe))
                                           (cons '%#call __tmp270553))))
                                    (declare (not safe))
                                    (cons __tmp270552 '()))))
                             (declare (not safe))
                             (cons __tmp270563 __tmp270551))))
                      (declare (not safe))
                      (cons __tmp270550 '())))
                   (__tmp270527
                    (let ((__tmp270528
                           (let ((__tmp270529
                                  (let ((__tmp270546
                                         (let ((__tmp270547
                                                (let ((__tmp270548
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj265365_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp270548))))
                                           (declare (not safe))
                                           (cons __tmp270547 '())))
                                        (__tmp270530
                                         (let ((__tmp270531
                                                (lambda (_i265409_ _r265410_)
                                                  (let ((__tmp270532
                                                         (let ((__tmp270533
                                                                (let ((__tmp270543
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp270544
                                      (let ((__tmp270545
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _self265344_
                                                __id270018
                                                __t270017
                                                '#f))))
                                        (declare (not safe))
                                        (cons __tmp270545 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp270544)))
                              (__tmp270534
                               (let ((__tmp270540
                                      (let ((__tmp270541
                                             (let ((__tmp270542
                                                    (car _i265409_)))
                                               (declare (not safe))
                                               (cons __tmp270542 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp270541)))
                                     (__tmp270535
                                      (let ((__tmp270538
                                             (let ((__tmp270539
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj265365_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp270539)))
                                            (__tmp270536
                                             (let ((__tmp270537
                                                    (cdr _i265409_)))
                                               (declare (not safe))
                                               (cons __tmp270537 '()))))
                                        (declare (not safe))
                                        (cons __tmp270538 __tmp270536))))
                                 (declare (not safe))
                                 (cons __tmp270540 __tmp270535))))
                          (declare (not safe))
                          (cons __tmp270543 __tmp270534))))
                   (declare (not safe))
                   (cons '%#struct-unchecked-set! __tmp270533))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp270532
                                                          _r265410_)))))
                                           (declare (not safe))
                                           (foldl1 __tmp270531
                                                   '()
                                                   _initializers265370_))))
                                    (declare (not safe))
                                    (foldr1 cons __tmp270546 __tmp270530))))
                             (declare (not safe))
                             (cons '%#begin __tmp270529))))
                      (declare (not safe))
                      (cons __tmp270528 '()))))
               (declare (not safe))
               (cons __tmp270549 __tmp270527))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#let-values
                                                      __tmp270526))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp270525
                                          _stx265345_))))
                                    (___kont270139270140_
                                     (lambda ()
                                       (let ((__tmp270564
                                              (let ((__tmp270565
                                                     (let ((__tmp270579
                                                            (let ((__tmp270580
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp270593
                                  (let ()
                                    (declare (not safe))
                                    (cons _$obj265365_ '())))
                                 (__tmp270581
                                  (let ((__tmp270582
                                         (let ((__tmp270583
                                                (let ((__tmp270591
                                                       (let ((__tmp270592
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'make-object '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp270592)))
              (__tmp270584
               (let ((__tmp270588
                      (let ((__tmp270589
                             (let ((__tmp270590
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _self265344_
                                       __id270018
                                       __t270017
                                       '#f))))
                               (declare (not safe))
                               (cons __tmp270590 '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp270589)))
                     (__tmp270585
                      (let ((__tmp270586
                             (let ((__tmp270587
                                    (let ()
                                      (declare (not safe))
                                      (cons _fields265350_ '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp270587))))
                        (declare (not safe))
                        (cons __tmp270586 '()))))
                 (declare (not safe))
                 (cons __tmp270588 __tmp270585))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp270591
                                                        __tmp270584))))
                                           (declare (not safe))
                                           (cons '%#call __tmp270583))))
                                    (declare (not safe))
                                    (cons __tmp270582 '()))))
                             (declare (not safe))
                             (cons __tmp270593 __tmp270581))))
                      (declare (not safe))
                      (cons __tmp270580 '())))
                   (__tmp270566
                    (let ((__tmp270567
                           (let ((__tmp270568
                                  (let ((__tmp270572
                                         (let ((__tmp270573
                                                (let ((__tmp270577
                                                       (let ((__tmp270578
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'class-instance-init! '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp270578)))
              (__tmp270574
               (let ((__tmp270575
                      (let ((__tmp270576
                             (let ()
                               (declare (not safe))
                               (cons _$obj265365_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp270576))))
                 (declare (not safe))
                 (cons __tmp270575 _args265352_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp270577
                                                        __tmp270574))))
                                           (declare (not safe))
                                           (cons '%#call __tmp270573)))
                                        (__tmp270569
                                         (let ((__tmp270570
                                                (let ((__tmp270571
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj265365_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp270571))))
                                           (declare (not safe))
                                           (cons __tmp270570 '()))))
                                    (declare (not safe))
                                    (cons __tmp270572 __tmp270569))))
                             (declare (not safe))
                             (cons '%#begin __tmp270568))))
                      (declare (not safe))
                      (cons __tmp270567 '()))))
               (declare (not safe))
               (cons __tmp270579 __tmp270566))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#let-values
                                                      __tmp270565))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp270564
                                          _stx265345_)))))
                                (let* ((_g265372265412_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 ___stx270133270134_))
                                              (___kont270137270138_)
                                              (___kont270139270140_))))
                                       (___match270170270171_
                                        (lambda (_e265381265417_
                                                 _hd265380265420_
                                                 _tl265379265422_
                                                 _e265384265425_
                                                 _hd265383265428_
                                                 _tl265382265430_
                                                 _e265387265433_
                                                 _hd265386265436_
                                                 _tl265385265438_
                                                 _e265390265441_
                                                 _hd265389265444_
                                                 _tl265388265446_)
                                          (let ((_L265449_ _tl265388265446_)
                                                (_L265450_ _hd265389265444_)
                                                (_L265451_ _hd265386265436_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword? _L265451_))
                                                (___kont270135270136_
                                                 _L265449_
                                                 _L265450_
                                                 _L265451_)
                                                (___kont270139270140_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? ___stx270133270134_))
                                      (let ((_e265381265417_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                ___stx270133270134_))))
                                        (let ((_tl265379265422_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e265381265417_)))
                                              (_hd265380265420_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e265381265417_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd265380265420_))
                                              (let ((_e265384265425_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd265380265420_))))
                                                (let ((_tl265382265430_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e265384265425_)))
                                                      (_hd265383265428_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e265384265425_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd265383265428_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _hd265383265428_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl265382265430_))
                      (let ((_e265387265433_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl265382265430_))))
                        (let ((_tl265385265438_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e265387265433_)))
                              (_hd265386265436_
                               (let ()
                                 (declare (not safe))
                                 (##car _e265387265433_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl265385265438_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl265379265422_))
                                  (let ((_e265390265441_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl265379265422_))))
                                    (let ((_tl265388265446_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e265390265441_)))
                                          (_hd265389265444_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e265390265441_))))
                                      (___match270170270171_
                                       _e265381265417_
                                       _hd265380265420_
                                       _tl265379265422_
                                       _e265384265425_
                                       _hd265383265428_
                                       _tl265382265430_
                                       _e265387265433_
                                       _hd265386265436_
                                       _tl265385265438_
                                       _e265390265441_
                                       _hd265389265444_
                                       _tl265388265446_)))
                                  (___kont270139270140_))
                              (___kont270139270140_))))
                      (___kont270139270140_))
                  (___kont270139270140_))
              (___kont270139270140_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont270139270140_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g265372265412_))))))))))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!constructor::optimize-call
       gxc#!constructor::optimize-call::specialize))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_self265167_ _stx265168_ _args265169_)
        (let* ((_g265171265181_
                (lambda (_g265172265178_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g265172265178_))))
               (_g265170265219_
                (lambda (_g265172265184_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g265172265184_))
                      (let ((_e265176265186_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g265172265184_))))
                        (let ((_hd265175265189_
                               (let ()
                                 (declare (not safe))
                                 (##car _e265176265186_)))
                              (_tl265174265191_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e265176265186_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl265174265191_))
                              ((lambda (_L265194_)
                                 (let* ((_klass265205_
                                         (let ((__tmp270686
                                                (##structure-ref
                                                 _self265167_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx265168_
                                            __tmp270686)))
                                        (_field265207_
                                         (let ((__tmp270687
                                                (##structure-ref
                                                 _self265167_
                                                 '2
                                                 gxc#!accessor::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _klass265205_
                                            __tmp270687)))
                                        (_object265209_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L265194_))))
                                   (if (##structure-ref
                                        _klass265205_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp270764
                                              (let ((__tmp270773
                                                     (if (##structure-ref
                                                          _self265167_
                                                          '3
                                                          gxc#!accessor::t
                                                          '#f)
                                                         '%#struct-direct-ref
                                                         '%#struct-unchecked-ref))
                                                    (__tmp270765
                                                     (let ((__tmp270770
                                                            (let ((__tmp270771
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp270772
                                  (##structure-ref
                                   _self265167_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp270772 '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp270771)))
                   (__tmp270766
                    (let ((__tmp270768
                           (let ((__tmp270769
                                  (let ()
                                    (declare (not safe))
                                    (cons _field265207_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp270769)))
                          (__tmp270767
                           (let ()
                             (declare (not safe))
                             (cons _object265209_ '()))))
                      (declare (not safe))
                      (cons __tmp270768 __tmp270767))))
               (declare (not safe))
               (cons __tmp270770 __tmp270766))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp270773
                                                      __tmp270765))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp270764
                                          _stx265168_))
                                       (if (##structure-ref
                                            _klass265205_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp270754
                                                  (let ((__tmp270763
                                                         (if (##structure-ref
                                                              _self265167_
                                                              '3
                                                              gxc#!accessor::t
                                                              '#f)
                                                             '%#struct-ref
                                                             '%#struct-unchecked-ref))
                                                        (__tmp270755
                                                         (let ((__tmp270760
                                                                (let ((__tmp270761
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp270762
                                      (##structure-ref
                                       _self265167_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp270762 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp270761)))
                       (__tmp270756
                        (let ((__tmp270758
                               (let ((__tmp270759
                                      (let ()
                                        (declare (not safe))
                                        (cons _field265207_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp270759)))
                              (__tmp270757
                               (let ()
                                 (declare (not safe))
                                 (cons _object265209_ '()))))
                          (declare (not safe))
                          (cons __tmp270758 __tmp270757))))
                   (declare (not safe))
                   (cons __tmp270760 __tmp270756))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp270763
                                                          __tmp270755))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp270754
                                              _stx265168_))
                                           (let ((_$e265212_
                                                  (let ((__tmp270688
                                                         (##structure-ref
                                                          _self265167_
                                                          '2
                                                          gxc#!accessor::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _klass265205_
                                                     __tmp270688))))
                                             (if _$e265212_
                                                 ((lambda (_klass265215_)
                                                    (let ((__tmp270744
                                                           (let ((__tmp270753
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##structure-ref
                               _self265167_
                               '3
                               gxc#!accessor::t
                               '#f)
                              '%#struct-ref
                              '%#struct-unchecked-ref))
                         (__tmp270745
                          (let ((__tmp270750
                                 (let ((__tmp270751
                                        (let ((__tmp270752
                                               (##structure-ref
                                                _self265167_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp270752 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp270751)))
                                (__tmp270746
                                 (let ((__tmp270748
                                        (let ((__tmp270749
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _field265207_ '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp270749)))
                                       (__tmp270747
                                        (let ()
                                          (declare (not safe))
                                          (cons _object265209_ '()))))
                                   (declare (not safe))
                                   (cons __tmp270748 __tmp270747))))
                            (declare (not safe))
                            (cons __tmp270750 __tmp270746))))
                     (declare (not safe))
                     (cons __tmp270753 __tmp270745))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp270744 _stx265168_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e265212_)
                                                 (if (##structure-ref
                                                      _self265167_
                                                      '3
                                                      gxc#!accessor::t
                                                      '#f)
                                                     (let ((__tmp270698
                                                            (let* ((_$obj265217_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp270699 (gensym '__obj)))
                              (declare (not safe))
                              (make-symbol__0 __tmp270699)))
                           (__tmp270700
                            (let ((__tmp270740
                                   (let ((__tmp270741
                                          (let ((__tmp270743
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _$obj265217_ '())))
                                                (__tmp270742
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _object265209_ '()))))
                                            (declare (not safe))
                                            (cons __tmp270743 __tmp270742))))
                                     (declare (not safe))
                                     (cons __tmp270741 '())))
                                  (__tmp270701
                                   (let ((__tmp270702
                                          (let ((__tmp270703
                                                 (let ((__tmp270732
                                                        (let ((__tmp270733
                                                               (let ((__tmp270737
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp270738
                                     (let ((__tmp270739
                                            (##structure-ref
                                             _klass265205_
                                             '1
                                             gxc#!type::t
                                             '#f)))
                                       (declare (not safe))
                                       (cons __tmp270739 '()))))
                                (declare (not safe))
                                (cons '%#quote __tmp270738)))
                             (__tmp270734
                              (let ((__tmp270735
                                     (let ((__tmp270736
                                            (let ()
                                              (declare (not safe))
                                              (cons _$obj265217_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp270736))))
                                (declare (not safe))
                                (cons __tmp270735 '()))))
                         (declare (not safe))
                         (cons __tmp270737 __tmp270734))))
                  (declare (not safe))
                  (cons '%#struct-direct-instance? __tmp270733)))
               (__tmp270704
                (let ((__tmp270721
                       (let ((__tmp270722
                              (let ((__tmp270729
                                     (let ((__tmp270730
                                            (let ((__tmp270731
                                                   (##structure-ref
                                                    _self265167_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp270731 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp270730)))
                                    (__tmp270723
                                     (let ((__tmp270727
                                            (let ((__tmp270728
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field265207_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp270728)))
                                           (__tmp270724
                                            (let ((__tmp270725
                                                   (let ((__tmp270726
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj265217_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp270726))))
                                              (declare (not safe))
                                              (cons __tmp270725 '()))))
                                       (declare (not safe))
                                       (cons __tmp270727 __tmp270724))))
                                (declare (not safe))
                                (cons __tmp270729 __tmp270723))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp270722)))
                      (__tmp270705
                       (let ((__tmp270706
                              (let ((__tmp270707
                                     (let ((__tmp270719
                                            (let ((__tmp270720
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'class-slot-ref
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp270720)))
                                           (__tmp270708
                                            (let ((__tmp270716
                                                   (let ((__tmp270717
                                                          (let ((__tmp270718
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref _self265167_ '1 gxc#!type::t '#f)))
                    (declare (not safe))
                    (cons __tmp270718 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp270717)))
                                                  (__tmp270709
                                                   (let ((__tmp270714
                                                          (let ((__tmp270715
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj265217_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp270715)))
                 (__tmp270710
                  (let ((__tmp270711
                         (let ((__tmp270712
                                (let ((__tmp270713
                                       (##structure-ref
                                        _self265167_
                                        '2
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (cons __tmp270713 '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp270712))))
                    (declare (not safe))
                    (cons __tmp270711 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp270714
                                                           __tmp270710))))
                                              (declare (not safe))
                                              (cons __tmp270716 __tmp270709))))
                                       (declare (not safe))
                                       (cons __tmp270719 __tmp270708))))
                                (declare (not safe))
                                (cons '%#call __tmp270707))))
                         (declare (not safe))
                         (cons __tmp270706 '()))))
                  (declare (not safe))
                  (cons __tmp270721 __tmp270705))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp270732
                                                         __tmp270704))))
                                            (declare (not safe))
                                            (cons '%#if __tmp270703))))
                                     (declare (not safe))
                                     (cons __tmp270702 '()))))
                              (declare (not safe))
                              (cons __tmp270740 __tmp270701))))
                      (declare (not safe))
                      (cons '%#let-values __tmp270700))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp270698 _stx265168_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp270689
                                                            (let ((__tmp270690
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp270696
                                  (let ((__tmp270697
                                         (let ()
                                           (declare (not safe))
                                           (cons 'unchecked-slot-ref '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp270697)))
                                 (__tmp270691
                                  (let ((__tmp270692
                                         (let ((__tmp270693
                                                (let ((__tmp270694
                                                       (let ((__tmp270695
                                                              (##structure-ref
                                                               _self265167_
                                                               '2
                                                               gxc#!accessor::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp270695
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote
                                                        __tmp270694))))
                                           (declare (not safe))
                                           (cons __tmp270693 '()))))
                                    (declare (not safe))
                                    (cons _object265209_ __tmp270692))))
                             (declare (not safe))
                             (cons __tmp270696 __tmp270691))))
                      (declare (not safe))
                      (cons '%#call __tmp270690))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp270689 _stx265168_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _hd265175265189_)
                              (let ()
                                (declare (not safe))
                                (_g265171265181_ _g265172265184_)))))
                      (let ()
                        (declare (not safe))
                        (_g265171265181_ _g265172265184_))))))
          (declare (not safe))
          (_g265170265219_ _args265169_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__t270020)
        (let ((__id270021
               (let ((__tmp270024
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t270020 'id))))
                 (if __tmp270024 __tmp270024 (error '"Unknown slot" 'id))))
              (__slot270022
               (let ((__tmp270025
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t270020 'slot))))
                 (if __tmp270025 __tmp270025 (error '"Unknown slot" 'slot))))
              (__checked?270023
               (let ((__tmp270026
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t270020 'checked?))))
                 (if __tmp270026
                     __tmp270026
                     (error '"Unknown slot" 'checked?)))))
          (lambda (_self265167_ _stx265168_ _args265169_)
            (let* ((_g265171265181_
                    (lambda (_g265172265178_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g265172265178_))))
                   (_g265170265219_
                    (lambda (_g265172265184_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g265172265184_))
                          (let ((_e265176265186_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g265172265184_))))
                            (let ((_hd265175265189_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e265176265186_)))
                                  (_tl265174265191_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e265176265186_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl265174265191_))
                                  ((lambda (_L265194_)
                                     (let* ((_klass265205_
                                             (let ((__tmp270774
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self265167_
                                                       __id270021
                                                       __t270020
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx265168_
                                                __tmp270774)))
                                            (_field265207_
                                             (let ((__tmp270775
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self265167_
                                                       __slot270022
                                                       __t270020
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _klass265205_
                                                __tmp270775)))
                                            (_object265209_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L265194_))))
                                       (if (##structure-ref
                                            _klass265205_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp270852
                                                  (let ((__tmp270861
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self265167_
                        __checked?270023
                        __t270020
                        '#f))
                     '%#struct-direct-ref
                     '%#struct-unchecked-ref))
                (__tmp270853
                 (let ((__tmp270858
                        (let ((__tmp270859
                               (let ((__tmp270860
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _self265167_
                                         __id270021
                                         __t270020
                                         '#f))))
                                 (declare (not safe))
                                 (cons __tmp270860 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp270859)))
                       (__tmp270854
                        (let ((__tmp270856
                               (let ((__tmp270857
                                      (let ()
                                        (declare (not safe))
                                        (cons _field265207_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp270857)))
                              (__tmp270855
                               (let ()
                                 (declare (not safe))
                                 (cons _object265209_ '()))))
                          (declare (not safe))
                          (cons __tmp270856 __tmp270855))))
                   (declare (not safe))
                   (cons __tmp270858 __tmp270854))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp270861
                                                          __tmp270853))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp270852
                                              _stx265168_))
                                           (if (##structure-ref
                                                _klass265205_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp270842
                                                      (let ((__tmp270851
                                                             (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self265167_
                            __checked?270023
                            __t270020
                            '#f))
                         '%#struct-ref
                         '%#struct-unchecked-ref))
                    (__tmp270843
                     (let ((__tmp270848
                            (let ((__tmp270849
                                   (let ((__tmp270850
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self265167_
                                             __id270021
                                             __t270020
                                             '#f))))
                                     (declare (not safe))
                                     (cons __tmp270850 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp270849)))
                           (__tmp270844
                            (let ((__tmp270846
                                   (let ((__tmp270847
                                          (let ()
                                            (declare (not safe))
                                            (cons _field265207_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp270847)))
                                  (__tmp270845
                                   (let ()
                                     (declare (not safe))
                                     (cons _object265209_ '()))))
                              (declare (not safe))
                              (cons __tmp270846 __tmp270845))))
                       (declare (not safe))
                       (cons __tmp270848 __tmp270844))))
                (declare (not safe))
                (cons __tmp270851 __tmp270843))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp270842
                                                  _stx265168_))
                                               (let ((_$e265212_
                                                      (let ((__tmp270776
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self265167_
                        __slot270022
                        __t270020
                        '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _klass265205_ __tmp270776))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e265212_
                                                     ((lambda (_klass265215_)
                                                        (let ((__tmp270832
                                                               (let ((__tmp270841
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self265167_
                                     __checked?270023
                                     __t270020
                                     '#f))
                                  '%#struct-ref
                                  '%#struct-unchecked-ref))
                             (__tmp270833
                              (let ((__tmp270838
                                     (let ((__tmp270839
                                            (let ((__tmp270840
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self265167_
                                                      __id270021
                                                      __t270020
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp270840 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp270839)))
                                    (__tmp270834
                                     (let ((__tmp270836
                                            (let ((__tmp270837
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field265207_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp270837)))
                                           (__tmp270835
                                            (let ()
                                              (declare (not safe))
                                              (cons _object265209_ '()))))
                                       (declare (not safe))
                                       (cons __tmp270836 __tmp270835))))
                                (declare (not safe))
                                (cons __tmp270838 __tmp270834))))
                         (declare (not safe))
                         (cons __tmp270841 __tmp270833))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp270832 _stx265168_)))
              _$e265212_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _self265167_
                                                            __checked?270023
                                                            __t270020
                                                            '#f))
                                                         (let ((__tmp270786
                                                                (let* ((_$obj265217_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp270787 (gensym '__obj)))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp270787)))
                               (__tmp270788
                                (let ((__tmp270828
                                       (let ((__tmp270829
                                              (let ((__tmp270831
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _$obj265217_
                                                             '())))
                                                    (__tmp270830
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _object265209_
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp270831
                                                      __tmp270830))))
                                         (declare (not safe))
                                         (cons __tmp270829 '())))
                                      (__tmp270789
                                       (let ((__tmp270790
                                              (let ((__tmp270791
                                                     (let ((__tmp270820
                                                            (let ((__tmp270821
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp270825
                                  (let ((__tmp270826
                                         (let ((__tmp270827
                                                (##structure-ref
                                                 _klass265205_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp270827 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp270826)))
                                 (__tmp270822
                                  (let ((__tmp270823
                                         (let ((__tmp270824
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj265217_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp270824))))
                                    (declare (not safe))
                                    (cons __tmp270823 '()))))
                             (declare (not safe))
                             (cons __tmp270825 __tmp270822))))
                      (declare (not safe))
                      (cons '%#struct-direct-instance? __tmp270821)))
                   (__tmp270792
                    (let ((__tmp270809
                           (let ((__tmp270810
                                  (let ((__tmp270817
                                         (let ((__tmp270818
                                                (let ((__tmp270819
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self265167_
                                                          __id270021
                                                          __t270020
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp270819 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp270818)))
                                        (__tmp270811
                                         (let ((__tmp270815
                                                (let ((__tmp270816
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field265207_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp270816)))
                                               (__tmp270812
                                                (let ((__tmp270813
                                                       (let ((__tmp270814
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj265217_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp270814))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp270813 '()))))
                                           (declare (not safe))
                                           (cons __tmp270815 __tmp270812))))
                                    (declare (not safe))
                                    (cons __tmp270817 __tmp270811))))
                             (declare (not safe))
                             (cons '%#struct-unchecked-ref __tmp270810)))
                          (__tmp270793
                           (let ((__tmp270794
                                  (let ((__tmp270795
                                         (let ((__tmp270807
                                                (let ((__tmp270808
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-slot-ref
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp270808)))
                                               (__tmp270796
                                                (let ((__tmp270804
                                                       (let ((__tmp270805
                                                              (let ((__tmp270806
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self265167_
                                __id270021
                                __t270020
                                '#f))))
                        (declare (not safe))
                        (cons __tmp270806 '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp270805)))
              (__tmp270797
               (let ((__tmp270802
                      (let ((__tmp270803
                             (let ()
                               (declare (not safe))
                               (cons _$obj265217_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp270803)))
                     (__tmp270798
                      (let ((__tmp270799
                             (let ((__tmp270800
                                    (let ((__tmp270801
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _self265167_
                                              __slot270022
                                              __t270020
                                              '#f))))
                                      (declare (not safe))
                                      (cons __tmp270801 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp270800))))
                        (declare (not safe))
                        (cons __tmp270799 '()))))
                 (declare (not safe))
                 (cons __tmp270802 __tmp270798))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp270804
                                                        __tmp270797))))
                                           (declare (not safe))
                                           (cons __tmp270807 __tmp270796))))
                                    (declare (not safe))
                                    (cons '%#call __tmp270795))))
                             (declare (not safe))
                             (cons __tmp270794 '()))))
                      (declare (not safe))
                      (cons __tmp270809 __tmp270793))))
               (declare (not safe))
               (cons __tmp270820 __tmp270792))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#if __tmp270791))))
                                         (declare (not safe))
                                         (cons __tmp270790 '()))))
                                  (declare (not safe))
                                  (cons __tmp270828 __tmp270789))))
                          (declare (not safe))
                          (cons '%#let-values __tmp270788))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp270786 _stx265168_))
                 (let ((__tmp270777
                        (let ((__tmp270778
                               (let ((__tmp270784
                                      (let ((__tmp270785
                                             (let ()
                                               (declare (not safe))
                                               (cons 'unchecked-slot-ref
                                                     '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp270785)))
                                     (__tmp270779
                                      (let ((__tmp270780
                                             (let ((__tmp270781
                                                    (let ((__tmp270782
                                                           (let ((__tmp270783
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _self265167_
                             __slot270022
                             __t270020
                             '#f))))
                     (declare (not safe))
                     (cons __tmp270783 '()))))
              (declare (not safe))
              (cons '%#quote __tmp270782))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp270781 '()))))
                                        (declare (not safe))
                                        (cons _object265209_ __tmp270780))))
                                 (declare (not safe))
                                 (cons __tmp270784 __tmp270779))))
                          (declare (not safe))
                          (cons '%#call __tmp270778))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp270777 _stx265168_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd265175265189_)
                                  (let ()
                                    (declare (not safe))
                                    (_g265171265181_ _g265172265184_)))))
                          (let ()
                            (declare (not safe))
                            (_g265171265181_ _g265172265184_))))))
              (declare (not safe))
              (_g265170265219_ _args265169_))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!accessor::optimize-call
       gxc#!accessor::optimize-call::specialize))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!accessor::t
       'optimize-call
       gxc#!accessor::optimize-call
       '#f))
    (define gxc#!mutator::optimize-call
      (lambda (_self264972_ _stx264973_ _args264974_)
        (let* ((_g264976264990_
                (lambda (_g264977264987_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g264977264987_))))
               (_g264975265042_
                (lambda (_g264977264993_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g264977264993_))
                      (let ((_e264982264995_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g264977264993_))))
                        (let ((_hd264981264998_
                               (let ()
                                 (declare (not safe))
                                 (##car _e264982264995_)))
                              (_tl264980265000_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e264982264995_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl264980265000_))
                              (let ((_e264985265003_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl264980265000_))))
                                (let ((_hd264984265006_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e264985265003_)))
                                      (_tl264983265008_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e264985265003_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl264983265008_))
                                      ((lambda (_L265011_ _L265012_)
                                         (let* ((_klass265026_
                                                 (let ((__tmp270862
                                                        (##structure-ref
                                                         _self264972_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _stx264973_
                                                    __tmp270862)))
                                                (_field265028_
                                                 (let ((__tmp270863
                                                        (##structure-ref
                                                         _self264972_
                                                         '2
                                                         gxc#!mutator::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass265026_
                                                    __tmp270863)))
                                                (_object265030_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L265012_)))
                                                (_value265032_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L265011_))))
                                           (if (##structure-ref
                                                _klass265026_
                                                '8
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp270945
                                                      (let ((__tmp270955
                                                             (if (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _self264972_
                          '3
                          gxc#!mutator::t
                          '#f)
                         '%#struct-direct-set!
                         '%#struct-unchecked-set!))
                    (__tmp270946
                     (let ((__tmp270952
                            (let ((__tmp270953
                                   (let ((__tmp270954
                                          (##structure-ref
                                           _self264972_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp270954 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp270953)))
                           (__tmp270947
                            (let ((__tmp270950
                                   (let ((__tmp270951
                                          (let ()
                                            (declare (not safe))
                                            (cons _field265028_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp270951)))
                                  (__tmp270948
                                   (let ((__tmp270949
                                          (let ()
                                            (declare (not safe))
                                            (cons _value265032_ '()))))
                                     (declare (not safe))
                                     (cons _object265030_ __tmp270949))))
                              (declare (not safe))
                              (cons __tmp270950 __tmp270948))))
                       (declare (not safe))
                       (cons __tmp270952 __tmp270947))))
                (declare (not safe))
                (cons __tmp270955 __tmp270946))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp270945
                                                  _stx264973_))
                                               (if (##structure-ref
                                                    _klass265026_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp270934
                                                          (let ((__tmp270944
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##structure-ref
                              _self264972_
                              '3
                              gxc#!mutator::t
                              '#f)
                             '%#struct-set!
                             '%#struct-unchecked-set!))
                        (__tmp270935
                         (let ((__tmp270941
                                (let ((__tmp270942
                                       (let ((__tmp270943
                                              (##structure-ref
                                               _self264972_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp270943 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp270942)))
                               (__tmp270936
                                (let ((__tmp270939
                                       (let ((__tmp270940
                                              (let ()
                                                (declare (not safe))
                                                (cons _field265028_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp270940)))
                                      (__tmp270937
                                       (let ((__tmp270938
                                              (let ()
                                                (declare (not safe))
                                                (cons _value265032_ '()))))
                                         (declare (not safe))
                                         (cons _object265030_ __tmp270938))))
                                  (declare (not safe))
                                  (cons __tmp270939 __tmp270937))))
                           (declare (not safe))
                           (cons __tmp270941 __tmp270936))))
                    (declare (not safe))
                    (cons __tmp270944 __tmp270935))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp270934
                                                      _stx264973_))
                                                   (let ((_$e265035_
                                                          (let ((__tmp270864
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref
                          _self264972_
                          '2
                          gxc#!mutator::t
                          '#f)))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct _klass265026_ __tmp270864))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e265035_
                                                         ((lambda (_klass265038_)
                                                            (let ((__tmp270923
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp270933
                                  (if (##structure-ref
                                       _self264972_
                                       '3
                                       gxc#!mutator::t
                                       '#f)
                                      '%#struct-set!
                                      '%#struct-unchecked-set!))
                                 (__tmp270924
                                  (let ((__tmp270930
                                         (let ((__tmp270931
                                                (let ((__tmp270932
                                                       (##structure-ref
                                                        _self264972_
                                                        '1
                                                        gxc#!type::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp270932 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp270931)))
                                        (__tmp270925
                                         (let ((__tmp270928
                                                (let ((__tmp270929
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field265028_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp270929)))
                                               (__tmp270926
                                                (let ((__tmp270927
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _value265032_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons _object265030_
                                                        __tmp270927))))
                                           (declare (not safe))
                                           (cons __tmp270928 __tmp270926))))
                                    (declare (not safe))
                                    (cons __tmp270930 __tmp270925))))
                             (declare (not safe))
                             (cons __tmp270933 __tmp270924))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp270923 _stx264973_)))
                  _$e265035_)
                 (if (##structure-ref _self264972_ '3 gxc#!mutator::t '#f)
                     (let ((__tmp270875
                            (let* ((_$obj265040_
                                    (let ((__tmp270876 (gensym '__obj)))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp270876)))
                                   (__tmp270877
                                    (let ((__tmp270919
                                           (let ((__tmp270920
                                                  (let ((__tmp270922
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj265040_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp270921
                 (let () (declare (not safe)) (cons _object265030_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp270922
                                                          __tmp270921))))
                                             (declare (not safe))
                                             (cons __tmp270920 '())))
                                          (__tmp270878
                                           (let ((__tmp270879
                                                  (let ((__tmp270880
                                                         (let ((__tmp270911
                                                                (let ((__tmp270912
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp270916
                                      (let ((__tmp270917
                                             (let ((__tmp270918
                                                    (##structure-ref
                                                     _klass265026_
                                                     '1
                                                     gxc#!type::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp270918 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp270917)))
                                     (__tmp270913
                                      (let ((__tmp270914
                                             (let ((__tmp270915
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj265040_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp270915))))
                                        (declare (not safe))
                                        (cons __tmp270914 '()))))
                                 (declare (not safe))
                                 (cons __tmp270916 __tmp270913))))
                          (declare (not safe))
                          (cons '%#struct-direct-instance? __tmp270912)))
                       (__tmp270881
                        (let ((__tmp270899
                               (let ((__tmp270900
                                      (let ((__tmp270908
                                             (let ((__tmp270909
                                                    (let ((__tmp270910
                                                           (##structure-ref
                                                            _self264972_
                                                            '1
                                                            gxc#!type::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (cons __tmp270910 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp270909)))
                                            (__tmp270901
                                             (let ((__tmp270906
                                                    (let ((__tmp270907
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field265028_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp270907)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp270902
                                                    (let ((__tmp270904
                                                           (let ((__tmp270905
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj265040_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp270905)))
                  (__tmp270903
                   (let () (declare (not safe)) (cons _value265032_ '()))))
              (declare (not safe))
              (cons __tmp270904 __tmp270903))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp270906
                                                     __tmp270902))))
                                        (declare (not safe))
                                        (cons __tmp270908 __tmp270901))))
                                 (declare (not safe))
                                 (cons '%#struct-unchecked-set! __tmp270900)))
                              (__tmp270882
                               (let ((__tmp270883
                                      (let ((__tmp270884
                                             (let ((__tmp270897
                                                    (let ((__tmp270898
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp270898)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp270885
                                                    (let ((__tmp270894
                                                           (let ((__tmp270895
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp270896
                                 (##structure-ref
                                  _self264972_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (cons __tmp270896 '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp270895)))
                  (__tmp270886
                   (let ((__tmp270892
                          (let ((__tmp270893
                                 (let ()
                                   (declare (not safe))
                                   (cons _$obj265040_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp270893)))
                         (__tmp270887
                          (let ((__tmp270889
                                 (let ((__tmp270890
                                        (let ((__tmp270891
                                               (##structure-ref
                                                _self264972_
                                                '2
                                                gxc#!mutator::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp270891 '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp270890)))
                                (__tmp270888
                                 (let ()
                                   (declare (not safe))
                                   (cons _value265032_ '()))))
                            (declare (not safe))
                            (cons __tmp270889 __tmp270888))))
                     (declare (not safe))
                     (cons __tmp270892 __tmp270887))))
              (declare (not safe))
              (cons __tmp270894 __tmp270886))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp270897
                                                     __tmp270885))))
                                        (declare (not safe))
                                        (cons '%#call __tmp270884))))
                                 (declare (not safe))
                                 (cons __tmp270883 '()))))
                          (declare (not safe))
                          (cons __tmp270899 __tmp270882))))
                   (declare (not safe))
                   (cons __tmp270911 __tmp270881))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#if __tmp270880))))
                                             (declare (not safe))
                                             (cons __tmp270879 '()))))
                                      (declare (not safe))
                                      (cons __tmp270919 __tmp270878))))
                              (declare (not safe))
                              (cons '%#let-values __tmp270877))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp270875 _stx264973_))
                     (let ((__tmp270865
                            (let ((__tmp270866
                                   (let ((__tmp270873
                                          (let ((__tmp270874
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'unchecked-slot-set!
                                                         '()))))
                                            (declare (not safe))
                                            (cons '%#ref __tmp270874)))
                                         (__tmp270867
                                          (let ((__tmp270868
                                                 (let ((__tmp270870
                                                        (let ((__tmp270871
                                                               (let ((__tmp270872
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##structure-ref
                               _self264972_
                               '2
                               gxc#!mutator::t
                               '#f)))
                         (declare (not safe))
                         (cons __tmp270872 '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp270871)))
               (__tmp270869
                (let () (declare (not safe)) (cons _value265032_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp270870
                                                         __tmp270869))))
                                            (declare (not safe))
                                            (cons _object265030_
                                                  __tmp270868))))
                                     (declare (not safe))
                                     (cons __tmp270873 __tmp270867))))
                              (declare (not safe))
                              (cons '%#call __tmp270866))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp270865 _stx264973_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd264984265006_
                                       _hd264981264998_)
                                      (let ()
                                        (declare (not safe))
                                        (_g264976264990_ _g264977264993_)))))
                              (let ()
                                (declare (not safe))
                                (_g264976264990_ _g264977264993_)))))
                      (let ()
                        (declare (not safe))
                        (_g264976264990_ _g264977264993_))))))
          (declare (not safe))
          (_g264975265042_ _args264974_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__t270027)
        (let ((__id270028
               (let ((__tmp270031
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t270027 'id))))
                 (if __tmp270031 __tmp270031 (error '"Unknown slot" 'id))))
              (__slot270029
               (let ((__tmp270032
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t270027 'slot))))
                 (if __tmp270032 __tmp270032 (error '"Unknown slot" 'slot))))
              (__checked?270030
               (let ((__tmp270033
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t270027 'checked?))))
                 (if __tmp270033
                     __tmp270033
                     (error '"Unknown slot" 'checked?)))))
          (lambda (_self264972_ _stx264973_ _args264974_)
            (let* ((_g264976264990_
                    (lambda (_g264977264987_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g264977264987_))))
                   (_g264975265042_
                    (lambda (_g264977264993_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g264977264993_))
                          (let ((_e264982264995_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g264977264993_))))
                            (let ((_hd264981264998_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e264982264995_)))
                                  (_tl264980265000_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e264982264995_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl264980265000_))
                                  (let ((_e264985265003_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl264980265000_))))
                                    (let ((_hd264984265006_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e264985265003_)))
                                          (_tl264983265008_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e264985265003_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl264983265008_))
                                          ((lambda (_L265011_ _L265012_)
                                             (let* ((_klass265026_
                                                     (let ((__tmp270956
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self264972_
                                                               __id270028
                                                               __t270027
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _stx264973_
                                                        __tmp270956)))
                                                    (_field265028_
                                                     (let ((__tmp270957
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self264972_
                                                               __slot270029
                                                               __t270027
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass265026_
                                                        __tmp270957)))
                                                    (_object265030_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L265012_)))
                                                    (_value265032_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L265011_))))
                                               (if (##structure-ref
                                                    _klass265026_
                                                    '8
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp271039
                                                          (let ((__tmp271049
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self264972_
                                __checked?270030
                                __t270027
                                '#f))
                             '%#struct-direct-set!
                             '%#struct-unchecked-set!))
                        (__tmp271040
                         (let ((__tmp271046
                                (let ((__tmp271047
                                       (let ((__tmp271048
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _self264972_
                                                 __id270028
                                                 __t270027
                                                 '#f))))
                                         (declare (not safe))
                                         (cons __tmp271048 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp271047)))
                               (__tmp271041
                                (let ((__tmp271044
                                       (let ((__tmp271045
                                              (let ()
                                                (declare (not safe))
                                                (cons _field265028_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp271045)))
                                      (__tmp271042
                                       (let ((__tmp271043
                                              (let ()
                                                (declare (not safe))
                                                (cons _value265032_ '()))))
                                         (declare (not safe))
                                         (cons _object265030_ __tmp271043))))
                                  (declare (not safe))
                                  (cons __tmp271044 __tmp271042))))
                           (declare (not safe))
                           (cons __tmp271046 __tmp271041))))
                    (declare (not safe))
                    (cons __tmp271049 __tmp271040))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp271039
                                                      _stx264973_))
                                                   (if (##structure-ref
                                                        _klass265026_
                                                        '7
                                                        gxc#!class::t
                                                        '#f)
                                                       (let ((__tmp271028
                                                              (let ((__tmp271038
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _self264972_
                                    __checked?270030
                                    __t270027
                                    '#f))
                                 '%#struct-set!
                                 '%#struct-unchecked-set!))
                            (__tmp271029
                             (let ((__tmp271035
                                    (let ((__tmp271036
                                           (let ((__tmp271037
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self264972_
                                                     __id270028
                                                     __t270027
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp271037 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp271036)))
                                   (__tmp271030
                                    (let ((__tmp271033
                                           (let ((__tmp271034
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _field265028_ '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp271034)))
                                          (__tmp271031
                                           (let ((__tmp271032
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _value265032_ '()))))
                                             (declare (not safe))
                                             (cons _object265030_
                                                   __tmp271032))))
                                      (declare (not safe))
                                      (cons __tmp271033 __tmp271031))))
                               (declare (not safe))
                               (cons __tmp271035 __tmp271030))))
                        (declare (not safe))
                        (cons __tmp271038 __tmp271029))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp271028 _stx264973_))
               (let ((_$e265035_
                      (let ((__tmp270958
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self264972_
                                __slot270029
                                __t270027
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _klass265026_
                         __tmp270958))))
                 (if _$e265035_
                     ((lambda (_klass265038_)
                        (let ((__tmp271017
                               (let ((__tmp271027
                                      (if (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self264972_
                                             __checked?270030
                                             __t270027
                                             '#f))
                                          '%#struct-set!
                                          '%#struct-unchecked-set!))
                                     (__tmp271018
                                      (let ((__tmp271024
                                             (let ((__tmp271025
                                                    (let ((__tmp271026
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _self264972_
                                                              __id270028
                                                              __t270027
                                                              '#f))))
                                                      (declare (not safe))
                                                      (cons __tmp271026 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp271025)))
                                            (__tmp271019
                                             (let ((__tmp271022
                                                    (let ((__tmp271023
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field265028_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp271023)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp271020
                                                    (let ((__tmp271021
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _value265032_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _object265030_ __tmp271021))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp271022
                                                     __tmp271020))))
                                        (declare (not safe))
                                        (cons __tmp271024 __tmp271019))))
                                 (declare (not safe))
                                 (cons __tmp271027 __tmp271018))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp271017 _stx264973_)))
                      _$e265035_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self264972_
                            __checked?270030
                            __t270027
                            '#f))
                         (let ((__tmp270969
                                (let* ((_$obj265040_
                                        (let ((__tmp270970 (gensym '__obj)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp270970)))
                                       (__tmp270971
                                        (let ((__tmp271013
                                               (let ((__tmp271014
                                                      (let ((__tmp271016
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj265040_ '())))
                    (__tmp271015
                     (let () (declare (not safe)) (cons _object265030_ '()))))
                (declare (not safe))
                (cons __tmp271016 __tmp271015))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp271014 '())))
                                              (__tmp270972
                                               (let ((__tmp270973
                                                      (let ((__tmp270974
                                                             (let ((__tmp271005
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp271006
                                   (let ((__tmp271010
                                          (let ((__tmp271011
                                                 (let ((__tmp271012
                                                        (##structure-ref
                                                         _klass265026_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp271012 '()))))
                                            (declare (not safe))
                                            (cons '%#quote __tmp271011)))
                                         (__tmp271007
                                          (let ((__tmp271008
                                                 (let ((__tmp271009
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj265040_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp271009))))
                                            (declare (not safe))
                                            (cons __tmp271008 '()))))
                                     (declare (not safe))
                                     (cons __tmp271010 __tmp271007))))
                              (declare (not safe))
                              (cons '%#struct-direct-instance? __tmp271006)))
                           (__tmp270975
                            (let ((__tmp270993
                                   (let ((__tmp270994
                                          (let ((__tmp271002
                                                 (let ((__tmp271003
                                                        (let ((__tmp271004
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _self264972_
                          __id270028
                          __t270027
                          '#f))))
                  (declare (not safe))
                  (cons __tmp271004 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp271003)))
                                                (__tmp270995
                                                 (let ((__tmp271000
                                                        (let ((__tmp271001
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _field265028_ '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp271001)))
               (__tmp270996
                (let ((__tmp270998
                       (let ((__tmp270999
                              (let ()
                                (declare (not safe))
                                (cons _$obj265040_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp270999)))
                      (__tmp270997
                       (let () (declare (not safe)) (cons _value265032_ '()))))
                  (declare (not safe))
                  (cons __tmp270998 __tmp270997))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp271000
                                                         __tmp270996))))
                                            (declare (not safe))
                                            (cons __tmp271002 __tmp270995))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp270994)))
                                  (__tmp270976
                                   (let ((__tmp270977
                                          (let ((__tmp270978
                                                 (let ((__tmp270991
                                                        (let ((__tmp270992
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons 'class-slot-set! '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp270992)))
               (__tmp270979
                (let ((__tmp270988
                       (let ((__tmp270989
                              (let ((__tmp270990
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _self264972_
                                        __id270028
                                        __t270027
                                        '#f))))
                                (declare (not safe))
                                (cons __tmp270990 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp270989)))
                      (__tmp270980
                       (let ((__tmp270986
                              (let ((__tmp270987
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj265040_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp270987)))
                             (__tmp270981
                              (let ((__tmp270983
                                     (let ((__tmp270984
                                            (let ((__tmp270985
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self264972_
                                                      __slot270029
                                                      __t270027
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp270985 '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp270984)))
                                    (__tmp270982
                                     (let ()
                                       (declare (not safe))
                                       (cons _value265032_ '()))))
                                (declare (not safe))
                                (cons __tmp270983 __tmp270982))))
                         (declare (not safe))
                         (cons __tmp270986 __tmp270981))))
                  (declare (not safe))
                  (cons __tmp270988 __tmp270980))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp270991
                                                         __tmp270979))))
                                            (declare (not safe))
                                            (cons '%#call __tmp270978))))
                                     (declare (not safe))
                                     (cons __tmp270977 '()))))
                              (declare (not safe))
                              (cons __tmp270993 __tmp270976))))
                       (declare (not safe))
                       (cons __tmp271005 __tmp270975))))
                (declare (not safe))
                (cons '%#if __tmp270974))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp270973 '()))))
                                          (declare (not safe))
                                          (cons __tmp271013 __tmp270972))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp270971))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp270969 _stx264973_))
                         (let ((__tmp270959
                                (let ((__tmp270960
                                       (let ((__tmp270967
                                              (let ((__tmp270968
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons 'unchecked-slot-set!
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#ref __tmp270968)))
                                             (__tmp270961
                                              (let ((__tmp270962
                                                     (let ((__tmp270964
                                                            (let ((__tmp270965
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp270966
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self264972_
                                     __slot270029
                                     __t270027
                                     '#f))))
                             (declare (not safe))
                             (cons __tmp270966 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp270965)))
                   (__tmp270963
                    (let () (declare (not safe)) (cons _value265032_ '()))))
               (declare (not safe))
               (cons __tmp270964 __tmp270963))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _object265030_
                                                      __tmp270962))))
                                         (declare (not safe))
                                         (cons __tmp270967 __tmp270961))))
                                  (declare (not safe))
                                  (cons '%#call __tmp270960))))
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp270959
                            _stx264973_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _hd264984265006_
                                           _hd264981264998_)
                                          (let ()
                                            (declare (not safe))
                                            (_g264976264990_
                                             _g264977264993_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g264976264990_ _g264977264993_)))))
                          (let ()
                            (declare (not safe))
                            (_g264976264990_ _g264977264993_))))))
              (declare (not safe))
              (_g264975265042_ _args264974_))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!mutator::optimize-call
       gxc#!mutator::optimize-call::specialize))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!mutator::t
       'optimize-call
       gxc#!mutator::optimize-call
       '#f))
    (define gxc#!lambda::optimize-call
      (lambda (_self264806_ _stx264807_ _args264808_)
        (let* ((_self264809264818_ _self264806_)
               (_E264811264822_
                (lambda () (error '"No clause matching" _self264809264818_)))
               (_K264812264829_
                (lambda (_inline264825_ _dispatch264826_ _arity264827_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self264806_ _args264808_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx264807_
                         _arity264827_)))
                  (if _inline264825_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp271055
                               (let ((__tmp271056
                                      (_inline264825_ _stx264807_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp271056
                                  _stx264807_))))
                          (declare (not safe))
                          (gxc#compile-e__0 __tmp271055)))
                      (if _dispatch264826_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch264826_))
                            (let ((__tmp271050
                                   (let ((__tmp271051
                                          (let ((__tmp271052
                                                 (let ((__tmp271053
                                                        (let ((__tmp271054
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch264826_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp271054))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp271053
                                                         _args264808_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp271052))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp271051
                                      _stx264807_))))
                              (declare (not safe))
                              (gxc#compile-e__0 __tmp271050)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _stx264807_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self264809264818_ 'gxc#!lambda::t))
              (let* ((_e264813264832_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self264809264818_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e264814264835_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self264809264818_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity264838_ _e264814264835_)
                     (_e264815264840_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self264809264818_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch264843_ _e264815264840_)
                     (_e264816264845_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self264809264818_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline264848_ _e264816264845_))
                (declare (not safe))
                (_K264812264829_
                 _inline264848_
                 _dispatch264843_
                 _arity264838_))
              (let () (declare (not safe)) (_E264811264822_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self264645_ _stx264646_ _args264647_)
        (let* ((_self264648264655_ _self264645_)
               (_E264650264659_
                (lambda () (error '"No clause matching" _self264648264655_)))
               (_K264651264673_
                (lambda (_clauses264662_)
                  (let ((_$e264668_
                         (let ((__tmp271057
                                (lambda (_g264663264665_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g264663264665_
                                     _args264647_)))))
                           (declare (not safe))
                           (find __tmp271057 _clauses264662_))))
                    (if _$e264668_
                        ((lambda (_clause264671_)
                           (let ((__method270302
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause264671_
                                     'optimize-call))))
                             (if __method270302
                                 (__method270302
                                  _clause264671_
                                  _stx264646_
                                  _args264647_)
                                 (error '"Missing method"
                                        _clause264671_
                                        'optimize-call))))
                         _$e264668_)
                        (let ((__tmp271058
                               (map gxc#!lambda-arity _clauses264662_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx264646_
                           __tmp271058)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self264648264655_
                 'gxc#!case-lambda::t))
              (let* ((_e264652264676_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self264648264655_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e264653264679_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self264648264655_
                         '2
                         gxc#!case-lambda::t
                         '#f)))
                     (_clauses264682_ _e264653264679_))
                (declare (not safe))
                (_K264651264673_ _clauses264682_))
              (let () (declare (not safe)) (_E264650264659_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self264459_ _args264460_)
        (let* ((_self264461264468_ _self264459_)
               (_E264463264472_
                (lambda () (error '"No clause matching" _self264461264468_)))
               (_K264464264512_
                (lambda (_arity264475_)
                  (let* ((_arity264476264485_ _arity264475_)
                         (_E264479264489_
                          (lambda ()
                            (error '"No clause matching"
                                   _arity264476264485_))))
                    (let ((_K264483264509_
                           (lambda ()
                             (fx= (length _args264460_) _arity264475_)))
                          (_K264480264495_
                           (lambda (_arity264493_)
                             (fx>= (length _args264460_) _arity264493_))))
                      (let ((_try-match264478264505_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity264476264485_))
                                   (let ((_tl264482264500_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity264476264485_)))
                                         (_hd264481264498_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity264476264485_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl264482264500_))
                                         (let ((_arity264503_
                                                _hd264481264498_))
                                           (declare (not safe))
                                           (_K264480264495_ _arity264503_))
                                         (let ()
                                           (declare (not safe))
                                           (_E264479264489_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E264479264489_))))))
                        (if (fixnum? _arity264476264485_)
                            (let () (declare (not safe)) (_K264483264509_))
                            (let ()
                              (declare (not safe))
                              (_try-match264478264505_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self264461264468_ 'gxc#!lambda::t))
              (let* ((_e264465264515_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self264461264468_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e264466264518_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self264461264468_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity264521_ _e264466264518_))
                (declare (not safe))
                (_K264464264512_ _arity264521_))
              (let () (declare (not safe)) (_E264463264472_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self264344_ _stx264345_ _args264346_)
        (let* ((_self264347264355_ _self264344_)
               (_E264349264359_
                (lambda () (error '"No clause matching" _self264347264355_)))
               (_K264350264443_
                (lambda (_dispatch264362_ _table264363_)
                  (let* ((_g264364264373_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch264362_)))
                         (_else264366264381_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch264362_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _stx264345_))))
                         (_K264368264427_
                          (lambda (_main264384_ _keys264385_)
                            (let ((_g271059_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx264345_
                                      _args264346_))))
                              (begin
                                (let ((_g271060_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g271059_)
                                             (##vector-length _g271059_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g271060_ 2)))
                                      (error "Context expects 2 values"
                                             _g271060_)))
                                (let ((_pargs264387_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g271059_ 0)))
                                      (_kwargs264388_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g271059_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main264384_))
                                    (if _table264363_
                                        (let ((_xargs264395_
                                               (map (lambda (_key264390_)
                                                      (let ((_$e264392_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _key264390_ _kwargs264388_))))
                (if _$e264392_ (values _$e264392_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys264385_)))
                                          (for-each
                                           (lambda (_kw264397_)
                                             (if (memq (car _kw264397_)
                                                       _keys264385_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx264345_
                                                    _keys264385_
                                                    _kw264397_))))
                                           _kwargs264388_)
                                          (let ((__tmp271112
                                                 (let ((__tmp271113
                                                        (let ((__tmp271114
                                                               (let ((__tmp271119
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp271120
                                     (let ()
                                       (declare (not safe))
                                       (cons _main264384_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp271120)))
                             (__tmp271115
                              (let ((__tmp271117
                                     (let ((__tmp271118
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp271118)))
                                    (__tmp271116
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs264387_
                                               _xargs264395_))))
                                (declare (not safe))
                                (cons __tmp271117 __tmp271116))))
                         (declare (not safe))
                         (cons __tmp271119 __tmp271115))))
                  (declare (not safe))
                  (cons '%#call __tmp271114))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp271113
                                                    _stx264345_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0 __tmp271112)))
                                        (let* ((_kwt264399_
                                                (let ((__tmp271061
                                                       (gensym '__kwt)))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp271061)))
                                               (_kwvars264402_
                                                (map (lambda (_g271062_)
                                                       (let ((__tmp271063
                                                              (gensym '__kw)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp271063)))
                                                     _kwargs264388_))
                                               (_kwbind264407_
                                                (map (lambda (_kw264404_
                                                              _kwvar264405_)
                                                       (let ((__tmp271066
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar264405_ '())))
                     (__tmp271064
                      (let ((__tmp271065 (cdr _kw264404_)))
                        (declare (not safe))
                        (cons __tmp271065 '()))))
                 (declare (not safe))
                 (cons __tmp271066 __tmp271064)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs264388_
                                                     _kwvars264402_))
                                               (_kwset264412_
                                                (map (lambda (_kw264409_
                                                              _kwvar264410_)
                                                       (let ((__tmp271067
                                                              (let ((__tmp271068
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp271076
                                    (let ((__tmp271077
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt264399_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp271077)))
                                   (__tmp271069
                                    (let ((__tmp271073
                                           (let ((__tmp271074
                                                  (let ((__tmp271075
                                                         (car _kw264409_)))
                                                    (declare (not safe))
                                                    (cons __tmp271075 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp271074)))
                                          (__tmp271070
                                           (let ((__tmp271071
                                                  (let ((__tmp271072
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar264410_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp271072))))
                                             (declare (not safe))
                                             (cons __tmp271071 '()))))
                                      (declare (not safe))
                                      (cons __tmp271073 __tmp271070))))
                               (declare (not safe))
                               (cons __tmp271076 __tmp271069))))
                        (declare (not safe))
                        (cons '(%#ref hash-put!) __tmp271068))))
                 (declare (not safe))
                 (cons '%#call __tmp271067)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs264388_
                                                     _kwvars264402_))
                                               (_xkwargs264417_
                                                (map (lambda (_kw264414_
                                                              _kwvar264415_)
                                                       (let ((__tmp271080
                                                              (car _kw264414_))
                                                             (__tmp271078
                                                              (let ((__tmp271079
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar264415_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp271079))))
                 (declare (not safe))
                 (cons __tmp271080 __tmp271078)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs264388_
                                                     _kwvars264402_))
                                               (_xargs264424_
                                                (map (lambda (_key264419_)
                                                       (let ((_$e264421_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq _key264419_ _xkwargs264417_))))
                 (if _$e264421_ (values _$e264421_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys264385_)))
                                          (let ((__tmp271081
                                                 (let ((__tmp271082
                                                        (let ((__tmp271083
                                                               (let ((__tmp271084
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp271085
                                     (let ((__tmp271086
                                            (let ((__tmp271100
                                                   (let ((__tmp271101
                                                          (let ((__tmp271111
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt264399_ '())))
                        (__tmp271102
                         (let ((__tmp271103
                                (let ((__tmp271104
                                       (let ((__tmp271105
                                              (let ((__tmp271106
                                                     (let ((__tmp271107
                                                            (let ((__tmp271108
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp271109
                                  (let ((__tmp271110 (length _kwargs264388_)))
                                    (declare (not safe))
                                    (cons __tmp271110 '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp271109))))
                      (declare (not safe))
                      (cons __tmp271108 '()))))
               (declare (not safe))
               (cons '(%#quote size:) __tmp271107))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-hash-table-eq)
                                                      __tmp271106))))
                                         (declare (not safe))
                                         (cons '%#call __tmp271105))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp271104
                                   _stx264345_))))
                           (declare (not safe))
                           (cons __tmp271103 '()))))
                    (declare (not safe))
                    (cons __tmp271111 __tmp271102))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp271101 '())))
                                                  (__tmp271087
                                                   (let ((__tmp271088
                                                          (let ((__tmp271089
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp271090
                                (let ((__tmp271091
                                       (let ((__tmp271092
                                              (let ((__tmp271093
                                                     (let ((__tmp271098
                                                            (let ((__tmp271099
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main264384_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp271099)))
                   (__tmp271094
                    (let ((__tmp271096
                           (let ((__tmp271097
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt264399_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp271097)))
                          (__tmp271095
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs264387_ _xargs264424_))))
                      (declare (not safe))
                      (cons __tmp271096 __tmp271095))))
               (declare (not safe))
               (cons __tmp271098 __tmp271094))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp271093))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp271092
                                          _stx264345_))))
                                  (declare (not safe))
                                  (cons __tmp271091 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp271090 _kwset264412_))))
                    (declare (not safe))
                    (cons '%#begin __tmp271089))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp271088 '()))))
                                              (declare (not safe))
                                              (cons __tmp271100 __tmp271087))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp271086))))
                                (declare (not safe))
                                (cons __tmp271085 '()))))
                         (declare (not safe))
                         (cons _kwbind264407_ __tmp271084))))
                  (declare (not safe))
                  (cons '%#let-values __tmp271083))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp271082
                                                    _stx264345_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0
                                             __tmp271081)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g264364264373_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e264369264430_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g264364264373_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                               (_e264370264433_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g264364264373_
                                   '2
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_keys264436_ _e264370264433_)
                               (_e264371264438_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g264364264373_
                                   '3
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_main264441_ _e264371264438_))
                          (declare (not safe))
                          (_K264368264427_ _main264441_ _keys264436_))
                        (let () (declare (not safe)) (_else264366264381_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self264347264355_
                 'gxc#!kw-lambda::t))
              (let* ((_e264351264446_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self264347264355_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e264352264449_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self264347264355_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table264452_ _e264352264449_)
                     (_e264353264454_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self264347264355_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch264457_ _e264353264454_))
                (declare (not safe))
                (_K264350264443_ _dispatch264457_ _table264452_))
              (let () (declare (not safe)) (_E264349264359_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx263957_ _args263958_)
        (let _lp263960_ ((_rest263962_ _args263958_)
                         (_pargs263963_ '())
                         (_kwargs263964_ '()))
          (let* ((___stx270184270185_ _rest263962_)
                 (_g263970264022_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx270184270185_)))))
            (let ((___kont270186270187_
                   (lambda (_L264201_ _L264202_)
                     (let ((__tmp271121
                            (let ()
                              (declare (not safe))
                              (cons _L264202_ _pargs263963_))))
                       (declare (not safe))
                       (_lp263960_ _L264201_ __tmp271121 _kwargs263964_))))
                  (___kont270188270189_
                   (lambda (_L264147_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L264147_ _pargs263963_))
                             (reverse _kwargs263964_))))
                  (___kont270190270191_
                   (lambda (_L264094_ _L264095_ _L264096_)
                     (let ((_kw264113_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _L264096_))))
                       (if (assq _kw264113_ _kwargs263964_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx263957_
                              _kw264113_))
                           (let ((__tmp271122
                                  (let ((__tmp271123
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw264113_ _L264095_))))
                                    (declare (not safe))
                                    (cons __tmp271123 _kwargs263964_))))
                             (declare (not safe))
                             (_lp263960_
                              _L264094_
                              _pargs263963_
                              __tmp271122))))))
                  (___kont270192270193_
                   (lambda (_L264042_ _L264043_)
                     (let ((__tmp271124
                            (let ()
                              (declare (not safe))
                              (cons _L264043_ _pargs263963_))))
                       (declare (not safe))
                       (_lp263960_ _L264042_ __tmp271124 _kwargs263964_))))
                  (___kont270194270195_
                   (lambda ()
                     (values (reverse _pargs263963_)
                             (reverse _kwargs263964_)))))
              (let* ((_g263969264029_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx270184270185_))
                            (___kont270194270195_)
                            (let () (declare (not safe)) (_g263970264022_)))))
                     (___match270291270292_
                      (lambda (_e264003264062_
                               _hd264002264065_
                               _tl264001264067_
                               _e264006264070_
                               _hd264005264073_
                               _tl264004264075_
                               _e264009264078_
                               _hd264008264081_
                               _tl264007264083_
                               _e264012264086_
                               _hd264011264089_
                               _tl264010264091_)
                        (let ((_L264094_ _tl264010264091_)
                              (_L264095_ _hd264011264089_)
                              (_L264096_ _hd264008264081_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L264096_))
                              (___kont270190270191_
                               _L264094_
                               _L264095_
                               _L264096_)
                              (___kont270192270193_
                               _tl264001264067_
                               _hd264002264065_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx270184270185_))
                    (let ((_e263976264166_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx270184270185_))))
                      (let ((_tl263974264171_
                             (let ()
                               (declare (not safe))
                               (##cdr _e263976264166_)))
                            (_hd263975264169_
                             (let ()
                               (declare (not safe))
                               (##car _e263976264166_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd263975264169_))
                            (let ((_e263979264174_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd263975264169_))))
                              (let ((_tl263977264179_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e263979264174_)))
                                    (_hd263978264177_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e263979264174_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd263978264177_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd263978264177_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl263977264179_))
                                            (let ((_e263982264182_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl263977264179_))))
                                              (let ((_tl263980264187_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e263982264182_)))
                                                    (_hd263981264185_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e263982264182_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd263981264185_))
                                                    (let ((_e263983264190_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd263981264185_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e263983264190_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl263980264187_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl263974264171_))
                          (let ((_e263986264193_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl263974264171_))))
                            (let ((_tl263984264198_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e263986264193_)))
                                  (_hd263985264196_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e263986264193_))))
                              (___kont270186270187_
                               _tl263984264198_
                               _hd263985264196_)))
                          (___kont270192270193_
                           _tl263974264171_
                           _hd263975264169_))
                      (___kont270192270193_ _tl263974264171_ _hd263975264169_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e263983264190_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl263980264187_))
                          (___kont270188270189_ _tl263974264171_)
                          (___kont270192270193_
                           _tl263974264171_
                           _hd263975264169_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl263980264187_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl263974264171_))
                              (let ((_e264012264086_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl263974264171_))))
                                (let ((_tl264010264091_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e264012264086_)))
                                      (_hd264011264089_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e264012264086_))))
                                  (___match270291270292_
                                   _e263976264166_
                                   _hd263975264169_
                                   _tl263974264171_
                                   _e263979264174_
                                   _hd263978264177_
                                   _tl263977264179_
                                   _e263982264182_
                                   _hd263981264185_
                                   _tl263980264187_
                                   _e264012264086_
                                   _hd264011264089_
                                   _tl264010264091_)))
                              (___kont270192270193_
                               _tl263974264171_
                               _hd263975264169_))
                          (___kont270192270193_
                           _tl263974264171_
                           _hd263975264169_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl263980264187_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl263974264171_))
                                                            (let ((_e264012264086_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl263974264171_))))
                      (let ((_tl264010264091_
                             (let ()
                               (declare (not safe))
                               (##cdr _e264012264086_)))
                            (_hd264011264089_
                             (let ()
                               (declare (not safe))
                               (##car _e264012264086_))))
                        (___match270291270292_
                         _e263976264166_
                         _hd263975264169_
                         _tl263974264171_
                         _e263979264174_
                         _hd263978264177_
                         _tl263977264179_
                         _e263982264182_
                         _hd263981264185_
                         _tl263980264187_
                         _e264012264086_
                         _hd264011264089_
                         _tl264010264091_)))
                    (___kont270192270193_ _tl263974264171_ _hd263975264169_))
                (___kont270192270193_ _tl263974264171_ _hd263975264169_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont270192270193_
                                             _tl263974264171_
                                             _hd263975264169_))
                                        (___kont270192270193_
                                         _tl263974264171_
                                         _hd263975264169_))
                                    (___kont270192270193_
                                     _tl263974264171_
                                     _hd263975264169_))))
                            (___kont270192270193_
                             _tl263974264171_
                             _hd263975264169_))))
                    (let () (declare (not safe)) (_g263969264029_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self263953_ _stx263954_ _args263955_)
        (let () (declare (not safe)) (gxc#xform-call% _stx263954_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
