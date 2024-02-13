(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1707840762)
  (begin
    (define gxc#&optimize-call
      (make-promise
       (lambda ()
         (let ((_tbl278666_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp283525 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-copy! _tbl278666_ __tmp283525))
           (let ()
             (declare (not safe))
             (table-set! _tbl278666_ '%#call gxc#optimize-call%))
           _tbl278666_))))
    (define gxc#apply-optimize-call
      (lambda (_stx278649_ . _args278651_)
        (let ((__tmp283527
               (lambda ()
                 (declare (not safe))
                 (if (null? _args278651_)
                     (gxc#compile-e__0 _stx278649_)
                     (let ((_arg1278656_ (car _args278651_))
                           (_rest278658_ (cdr _args278651_)))
                       (if (null? _rest278658_)
                           (gxc#compile-e__1 _stx278649_ _arg1278656_)
                           (let ((_arg2278661_ (car _rest278658_))
                                 (_rest278663_ (cdr _rest278658_)))
                             (if (null? _rest278663_)
                                 (gxc#compile-e__2
                                  _stx278649_
                                  _arg1278656_
                                  _arg2278661_)
                                 (apply gxc#compile-e
                                        _stx278649_
                                        _arg1278656_
                                        _arg2278661_
                                        _rest278663_))))))))
              (__tmp283526 (force gxc#&optimize-call)))
          (declare (not safe))
          (call-with-parameters
           __tmp283527
           gxc#current-compile-methods
           __tmp283526))))
    (define gxc#optimize-call%
      (lambda (_stx278504_)
        (let* ((___stx283275283276_ _stx278504_)
               (_g278507278527_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx283275283276_)))))
          (let ((___kont283277283278_
                 (lambda (_L278571_ _L278572_)
                   (let* ((_rator-id278590_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L278572_)))
                          (_rator-type278592_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id278590_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type278592_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp283528
                                  (##structure-ref
                                   _rator-type278592_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id278590_
                              '" => "
                              _rator-type278592_
                              '" "
                              __tmp283528))
                           (let ((_optimized278595_
                                  (let ((__method283523
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type278592_
                                            'optimize-call))))
                                    (if __method283523
                                        (__method283523
                                         _rator-type278592_
                                         _stx278504_
                                         _L278571_)
                                        (error '"Missing method"
                                               _rator-type278592_
                                               'optimize-call)))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type278592_))
                                 _optimized278595_
                                 (let* ((___stx283257283258_ _optimized278595_)
                                        (_g278598278608_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx283257283258_)))))
                                   (let ((___kont283259283260_
                                          (lambda (_L278628_)
                                            (let ((__tmp283529
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L278628_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp283529
                                               _stx278504_))))
                                         (___kont283261283262_
                                          (lambda () _optimized278595_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx283257283258_))
                                         (let ((_e278603278620_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx283257283258_))))
                                           (let ((_tl278601278625_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e278603278620_)))
                                                 (_hd278602278623_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e278603278620_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd278602278623_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd278602278623_))
                                                     (___kont283259283260_
                                                      _tl278601278625_)
                                                     (___kont283261283262_))
                                                 (___kont283261283262_))))
                                         (___kont283261283262_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type278592_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx278504_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _stx278504_
                                _rator-type278592_)))))))
                (___kont283279283280_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _stx278504_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx283275283276_))
                (let ((_e278513278539_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx283275283276_))))
                  (let ((_tl278511278544_
                         (let () (declare (not safe)) (##cdr _e278513278539_)))
                        (_hd278512278542_
                         (let ()
                           (declare (not safe))
                           (##car _e278513278539_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl278511278544_))
                        (let ((_e278516278547_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl278511278544_))))
                          (let ((_tl278514278552_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e278516278547_)))
                                (_hd278515278550_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e278516278547_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd278515278550_))
                                (let ((_e278519278555_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd278515278550_))))
                                  (let ((_tl278517278560_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e278519278555_)))
                                        (_hd278518278558_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e278519278555_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd278518278558_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd278518278558_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl278517278560_))
                                                (let ((_e278522278563_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl278517278560_))))
                                                  (let ((_tl278520278568_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e278522278563_)))
                                                        (_hd278521278566_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e278522278563_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl278520278568_))
                                                        (___kont283277283278_
                                                         _tl278514278552_
                                                         _hd278521278566_)
                                                        (___kont283279283280_))))
                                                (___kont283279283280_))
                                            (___kont283279283280_))
                                        (___kont283279283280_))))
                                (___kont283279283280_))))
                        (___kont283279283280_))))
                (___kont283279283280_))))))
    (define gxc#!predicate::optimize-call
      (lambda (_self278458_ _stx278459_ _args278460_)
        (let* ((_g278462278472_
                (lambda (_g278463278469_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g278463278469_))))
               (_g278461278501_
                (lambda (_g278463278475_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g278463278475_))
                      (let ((_e278467278477_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g278463278475_))))
                        (let ((_hd278466278480_
                               (let ()
                                 (declare (not safe))
                                 (##car _e278467278477_)))
                              (_tl278465278482_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e278467278477_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl278465278482_))
                              ((lambda (_L278485_)
                                 (let* ((_klass278496_
                                         (let ((__tmp283530
                                                (##structure-ref
                                                 _self278458_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx278459_
                                            __tmp283530)))
                                        (_object278498_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L278485_))))
                                   (if (##structure-ref
                                        _klass278496_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp283546
                                              (let ((__tmp283547
                                                     (let ((__tmp283549
                                                            (let ((__tmp283550
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp283551
                                  (##structure-ref
                                   _klass278496_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp283551 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp283550)))
                   (__tmp283548
                    (let () (declare (not safe)) (cons _object278498_ '()))))
               (declare (not safe))
               (cons __tmp283549 __tmp283548))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#struct-direct-instance?
                                                      __tmp283547))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp283546
                                          _stx278459_))
                                       (if (##structure-ref
                                            _klass278496_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp283540
                                                  (let ((__tmp283541
                                                         (let ((__tmp283543
                                                                (let ((__tmp283544
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp283545
                                      (##structure-ref
                                       _klass278496_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp283545 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp283544)))
                       (__tmp283542
                        (let ()
                          (declare (not safe))
                          (cons _object278498_ '()))))
                   (declare (not safe))
                   (cons __tmp283543 __tmp283542))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-instance?
                                                          __tmp283541))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp283540
                                              _stx278459_))
                                           (let ((__tmp283531
                                                  (let ((__tmp283532
                                                         (let ((__tmp283538
                                                                (let ((__tmp283539
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'class-instance? '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp283539)))
                       (__tmp283533
                        (let ((__tmp283535
                               (let ((__tmp283536
                                      (let ((__tmp283537
                                             (##structure-ref
                                              _self278458_
                                              '1
                                              gxc#!type::t
                                              '#f)))
                                        (declare (not safe))
                                        (cons __tmp283537 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp283536)))
                              (__tmp283534
                               (let ()
                                 (declare (not safe))
                                 (cons _object278498_ '()))))
                          (declare (not safe))
                          (cons __tmp283535 __tmp283534))))
                   (declare (not safe))
                   (cons __tmp283538 __tmp283533))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#call
                                                          __tmp283532))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp283531
                                              _stx278459_))))))
                               _hd278466278480_)
                              (let ()
                                (declare (not safe))
                                (_g278462278472_ _g278463278475_)))))
                      (let ()
                        (declare (not safe))
                        (_g278462278472_ _g278463278475_))))))
          (declare (not safe))
          (_g278461278501_ _args278460_))))
    (define gxc#!predicate::optimize-call::specialize
      (lambda (__t283236)
        (let ((__id283237
               (let ((__tmp283238
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t283236 'id))))
                 (if __tmp283238 __tmp283238 (error '"Unknown slot" 'id)))))
          (lambda (_self278458_ _stx278459_ _args278460_)
            (let* ((_g278462278472_
                    (lambda (_g278463278469_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g278463278469_))))
                   (_g278461278501_
                    (lambda (_g278463278475_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g278463278475_))
                          (let ((_e278467278477_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g278463278475_))))
                            (let ((_hd278466278480_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e278467278477_)))
                                  (_tl278465278482_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e278467278477_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl278465278482_))
                                  ((lambda (_L278485_)
                                     (let* ((_klass278496_
                                             (let ((__tmp283552
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self278458_
                                                       __id283237
                                                       __t283236
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx278459_
                                                __tmp283552)))
                                            (_object278498_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L278485_))))
                                       (if (##structure-ref
                                            _klass278496_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp283568
                                                  (let ((__tmp283569
                                                         (let ((__tmp283571
                                                                (let ((__tmp283572
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp283573
                                      (##structure-ref
                                       _klass278496_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp283573 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp283572)))
                       (__tmp283570
                        (let ()
                          (declare (not safe))
                          (cons _object278498_ '()))))
                   (declare (not safe))
                   (cons __tmp283571 __tmp283570))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-direct-instance?
                                                          __tmp283569))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp283568
                                              _stx278459_))
                                           (if (##structure-ref
                                                _klass278496_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp283562
                                                      (let ((__tmp283563
                                                             (let ((__tmp283565
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp283566
                                   (let ((__tmp283567
                                          (##structure-ref
                                           _klass278496_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp283567 '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp283566)))
                           (__tmp283564
                            (let ()
                              (declare (not safe))
                              (cons _object278498_ '()))))
                       (declare (not safe))
                       (cons __tmp283565 __tmp283564))))
                (declare (not safe))
                (cons '%#struct-instance? __tmp283563))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp283562
                                                  _stx278459_))
                                               (let ((__tmp283553
                                                      (let ((__tmp283554
                                                             (let ((__tmp283560
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp283561
                                   (let ()
                                     (declare (not safe))
                                     (cons 'class-instance? '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp283561)))
                           (__tmp283555
                            (let ((__tmp283557
                                   (let ((__tmp283558
                                          (let ((__tmp283559
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _self278458_
                                                    __id283237
                                                    __t283236
                                                    '#f))))
                                            (declare (not safe))
                                            (cons __tmp283559 '()))))
                                     (declare (not safe))
                                     (cons '%#ref __tmp283558)))
                                  (__tmp283556
                                   (let ()
                                     (declare (not safe))
                                     (cons _object278498_ '()))))
                              (declare (not safe))
                              (cons __tmp283557 __tmp283556))))
                       (declare (not safe))
                       (cons __tmp283560 __tmp283555))))
                (declare (not safe))
                (cons '%#call __tmp283554))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp283553
                                                  _stx278459_))))))
                                   _hd278466278480_)
                                  (let ()
                                    (declare (not safe))
                                    (_g278462278472_ _g278463278475_)))))
                          (let ()
                            (declare (not safe))
                            (_g278462278472_ _g278463278475_))))))
              (declare (not safe))
              (_g278461278501_ _args278460_))))))
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
      (lambda (_self278178_ _stx278179_ _args278180_)
        (let* ((_klass278182_
                (let ((__tmp283574
                       (##structure-ref _self278178_ '1 gxc#!type::t '#f)))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _stx278179_ __tmp283574)))
               (_fields278184_
                (length (##structure-ref _klass278182_ '5 gxc#!class::t '#f)))
               (_args278186_ (map gxc#compile-e _args278180_))
               (_inline-make-object278188_
                (let ((__tmp283575
                       (let ((__tmp283581
                              (let ((__tmp283582
                                     (let ()
                                       (declare (not safe))
                                       (cons '##structure '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp283582)))
                             (__tmp283576
                              (let ((__tmp283578
                                     (let ((__tmp283579
                                            (let ((__tmp283580
                                                   (##structure-ref
                                                    _self278178_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp283580 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp283579)))
                                    (__tmp283577
                                     (make-list _fields278184_ '(%#quote #f))))
                                (declare (not safe))
                                (cons __tmp283578 __tmp283577))))
                         (declare (not safe))
                         (cons __tmp283581 __tmp283576))))
                  (declare (not safe))
                  (cons '%#call __tmp283575))))
          (let ((_$e278191_
                 (##structure-ref _klass278182_ '6 gxc#!class::t '#f)))
            (if _$e278191_
                ((lambda (_ctor278194_)
                   (let ((_$obj278196_
                          (let ((__tmp283682 (gensym '__obj)))
                            (declare (not safe))
                            (make-symbol__0 __tmp283682)))
                         (_ctor-impl278197_
                          (let ()
                            (declare (not safe))
                            (gxc#!class-lookup-method
                             _klass278182_
                             _ctor278194_))))
                     (let ((__tmp283683
                            (let ((__tmp283684
                                   (let ((__tmp283752
                                          (let ((__tmp283753
                                                 (let ((__tmp283755
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj278196_
                                                                '())))
                                                       (__tmp283754
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _inline-make-object278188_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp283755
                                                         __tmp283754))))
                                            (declare (not safe))
                                            (cons __tmp283753 '())))
                                         (__tmp283685
                                          (let ((__tmp283686
                                                 (let ((__tmp283687
                                                        (let ((__tmp283691
                                                               (if _ctor-impl278197_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp283746
                                  (let ((__tmp283750
                                         (let ((__tmp283751
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _ctor-impl278197_
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp283751)))
                                        (__tmp283747
                                         (let ((__tmp283748
                                                (let ((__tmp283749
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj278196_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp283749))))
                                           (declare (not safe))
                                           (cons __tmp283748 _args278186_))))
                                    (declare (not safe))
                                    (cons __tmp283750 __tmp283747))))
                             (declare (not safe))
                             (cons '%#call __tmp283746))
                           (let* ((_$ctor278199_
                                   (let ((__tmp283692 (gensym '__constructor)))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp283692)))
                                  (__tmp283693
                                   (let ((__tmp283728
                                          (let ((__tmp283729
                                                 (let ((__tmp283745
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$ctor278199_
                                                                '())))
                                                       (__tmp283730
                                                        (let ((__tmp283731
                                                               (let ((__tmp283732
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp283743
                                     (let ((__tmp283744
                                            (let ()
                                              (declare (not safe))
                                              (cons 'direct-method-ref '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp283744)))
                                    (__tmp283733
                                     (let ((__tmp283740
                                            (let ((__tmp283741
                                                   (let ((__tmp283742
                                                          (##structure-ref
                                                           _self278178_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp283742 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp283741)))
                                           (__tmp283734
                                            (let ((__tmp283738
                                                   (let ((__tmp283739
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj278196_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp283739)))
                                                  (__tmp283735
                                                   (let ((__tmp283736
                                                          (let ((__tmp283737
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _ctor278194_ '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp283737))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp283736 '()))))
                                              (declare (not safe))
                                              (cons __tmp283738 __tmp283735))))
                                       (declare (not safe))
                                       (cons __tmp283740 __tmp283734))))
                                (declare (not safe))
                                (cons __tmp283743 __tmp283733))))
                         (declare (not safe))
                         (cons '%#call __tmp283732))))
                  (declare (not safe))
                  (cons __tmp283731 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp283745
                                                         __tmp283730))))
                                            (declare (not safe))
                                            (cons __tmp283729 '())))
                                         (__tmp283694
                                          (let ((__tmp283695
                                                 (let ((__tmp283696
                                                        (let ((__tmp283726
                                                               (let ((__tmp283727
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$ctor278199_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp283727)))
                      (__tmp283697
                       (let ((__tmp283719
                              (let ((__tmp283720
                                     (let ((__tmp283724
                                            (let ((__tmp283725
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$ctor278199_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp283725)))
                                           (__tmp283721
                                            (let ((__tmp283722
                                                   (let ((__tmp283723
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj278196_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp283723))))
                                              (declare (not safe))
                                              (cons __tmp283722
                                                    _args278186_))))
                                       (declare (not safe))
                                       (cons __tmp283724 __tmp283721))))
                                (declare (not safe))
                                (cons '%#call __tmp283720)))
                             (__tmp283698
                              (let ((__tmp283699
                                     (let ((__tmp283700
                                            (let ((__tmp283717
                                                   (let ((__tmp283718
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp283718)))
                                                  (__tmp283701
                                                   (let ((__tmp283715
                                                          (let ((__tmp283716
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons '"missing constructor method implementation"
                                 '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp283716)))
                 (__tmp283702
                  (let ((__tmp283713
                         (let ((__tmp283714
                                (let ()
                                  (declare (not safe))
                                  (cons 'class: '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp283714)))
                        (__tmp283703
                         (let ((__tmp283710
                                (let ((__tmp283711
                                       (let ((__tmp283712
                                              (##structure-ref
                                               _self278178_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp283712 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp283711)))
                               (__tmp283704
                                (let ((__tmp283708
                                       (let ((__tmp283709
                                              (let ()
                                                (declare (not safe))
                                                (cons 'method: '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp283709)))
                                      (__tmp283705
                                       (let ((__tmp283706
                                              (let ((__tmp283707
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _ctor278194_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#quote __tmp283707))))
                                         (declare (not safe))
                                         (cons __tmp283706 '()))))
                                  (declare (not safe))
                                  (cons __tmp283708 __tmp283705))))
                           (declare (not safe))
                           (cons __tmp283710 __tmp283704))))
                    (declare (not safe))
                    (cons __tmp283713 __tmp283703))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp283715
                                                           __tmp283702))))
                                              (declare (not safe))
                                              (cons __tmp283717 __tmp283701))))
                                       (declare (not safe))
                                       (cons '%#call __tmp283700))))
                                (declare (not safe))
                                (cons __tmp283699 '()))))
                         (declare (not safe))
                         (cons __tmp283719 __tmp283698))))
                  (declare (not safe))
                  (cons __tmp283726 __tmp283697))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#if __tmp283696))))
                                            (declare (not safe))
                                            (cons __tmp283695 '()))))
                                     (declare (not safe))
                                     (cons __tmp283728 __tmp283694))))
                             (declare (not safe))
                             (cons '%#let-values __tmp283693))))
                      (__tmp283688
                       (let ((__tmp283689
                              (let ((__tmp283690
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj278196_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp283690))))
                         (declare (not safe))
                         (cons __tmp283689 '()))))
                  (declare (not safe))
                  (cons __tmp283691 __tmp283688))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#begin
                                                         __tmp283687))))
                                            (declare (not safe))
                                            (cons __tmp283686 '()))))
                                     (declare (not safe))
                                     (cons __tmp283752 __tmp283685))))
                              (declare (not safe))
                              (cons '%#let-values __tmp283684))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp283683 _stx278179_))))
                 _$e278191_)
                (let ((_$e278201_
                       (##structure-ref _klass278182_ '9 gxc#!class::t '#f)))
                  (if _$e278201_
                      ((lambda (_metaclass278204_)
                         (let* ((_$obj278206_
                                 (let ((__tmp283644 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp283644)))
                                (_metakons278208_
                                 (let ((__tmp283645
                                        (let ()
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-class
                                           _stx278179_
                                           _metaclass278204_))))
                                   (declare (not safe))
                                   (gxc#!class-lookup-method
                                    __tmp283645
                                    'instance-init!))))
                           (let ((__tmp283646
                                  (let ((__tmp283647
                                         (let ((__tmp283678
                                                (let ((__tmp283679
                                                       (let ((__tmp283681
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj278206_ '())))
                     (__tmp283680
                      (let ()
                        (declare (not safe))
                        (cons _inline-make-object278188_ '()))))
                 (declare (not safe))
                 (cons __tmp283681 __tmp283680))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp283679 '())))
                                               (__tmp283648
                                                (let ((__tmp283649
                                                       (let ((__tmp283650
                                                              (let ((__tmp283654
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if _metakons278208_
                                 (let ((__tmp283668
                                        (let ((__tmp283676
                                               (let ((__tmp283677
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _metakons278208_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp283677)))
                                              (__tmp283669
                                               (let ((__tmp283673
                                                      (let ((__tmp283674
                                                             (let ((__tmp283675
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self278178_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp283675 '()))))
                (declare (not safe))
                (cons '%#ref __tmp283674)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp283670
                                                      (let ((__tmp283671
                                                             (let ((__tmp283672
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _$obj278206_ '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp283672))))
                (declare (not safe))
                (cons __tmp283671 _args278186_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp283673
                                                       __tmp283670))))
                                          (declare (not safe))
                                          (cons __tmp283676 __tmp283669))))
                                   (declare (not safe))
                                   (cons '%#call __tmp283668))
                                 (let ((__tmp283655
                                        (let ((__tmp283666
                                               (let ((__tmp283667
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'call-method
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp283667)))
                                              (__tmp283656
                                               (let ((__tmp283663
                                                      (let ((__tmp283664
                                                             (let ((__tmp283665
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self278178_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp283665 '()))))
                (declare (not safe))
                (cons '%#ref __tmp283664)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp283657
                                                      (let ((__tmp283661
                                                             (let ((__tmp283662
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'instance-init! '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp283662)))
                    (__tmp283658
                     (let ((__tmp283659
                            (let ((__tmp283660
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj278206_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp283660))))
                       (declare (not safe))
                       (cons __tmp283659 _args278186_))))
                (declare (not safe))
                (cons __tmp283661 __tmp283658))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp283663
                                                       __tmp283657))))
                                          (declare (not safe))
                                          (cons __tmp283666 __tmp283656))))
                                   (declare (not safe))
                                   (cons '%#call __tmp283655))))
                            (__tmp283651
                             (let ((__tmp283652
                                    (let ((__tmp283653
                                           (let ()
                                             (declare (not safe))
                                             (cons _$obj278206_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp283653))))
                               (declare (not safe))
                               (cons __tmp283652 '()))))
                        (declare (not safe))
                        (cons __tmp283654 __tmp283651))))
                 (declare (not safe))
                 (cons '%#begin __tmp283650))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp283649 '()))))
                                           (declare (not safe))
                                           (cons __tmp283678 __tmp283648))))
                                    (declare (not safe))
                                    (cons '%#let-values __tmp283647))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp283646 _stx278179_))))
                       _$e278201_)
                      (if (##structure-ref _klass278182_ '7 gxc#!class::t '#f)
                          (if (fx= (length _args278186_) _fields278184_)
                              (let ((__tmp283636
                                     (let ((__tmp283637
                                            (let ((__tmp283642
                                                   (let ((__tmp283643
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp283643)))
                                                  (__tmp283638
                                                   (let ((__tmp283639
                                                          (let ((__tmp283640
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp283641
                                (##structure-ref
                                 _self278178_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (cons __tmp283641 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp283640))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp283639
                                                           _args278186_))))
                                              (declare (not safe))
                                              (cons __tmp283642 __tmp283638))))
                                       (declare (not safe))
                                       (cons '%#call __tmp283637))))
                                (declare (not safe))
                                (gxc#xform-wrap-source
                                 __tmp283636
                                 _stx278179_))
                              (let ((__tmp283635
                                     (##structure-ref
                                      _self278178_
                                      '1
                                      gxc#!type::t
                                      '#f))
                                    (__tmp283634
                                     (length (##structure-ref
                                              _klass278182_
                                              '5
                                              gxc#!class::t
                                              '#f))))
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"illegal struct constructor application; arity mismatch"
                                 _stx278179_
                                 __tmp283635
                                 __tmp283634)))
                          (let ((_$obj278211_
                                 (let ((__tmp283583 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp283583))))
                            (let _lp278213_ ((_rest278215_ _args278186_)
                                             (_initializers278216_ '()))
                              (let* ((___stx283313283314_ _rest278215_)
                                     (_g278220278241_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx283313283314_)))))
                                (let ((___kont283315283316_
                                       (lambda (_L278295_ _L278296_ _L278297_)
                                         (let* ((_slot278328_
                                                 (keyword->symbol
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e _L278297_))))
                                                (_off278330_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass278182_
                                                    _slot278328_))))
                                           (if _off278330_
                                               (let ((__tmp283585
                                                      (let ((__tmp283586
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _off278330_ _L278296_))))
                (declare (not safe))
                (cons __tmp283586 _initializers278216_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp278213_
                                                  _L278295_
                                                  __tmp283585))
                                               (let ((__tmp283584
                                                      (##structure-ref
                                                       _self278178_
                                                       '1
                                                       gxc#!type::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"unknown slot"
                                                  _stx278179_
                                                  __tmp283584
                                                  _slot278328_))))))
                                      (___kont283317283318_
                                       (lambda ()
                                         (let ((__tmp283587
                                                (let ((__tmp283588
                                                       (let ((__tmp283611
                                                              (let ((__tmp283612
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp283614
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj278211_ '())))
                                   (__tmp283613
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object278188_ '()))))
                               (declare (not safe))
                               (cons __tmp283614 __tmp283613))))
                        (declare (not safe))
                        (cons __tmp283612 '())))
                     (__tmp283589
                      (let ((__tmp283590
                             (let ((__tmp283591
                                    (let ((__tmp283608
                                           (let ((__tmp283609
                                                  (let ((__tmp283610
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj278211_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp283610))))
                                             (declare (not safe))
                                             (cons __tmp283609 '())))
                                          (__tmp283592
                                           (let ((__tmp283593
                                                  (lambda (_i278255_ _r278256_)
                                                    (let ((__tmp283594
                                                           (let ((__tmp283595
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp283605
                                 (let ((__tmp283606
                                        (let ((__tmp283607
                                               (##structure-ref
                                                _self278178_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp283607 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp283606)))
                                (__tmp283596
                                 (let ((__tmp283602
                                        (let ((__tmp283603
                                               (let ((__tmp283604
                                                      (car _i278255_)))
                                                 (declare (not safe))
                                                 (cons __tmp283604 '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp283603)))
                                       (__tmp283597
                                        (let ((__tmp283600
                                               (let ((__tmp283601
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _$obj278211_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp283601)))
                                              (__tmp283598
                                               (let ((__tmp283599
                                                      (cdr _i278255_)))
                                                 (declare (not safe))
                                                 (cons __tmp283599 '()))))
                                          (declare (not safe))
                                          (cons __tmp283600 __tmp283598))))
                                   (declare (not safe))
                                   (cons __tmp283602 __tmp283597))))
                            (declare (not safe))
                            (cons __tmp283605 __tmp283596))))
                     (declare (not safe))
                     (cons '%#struct-unchecked-set! __tmp283595))))
              (declare (not safe))
              (cons __tmp283594 _r278256_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (foldl1 __tmp283593
                                                     '()
                                                     _initializers278216_))))
                                      (declare (not safe))
                                      (foldr1 cons __tmp283608 __tmp283592))))
                               (declare (not safe))
                               (cons '%#begin __tmp283591))))
                        (declare (not safe))
                        (cons __tmp283590 '()))))
                 (declare (not safe))
                 (cons __tmp283611 __tmp283589))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp283588))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp283587
                                            _stx278179_))))
                                      (___kont283319283320_
                                       (lambda ()
                                         (let ((__tmp283615
                                                (let ((__tmp283616
                                                       (let ((__tmp283630
                                                              (let ((__tmp283631
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp283633
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj278211_ '())))
                                   (__tmp283632
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object278188_ '()))))
                               (declare (not safe))
                               (cons __tmp283633 __tmp283632))))
                        (declare (not safe))
                        (cons __tmp283631 '())))
                     (__tmp283617
                      (let ((__tmp283618
                             (let ((__tmp283619
                                    (let ((__tmp283623
                                           (let ((__tmp283624
                                                  (let ((__tmp283628
                                                         (let ((__tmp283629
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons 'class-instance-init! '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp283629)))
                (__tmp283625
                 (let ((__tmp283626
                        (let ((__tmp283627
                               (let ()
                                 (declare (not safe))
                                 (cons _$obj278211_ '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp283627))))
                   (declare (not safe))
                   (cons __tmp283626 _args278186_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp283628
                                                          __tmp283625))))
                                             (declare (not safe))
                                             (cons '%#call __tmp283624)))
                                          (__tmp283620
                                           (let ((__tmp283621
                                                  (let ((__tmp283622
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj278211_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp283622))))
                                             (declare (not safe))
                                             (cons __tmp283621 '()))))
                                      (declare (not safe))
                                      (cons __tmp283623 __tmp283620))))
                               (declare (not safe))
                               (cons '%#begin __tmp283619))))
                        (declare (not safe))
                        (cons __tmp283618 '()))))
                 (declare (not safe))
                 (cons __tmp283630 __tmp283617))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp283616))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp283615
                                            _stx278179_)))))
                                  (let* ((_g278218278258_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   ___stx283313283314_))
                                                (___kont283317283318_)
                                                (___kont283319283320_))))
                                         (___match283350283351_
                                          (lambda (_e278227278263_
                                                   _hd278226278266_
                                                   _tl278225278268_
                                                   _e278230278271_
                                                   _hd278229278274_
                                                   _tl278228278276_
                                                   _e278233278279_
                                                   _hd278232278282_
                                                   _tl278231278284_
                                                   _e278236278287_
                                                   _hd278235278290_
                                                   _tl278234278292_)
                                            (let ((_L278295_ _tl278234278292_)
                                                  (_L278296_ _hd278235278290_)
                                                  (_L278297_ _hd278232278282_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-keyword?
                                                     _L278297_))
                                                  (___kont283315283316_
                                                   _L278295_
                                                   _L278296_
                                                   _L278297_)
                                                  (___kont283319283320_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx283313283314_))
                                        (let ((_e278227278263_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx283313283314_))))
                                          (let ((_tl278225278268_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e278227278263_)))
                                                (_hd278226278266_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e278227278263_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd278226278266_))
                                                (let ((_e278230278271_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd278226278266_))))
                                                  (let ((_tl278228278276_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e278230278271_)))
                                                        (_hd278229278274_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e278230278271_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd278229278274_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#quote
                                                               _hd278229278274_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl278228278276_))
                        (let ((_e278233278279_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl278228278276_))))
                          (let ((_tl278231278284_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e278233278279_)))
                                (_hd278232278282_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e278233278279_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl278231278284_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl278225278268_))
                                    (let ((_e278236278287_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl278225278268_))))
                                      (let ((_tl278234278292_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e278236278287_)))
                                            (_hd278235278290_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e278236278287_))))
                                        (___match283350283351_
                                         _e278227278263_
                                         _hd278226278266_
                                         _tl278225278268_
                                         _e278230278271_
                                         _hd278229278274_
                                         _tl278228278276_
                                         _e278233278279_
                                         _hd278232278282_
                                         _tl278231278284_
                                         _e278236278287_
                                         _hd278235278290_
                                         _tl278234278292_)))
                                    (___kont283319283320_))
                                (___kont283319283320_))))
                        (___kont283319283320_))
                    (___kont283319283320_))
                (___kont283319283320_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont283319283320_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g278218278258_))))))))))))))))
    (define gxc#!constructor::optimize-call::specialize
      (lambda (__t283239)
        (let ((__id283240
               (let ((__tmp283241
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t283239 'id))))
                 (if __tmp283241 __tmp283241 (error '"Unknown slot" 'id)))))
          (lambda (_self278178_ _stx278179_ _args278180_)
            (let* ((_klass278182_
                    (let ((__tmp283756
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _self278178_
                              __id283240
                              __t283239
                              '#f))))
                      (declare (not safe))
                      (gxc#optimizer-resolve-class _stx278179_ __tmp283756)))
                   (_fields278184_
                    (length (##structure-ref
                             _klass278182_
                             '5
                             gxc#!class::t
                             '#f)))
                   (_args278186_ (map gxc#compile-e _args278180_))
                   (_inline-make-object278188_
                    (let ((__tmp283757
                           (let ((__tmp283763
                                  (let ((__tmp283764
                                         (let ()
                                           (declare (not safe))
                                           (cons '##structure '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp283764)))
                                 (__tmp283758
                                  (let ((__tmp283760
                                         (let ((__tmp283761
                                                (let ((__tmp283762
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self278178_
                                                          __id283240
                                                          __t283239
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp283762 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp283761)))
                                        (__tmp283759
                                         (make-list
                                          _fields278184_
                                          '(%#quote #f))))
                                    (declare (not safe))
                                    (cons __tmp283760 __tmp283759))))
                             (declare (not safe))
                             (cons __tmp283763 __tmp283758))))
                      (declare (not safe))
                      (cons '%#call __tmp283757))))
              (let ((_$e278191_
                     (##structure-ref _klass278182_ '6 gxc#!class::t '#f)))
                (if _$e278191_
                    ((lambda (_ctor278194_)
                       (let ((_$obj278196_
                              (let ((__tmp283864 (gensym '__obj)))
                                (declare (not safe))
                                (make-symbol__0 __tmp283864)))
                             (_ctor-impl278197_
                              (let ()
                                (declare (not safe))
                                (gxc#!class-lookup-method
                                 _klass278182_
                                 _ctor278194_))))
                         (let ((__tmp283865
                                (let ((__tmp283866
                                       (let ((__tmp283934
                                              (let ((__tmp283935
                                                     (let ((__tmp283937
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$obj278196_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp283936
                    (let ()
                      (declare (not safe))
                      (cons _inline-make-object278188_ '()))))
               (declare (not safe))
               (cons __tmp283937 __tmp283936))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp283935 '())))
                                             (__tmp283867
                                              (let ((__tmp283868
                                                     (let ((__tmp283869
                                                            (let ((__tmp283873
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _ctor-impl278197_
                               (let ((__tmp283928
                                      (let ((__tmp283932
                                             (let ((__tmp283933
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor-impl278197_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp283933)))
                                            (__tmp283929
                                             (let ((__tmp283930
                                                    (let ((__tmp283931
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$obj278196_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp283931))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp283930
                                                     _args278186_))))
                                        (declare (not safe))
                                        (cons __tmp283932 __tmp283929))))
                                 (declare (not safe))
                                 (cons '%#call __tmp283928))
                               (let* ((_$ctor278199_
                                       (let ((__tmp283874
                                              (gensym '__constructor)))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp283874)))
                                      (__tmp283875
                                       (let ((__tmp283910
                                              (let ((__tmp283911
                                                     (let ((__tmp283927
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$ctor278199_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp283912
                    (let ((__tmp283913
                           (let ((__tmp283914
                                  (let ((__tmp283925
                                         (let ((__tmp283926
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'direct-method-ref
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp283926)))
                                        (__tmp283915
                                         (let ((__tmp283922
                                                (let ((__tmp283923
                                                       (let ((__tmp283924
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self278178_
                         __id283240
                         __t283239
                         '#f))))
                 (declare (not safe))
                 (cons __tmp283924 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp283923)))
                                               (__tmp283916
                                                (let ((__tmp283920
                                                       (let ((__tmp283921
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj278196_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp283921)))
              (__tmp283917
               (let ((__tmp283918
                      (let ((__tmp283919
                             (let ()
                               (declare (not safe))
                               (cons _ctor278194_ '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp283919))))
                 (declare (not safe))
                 (cons __tmp283918 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp283920
                                                        __tmp283917))))
                                           (declare (not safe))
                                           (cons __tmp283922 __tmp283916))))
                                    (declare (not safe))
                                    (cons __tmp283925 __tmp283915))))
                             (declare (not safe))
                             (cons '%#call __tmp283914))))
                      (declare (not safe))
                      (cons __tmp283913 '()))))
               (declare (not safe))
               (cons __tmp283927 __tmp283912))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp283911 '())))
                                             (__tmp283876
                                              (let ((__tmp283877
                                                     (let ((__tmp283878
                                                            (let ((__tmp283908
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp283909
                                  (let ()
                                    (declare (not safe))
                                    (cons _$ctor278199_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp283909)))
                          (__tmp283879
                           (let ((__tmp283901
                                  (let ((__tmp283902
                                         (let ((__tmp283906
                                                (let ((__tmp283907
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$ctor278199_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp283907)))
                                               (__tmp283903
                                                (let ((__tmp283904
                                                       (let ((__tmp283905
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj278196_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp283905))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp283904
                                                        _args278186_))))
                                           (declare (not safe))
                                           (cons __tmp283906 __tmp283903))))
                                    (declare (not safe))
                                    (cons '%#call __tmp283902)))
                                 (__tmp283880
                                  (let ((__tmp283881
                                         (let ((__tmp283882
                                                (let ((__tmp283899
                                                       (let ((__tmp283900
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'error '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp283900)))
              (__tmp283883
               (let ((__tmp283897
                      (let ((__tmp283898
                             (let ()
                               (declare (not safe))
                               (cons '"missing constructor method implementation"
                                     '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp283898)))
                     (__tmp283884
                      (let ((__tmp283895
                             (let ((__tmp283896
                                    (let ()
                                      (declare (not safe))
                                      (cons 'class: '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp283896)))
                            (__tmp283885
                             (let ((__tmp283892
                                    (let ((__tmp283893
                                           (let ((__tmp283894
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self278178_
                                                     __id283240
                                                     __t283239
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp283894 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp283893)))
                                   (__tmp283886
                                    (let ((__tmp283890
                                           (let ((__tmp283891
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'method: '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp283891)))
                                          (__tmp283887
                                           (let ((__tmp283888
                                                  (let ((__tmp283889
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _ctor278194_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#quote
                                                          __tmp283889))))
                                             (declare (not safe))
                                             (cons __tmp283888 '()))))
                                      (declare (not safe))
                                      (cons __tmp283890 __tmp283887))))
                               (declare (not safe))
                               (cons __tmp283892 __tmp283886))))
                        (declare (not safe))
                        (cons __tmp283895 __tmp283885))))
                 (declare (not safe))
                 (cons __tmp283897 __tmp283884))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp283899
                                                        __tmp283883))))
                                           (declare (not safe))
                                           (cons '%#call __tmp283882))))
                                    (declare (not safe))
                                    (cons __tmp283881 '()))))
                             (declare (not safe))
                             (cons __tmp283901 __tmp283880))))
                      (declare (not safe))
                      (cons __tmp283908 __tmp283879))))
               (declare (not safe))
               (cons '%#if __tmp283878))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp283877 '()))))
                                         (declare (not safe))
                                         (cons __tmp283910 __tmp283876))))
                                 (declare (not safe))
                                 (cons '%#let-values __tmp283875))))
                          (__tmp283870
                           (let ((__tmp283871
                                  (let ((__tmp283872
                                         (let ()
                                           (declare (not safe))
                                           (cons _$obj278196_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp283872))))
                             (declare (not safe))
                             (cons __tmp283871 '()))))
                      (declare (not safe))
                      (cons __tmp283873 __tmp283870))))
               (declare (not safe))
               (cons '%#begin __tmp283869))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp283868 '()))))
                                         (declare (not safe))
                                         (cons __tmp283934 __tmp283867))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp283866))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp283865 _stx278179_))))
                     _$e278191_)
                    (let ((_$e278201_
                           (##structure-ref
                            _klass278182_
                            '9
                            gxc#!class::t
                            '#f)))
                      (if _$e278201_
                          ((lambda (_metaclass278204_)
                             (let* ((_$obj278206_
                                     (let ((__tmp283826 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp283826)))
                                    (_metakons278208_
                                     (let ((__tmp283827
                                            (let ()
                                              (declare (not safe))
                                              (gxc#optimizer-resolve-class
                                               _stx278179_
                                               _metaclass278204_))))
                                       (declare (not safe))
                                       (gxc#!class-lookup-method
                                        __tmp283827
                                        'instance-init!))))
                               (let ((__tmp283828
                                      (let ((__tmp283829
                                             (let ((__tmp283860
                                                    (let ((__tmp283861
                                                           (let ((__tmp283863
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj278206_ '())))
                         (__tmp283862
                          (let ()
                            (declare (not safe))
                            (cons _inline-make-object278188_ '()))))
                     (declare (not safe))
                     (cons __tmp283863 __tmp283862))))
              (declare (not safe))
              (cons __tmp283861 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp283830
                                                    (let ((__tmp283831
                                                           (let ((__tmp283832
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp283836
                                 (if _metakons278208_
                                     (let ((__tmp283850
                                            (let ((__tmp283858
                                                   (let ((__tmp283859
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _metakons278208_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp283859)))
                                                  (__tmp283851
                                                   (let ((__tmp283855
                                                          (let ((__tmp283856
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp283857
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self278178_
                                   __id283240
                                   __t283239
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp283857 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp283856)))
                 (__tmp283852
                  (let ((__tmp283853
                         (let ((__tmp283854
                                (let ()
                                  (declare (not safe))
                                  (cons _$obj278206_ '()))))
                           (declare (not safe))
                           (cons '%#ref __tmp283854))))
                    (declare (not safe))
                    (cons __tmp283853 _args278186_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp283855
                                                           __tmp283852))))
                                              (declare (not safe))
                                              (cons __tmp283858 __tmp283851))))
                                       (declare (not safe))
                                       (cons '%#call __tmp283850))
                                     (let ((__tmp283837
                                            (let ((__tmp283848
                                                   (let ((__tmp283849
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'call-method
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp283849)))
                                                  (__tmp283838
                                                   (let ((__tmp283845
                                                          (let ((__tmp283846
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp283847
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self278178_
                                   __id283240
                                   __t283239
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp283847 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp283846)))
                 (__tmp283839
                  (let ((__tmp283843
                         (let ((__tmp283844
                                (let ()
                                  (declare (not safe))
                                  (cons 'instance-init! '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp283844)))
                        (__tmp283840
                         (let ((__tmp283841
                                (let ((__tmp283842
                                       (let ()
                                         (declare (not safe))
                                         (cons _$obj278206_ '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp283842))))
                           (declare (not safe))
                           (cons __tmp283841 _args278186_))))
                    (declare (not safe))
                    (cons __tmp283843 __tmp283840))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp283845
                                                           __tmp283839))))
                                              (declare (not safe))
                                              (cons __tmp283848 __tmp283838))))
                                       (declare (not safe))
                                       (cons '%#call __tmp283837))))
                                (__tmp283833
                                 (let ((__tmp283834
                                        (let ((__tmp283835
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$obj278206_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp283835))))
                                   (declare (not safe))
                                   (cons __tmp283834 '()))))
                            (declare (not safe))
                            (cons __tmp283836 __tmp283833))))
                     (declare (not safe))
                     (cons '%#begin __tmp283832))))
              (declare (not safe))
              (cons __tmp283831 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp283860
                                                     __tmp283830))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp283829))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp283828
                                  _stx278179_))))
                           _$e278201_)
                          (if (##structure-ref
                               _klass278182_
                               '7
                               gxc#!class::t
                               '#f)
                              (if (fx= (length _args278186_) _fields278184_)
                                  (let ((__tmp283818
                                         (let ((__tmp283819
                                                (let ((__tmp283824
                                                       (let ((__tmp283825
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '##structure '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp283825)))
              (__tmp283820
               (let ((__tmp283821
                      (let ((__tmp283822
                             (let ((__tmp283823
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _self278178_
                                       __id283240
                                       __t283239
                                       '#f))))
                               (declare (not safe))
                               (cons __tmp283823 '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp283822))))
                 (declare (not safe))
                 (cons __tmp283821 _args278186_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp283824
                                                        __tmp283820))))
                                           (declare (not safe))
                                           (cons '%#call __tmp283819))))
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp283818
                                     _stx278179_))
                                  (let ((__tmp283817
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _self278178_
                                            __id283240
                                            __t283239
                                            '#f)))
                                        (__tmp283816
                                         (length (##structure-ref
                                                  _klass278182_
                                                  '5
                                                  gxc#!class::t
                                                  '#f))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"illegal struct constructor application; arity mismatch"
                                     _stx278179_
                                     __tmp283817
                                     __tmp283816)))
                              (let ((_$obj278211_
                                     (let ((__tmp283765 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp283765))))
                                (let _lp278213_ ((_rest278215_ _args278186_)
                                                 (_initializers278216_ '()))
                                  (let* ((___stx283355283356_ _rest278215_)
                                         (_g278220278241_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               ___stx283355283356_)))))
                                    (let ((___kont283357283358_
                                           (lambda (_L278295_
                                                    _L278296_
                                                    _L278297_)
                                             (let* ((_slot278328_
                                                     (keyword->symbol
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L278297_))))
                                                    (_off278330_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass278182_
                                                        _slot278328_))))
                                               (if _off278330_
                                                   (let ((__tmp283767
                                                          (let ((__tmp283768
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _off278330_ _L278296_))))
                    (declare (not safe))
                    (cons __tmp283768 _initializers278216_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp278213_
                                                      _L278295_
                                                      __tmp283767))
                                                   (let ((__tmp283766
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _self278178_
                                                             __id283240
                                                             __t283239
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"unknown slot"
                                                      _stx278179_
                                                      __tmp283766
                                                      _slot278328_))))))
                                          (___kont283359283360_
                                           (lambda ()
                                             (let ((__tmp283769
                                                    (let ((__tmp283770
                                                           (let ((__tmp283793
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp283794
                                 (let ((__tmp283796
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj278211_ '())))
                                       (__tmp283795
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object278188_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp283796 __tmp283795))))
                            (declare (not safe))
                            (cons __tmp283794 '())))
                         (__tmp283771
                          (let ((__tmp283772
                                 (let ((__tmp283773
                                        (let ((__tmp283790
                                               (let ((__tmp283791
                                                      (let ((__tmp283792
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj278211_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp283792))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp283791 '())))
                                              (__tmp283774
                                               (let ((__tmp283775
                                                      (lambda (_i278255_
                                                               _r278256_)
                                                        (let ((__tmp283776
                                                               (let ((__tmp283777
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp283787
                                     (let ((__tmp283788
                                            (let ((__tmp283789
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self278178_
                                                      __id283240
                                                      __t283239
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp283789 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp283788)))
                                    (__tmp283778
                                     (let ((__tmp283784
                                            (let ((__tmp283785
                                                   (let ((__tmp283786
                                                          (car _i278255_)))
                                                     (declare (not safe))
                                                     (cons __tmp283786 '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp283785)))
                                           (__tmp283779
                                            (let ((__tmp283782
                                                   (let ((__tmp283783
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj278211_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp283783)))
                                                  (__tmp283780
                                                   (let ((__tmp283781
                                                          (cdr _i278255_)))
                                                     (declare (not safe))
                                                     (cons __tmp283781 '()))))
                                              (declare (not safe))
                                              (cons __tmp283782 __tmp283780))))
                                       (declare (not safe))
                                       (cons __tmp283784 __tmp283779))))
                                (declare (not safe))
                                (cons __tmp283787 __tmp283778))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-set! __tmp283777))))
                  (declare (not safe))
                  (cons __tmp283776 _r278256_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl1 __tmp283775
                                                         '()
                                                         _initializers278216_))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp283790
                                                  __tmp283774))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp283773))))
                            (declare (not safe))
                            (cons __tmp283772 '()))))
                     (declare (not safe))
                     (cons __tmp283793 __tmp283771))))
              (declare (not safe))
              (cons '%#let-values __tmp283770))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp283769
                                                _stx278179_))))
                                          (___kont283361283362_
                                           (lambda ()
                                             (let ((__tmp283797
                                                    (let ((__tmp283798
                                                           (let ((__tmp283812
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp283813
                                 (let ((__tmp283815
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj278211_ '())))
                                       (__tmp283814
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object278188_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp283815 __tmp283814))))
                            (declare (not safe))
                            (cons __tmp283813 '())))
                         (__tmp283799
                          (let ((__tmp283800
                                 (let ((__tmp283801
                                        (let ((__tmp283805
                                               (let ((__tmp283806
                                                      (let ((__tmp283810
                                                             (let ((__tmp283811
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'class-instance-init! '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp283811)))
                    (__tmp283807
                     (let ((__tmp283808
                            (let ((__tmp283809
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj278211_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp283809))))
                       (declare (not safe))
                       (cons __tmp283808 _args278186_))))
                (declare (not safe))
                (cons __tmp283810 __tmp283807))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp283806)))
                                              (__tmp283802
                                               (let ((__tmp283803
                                                      (let ((__tmp283804
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj278211_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp283804))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp283803 '()))))
                                          (declare (not safe))
                                          (cons __tmp283805 __tmp283802))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp283801))))
                            (declare (not safe))
                            (cons __tmp283800 '()))))
                     (declare (not safe))
                     (cons __tmp283812 __tmp283799))))
              (declare (not safe))
              (cons '%#let-values __tmp283798))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp283797
                                                _stx278179_)))))
                                      (let* ((_g278218278258_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       ___stx283355283356_))
                                                    (___kont283359283360_)
                                                    (___kont283361283362_))))
                                             (___match283392283393_
                                              (lambda (_e278227278263_
                                                       _hd278226278266_
                                                       _tl278225278268_
                                                       _e278230278271_
                                                       _hd278229278274_
                                                       _tl278228278276_
                                                       _e278233278279_
                                                       _hd278232278282_
                                                       _tl278231278284_
                                                       _e278236278287_
                                                       _hd278235278290_
                                                       _tl278234278292_)
                                                (let ((_L278295_
                                                       _tl278234278292_)
                                                      (_L278296_
                                                       _hd278235278290_)
                                                      (_L278297_
                                                       _hd278232278282_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-keyword?
                                                         _L278297_))
                                                      (___kont283357283358_
                                                       _L278295_
                                                       _L278296_
                                                       _L278297_)
                                                      (___kont283361283362_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               ___stx283355283356_))
                                            (let ((_e278227278263_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      ___stx283355283356_))))
                                              (let ((_tl278225278268_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e278227278263_)))
                                                    (_hd278226278266_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e278227278263_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd278226278266_))
                                                    (let ((_e278230278271_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd278226278266_))))
                                                      (let ((_tl278228278276_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e278230278271_)))
                    (_hd278229278274_
                     (let () (declare (not safe)) (##car _e278230278271_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd278229278274_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd278229278274_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl278228278276_))
                            (let ((_e278233278279_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl278228278276_))))
                              (let ((_tl278231278284_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e278233278279_)))
                                    (_hd278232278282_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e278233278279_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl278231278284_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl278225278268_))
                                        (let ((_e278236278287_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl278225278268_))))
                                          (let ((_tl278234278292_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e278236278287_)))
                                                (_hd278235278290_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e278236278287_))))
                                            (___match283392283393_
                                             _e278227278263_
                                             _hd278226278266_
                                             _tl278225278268_
                                             _e278230278271_
                                             _hd278229278274_
                                             _tl278228278276_
                                             _e278233278279_
                                             _hd278232278282_
                                             _tl278231278284_
                                             _e278236278287_
                                             _hd278235278290_
                                             _tl278234278292_)))
                                        (___kont283361283362_))
                                    (___kont283361283362_))))
                            (___kont283361283362_))
                        (___kont283361283362_))
                    (___kont283361283362_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont283361283362_))))
                                            (let ()
                                              (declare (not safe))
                                              (_g278218278258_))))))))))))))))))
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
      (lambda (_self278001_ _stx278002_ _args278003_)
        (let* ((_g278005278015_
                (lambda (_g278006278012_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g278006278012_))))
               (_g278004278053_
                (lambda (_g278006278018_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g278006278018_))
                      (let ((_e278010278020_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g278006278018_))))
                        (let ((_hd278009278023_
                               (let ()
                                 (declare (not safe))
                                 (##car _e278010278020_)))
                              (_tl278008278025_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e278010278020_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl278008278025_))
                              ((lambda (_L278028_)
                                 (let* ((_klass278039_
                                         (let ((__tmp283938
                                                (##structure-ref
                                                 _self278001_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx278002_
                                            __tmp283938)))
                                        (_field278041_
                                         (let ((__tmp283939
                                                (##structure-ref
                                                 _self278001_
                                                 '2
                                                 gxc#!accessor::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _klass278039_
                                            __tmp283939)))
                                        (_object278043_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L278028_))))
                                   (if (##structure-ref
                                        _klass278039_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp284016
                                              (let ((__tmp284025
                                                     (if (##structure-ref
                                                          _self278001_
                                                          '3
                                                          gxc#!accessor::t
                                                          '#f)
                                                         '%#struct-direct-ref
                                                         '%#struct-unchecked-ref))
                                                    (__tmp284017
                                                     (let ((__tmp284022
                                                            (let ((__tmp284023
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp284024
                                  (##structure-ref
                                   _self278001_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp284024 '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp284023)))
                   (__tmp284018
                    (let ((__tmp284020
                           (let ((__tmp284021
                                  (let ()
                                    (declare (not safe))
                                    (cons _field278041_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp284021)))
                          (__tmp284019
                           (let ()
                             (declare (not safe))
                             (cons _object278043_ '()))))
                      (declare (not safe))
                      (cons __tmp284020 __tmp284019))))
               (declare (not safe))
               (cons __tmp284022 __tmp284018))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp284025
                                                      __tmp284017))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp284016
                                          _stx278002_))
                                       (if (##structure-ref
                                            _klass278039_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp284006
                                                  (let ((__tmp284015
                                                         (if (##structure-ref
                                                              _self278001_
                                                              '3
                                                              gxc#!accessor::t
                                                              '#f)
                                                             '%#struct-ref
                                                             '%#struct-unchecked-ref))
                                                        (__tmp284007
                                                         (let ((__tmp284012
                                                                (let ((__tmp284013
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp284014
                                      (##structure-ref
                                       _self278001_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp284014 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp284013)))
                       (__tmp284008
                        (let ((__tmp284010
                               (let ((__tmp284011
                                      (let ()
                                        (declare (not safe))
                                        (cons _field278041_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp284011)))
                              (__tmp284009
                               (let ()
                                 (declare (not safe))
                                 (cons _object278043_ '()))))
                          (declare (not safe))
                          (cons __tmp284010 __tmp284009))))
                   (declare (not safe))
                   (cons __tmp284012 __tmp284008))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp284015
                                                          __tmp284007))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp284006
                                              _stx278002_))
                                           (let ((_$e278046_
                                                  (let ((__tmp283940
                                                         (##structure-ref
                                                          _self278001_
                                                          '2
                                                          gxc#!accessor::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _klass278039_
                                                     __tmp283940))))
                                             (if _$e278046_
                                                 ((lambda (_klass278049_)
                                                    (let ((__tmp283996
                                                           (let ((__tmp284005
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##structure-ref
                               _self278001_
                               '3
                               gxc#!accessor::t
                               '#f)
                              '%#struct-ref
                              '%#struct-unchecked-ref))
                         (__tmp283997
                          (let ((__tmp284002
                                 (let ((__tmp284003
                                        (let ((__tmp284004
                                               (##structure-ref
                                                _self278001_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp284004 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp284003)))
                                (__tmp283998
                                 (let ((__tmp284000
                                        (let ((__tmp284001
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _field278041_ '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp284001)))
                                       (__tmp283999
                                        (let ()
                                          (declare (not safe))
                                          (cons _object278043_ '()))))
                                   (declare (not safe))
                                   (cons __tmp284000 __tmp283999))))
                            (declare (not safe))
                            (cons __tmp284002 __tmp283998))))
                     (declare (not safe))
                     (cons __tmp284005 __tmp283997))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp283996 _stx278002_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e278046_)
                                                 (if (##structure-ref
                                                      _self278001_
                                                      '3
                                                      gxc#!accessor::t
                                                      '#f)
                                                     (let ((__tmp283950
                                                            (let* ((_$obj278051_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp283951 (gensym '__obj)))
                              (declare (not safe))
                              (make-symbol__0 __tmp283951)))
                           (__tmp283952
                            (let ((__tmp283992
                                   (let ((__tmp283993
                                          (let ((__tmp283995
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _$obj278051_ '())))
                                                (__tmp283994
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _object278043_ '()))))
                                            (declare (not safe))
                                            (cons __tmp283995 __tmp283994))))
                                     (declare (not safe))
                                     (cons __tmp283993 '())))
                                  (__tmp283953
                                   (let ((__tmp283954
                                          (let ((__tmp283955
                                                 (let ((__tmp283984
                                                        (let ((__tmp283985
                                                               (let ((__tmp283989
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp283990
                                     (let ((__tmp283991
                                            (##structure-ref
                                             _klass278039_
                                             '1
                                             gxc#!type::t
                                             '#f)))
                                       (declare (not safe))
                                       (cons __tmp283991 '()))))
                                (declare (not safe))
                                (cons '%#quote __tmp283990)))
                             (__tmp283986
                              (let ((__tmp283987
                                     (let ((__tmp283988
                                            (let ()
                                              (declare (not safe))
                                              (cons _$obj278051_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp283988))))
                                (declare (not safe))
                                (cons __tmp283987 '()))))
                         (declare (not safe))
                         (cons __tmp283989 __tmp283986))))
                  (declare (not safe))
                  (cons '%#struct-direct-instance? __tmp283985)))
               (__tmp283956
                (let ((__tmp283973
                       (let ((__tmp283974
                              (let ((__tmp283981
                                     (let ((__tmp283982
                                            (let ((__tmp283983
                                                   (##structure-ref
                                                    _self278001_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp283983 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp283982)))
                                    (__tmp283975
                                     (let ((__tmp283979
                                            (let ((__tmp283980
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field278041_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp283980)))
                                           (__tmp283976
                                            (let ((__tmp283977
                                                   (let ((__tmp283978
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj278051_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp283978))))
                                              (declare (not safe))
                                              (cons __tmp283977 '()))))
                                       (declare (not safe))
                                       (cons __tmp283979 __tmp283976))))
                                (declare (not safe))
                                (cons __tmp283981 __tmp283975))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp283974)))
                      (__tmp283957
                       (let ((__tmp283958
                              (let ((__tmp283959
                                     (let ((__tmp283971
                                            (let ((__tmp283972
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'class-slot-ref
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp283972)))
                                           (__tmp283960
                                            (let ((__tmp283968
                                                   (let ((__tmp283969
                                                          (let ((__tmp283970
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref _self278001_ '1 gxc#!type::t '#f)))
                    (declare (not safe))
                    (cons __tmp283970 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp283969)))
                                                  (__tmp283961
                                                   (let ((__tmp283966
                                                          (let ((__tmp283967
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj278051_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp283967)))
                 (__tmp283962
                  (let ((__tmp283963
                         (let ((__tmp283964
                                (let ((__tmp283965
                                       (##structure-ref
                                        _self278001_
                                        '2
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (cons __tmp283965 '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp283964))))
                    (declare (not safe))
                    (cons __tmp283963 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp283966
                                                           __tmp283962))))
                                              (declare (not safe))
                                              (cons __tmp283968 __tmp283961))))
                                       (declare (not safe))
                                       (cons __tmp283971 __tmp283960))))
                                (declare (not safe))
                                (cons '%#call __tmp283959))))
                         (declare (not safe))
                         (cons __tmp283958 '()))))
                  (declare (not safe))
                  (cons __tmp283973 __tmp283957))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp283984
                                                         __tmp283956))))
                                            (declare (not safe))
                                            (cons '%#if __tmp283955))))
                                     (declare (not safe))
                                     (cons __tmp283954 '()))))
                              (declare (not safe))
                              (cons __tmp283992 __tmp283953))))
                      (declare (not safe))
                      (cons '%#let-values __tmp283952))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp283950 _stx278002_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp283941
                                                            (let ((__tmp283942
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp283948
                                  (let ((__tmp283949
                                         (let ()
                                           (declare (not safe))
                                           (cons 'unchecked-slot-ref '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp283949)))
                                 (__tmp283943
                                  (let ((__tmp283944
                                         (let ((__tmp283945
                                                (let ((__tmp283946
                                                       (let ((__tmp283947
                                                              (##structure-ref
                                                               _self278001_
                                                               '2
                                                               gxc#!accessor::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp283947
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote
                                                        __tmp283946))))
                                           (declare (not safe))
                                           (cons __tmp283945 '()))))
                                    (declare (not safe))
                                    (cons _object278043_ __tmp283944))))
                             (declare (not safe))
                             (cons __tmp283948 __tmp283943))))
                      (declare (not safe))
                      (cons '%#call __tmp283942))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp283941 _stx278002_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _hd278009278023_)
                              (let ()
                                (declare (not safe))
                                (_g278005278015_ _g278006278018_)))))
                      (let ()
                        (declare (not safe))
                        (_g278005278015_ _g278006278018_))))))
          (declare (not safe))
          (_g278004278053_ _args278003_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__t283242)
        (let ((__id283243
               (let ((__tmp283246
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t283242 'id))))
                 (if __tmp283246 __tmp283246 (error '"Unknown slot" 'id))))
              (__checked?283244
               (let ((__tmp283247
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t283242 'checked?))))
                 (if __tmp283247
                     __tmp283247
                     (error '"Unknown slot" 'checked?))))
              (__slot283245
               (let ((__tmp283248
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t283242 'slot))))
                 (if __tmp283248 __tmp283248 (error '"Unknown slot" 'slot)))))
          (lambda (_self278001_ _stx278002_ _args278003_)
            (let* ((_g278005278015_
                    (lambda (_g278006278012_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g278006278012_))))
                   (_g278004278053_
                    (lambda (_g278006278018_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g278006278018_))
                          (let ((_e278010278020_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g278006278018_))))
                            (let ((_hd278009278023_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e278010278020_)))
                                  (_tl278008278025_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e278010278020_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl278008278025_))
                                  ((lambda (_L278028_)
                                     (let* ((_klass278039_
                                             (let ((__tmp284026
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self278001_
                                                       __id283243
                                                       __t283242
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx278002_
                                                __tmp284026)))
                                            (_field278041_
                                             (let ((__tmp284027
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self278001_
                                                       __slot283245
                                                       __t283242
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _klass278039_
                                                __tmp284027)))
                                            (_object278043_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L278028_))))
                                       (if (##structure-ref
                                            _klass278039_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp284104
                                                  (let ((__tmp284113
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self278001_
                        __checked?283244
                        __t283242
                        '#f))
                     '%#struct-direct-ref
                     '%#struct-unchecked-ref))
                (__tmp284105
                 (let ((__tmp284110
                        (let ((__tmp284111
                               (let ((__tmp284112
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _self278001_
                                         __id283243
                                         __t283242
                                         '#f))))
                                 (declare (not safe))
                                 (cons __tmp284112 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp284111)))
                       (__tmp284106
                        (let ((__tmp284108
                               (let ((__tmp284109
                                      (let ()
                                        (declare (not safe))
                                        (cons _field278041_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp284109)))
                              (__tmp284107
                               (let ()
                                 (declare (not safe))
                                 (cons _object278043_ '()))))
                          (declare (not safe))
                          (cons __tmp284108 __tmp284107))))
                   (declare (not safe))
                   (cons __tmp284110 __tmp284106))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp284113
                                                          __tmp284105))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp284104
                                              _stx278002_))
                                           (if (##structure-ref
                                                _klass278039_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp284094
                                                      (let ((__tmp284103
                                                             (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self278001_
                            __checked?283244
                            __t283242
                            '#f))
                         '%#struct-ref
                         '%#struct-unchecked-ref))
                    (__tmp284095
                     (let ((__tmp284100
                            (let ((__tmp284101
                                   (let ((__tmp284102
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self278001_
                                             __id283243
                                             __t283242
                                             '#f))))
                                     (declare (not safe))
                                     (cons __tmp284102 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp284101)))
                           (__tmp284096
                            (let ((__tmp284098
                                   (let ((__tmp284099
                                          (let ()
                                            (declare (not safe))
                                            (cons _field278041_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp284099)))
                                  (__tmp284097
                                   (let ()
                                     (declare (not safe))
                                     (cons _object278043_ '()))))
                              (declare (not safe))
                              (cons __tmp284098 __tmp284097))))
                       (declare (not safe))
                       (cons __tmp284100 __tmp284096))))
                (declare (not safe))
                (cons __tmp284103 __tmp284095))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp284094
                                                  _stx278002_))
                                               (let ((_$e278046_
                                                      (let ((__tmp284028
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self278001_
                        __slot283245
                        __t283242
                        '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _klass278039_ __tmp284028))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e278046_
                                                     ((lambda (_klass278049_)
                                                        (let ((__tmp284084
                                                               (let ((__tmp284093
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self278001_
                                     __checked?283244
                                     __t283242
                                     '#f))
                                  '%#struct-ref
                                  '%#struct-unchecked-ref))
                             (__tmp284085
                              (let ((__tmp284090
                                     (let ((__tmp284091
                                            (let ((__tmp284092
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self278001_
                                                      __id283243
                                                      __t283242
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp284092 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp284091)))
                                    (__tmp284086
                                     (let ((__tmp284088
                                            (let ((__tmp284089
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field278041_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp284089)))
                                           (__tmp284087
                                            (let ()
                                              (declare (not safe))
                                              (cons _object278043_ '()))))
                                       (declare (not safe))
                                       (cons __tmp284088 __tmp284087))))
                                (declare (not safe))
                                (cons __tmp284090 __tmp284086))))
                         (declare (not safe))
                         (cons __tmp284093 __tmp284085))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp284084 _stx278002_)))
              _$e278046_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _self278001_
                                                            __checked?283244
                                                            __t283242
                                                            '#f))
                                                         (let ((__tmp284038
                                                                (let* ((_$obj278051_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp284039 (gensym '__obj)))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp284039)))
                               (__tmp284040
                                (let ((__tmp284080
                                       (let ((__tmp284081
                                              (let ((__tmp284083
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _$obj278051_
                                                             '())))
                                                    (__tmp284082
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _object278043_
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp284083
                                                      __tmp284082))))
                                         (declare (not safe))
                                         (cons __tmp284081 '())))
                                      (__tmp284041
                                       (let ((__tmp284042
                                              (let ((__tmp284043
                                                     (let ((__tmp284072
                                                            (let ((__tmp284073
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp284077
                                  (let ((__tmp284078
                                         (let ((__tmp284079
                                                (##structure-ref
                                                 _klass278039_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp284079 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp284078)))
                                 (__tmp284074
                                  (let ((__tmp284075
                                         (let ((__tmp284076
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj278051_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp284076))))
                                    (declare (not safe))
                                    (cons __tmp284075 '()))))
                             (declare (not safe))
                             (cons __tmp284077 __tmp284074))))
                      (declare (not safe))
                      (cons '%#struct-direct-instance? __tmp284073)))
                   (__tmp284044
                    (let ((__tmp284061
                           (let ((__tmp284062
                                  (let ((__tmp284069
                                         (let ((__tmp284070
                                                (let ((__tmp284071
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self278001_
                                                          __id283243
                                                          __t283242
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp284071 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp284070)))
                                        (__tmp284063
                                         (let ((__tmp284067
                                                (let ((__tmp284068
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field278041_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp284068)))
                                               (__tmp284064
                                                (let ((__tmp284065
                                                       (let ((__tmp284066
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj278051_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp284066))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp284065 '()))))
                                           (declare (not safe))
                                           (cons __tmp284067 __tmp284064))))
                                    (declare (not safe))
                                    (cons __tmp284069 __tmp284063))))
                             (declare (not safe))
                             (cons '%#struct-unchecked-ref __tmp284062)))
                          (__tmp284045
                           (let ((__tmp284046
                                  (let ((__tmp284047
                                         (let ((__tmp284059
                                                (let ((__tmp284060
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-slot-ref
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp284060)))
                                               (__tmp284048
                                                (let ((__tmp284056
                                                       (let ((__tmp284057
                                                              (let ((__tmp284058
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self278001_
                                __id283243
                                __t283242
                                '#f))))
                        (declare (not safe))
                        (cons __tmp284058 '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp284057)))
              (__tmp284049
               (let ((__tmp284054
                      (let ((__tmp284055
                             (let ()
                               (declare (not safe))
                               (cons _$obj278051_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp284055)))
                     (__tmp284050
                      (let ((__tmp284051
                             (let ((__tmp284052
                                    (let ((__tmp284053
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _self278001_
                                              __slot283245
                                              __t283242
                                              '#f))))
                                      (declare (not safe))
                                      (cons __tmp284053 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp284052))))
                        (declare (not safe))
                        (cons __tmp284051 '()))))
                 (declare (not safe))
                 (cons __tmp284054 __tmp284050))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp284056
                                                        __tmp284049))))
                                           (declare (not safe))
                                           (cons __tmp284059 __tmp284048))))
                                    (declare (not safe))
                                    (cons '%#call __tmp284047))))
                             (declare (not safe))
                             (cons __tmp284046 '()))))
                      (declare (not safe))
                      (cons __tmp284061 __tmp284045))))
               (declare (not safe))
               (cons __tmp284072 __tmp284044))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#if __tmp284043))))
                                         (declare (not safe))
                                         (cons __tmp284042 '()))))
                                  (declare (not safe))
                                  (cons __tmp284080 __tmp284041))))
                          (declare (not safe))
                          (cons '%#let-values __tmp284040))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp284038 _stx278002_))
                 (let ((__tmp284029
                        (let ((__tmp284030
                               (let ((__tmp284036
                                      (let ((__tmp284037
                                             (let ()
                                               (declare (not safe))
                                               (cons 'unchecked-slot-ref
                                                     '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp284037)))
                                     (__tmp284031
                                      (let ((__tmp284032
                                             (let ((__tmp284033
                                                    (let ((__tmp284034
                                                           (let ((__tmp284035
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _self278001_
                             __slot283245
                             __t283242
                             '#f))))
                     (declare (not safe))
                     (cons __tmp284035 '()))))
              (declare (not safe))
              (cons '%#quote __tmp284034))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp284033 '()))))
                                        (declare (not safe))
                                        (cons _object278043_ __tmp284032))))
                                 (declare (not safe))
                                 (cons __tmp284036 __tmp284031))))
                          (declare (not safe))
                          (cons '%#call __tmp284030))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp284029 _stx278002_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd278009278023_)
                                  (let ()
                                    (declare (not safe))
                                    (_g278005278015_ _g278006278018_)))))
                          (let ()
                            (declare (not safe))
                            (_g278005278015_ _g278006278018_))))))
              (declare (not safe))
              (_g278004278053_ _args278003_))))))
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
      (lambda (_self277806_ _stx277807_ _args277808_)
        (let* ((_g277810277824_
                (lambda (_g277811277821_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g277811277821_))))
               (_g277809277876_
                (lambda (_g277811277827_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g277811277827_))
                      (let ((_e277816277829_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g277811277827_))))
                        (let ((_hd277815277832_
                               (let ()
                                 (declare (not safe))
                                 (##car _e277816277829_)))
                              (_tl277814277834_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e277816277829_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl277814277834_))
                              (let ((_e277819277837_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl277814277834_))))
                                (let ((_hd277818277840_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e277819277837_)))
                                      (_tl277817277842_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e277819277837_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl277817277842_))
                                      ((lambda (_L277845_ _L277846_)
                                         (let* ((_klass277860_
                                                 (let ((__tmp284114
                                                        (##structure-ref
                                                         _self277806_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _stx277807_
                                                    __tmp284114)))
                                                (_field277862_
                                                 (let ((__tmp284115
                                                        (##structure-ref
                                                         _self277806_
                                                         '2
                                                         gxc#!mutator::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass277860_
                                                    __tmp284115)))
                                                (_object277864_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L277846_)))
                                                (_value277866_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L277845_))))
                                           (if (##structure-ref
                                                _klass277860_
                                                '8
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp284197
                                                      (let ((__tmp284207
                                                             (if (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _self277806_
                          '3
                          gxc#!mutator::t
                          '#f)
                         '%#struct-direct-set!
                         '%#struct-unchecked-set!))
                    (__tmp284198
                     (let ((__tmp284204
                            (let ((__tmp284205
                                   (let ((__tmp284206
                                          (##structure-ref
                                           _self277806_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp284206 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp284205)))
                           (__tmp284199
                            (let ((__tmp284202
                                   (let ((__tmp284203
                                          (let ()
                                            (declare (not safe))
                                            (cons _field277862_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp284203)))
                                  (__tmp284200
                                   (let ((__tmp284201
                                          (let ()
                                            (declare (not safe))
                                            (cons _value277866_ '()))))
                                     (declare (not safe))
                                     (cons _object277864_ __tmp284201))))
                              (declare (not safe))
                              (cons __tmp284202 __tmp284200))))
                       (declare (not safe))
                       (cons __tmp284204 __tmp284199))))
                (declare (not safe))
                (cons __tmp284207 __tmp284198))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp284197
                                                  _stx277807_))
                                               (if (##structure-ref
                                                    _klass277860_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp284186
                                                          (let ((__tmp284196
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##structure-ref
                              _self277806_
                              '3
                              gxc#!mutator::t
                              '#f)
                             '%#struct-set!
                             '%#struct-unchecked-set!))
                        (__tmp284187
                         (let ((__tmp284193
                                (let ((__tmp284194
                                       (let ((__tmp284195
                                              (##structure-ref
                                               _self277806_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp284195 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp284194)))
                               (__tmp284188
                                (let ((__tmp284191
                                       (let ((__tmp284192
                                              (let ()
                                                (declare (not safe))
                                                (cons _field277862_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp284192)))
                                      (__tmp284189
                                       (let ((__tmp284190
                                              (let ()
                                                (declare (not safe))
                                                (cons _value277866_ '()))))
                                         (declare (not safe))
                                         (cons _object277864_ __tmp284190))))
                                  (declare (not safe))
                                  (cons __tmp284191 __tmp284189))))
                           (declare (not safe))
                           (cons __tmp284193 __tmp284188))))
                    (declare (not safe))
                    (cons __tmp284196 __tmp284187))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp284186
                                                      _stx277807_))
                                                   (let ((_$e277869_
                                                          (let ((__tmp284116
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref
                          _self277806_
                          '2
                          gxc#!mutator::t
                          '#f)))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct _klass277860_ __tmp284116))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e277869_
                                                         ((lambda (_klass277872_)
                                                            (let ((__tmp284175
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp284185
                                  (if (##structure-ref
                                       _self277806_
                                       '3
                                       gxc#!mutator::t
                                       '#f)
                                      '%#struct-set!
                                      '%#struct-unchecked-set!))
                                 (__tmp284176
                                  (let ((__tmp284182
                                         (let ((__tmp284183
                                                (let ((__tmp284184
                                                       (##structure-ref
                                                        _self277806_
                                                        '1
                                                        gxc#!type::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp284184 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp284183)))
                                        (__tmp284177
                                         (let ((__tmp284180
                                                (let ((__tmp284181
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field277862_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp284181)))
                                               (__tmp284178
                                                (let ((__tmp284179
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _value277866_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons _object277864_
                                                        __tmp284179))))
                                           (declare (not safe))
                                           (cons __tmp284180 __tmp284178))))
                                    (declare (not safe))
                                    (cons __tmp284182 __tmp284177))))
                             (declare (not safe))
                             (cons __tmp284185 __tmp284176))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp284175 _stx277807_)))
                  _$e277869_)
                 (if (##structure-ref _self277806_ '3 gxc#!mutator::t '#f)
                     (let ((__tmp284127
                            (let* ((_$obj277874_
                                    (let ((__tmp284128 (gensym '__obj)))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp284128)))
                                   (__tmp284129
                                    (let ((__tmp284171
                                           (let ((__tmp284172
                                                  (let ((__tmp284174
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj277874_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp284173
                 (let () (declare (not safe)) (cons _object277864_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp284174
                                                          __tmp284173))))
                                             (declare (not safe))
                                             (cons __tmp284172 '())))
                                          (__tmp284130
                                           (let ((__tmp284131
                                                  (let ((__tmp284132
                                                         (let ((__tmp284163
                                                                (let ((__tmp284164
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp284168
                                      (let ((__tmp284169
                                             (let ((__tmp284170
                                                    (##structure-ref
                                                     _klass277860_
                                                     '1
                                                     gxc#!type::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp284170 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp284169)))
                                     (__tmp284165
                                      (let ((__tmp284166
                                             (let ((__tmp284167
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj277874_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp284167))))
                                        (declare (not safe))
                                        (cons __tmp284166 '()))))
                                 (declare (not safe))
                                 (cons __tmp284168 __tmp284165))))
                          (declare (not safe))
                          (cons '%#struct-direct-instance? __tmp284164)))
                       (__tmp284133
                        (let ((__tmp284151
                               (let ((__tmp284152
                                      (let ((__tmp284160
                                             (let ((__tmp284161
                                                    (let ((__tmp284162
                                                           (##structure-ref
                                                            _self277806_
                                                            '1
                                                            gxc#!type::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (cons __tmp284162 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp284161)))
                                            (__tmp284153
                                             (let ((__tmp284158
                                                    (let ((__tmp284159
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field277862_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp284159)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp284154
                                                    (let ((__tmp284156
                                                           (let ((__tmp284157
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj277874_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp284157)))
                  (__tmp284155
                   (let () (declare (not safe)) (cons _value277866_ '()))))
              (declare (not safe))
              (cons __tmp284156 __tmp284155))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp284158
                                                     __tmp284154))))
                                        (declare (not safe))
                                        (cons __tmp284160 __tmp284153))))
                                 (declare (not safe))
                                 (cons '%#struct-unchecked-set! __tmp284152)))
                              (__tmp284134
                               (let ((__tmp284135
                                      (let ((__tmp284136
                                             (let ((__tmp284149
                                                    (let ((__tmp284150
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp284150)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp284137
                                                    (let ((__tmp284146
                                                           (let ((__tmp284147
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp284148
                                 (##structure-ref
                                  _self277806_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (cons __tmp284148 '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp284147)))
                  (__tmp284138
                   (let ((__tmp284144
                          (let ((__tmp284145
                                 (let ()
                                   (declare (not safe))
                                   (cons _$obj277874_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp284145)))
                         (__tmp284139
                          (let ((__tmp284141
                                 (let ((__tmp284142
                                        (let ((__tmp284143
                                               (##structure-ref
                                                _self277806_
                                                '2
                                                gxc#!mutator::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp284143 '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp284142)))
                                (__tmp284140
                                 (let ()
                                   (declare (not safe))
                                   (cons _value277866_ '()))))
                            (declare (not safe))
                            (cons __tmp284141 __tmp284140))))
                     (declare (not safe))
                     (cons __tmp284144 __tmp284139))))
              (declare (not safe))
              (cons __tmp284146 __tmp284138))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp284149
                                                     __tmp284137))))
                                        (declare (not safe))
                                        (cons '%#call __tmp284136))))
                                 (declare (not safe))
                                 (cons __tmp284135 '()))))
                          (declare (not safe))
                          (cons __tmp284151 __tmp284134))))
                   (declare (not safe))
                   (cons __tmp284163 __tmp284133))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#if __tmp284132))))
                                             (declare (not safe))
                                             (cons __tmp284131 '()))))
                                      (declare (not safe))
                                      (cons __tmp284171 __tmp284130))))
                              (declare (not safe))
                              (cons '%#let-values __tmp284129))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp284127 _stx277807_))
                     (let ((__tmp284117
                            (let ((__tmp284118
                                   (let ((__tmp284125
                                          (let ((__tmp284126
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'unchecked-slot-set!
                                                         '()))))
                                            (declare (not safe))
                                            (cons '%#ref __tmp284126)))
                                         (__tmp284119
                                          (let ((__tmp284120
                                                 (let ((__tmp284122
                                                        (let ((__tmp284123
                                                               (let ((__tmp284124
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##structure-ref
                               _self277806_
                               '2
                               gxc#!mutator::t
                               '#f)))
                         (declare (not safe))
                         (cons __tmp284124 '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp284123)))
               (__tmp284121
                (let () (declare (not safe)) (cons _value277866_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp284122
                                                         __tmp284121))))
                                            (declare (not safe))
                                            (cons _object277864_
                                                  __tmp284120))))
                                     (declare (not safe))
                                     (cons __tmp284125 __tmp284119))))
                              (declare (not safe))
                              (cons '%#call __tmp284118))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp284117 _stx277807_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd277818277840_
                                       _hd277815277832_)
                                      (let ()
                                        (declare (not safe))
                                        (_g277810277824_ _g277811277827_)))))
                              (let ()
                                (declare (not safe))
                                (_g277810277824_ _g277811277827_)))))
                      (let ()
                        (declare (not safe))
                        (_g277810277824_ _g277811277827_))))))
          (declare (not safe))
          (_g277809277876_ _args277808_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__t283249)
        (let ((__id283250
               (let ((__tmp283253
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t283249 'id))))
                 (if __tmp283253 __tmp283253 (error '"Unknown slot" 'id))))
              (__checked?283251
               (let ((__tmp283254
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t283249 'checked?))))
                 (if __tmp283254
                     __tmp283254
                     (error '"Unknown slot" 'checked?))))
              (__slot283252
               (let ((__tmp283255
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t283249 'slot))))
                 (if __tmp283255 __tmp283255 (error '"Unknown slot" 'slot)))))
          (lambda (_self277806_ _stx277807_ _args277808_)
            (let* ((_g277810277824_
                    (lambda (_g277811277821_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g277811277821_))))
                   (_g277809277876_
                    (lambda (_g277811277827_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g277811277827_))
                          (let ((_e277816277829_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g277811277827_))))
                            (let ((_hd277815277832_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e277816277829_)))
                                  (_tl277814277834_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e277816277829_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl277814277834_))
                                  (let ((_e277819277837_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl277814277834_))))
                                    (let ((_hd277818277840_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e277819277837_)))
                                          (_tl277817277842_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e277819277837_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl277817277842_))
                                          ((lambda (_L277845_ _L277846_)
                                             (let* ((_klass277860_
                                                     (let ((__tmp284208
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self277806_
                                                               __id283250
                                                               __t283249
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _stx277807_
                                                        __tmp284208)))
                                                    (_field277862_
                                                     (let ((__tmp284209
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self277806_
                                                               __slot283252
                                                               __t283249
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass277860_
                                                        __tmp284209)))
                                                    (_object277864_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L277846_)))
                                                    (_value277866_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L277845_))))
                                               (if (##structure-ref
                                                    _klass277860_
                                                    '8
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp284291
                                                          (let ((__tmp284301
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self277806_
                                __checked?283251
                                __t283249
                                '#f))
                             '%#struct-direct-set!
                             '%#struct-unchecked-set!))
                        (__tmp284292
                         (let ((__tmp284298
                                (let ((__tmp284299
                                       (let ((__tmp284300
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _self277806_
                                                 __id283250
                                                 __t283249
                                                 '#f))))
                                         (declare (not safe))
                                         (cons __tmp284300 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp284299)))
                               (__tmp284293
                                (let ((__tmp284296
                                       (let ((__tmp284297
                                              (let ()
                                                (declare (not safe))
                                                (cons _field277862_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp284297)))
                                      (__tmp284294
                                       (let ((__tmp284295
                                              (let ()
                                                (declare (not safe))
                                                (cons _value277866_ '()))))
                                         (declare (not safe))
                                         (cons _object277864_ __tmp284295))))
                                  (declare (not safe))
                                  (cons __tmp284296 __tmp284294))))
                           (declare (not safe))
                           (cons __tmp284298 __tmp284293))))
                    (declare (not safe))
                    (cons __tmp284301 __tmp284292))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp284291
                                                      _stx277807_))
                                                   (if (##structure-ref
                                                        _klass277860_
                                                        '7
                                                        gxc#!class::t
                                                        '#f)
                                                       (let ((__tmp284280
                                                              (let ((__tmp284290
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _self277806_
                                    __checked?283251
                                    __t283249
                                    '#f))
                                 '%#struct-set!
                                 '%#struct-unchecked-set!))
                            (__tmp284281
                             (let ((__tmp284287
                                    (let ((__tmp284288
                                           (let ((__tmp284289
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self277806_
                                                     __id283250
                                                     __t283249
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp284289 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp284288)))
                                   (__tmp284282
                                    (let ((__tmp284285
                                           (let ((__tmp284286
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _field277862_ '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp284286)))
                                          (__tmp284283
                                           (let ((__tmp284284
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _value277866_ '()))))
                                             (declare (not safe))
                                             (cons _object277864_
                                                   __tmp284284))))
                                      (declare (not safe))
                                      (cons __tmp284285 __tmp284283))))
                               (declare (not safe))
                               (cons __tmp284287 __tmp284282))))
                        (declare (not safe))
                        (cons __tmp284290 __tmp284281))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp284280 _stx277807_))
               (let ((_$e277869_
                      (let ((__tmp284210
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self277806_
                                __slot283252
                                __t283249
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _klass277860_
                         __tmp284210))))
                 (if _$e277869_
                     ((lambda (_klass277872_)
                        (let ((__tmp284269
                               (let ((__tmp284279
                                      (if (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self277806_
                                             __checked?283251
                                             __t283249
                                             '#f))
                                          '%#struct-set!
                                          '%#struct-unchecked-set!))
                                     (__tmp284270
                                      (let ((__tmp284276
                                             (let ((__tmp284277
                                                    (let ((__tmp284278
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _self277806_
                                                              __id283250
                                                              __t283249
                                                              '#f))))
                                                      (declare (not safe))
                                                      (cons __tmp284278 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp284277)))
                                            (__tmp284271
                                             (let ((__tmp284274
                                                    (let ((__tmp284275
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field277862_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp284275)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp284272
                                                    (let ((__tmp284273
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _value277866_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _object277864_ __tmp284273))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp284274
                                                     __tmp284272))))
                                        (declare (not safe))
                                        (cons __tmp284276 __tmp284271))))
                                 (declare (not safe))
                                 (cons __tmp284279 __tmp284270))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp284269 _stx277807_)))
                      _$e277869_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self277806_
                            __checked?283251
                            __t283249
                            '#f))
                         (let ((__tmp284221
                                (let* ((_$obj277874_
                                        (let ((__tmp284222 (gensym '__obj)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp284222)))
                                       (__tmp284223
                                        (let ((__tmp284265
                                               (let ((__tmp284266
                                                      (let ((__tmp284268
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj277874_ '())))
                    (__tmp284267
                     (let () (declare (not safe)) (cons _object277864_ '()))))
                (declare (not safe))
                (cons __tmp284268 __tmp284267))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp284266 '())))
                                              (__tmp284224
                                               (let ((__tmp284225
                                                      (let ((__tmp284226
                                                             (let ((__tmp284257
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp284258
                                   (let ((__tmp284262
                                          (let ((__tmp284263
                                                 (let ((__tmp284264
                                                        (##structure-ref
                                                         _klass277860_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp284264 '()))))
                                            (declare (not safe))
                                            (cons '%#quote __tmp284263)))
                                         (__tmp284259
                                          (let ((__tmp284260
                                                 (let ((__tmp284261
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj277874_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp284261))))
                                            (declare (not safe))
                                            (cons __tmp284260 '()))))
                                     (declare (not safe))
                                     (cons __tmp284262 __tmp284259))))
                              (declare (not safe))
                              (cons '%#struct-direct-instance? __tmp284258)))
                           (__tmp284227
                            (let ((__tmp284245
                                   (let ((__tmp284246
                                          (let ((__tmp284254
                                                 (let ((__tmp284255
                                                        (let ((__tmp284256
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _self277806_
                          __id283250
                          __t283249
                          '#f))))
                  (declare (not safe))
                  (cons __tmp284256 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp284255)))
                                                (__tmp284247
                                                 (let ((__tmp284252
                                                        (let ((__tmp284253
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _field277862_ '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp284253)))
               (__tmp284248
                (let ((__tmp284250
                       (let ((__tmp284251
                              (let ()
                                (declare (not safe))
                                (cons _$obj277874_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp284251)))
                      (__tmp284249
                       (let () (declare (not safe)) (cons _value277866_ '()))))
                  (declare (not safe))
                  (cons __tmp284250 __tmp284249))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp284252
                                                         __tmp284248))))
                                            (declare (not safe))
                                            (cons __tmp284254 __tmp284247))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp284246)))
                                  (__tmp284228
                                   (let ((__tmp284229
                                          (let ((__tmp284230
                                                 (let ((__tmp284243
                                                        (let ((__tmp284244
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons 'class-slot-set! '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp284244)))
               (__tmp284231
                (let ((__tmp284240
                       (let ((__tmp284241
                              (let ((__tmp284242
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _self277806_
                                        __id283250
                                        __t283249
                                        '#f))))
                                (declare (not safe))
                                (cons __tmp284242 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp284241)))
                      (__tmp284232
                       (let ((__tmp284238
                              (let ((__tmp284239
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj277874_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp284239)))
                             (__tmp284233
                              (let ((__tmp284235
                                     (let ((__tmp284236
                                            (let ((__tmp284237
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self277806_
                                                      __slot283252
                                                      __t283249
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp284237 '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp284236)))
                                    (__tmp284234
                                     (let ()
                                       (declare (not safe))
                                       (cons _value277866_ '()))))
                                (declare (not safe))
                                (cons __tmp284235 __tmp284234))))
                         (declare (not safe))
                         (cons __tmp284238 __tmp284233))))
                  (declare (not safe))
                  (cons __tmp284240 __tmp284232))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp284243
                                                         __tmp284231))))
                                            (declare (not safe))
                                            (cons '%#call __tmp284230))))
                                     (declare (not safe))
                                     (cons __tmp284229 '()))))
                              (declare (not safe))
                              (cons __tmp284245 __tmp284228))))
                       (declare (not safe))
                       (cons __tmp284257 __tmp284227))))
                (declare (not safe))
                (cons '%#if __tmp284226))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp284225 '()))))
                                          (declare (not safe))
                                          (cons __tmp284265 __tmp284224))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp284223))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp284221 _stx277807_))
                         (let ((__tmp284211
                                (let ((__tmp284212
                                       (let ((__tmp284219
                                              (let ((__tmp284220
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons 'unchecked-slot-set!
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#ref __tmp284220)))
                                             (__tmp284213
                                              (let ((__tmp284214
                                                     (let ((__tmp284216
                                                            (let ((__tmp284217
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp284218
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self277806_
                                     __slot283252
                                     __t283249
                                     '#f))))
                             (declare (not safe))
                             (cons __tmp284218 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp284217)))
                   (__tmp284215
                    (let () (declare (not safe)) (cons _value277866_ '()))))
               (declare (not safe))
               (cons __tmp284216 __tmp284215))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _object277864_
                                                      __tmp284214))))
                                         (declare (not safe))
                                         (cons __tmp284219 __tmp284213))))
                                  (declare (not safe))
                                  (cons '%#call __tmp284212))))
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp284211
                            _stx277807_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _hd277818277840_
                                           _hd277815277832_)
                                          (let ()
                                            (declare (not safe))
                                            (_g277810277824_
                                             _g277811277827_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g277810277824_ _g277811277827_)))))
                          (let ()
                            (declare (not safe))
                            (_g277810277824_ _g277811277827_))))))
              (declare (not safe))
              (_g277809277876_ _args277808_))))))
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
      (lambda (_self277640_ _stx277641_ _args277642_)
        (let* ((_self277643277652_ _self277640_)
               (_E277645277656_
                (lambda () (error '"No clause matching" _self277643277652_)))
               (_K277646277663_
                (lambda (_inline277659_ _dispatch277660_ _arity277661_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self277640_ _args277642_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx277641_
                         _arity277661_)))
                  (if _inline277659_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp284307
                               (let ((__tmp284308
                                      (_inline277659_ _stx277641_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp284308
                                  _stx277641_))))
                          (declare (not safe))
                          (gxc#compile-e__0 __tmp284307)))
                      (if _dispatch277660_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch277660_))
                            (let ((__tmp284302
                                   (let ((__tmp284303
                                          (let ((__tmp284304
                                                 (let ((__tmp284305
                                                        (let ((__tmp284306
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch277660_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp284306))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp284305
                                                         _args277642_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp284304))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp284303
                                      _stx277641_))))
                              (declare (not safe))
                              (gxc#compile-e__0 __tmp284302)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _stx277641_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self277643277652_ 'gxc#!lambda::t))
              (let* ((_e277647277666_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self277643277652_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e277648277669_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self277643277652_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity277672_ _e277648277669_)
                     (_e277649277674_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self277643277652_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch277677_ _e277649277674_)
                     (_e277650277679_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self277643277652_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline277682_ _e277650277679_))
                (declare (not safe))
                (_K277646277663_
                 _inline277682_
                 _dispatch277677_
                 _arity277672_))
              (let () (declare (not safe)) (_E277645277656_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self277479_ _stx277480_ _args277481_)
        (let* ((_self277482277489_ _self277479_)
               (_E277484277493_
                (lambda () (error '"No clause matching" _self277482277489_)))
               (_K277485277507_
                (lambda (_clauses277496_)
                  (let ((_$e277502_
                         (let ((__tmp284309
                                (lambda (_g277497277499_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g277497277499_
                                     _args277481_)))))
                           (declare (not safe))
                           (find __tmp284309 _clauses277496_))))
                    (if _$e277502_
                        ((lambda (_clause277505_)
                           (let ((__method283524
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause277505_
                                     'optimize-call))))
                             (if __method283524
                                 (__method283524
                                  _clause277505_
                                  _stx277480_
                                  _args277481_)
                                 (error '"Missing method"
                                        _clause277505_
                                        'optimize-call))))
                         _$e277502_)
                        (let ((__tmp284310
                               (map gxc#!lambda-arity _clauses277496_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx277480_
                           __tmp284310)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self277482277489_
                 'gxc#!case-lambda::t))
              (let* ((_e277486277510_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self277482277489_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e277487277513_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self277482277489_
                         '2
                         gxc#!case-lambda::t
                         '#f)))
                     (_clauses277516_ _e277487277513_))
                (declare (not safe))
                (_K277485277507_ _clauses277516_))
              (let () (declare (not safe)) (_E277484277493_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self277293_ _args277294_)
        (let* ((_self277295277302_ _self277293_)
               (_E277297277306_
                (lambda () (error '"No clause matching" _self277295277302_)))
               (_K277298277346_
                (lambda (_arity277309_)
                  (let* ((_arity277310277319_ _arity277309_)
                         (_E277313277323_
                          (lambda ()
                            (error '"No clause matching"
                                   _arity277310277319_))))
                    (let ((_K277317277343_
                           (lambda ()
                             (fx= (length _args277294_) _arity277309_)))
                          (_K277314277329_
                           (lambda (_arity277327_)
                             (fx>= (length _args277294_) _arity277327_))))
                      (let ((_try-match277312277339_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity277310277319_))
                                   (let ((_tl277316277334_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity277310277319_)))
                                         (_hd277315277332_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity277310277319_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl277316277334_))
                                         (let ((_arity277337_
                                                _hd277315277332_))
                                           (declare (not safe))
                                           (_K277314277329_ _arity277337_))
                                         (let ()
                                           (declare (not safe))
                                           (_E277313277323_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E277313277323_))))))
                        (if (fixnum? _arity277310277319_)
                            (let () (declare (not safe)) (_K277317277343_))
                            (let ()
                              (declare (not safe))
                              (_try-match277312277339_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self277295277302_ 'gxc#!lambda::t))
              (let* ((_e277299277349_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self277295277302_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e277300277352_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self277295277302_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity277355_ _e277300277352_))
                (declare (not safe))
                (_K277298277346_ _arity277355_))
              (let () (declare (not safe)) (_E277297277306_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self277178_ _stx277179_ _args277180_)
        (let* ((_self277181277189_ _self277178_)
               (_E277183277193_
                (lambda () (error '"No clause matching" _self277181277189_)))
               (_K277184277277_
                (lambda (_dispatch277196_ _table277197_)
                  (let* ((_g277198277207_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch277196_)))
                         (_else277200277215_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch277196_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _stx277179_))))
                         (_K277202277261_
                          (lambda (_main277218_ _keys277219_)
                            (let ((_g284311_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx277179_
                                      _args277180_))))
                              (begin
                                (let ((_g284312_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g284311_)
                                             (##vector-length _g284311_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g284312_ 2)))
                                      (error "Context expects 2 values"
                                             _g284312_)))
                                (let ((_pargs277221_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g284311_ 0)))
                                      (_kwargs277222_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g284311_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main277218_))
                                    (if _table277197_
                                        (let ((_xargs277229_
                                               (map (lambda (_key277224_)
                                                      (let ((_$e277226_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _key277224_ _kwargs277222_))))
                (if _$e277226_ (values _$e277226_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys277219_)))
                                          (for-each
                                           (lambda (_kw277231_)
                                             (if (memq (car _kw277231_)
                                                       _keys277219_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx277179_
                                                    _keys277219_
                                                    _kw277231_))))
                                           _kwargs277222_)
                                          (let ((__tmp284364
                                                 (let ((__tmp284365
                                                        (let ((__tmp284366
                                                               (let ((__tmp284371
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp284372
                                     (let ()
                                       (declare (not safe))
                                       (cons _main277218_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp284372)))
                             (__tmp284367
                              (let ((__tmp284369
                                     (let ((__tmp284370
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp284370)))
                                    (__tmp284368
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs277221_
                                               _xargs277229_))))
                                (declare (not safe))
                                (cons __tmp284369 __tmp284368))))
                         (declare (not safe))
                         (cons __tmp284371 __tmp284367))))
                  (declare (not safe))
                  (cons '%#call __tmp284366))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp284365
                                                    _stx277179_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0 __tmp284364)))
                                        (let* ((_kwt277233_
                                                (let ((__tmp284313
                                                       (gensym '__kwt)))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp284313)))
                                               (_kwvars277236_
                                                (map (lambda (_g284314_)
                                                       (let ((__tmp284315
                                                              (gensym '__kw)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp284315)))
                                                     _kwargs277222_))
                                               (_kwbind277241_
                                                (map (lambda (_kw277238_
                                                              _kwvar277239_)
                                                       (let ((__tmp284318
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar277239_ '())))
                     (__tmp284316
                      (let ((__tmp284317 (cdr _kw277238_)))
                        (declare (not safe))
                        (cons __tmp284317 '()))))
                 (declare (not safe))
                 (cons __tmp284318 __tmp284316)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs277222_
                                                     _kwvars277236_))
                                               (_kwset277246_
                                                (map (lambda (_kw277243_
                                                              _kwvar277244_)
                                                       (let ((__tmp284319
                                                              (let ((__tmp284320
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp284328
                                    (let ((__tmp284329
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt277233_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp284329)))
                                   (__tmp284321
                                    (let ((__tmp284325
                                           (let ((__tmp284326
                                                  (let ((__tmp284327
                                                         (car _kw277243_)))
                                                    (declare (not safe))
                                                    (cons __tmp284327 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp284326)))
                                          (__tmp284322
                                           (let ((__tmp284323
                                                  (let ((__tmp284324
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar277244_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp284324))))
                                             (declare (not safe))
                                             (cons __tmp284323 '()))))
                                      (declare (not safe))
                                      (cons __tmp284325 __tmp284322))))
                               (declare (not safe))
                               (cons __tmp284328 __tmp284321))))
                        (declare (not safe))
                        (cons '(%#ref hash-put!) __tmp284320))))
                 (declare (not safe))
                 (cons '%#call __tmp284319)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs277222_
                                                     _kwvars277236_))
                                               (_xkwargs277251_
                                                (map (lambda (_kw277248_
                                                              _kwvar277249_)
                                                       (let ((__tmp284332
                                                              (car _kw277248_))
                                                             (__tmp284330
                                                              (let ((__tmp284331
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar277249_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp284331))))
                 (declare (not safe))
                 (cons __tmp284332 __tmp284330)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs277222_
                                                     _kwvars277236_))
                                               (_xargs277258_
                                                (map (lambda (_key277253_)
                                                       (let ((_$e277255_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq _key277253_ _xkwargs277251_))))
                 (if _$e277255_ (values _$e277255_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys277219_)))
                                          (let ((__tmp284333
                                                 (let ((__tmp284334
                                                        (let ((__tmp284335
                                                               (let ((__tmp284336
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp284337
                                     (let ((__tmp284338
                                            (let ((__tmp284352
                                                   (let ((__tmp284353
                                                          (let ((__tmp284363
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt277233_ '())))
                        (__tmp284354
                         (let ((__tmp284355
                                (let ((__tmp284356
                                       (let ((__tmp284357
                                              (let ((__tmp284358
                                                     (let ((__tmp284359
                                                            (let ((__tmp284360
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp284361
                                  (let ((__tmp284362 (length _kwargs277222_)))
                                    (declare (not safe))
                                    (cons __tmp284362 '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp284361))))
                      (declare (not safe))
                      (cons __tmp284360 '()))))
               (declare (not safe))
               (cons '(%#quote size:) __tmp284359))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-hash-table-eq)
                                                      __tmp284358))))
                                         (declare (not safe))
                                         (cons '%#call __tmp284357))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp284356
                                   _stx277179_))))
                           (declare (not safe))
                           (cons __tmp284355 '()))))
                    (declare (not safe))
                    (cons __tmp284363 __tmp284354))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp284353 '())))
                                                  (__tmp284339
                                                   (let ((__tmp284340
                                                          (let ((__tmp284341
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp284342
                                (let ((__tmp284343
                                       (let ((__tmp284344
                                              (let ((__tmp284345
                                                     (let ((__tmp284350
                                                            (let ((__tmp284351
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main277218_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp284351)))
                   (__tmp284346
                    (let ((__tmp284348
                           (let ((__tmp284349
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt277233_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp284349)))
                          (__tmp284347
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs277221_ _xargs277258_))))
                      (declare (not safe))
                      (cons __tmp284348 __tmp284347))))
               (declare (not safe))
               (cons __tmp284350 __tmp284346))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp284345))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp284344
                                          _stx277179_))))
                                  (declare (not safe))
                                  (cons __tmp284343 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp284342 _kwset277246_))))
                    (declare (not safe))
                    (cons '%#begin __tmp284341))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp284340 '()))))
                                              (declare (not safe))
                                              (cons __tmp284352 __tmp284339))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp284338))))
                                (declare (not safe))
                                (cons __tmp284337 '()))))
                         (declare (not safe))
                         (cons _kwbind277241_ __tmp284336))))
                  (declare (not safe))
                  (cons '%#let-values __tmp284335))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp284334
                                                    _stx277179_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0
                                             __tmp284333)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g277198277207_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e277203277264_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g277198277207_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                               (_e277204277267_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g277198277207_
                                   '2
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_keys277270_ _e277204277267_)
                               (_e277205277272_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g277198277207_
                                   '3
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_main277275_ _e277205277272_))
                          (declare (not safe))
                          (_K277202277261_ _main277275_ _keys277270_))
                        (let () (declare (not safe)) (_else277200277215_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self277181277189_
                 'gxc#!kw-lambda::t))
              (let* ((_e277185277280_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self277181277189_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e277186277283_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self277181277189_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table277286_ _e277186277283_)
                     (_e277187277288_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self277181277189_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch277291_ _e277187277288_))
                (declare (not safe))
                (_K277184277277_ _dispatch277291_ _table277286_))
              (let () (declare (not safe)) (_E277183277193_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx276791_ _args276792_)
        (let _lp276794_ ((_rest276796_ _args276792_)
                         (_pargs276797_ '())
                         (_kwargs276798_ '()))
          (let* ((___stx283406283407_ _rest276796_)
                 (_g276804276856_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx283406283407_)))))
            (let ((___kont283408283409_
                   (lambda (_L277035_ _L277036_)
                     (let ((__tmp284373
                            (let ()
                              (declare (not safe))
                              (cons _L277036_ _pargs276797_))))
                       (declare (not safe))
                       (_lp276794_ _L277035_ __tmp284373 _kwargs276798_))))
                  (___kont283410283411_
                   (lambda (_L276981_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L276981_ _pargs276797_))
                             (reverse _kwargs276798_))))
                  (___kont283412283413_
                   (lambda (_L276928_ _L276929_ _L276930_)
                     (let ((_kw276947_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _L276930_))))
                       (if (assq _kw276947_ _kwargs276798_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx276791_
                              _kw276947_))
                           (let ((__tmp284374
                                  (let ((__tmp284375
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw276947_ _L276929_))))
                                    (declare (not safe))
                                    (cons __tmp284375 _kwargs276798_))))
                             (declare (not safe))
                             (_lp276794_
                              _L276928_
                              _pargs276797_
                              __tmp284374))))))
                  (___kont283414283415_
                   (lambda (_L276876_ _L276877_)
                     (let ((__tmp284376
                            (let ()
                              (declare (not safe))
                              (cons _L276877_ _pargs276797_))))
                       (declare (not safe))
                       (_lp276794_ _L276876_ __tmp284376 _kwargs276798_))))
                  (___kont283416283417_
                   (lambda ()
                     (values (reverse _pargs276797_)
                             (reverse _kwargs276798_)))))
              (let* ((_g276803276863_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx283406283407_))
                            (___kont283416283417_)
                            (let () (declare (not safe)) (_g276804276856_)))))
                     (___match283513283514_
                      (lambda (_e276837276896_
                               _hd276836276899_
                               _tl276835276901_
                               _e276840276904_
                               _hd276839276907_
                               _tl276838276909_
                               _e276843276912_
                               _hd276842276915_
                               _tl276841276917_
                               _e276846276920_
                               _hd276845276923_
                               _tl276844276925_)
                        (let ((_L276928_ _tl276844276925_)
                              (_L276929_ _hd276845276923_)
                              (_L276930_ _hd276842276915_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L276930_))
                              (___kont283412283413_
                               _L276928_
                               _L276929_
                               _L276930_)
                              (___kont283414283415_
                               _tl276835276901_
                               _hd276836276899_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx283406283407_))
                    (let ((_e276810277000_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx283406283407_))))
                      (let ((_tl276808277005_
                             (let ()
                               (declare (not safe))
                               (##cdr _e276810277000_)))
                            (_hd276809277003_
                             (let ()
                               (declare (not safe))
                               (##car _e276810277000_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd276809277003_))
                            (let ((_e276813277008_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd276809277003_))))
                              (let ((_tl276811277013_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e276813277008_)))
                                    (_hd276812277011_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e276813277008_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd276812277011_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd276812277011_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl276811277013_))
                                            (let ((_e276816277016_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl276811277013_))))
                                              (let ((_tl276814277021_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e276816277016_)))
                                                    (_hd276815277019_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e276816277016_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd276815277019_))
                                                    (let ((_e276817277024_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd276815277019_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e276817277024_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl276814277021_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl276808277005_))
                          (let ((_e276820277027_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl276808277005_))))
                            (let ((_tl276818277032_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e276820277027_)))
                                  (_hd276819277030_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e276820277027_))))
                              (___kont283408283409_
                               _tl276818277032_
                               _hd276819277030_)))
                          (___kont283414283415_
                           _tl276808277005_
                           _hd276809277003_))
                      (___kont283414283415_ _tl276808277005_ _hd276809277003_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e276817277024_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl276814277021_))
                          (___kont283410283411_ _tl276808277005_)
                          (___kont283414283415_
                           _tl276808277005_
                           _hd276809277003_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl276814277021_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl276808277005_))
                              (let ((_e276846276920_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl276808277005_))))
                                (let ((_tl276844276925_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e276846276920_)))
                                      (_hd276845276923_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e276846276920_))))
                                  (___match283513283514_
                                   _e276810277000_
                                   _hd276809277003_
                                   _tl276808277005_
                                   _e276813277008_
                                   _hd276812277011_
                                   _tl276811277013_
                                   _e276816277016_
                                   _hd276815277019_
                                   _tl276814277021_
                                   _e276846276920_
                                   _hd276845276923_
                                   _tl276844276925_)))
                              (___kont283414283415_
                               _tl276808277005_
                               _hd276809277003_))
                          (___kont283414283415_
                           _tl276808277005_
                           _hd276809277003_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl276814277021_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl276808277005_))
                                                            (let ((_e276846276920_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl276808277005_))))
                      (let ((_tl276844276925_
                             (let ()
                               (declare (not safe))
                               (##cdr _e276846276920_)))
                            (_hd276845276923_
                             (let ()
                               (declare (not safe))
                               (##car _e276846276920_))))
                        (___match283513283514_
                         _e276810277000_
                         _hd276809277003_
                         _tl276808277005_
                         _e276813277008_
                         _hd276812277011_
                         _tl276811277013_
                         _e276816277016_
                         _hd276815277019_
                         _tl276814277021_
                         _e276846276920_
                         _hd276845276923_
                         _tl276844276925_)))
                    (___kont283414283415_ _tl276808277005_ _hd276809277003_))
                (___kont283414283415_ _tl276808277005_ _hd276809277003_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont283414283415_
                                             _tl276808277005_
                                             _hd276809277003_))
                                        (___kont283414283415_
                                         _tl276808277005_
                                         _hd276809277003_))
                                    (___kont283414283415_
                                     _tl276808277005_
                                     _hd276809277003_))))
                            (___kont283414283415_
                             _tl276808277005_
                             _hd276809277003_))))
                    (let () (declare (not safe)) (_g276803276863_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self276787_ _stx276788_ _args276789_)
        (let () (declare (not safe)) (gxc#xform-call% _stx276788_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
