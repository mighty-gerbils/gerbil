(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1707830029)
  (begin
    (define gxc#&optimize-call
      (make-promise
       (lambda ()
         (let ((_tbl277913_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp282772 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-copy! _tbl277913_ __tmp282772))
           (let ()
             (declare (not safe))
             (table-set! _tbl277913_ '%#call gxc#optimize-call%))
           _tbl277913_))))
    (define gxc#apply-optimize-call
      (lambda (_stx277896_ . _args277898_)
        (let ((__tmp282774
               (lambda ()
                 (declare (not safe))
                 (if (null? _args277898_)
                     (gxc#compile-e__0 _stx277896_)
                     (let ((_arg1277903_ (car _args277898_))
                           (_rest277905_ (cdr _args277898_)))
                       (if (null? _rest277905_)
                           (gxc#compile-e__1 _stx277896_ _arg1277903_)
                           (let ((_arg2277908_ (car _rest277905_))
                                 (_rest277910_ (cdr _rest277905_)))
                             (if (null? _rest277910_)
                                 (gxc#compile-e__2
                                  _stx277896_
                                  _arg1277903_
                                  _arg2277908_)
                                 (apply gxc#compile-e
                                        _stx277896_
                                        _arg1277903_
                                        _arg2277908_
                                        _rest277910_))))))))
              (__tmp282773 (force gxc#&optimize-call)))
          (declare (not safe))
          (call-with-parameters
           __tmp282774
           gxc#current-compile-methods
           __tmp282773))))
    (define gxc#optimize-call%
      (lambda (_stx277751_)
        (let* ((___stx282522282523_ _stx277751_)
               (_g277754277774_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx282522282523_)))))
          (let ((___kont282524282525_
                 (lambda (_L277818_ _L277819_)
                   (let* ((_rator-id277837_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L277819_)))
                          (_rator-type277839_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id277837_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type277839_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp282775
                                  (##structure-ref
                                   _rator-type277839_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id277837_
                              '" => "
                              _rator-type277839_
                              '" "
                              __tmp282775))
                           (let ((_optimized277842_
                                  (let ((__method282770
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type277839_
                                            'optimize-call))))
                                    (if __method282770
                                        (__method282770
                                         _rator-type277839_
                                         _stx277751_
                                         _L277818_)
                                        (error '"Missing method"
                                               _rator-type277839_
                                               'optimize-call)))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type277839_))
                                 _optimized277842_
                                 (let* ((___stx282504282505_ _optimized277842_)
                                        (_g277845277855_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx282504282505_)))))
                                   (let ((___kont282506282507_
                                          (lambda (_L277875_)
                                            (let ((__tmp282776
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L277875_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp282776
                                               _stx277751_))))
                                         (___kont282508282509_
                                          (lambda () _optimized277842_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx282504282505_))
                                         (let ((_e277848277867_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx282504282505_))))
                                           (let ((_tl277850277872_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e277848277867_)))
                                                 (_hd277849277870_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e277848277867_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd277849277870_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd277849277870_))
                                                     (___kont282506282507_
                                                      _tl277850277872_)
                                                     (___kont282508282509_))
                                                 (___kont282508282509_))))
                                         (___kont282508282509_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type277839_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx277751_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _stx277751_
                                _rator-type277839_)))))))
                (___kont282526282527_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _stx277751_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx282522282523_))
                (let ((_e277758277786_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx282522282523_))))
                  (let ((_tl277760277791_
                         (let () (declare (not safe)) (##cdr _e277758277786_)))
                        (_hd277759277789_
                         (let ()
                           (declare (not safe))
                           (##car _e277758277786_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl277760277791_))
                        (let ((_e277761277794_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl277760277791_))))
                          (let ((_tl277763277799_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e277761277794_)))
                                (_hd277762277797_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e277761277794_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd277762277797_))
                                (let ((_e277764277802_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd277762277797_))))
                                  (let ((_tl277766277807_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e277764277802_)))
                                        (_hd277765277805_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e277764277802_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd277765277805_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd277765277805_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl277766277807_))
                                                (let ((_e277767277810_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl277766277807_))))
                                                  (let ((_tl277769277815_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e277767277810_)))
                                                        (_hd277768277813_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e277767277810_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl277769277815_))
                                                        (___kont282524282525_
                                                         _tl277763277799_
                                                         _hd277768277813_)
                                                        (___kont282526282527_))))
                                                (___kont282526282527_))
                                            (___kont282526282527_))
                                        (___kont282526282527_))))
                                (___kont282526282527_))))
                        (___kont282526282527_))))
                (___kont282526282527_))))))
    (define gxc#!predicate::optimize-call
      (lambda (_self277705_ _stx277706_ _args277707_)
        (let* ((_g277709277719_
                (lambda (_g277710277716_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g277710277716_))))
               (_g277708277748_
                (lambda (_g277710277722_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g277710277722_))
                      (let ((_e277712277724_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g277710277722_))))
                        (let ((_hd277713277727_
                               (let ()
                                 (declare (not safe))
                                 (##car _e277712277724_)))
                              (_tl277714277729_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e277712277724_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl277714277729_))
                              ((lambda (_L277732_)
                                 (let* ((_klass277743_
                                         (let ((__tmp282777
                                                (##structure-ref
                                                 _self277705_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx277706_
                                            __tmp282777)))
                                        (_object277745_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L277732_))))
                                   (if (##structure-ref
                                        _klass277743_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp282778
                                              (let ((__tmp282779
                                                     (let ((__tmp282781
                                                            (let ((__tmp282782
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp282783
                                  (##structure-ref
                                   _klass277743_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp282783 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp282782)))
                   (__tmp282780
                    (let () (declare (not safe)) (cons _object277745_ '()))))
               (declare (not safe))
               (cons __tmp282781 __tmp282780))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#struct-direct-instance?
                                                      __tmp282779))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp282778
                                          _stx277706_))
                                       (if (##structure-ref
                                            _klass277743_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp282784
                                                  (let ((__tmp282785
                                                         (let ((__tmp282787
                                                                (let ((__tmp282788
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp282789
                                      (##structure-ref
                                       _klass277743_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp282789 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp282788)))
                       (__tmp282786
                        (let ()
                          (declare (not safe))
                          (cons _object277745_ '()))))
                   (declare (not safe))
                   (cons __tmp282787 __tmp282786))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-instance?
                                                          __tmp282785))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp282784
                                              _stx277706_))
                                           (let ((__tmp282790
                                                  (let ((__tmp282791
                                                         (let ((__tmp282797
                                                                (let ((__tmp282798
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'class-instance? '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp282798)))
                       (__tmp282792
                        (let ((__tmp282794
                               (let ((__tmp282795
                                      (let ((__tmp282796
                                             (##structure-ref
                                              _self277705_
                                              '1
                                              gxc#!type::t
                                              '#f)))
                                        (declare (not safe))
                                        (cons __tmp282796 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp282795)))
                              (__tmp282793
                               (let ()
                                 (declare (not safe))
                                 (cons _object277745_ '()))))
                          (declare (not safe))
                          (cons __tmp282794 __tmp282793))))
                   (declare (not safe))
                   (cons __tmp282797 __tmp282792))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#call
                                                          __tmp282791))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp282790
                                              _stx277706_))))))
                               _hd277713277727_)
                              (let ()
                                (declare (not safe))
                                (_g277709277719_ _g277710277722_)))))
                      (let ()
                        (declare (not safe))
                        (_g277709277719_ _g277710277722_))))))
          (declare (not safe))
          (_g277708277748_ _args277707_))))
    (define gxc#!predicate::optimize-call::specialize
      (lambda (__t282483)
        (let ((__id282484
               (let ((__tmp282485
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t282483 'id))))
                 (if __tmp282485 __tmp282485 (error '"Unknown slot" 'id)))))
          (lambda (_self277705_ _stx277706_ _args277707_)
            (let* ((_g277709277719_
                    (lambda (_g277710277716_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g277710277716_))))
                   (_g277708277748_
                    (lambda (_g277710277722_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g277710277722_))
                          (let ((_e277712277724_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g277710277722_))))
                            (let ((_hd277713277727_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e277712277724_)))
                                  (_tl277714277729_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e277712277724_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl277714277729_))
                                  ((lambda (_L277732_)
                                     (let* ((_klass277743_
                                             (let ((__tmp282799
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self277705_
                                                       __id282484
                                                       __t282483
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx277706_
                                                __tmp282799)))
                                            (_object277745_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L277732_))))
                                       (if (##structure-ref
                                            _klass277743_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp282800
                                                  (let ((__tmp282801
                                                         (let ((__tmp282803
                                                                (let ((__tmp282804
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp282805
                                      (##structure-ref
                                       _klass277743_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp282805 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp282804)))
                       (__tmp282802
                        (let ()
                          (declare (not safe))
                          (cons _object277745_ '()))))
                   (declare (not safe))
                   (cons __tmp282803 __tmp282802))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-direct-instance?
                                                          __tmp282801))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp282800
                                              _stx277706_))
                                           (if (##structure-ref
                                                _klass277743_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp282806
                                                      (let ((__tmp282807
                                                             (let ((__tmp282809
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp282810
                                   (let ((__tmp282811
                                          (##structure-ref
                                           _klass277743_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp282811 '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp282810)))
                           (__tmp282808
                            (let ()
                              (declare (not safe))
                              (cons _object277745_ '()))))
                       (declare (not safe))
                       (cons __tmp282809 __tmp282808))))
                (declare (not safe))
                (cons '%#struct-instance? __tmp282807))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp282806
                                                  _stx277706_))
                                               (let ((__tmp282812
                                                      (let ((__tmp282813
                                                             (let ((__tmp282819
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp282820
                                   (let ()
                                     (declare (not safe))
                                     (cons 'class-instance? '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp282820)))
                           (__tmp282814
                            (let ((__tmp282816
                                   (let ((__tmp282817
                                          (let ((__tmp282818
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _self277705_
                                                    __id282484
                                                    __t282483
                                                    '#f))))
                                            (declare (not safe))
                                            (cons __tmp282818 '()))))
                                     (declare (not safe))
                                     (cons '%#ref __tmp282817)))
                                  (__tmp282815
                                   (let ()
                                     (declare (not safe))
                                     (cons _object277745_ '()))))
                              (declare (not safe))
                              (cons __tmp282816 __tmp282815))))
                       (declare (not safe))
                       (cons __tmp282819 __tmp282814))))
                (declare (not safe))
                (cons '%#call __tmp282813))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp282812
                                                  _stx277706_))))))
                                   _hd277713277727_)
                                  (let ()
                                    (declare (not safe))
                                    (_g277709277719_ _g277710277722_)))))
                          (let ()
                            (declare (not safe))
                            (_g277709277719_ _g277710277722_))))))
              (declare (not safe))
              (_g277708277748_ _args277707_))))))
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
      (lambda (_self277425_ _stx277426_ _args277427_)
        (let* ((_klass277429_
                (let ((__tmp282821
                       (##structure-ref _self277425_ '1 gxc#!type::t '#f)))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _stx277426_ __tmp282821)))
               (_fields277431_
                (length (##structure-ref _klass277429_ '5 gxc#!class::t '#f)))
               (_args277433_ (map gxc#compile-e _args277427_))
               (_inline-make-object277435_
                (let ((__tmp282822
                       (let ((__tmp282828
                              (let ((__tmp282829
                                     (let ()
                                       (declare (not safe))
                                       (cons '##structure '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp282829)))
                             (__tmp282823
                              (let ((__tmp282825
                                     (let ((__tmp282826
                                            (let ((__tmp282827
                                                   (##structure-ref
                                                    _self277425_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp282827 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp282826)))
                                    (__tmp282824
                                     (make-list _fields277431_ '(%#quote #f))))
                                (declare (not safe))
                                (cons __tmp282825 __tmp282824))))
                         (declare (not safe))
                         (cons __tmp282828 __tmp282823))))
                  (declare (not safe))
                  (cons '%#call __tmp282822))))
          (let ((_$e277438_
                 (##structure-ref _klass277429_ '6 gxc#!class::t '#f)))
            (if _$e277438_
                ((lambda (_ctor277441_)
                   (let ((_$obj277443_
                          (let ((__tmp282830 (gensym '__obj)))
                            (declare (not safe))
                            (make-symbol__0 __tmp282830)))
                         (_ctor-impl277444_
                          (let ()
                            (declare (not safe))
                            (gxc#!class-lookup-method
                             _klass277429_
                             _ctor277441_))))
                     (let ((__tmp282831
                            (let ((__tmp282832
                                   (let ((__tmp282900
                                          (let ((__tmp282901
                                                 (let ((__tmp282903
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj277443_
                                                                '())))
                                                       (__tmp282902
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _inline-make-object277435_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp282903
                                                         __tmp282902))))
                                            (declare (not safe))
                                            (cons __tmp282901 '())))
                                         (__tmp282833
                                          (let ((__tmp282834
                                                 (let ((__tmp282835
                                                        (let ((__tmp282839
                                                               (if _ctor-impl277444_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp282840
                                  (let ((__tmp282844
                                         (let ((__tmp282845
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _ctor-impl277444_
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp282845)))
                                        (__tmp282841
                                         (let ((__tmp282842
                                                (let ((__tmp282843
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj277443_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp282843))))
                                           (declare (not safe))
                                           (cons __tmp282842 _args277433_))))
                                    (declare (not safe))
                                    (cons __tmp282844 __tmp282841))))
                             (declare (not safe))
                             (cons '%#call __tmp282840))
                           (let* ((_$ctor277446_
                                   (let ((__tmp282846 (gensym '__constructor)))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp282846)))
                                  (__tmp282847
                                   (let ((__tmp282882
                                          (let ((__tmp282883
                                                 (let ((__tmp282899
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$ctor277446_
                                                                '())))
                                                       (__tmp282884
                                                        (let ((__tmp282885
                                                               (let ((__tmp282886
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp282897
                                     (let ((__tmp282898
                                            (let ()
                                              (declare (not safe))
                                              (cons 'direct-method-ref '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp282898)))
                                    (__tmp282887
                                     (let ((__tmp282894
                                            (let ((__tmp282895
                                                   (let ((__tmp282896
                                                          (##structure-ref
                                                           _self277425_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp282896 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp282895)))
                                           (__tmp282888
                                            (let ((__tmp282892
                                                   (let ((__tmp282893
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj277443_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp282893)))
                                                  (__tmp282889
                                                   (let ((__tmp282890
                                                          (let ((__tmp282891
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _ctor277441_ '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp282891))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp282890 '()))))
                                              (declare (not safe))
                                              (cons __tmp282892 __tmp282889))))
                                       (declare (not safe))
                                       (cons __tmp282894 __tmp282888))))
                                (declare (not safe))
                                (cons __tmp282897 __tmp282887))))
                         (declare (not safe))
                         (cons '%#call __tmp282886))))
                  (declare (not safe))
                  (cons __tmp282885 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp282899
                                                         __tmp282884))))
                                            (declare (not safe))
                                            (cons __tmp282883 '())))
                                         (__tmp282848
                                          (let ((__tmp282849
                                                 (let ((__tmp282850
                                                        (let ((__tmp282880
                                                               (let ((__tmp282881
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$ctor277446_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp282881)))
                      (__tmp282851
                       (let ((__tmp282873
                              (let ((__tmp282874
                                     (let ((__tmp282878
                                            (let ((__tmp282879
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$ctor277446_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp282879)))
                                           (__tmp282875
                                            (let ((__tmp282876
                                                   (let ((__tmp282877
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj277443_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp282877))))
                                              (declare (not safe))
                                              (cons __tmp282876
                                                    _args277433_))))
                                       (declare (not safe))
                                       (cons __tmp282878 __tmp282875))))
                                (declare (not safe))
                                (cons '%#call __tmp282874)))
                             (__tmp282852
                              (let ((__tmp282853
                                     (let ((__tmp282854
                                            (let ((__tmp282871
                                                   (let ((__tmp282872
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp282872)))
                                                  (__tmp282855
                                                   (let ((__tmp282869
                                                          (let ((__tmp282870
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons '"missing constructor method implementation"
                                 '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp282870)))
                 (__tmp282856
                  (let ((__tmp282867
                         (let ((__tmp282868
                                (let ()
                                  (declare (not safe))
                                  (cons 'class: '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp282868)))
                        (__tmp282857
                         (let ((__tmp282864
                                (let ((__tmp282865
                                       (let ((__tmp282866
                                              (##structure-ref
                                               _self277425_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp282866 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp282865)))
                               (__tmp282858
                                (let ((__tmp282862
                                       (let ((__tmp282863
                                              (let ()
                                                (declare (not safe))
                                                (cons 'method: '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp282863)))
                                      (__tmp282859
                                       (let ((__tmp282860
                                              (let ((__tmp282861
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _ctor277441_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#quote __tmp282861))))
                                         (declare (not safe))
                                         (cons __tmp282860 '()))))
                                  (declare (not safe))
                                  (cons __tmp282862 __tmp282859))))
                           (declare (not safe))
                           (cons __tmp282864 __tmp282858))))
                    (declare (not safe))
                    (cons __tmp282867 __tmp282857))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp282869
                                                           __tmp282856))))
                                              (declare (not safe))
                                              (cons __tmp282871 __tmp282855))))
                                       (declare (not safe))
                                       (cons '%#call __tmp282854))))
                                (declare (not safe))
                                (cons __tmp282853 '()))))
                         (declare (not safe))
                         (cons __tmp282873 __tmp282852))))
                  (declare (not safe))
                  (cons __tmp282880 __tmp282851))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#if __tmp282850))))
                                            (declare (not safe))
                                            (cons __tmp282849 '()))))
                                     (declare (not safe))
                                     (cons __tmp282882 __tmp282848))))
                             (declare (not safe))
                             (cons '%#let-values __tmp282847))))
                      (__tmp282836
                       (let ((__tmp282837
                              (let ((__tmp282838
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj277443_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp282838))))
                         (declare (not safe))
                         (cons __tmp282837 '()))))
                  (declare (not safe))
                  (cons __tmp282839 __tmp282836))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#begin
                                                         __tmp282835))))
                                            (declare (not safe))
                                            (cons __tmp282834 '()))))
                                     (declare (not safe))
                                     (cons __tmp282900 __tmp282833))))
                              (declare (not safe))
                              (cons '%#let-values __tmp282832))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp282831 _stx277426_))))
                 _$e277438_)
                (let ((_$e277448_
                       (##structure-ref _klass277429_ '9 gxc#!class::t '#f)))
                  (if _$e277448_
                      ((lambda (_metaclass277451_)
                         (let* ((_$obj277453_
                                 (let ((__tmp282904 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp282904)))
                                (_metakons277455_
                                 (let ((__tmp282905
                                        (let ()
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-class
                                           _stx277426_
                                           _metaclass277451_))))
                                   (declare (not safe))
                                   (gxc#!class-lookup-method
                                    __tmp282905
                                    'instance-init!))))
                           (let ((__tmp282906
                                  (let ((__tmp282907
                                         (let ((__tmp282938
                                                (let ((__tmp282939
                                                       (let ((__tmp282941
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj277453_ '())))
                     (__tmp282940
                      (let ()
                        (declare (not safe))
                        (cons _inline-make-object277435_ '()))))
                 (declare (not safe))
                 (cons __tmp282941 __tmp282940))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp282939 '())))
                                               (__tmp282908
                                                (let ((__tmp282909
                                                       (let ((__tmp282910
                                                              (let ((__tmp282914
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if _metakons277455_
                                 (let ((__tmp282915
                                        (let ((__tmp282923
                                               (let ((__tmp282924
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _metakons277455_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp282924)))
                                              (__tmp282916
                                               (let ((__tmp282920
                                                      (let ((__tmp282921
                                                             (let ((__tmp282922
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self277425_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp282922 '()))))
                (declare (not safe))
                (cons '%#ref __tmp282921)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp282917
                                                      (let ((__tmp282918
                                                             (let ((__tmp282919
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _$obj277453_ '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp282919))))
                (declare (not safe))
                (cons __tmp282918 _args277433_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp282920
                                                       __tmp282917))))
                                          (declare (not safe))
                                          (cons __tmp282923 __tmp282916))))
                                   (declare (not safe))
                                   (cons '%#call __tmp282915))
                                 (let ((__tmp282925
                                        (let ((__tmp282936
                                               (let ((__tmp282937
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'call-method
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp282937)))
                                              (__tmp282926
                                               (let ((__tmp282933
                                                      (let ((__tmp282934
                                                             (let ((__tmp282935
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self277425_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp282935 '()))))
                (declare (not safe))
                (cons '%#ref __tmp282934)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp282927
                                                      (let ((__tmp282931
                                                             (let ((__tmp282932
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'instance-init! '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp282932)))
                    (__tmp282928
                     (let ((__tmp282929
                            (let ((__tmp282930
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj277453_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp282930))))
                       (declare (not safe))
                       (cons __tmp282929 _args277433_))))
                (declare (not safe))
                (cons __tmp282931 __tmp282928))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp282933
                                                       __tmp282927))))
                                          (declare (not safe))
                                          (cons __tmp282936 __tmp282926))))
                                   (declare (not safe))
                                   (cons '%#call __tmp282925))))
                            (__tmp282911
                             (let ((__tmp282912
                                    (let ((__tmp282913
                                           (let ()
                                             (declare (not safe))
                                             (cons _$obj277453_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp282913))))
                               (declare (not safe))
                               (cons __tmp282912 '()))))
                        (declare (not safe))
                        (cons __tmp282914 __tmp282911))))
                 (declare (not safe))
                 (cons '%#begin __tmp282910))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp282909 '()))))
                                           (declare (not safe))
                                           (cons __tmp282938 __tmp282908))))
                                    (declare (not safe))
                                    (cons '%#let-values __tmp282907))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp282906 _stx277426_))))
                       _$e277448_)
                      (if (##structure-ref _klass277429_ '7 gxc#!class::t '#f)
                          (if (fx= (length _args277433_) _fields277431_)
                              (let ((__tmp282942
                                     (let ((__tmp282943
                                            (let ((__tmp282948
                                                   (let ((__tmp282949
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp282949)))
                                                  (__tmp282944
                                                   (let ((__tmp282945
                                                          (let ((__tmp282946
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp282947
                                (##structure-ref
                                 _self277425_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (cons __tmp282947 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp282946))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp282945
                                                           _args277433_))))
                                              (declare (not safe))
                                              (cons __tmp282948 __tmp282944))))
                                       (declare (not safe))
                                       (cons '%#call __tmp282943))))
                                (declare (not safe))
                                (gxc#xform-wrap-source
                                 __tmp282942
                                 _stx277426_))
                              (let ((__tmp282951
                                     (##structure-ref
                                      _self277425_
                                      '1
                                      gxc#!type::t
                                      '#f))
                                    (__tmp282950
                                     (length (##structure-ref
                                              _klass277429_
                                              '5
                                              gxc#!class::t
                                              '#f))))
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"illegal struct constructor application; arity mismatch"
                                 _stx277426_
                                 __tmp282951
                                 __tmp282950)))
                          (let ((_$obj277458_
                                 (let ((__tmp282952 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp282952))))
                            (let _lp277460_ ((_rest277462_ _args277433_)
                                             (_initializers277463_ '()))
                              (let* ((___stx282560282561_ _rest277462_)
                                     (_g277467277488_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx282560282561_)))))
                                (let ((___kont282562282563_
                                       (lambda (_L277542_ _L277543_ _L277544_)
                                         (let* ((_slot277575_
                                                 (keyword->symbol
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e _L277544_))))
                                                (_off277577_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass277429_
                                                    _slot277575_))))
                                           (if _off277577_
                                               (let ((__tmp282953
                                                      (let ((__tmp282954
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _off277577_ _L277543_))))
                (declare (not safe))
                (cons __tmp282954 _initializers277463_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp277460_
                                                  _L277542_
                                                  __tmp282953))
                                               (let ((__tmp282955
                                                      (##structure-ref
                                                       _self277425_
                                                       '1
                                                       gxc#!type::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"unknown slot"
                                                  _stx277426_
                                                  __tmp282955
                                                  _slot277575_))))))
                                      (___kont282564282565_
                                       (lambda ()
                                         (let ((__tmp282956
                                                (let ((__tmp282957
                                                       (let ((__tmp282980
                                                              (let ((__tmp282981
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp282983
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj277458_ '())))
                                   (__tmp282982
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object277435_ '()))))
                               (declare (not safe))
                               (cons __tmp282983 __tmp282982))))
                        (declare (not safe))
                        (cons __tmp282981 '())))
                     (__tmp282958
                      (let ((__tmp282959
                             (let ((__tmp282960
                                    (let ((__tmp282977
                                           (let ((__tmp282978
                                                  (let ((__tmp282979
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj277458_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp282979))))
                                             (declare (not safe))
                                             (cons __tmp282978 '())))
                                          (__tmp282961
                                           (let ((__tmp282962
                                                  (lambda (_i277502_ _r277503_)
                                                    (let ((__tmp282963
                                                           (let ((__tmp282964
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp282974
                                 (let ((__tmp282975
                                        (let ((__tmp282976
                                               (##structure-ref
                                                _self277425_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp282976 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp282975)))
                                (__tmp282965
                                 (let ((__tmp282971
                                        (let ((__tmp282972
                                               (let ((__tmp282973
                                                      (car _i277502_)))
                                                 (declare (not safe))
                                                 (cons __tmp282973 '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp282972)))
                                       (__tmp282966
                                        (let ((__tmp282969
                                               (let ((__tmp282970
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _$obj277458_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp282970)))
                                              (__tmp282967
                                               (let ((__tmp282968
                                                      (cdr _i277502_)))
                                                 (declare (not safe))
                                                 (cons __tmp282968 '()))))
                                          (declare (not safe))
                                          (cons __tmp282969 __tmp282967))))
                                   (declare (not safe))
                                   (cons __tmp282971 __tmp282966))))
                            (declare (not safe))
                            (cons __tmp282974 __tmp282965))))
                     (declare (not safe))
                     (cons '%#struct-unchecked-set! __tmp282964))))
              (declare (not safe))
              (cons __tmp282963 _r277503_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (foldl1 __tmp282962
                                                     '()
                                                     _initializers277463_))))
                                      (declare (not safe))
                                      (foldr1 cons __tmp282977 __tmp282961))))
                               (declare (not safe))
                               (cons '%#begin __tmp282960))))
                        (declare (not safe))
                        (cons __tmp282959 '()))))
                 (declare (not safe))
                 (cons __tmp282980 __tmp282958))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp282957))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp282956
                                            _stx277426_))))
                                      (___kont282566282567_
                                       (lambda ()
                                         (let ((__tmp282984
                                                (let ((__tmp282985
                                                       (let ((__tmp282999
                                                              (let ((__tmp283000
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp283002
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj277458_ '())))
                                   (__tmp283001
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object277435_ '()))))
                               (declare (not safe))
                               (cons __tmp283002 __tmp283001))))
                        (declare (not safe))
                        (cons __tmp283000 '())))
                     (__tmp282986
                      (let ((__tmp282987
                             (let ((__tmp282988
                                    (let ((__tmp282992
                                           (let ((__tmp282993
                                                  (let ((__tmp282997
                                                         (let ((__tmp282998
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons 'class-instance-init! '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp282998)))
                (__tmp282994
                 (let ((__tmp282995
                        (let ((__tmp282996
                               (let ()
                                 (declare (not safe))
                                 (cons _$obj277458_ '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp282996))))
                   (declare (not safe))
                   (cons __tmp282995 _args277433_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp282997
                                                          __tmp282994))))
                                             (declare (not safe))
                                             (cons '%#call __tmp282993)))
                                          (__tmp282989
                                           (let ((__tmp282990
                                                  (let ((__tmp282991
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj277458_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp282991))))
                                             (declare (not safe))
                                             (cons __tmp282990 '()))))
                                      (declare (not safe))
                                      (cons __tmp282992 __tmp282989))))
                               (declare (not safe))
                               (cons '%#begin __tmp282988))))
                        (declare (not safe))
                        (cons __tmp282987 '()))))
                 (declare (not safe))
                 (cons __tmp282999 __tmp282986))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp282985))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp282984
                                            _stx277426_)))))
                                  (let* ((_g277465277505_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   ___stx282560282561_))
                                                (___kont282564282565_)
                                                (___kont282566282567_))))
                                         (___match282597282598_
                                          (lambda (_e277472277510_
                                                   _hd277473277513_
                                                   _tl277474277515_
                                                   _e277475277518_
                                                   _hd277476277521_
                                                   _tl277477277523_
                                                   _e277478277526_
                                                   _hd277479277529_
                                                   _tl277480277531_
                                                   _e277481277534_
                                                   _hd277482277537_
                                                   _tl277483277539_)
                                            (let ((_L277542_ _tl277483277539_)
                                                  (_L277543_ _hd277482277537_)
                                                  (_L277544_ _hd277479277529_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-keyword?
                                                     _L277544_))
                                                  (___kont282562282563_
                                                   _L277542_
                                                   _L277543_
                                                   _L277544_)
                                                  (___kont282566282567_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx282560282561_))
                                        (let ((_e277472277510_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx282560282561_))))
                                          (let ((_tl277474277515_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e277472277510_)))
                                                (_hd277473277513_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e277472277510_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd277473277513_))
                                                (let ((_e277475277518_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd277473277513_))))
                                                  (let ((_tl277477277523_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e277475277518_)))
                                                        (_hd277476277521_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e277475277518_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd277476277521_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#quote
                                                               _hd277476277521_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl277477277523_))
                        (let ((_e277478277526_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl277477277523_))))
                          (let ((_tl277480277531_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e277478277526_)))
                                (_hd277479277529_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e277478277526_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl277480277531_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl277474277515_))
                                    (let ((_e277481277534_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl277474277515_))))
                                      (let ((_tl277483277539_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e277481277534_)))
                                            (_hd277482277537_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e277481277534_))))
                                        (___match282597282598_
                                         _e277472277510_
                                         _hd277473277513_
                                         _tl277474277515_
                                         _e277475277518_
                                         _hd277476277521_
                                         _tl277477277523_
                                         _e277478277526_
                                         _hd277479277529_
                                         _tl277480277531_
                                         _e277481277534_
                                         _hd277482277537_
                                         _tl277483277539_)))
                                    (___kont282566282567_))
                                (___kont282566282567_))))
                        (___kont282566282567_))
                    (___kont282566282567_))
                (___kont282566282567_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont282566282567_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g277465277505_))))))))))))))))
    (define gxc#!constructor::optimize-call::specialize
      (lambda (__t282486)
        (let ((__id282487
               (let ((__tmp282488
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t282486 'id))))
                 (if __tmp282488 __tmp282488 (error '"Unknown slot" 'id)))))
          (lambda (_self277425_ _stx277426_ _args277427_)
            (let* ((_klass277429_
                    (let ((__tmp283003
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _self277425_
                              __id282487
                              __t282486
                              '#f))))
                      (declare (not safe))
                      (gxc#optimizer-resolve-class _stx277426_ __tmp283003)))
                   (_fields277431_
                    (length (##structure-ref
                             _klass277429_
                             '5
                             gxc#!class::t
                             '#f)))
                   (_args277433_ (map gxc#compile-e _args277427_))
                   (_inline-make-object277435_
                    (let ((__tmp283004
                           (let ((__tmp283010
                                  (let ((__tmp283011
                                         (let ()
                                           (declare (not safe))
                                           (cons '##structure '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp283011)))
                                 (__tmp283005
                                  (let ((__tmp283007
                                         (let ((__tmp283008
                                                (let ((__tmp283009
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self277425_
                                                          __id282487
                                                          __t282486
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp283009 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp283008)))
                                        (__tmp283006
                                         (make-list
                                          _fields277431_
                                          '(%#quote #f))))
                                    (declare (not safe))
                                    (cons __tmp283007 __tmp283006))))
                             (declare (not safe))
                             (cons __tmp283010 __tmp283005))))
                      (declare (not safe))
                      (cons '%#call __tmp283004))))
              (let ((_$e277438_
                     (##structure-ref _klass277429_ '6 gxc#!class::t '#f)))
                (if _$e277438_
                    ((lambda (_ctor277441_)
                       (let ((_$obj277443_
                              (let ((__tmp283012 (gensym '__obj)))
                                (declare (not safe))
                                (make-symbol__0 __tmp283012)))
                             (_ctor-impl277444_
                              (let ()
                                (declare (not safe))
                                (gxc#!class-lookup-method
                                 _klass277429_
                                 _ctor277441_))))
                         (let ((__tmp283013
                                (let ((__tmp283014
                                       (let ((__tmp283082
                                              (let ((__tmp283083
                                                     (let ((__tmp283085
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$obj277443_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp283084
                    (let ()
                      (declare (not safe))
                      (cons _inline-make-object277435_ '()))))
               (declare (not safe))
               (cons __tmp283085 __tmp283084))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp283083 '())))
                                             (__tmp283015
                                              (let ((__tmp283016
                                                     (let ((__tmp283017
                                                            (let ((__tmp283021
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _ctor-impl277444_
                               (let ((__tmp283022
                                      (let ((__tmp283026
                                             (let ((__tmp283027
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor-impl277444_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp283027)))
                                            (__tmp283023
                                             (let ((__tmp283024
                                                    (let ((__tmp283025
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$obj277443_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp283025))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp283024
                                                     _args277433_))))
                                        (declare (not safe))
                                        (cons __tmp283026 __tmp283023))))
                                 (declare (not safe))
                                 (cons '%#call __tmp283022))
                               (let* ((_$ctor277446_
                                       (let ((__tmp283028
                                              (gensym '__constructor)))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp283028)))
                                      (__tmp283029
                                       (let ((__tmp283064
                                              (let ((__tmp283065
                                                     (let ((__tmp283081
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$ctor277446_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp283066
                    (let ((__tmp283067
                           (let ((__tmp283068
                                  (let ((__tmp283079
                                         (let ((__tmp283080
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'direct-method-ref
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp283080)))
                                        (__tmp283069
                                         (let ((__tmp283076
                                                (let ((__tmp283077
                                                       (let ((__tmp283078
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self277425_
                         __id282487
                         __t282486
                         '#f))))
                 (declare (not safe))
                 (cons __tmp283078 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp283077)))
                                               (__tmp283070
                                                (let ((__tmp283074
                                                       (let ((__tmp283075
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj277443_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp283075)))
              (__tmp283071
               (let ((__tmp283072
                      (let ((__tmp283073
                             (let ()
                               (declare (not safe))
                               (cons _ctor277441_ '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp283073))))
                 (declare (not safe))
                 (cons __tmp283072 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp283074
                                                        __tmp283071))))
                                           (declare (not safe))
                                           (cons __tmp283076 __tmp283070))))
                                    (declare (not safe))
                                    (cons __tmp283079 __tmp283069))))
                             (declare (not safe))
                             (cons '%#call __tmp283068))))
                      (declare (not safe))
                      (cons __tmp283067 '()))))
               (declare (not safe))
               (cons __tmp283081 __tmp283066))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp283065 '())))
                                             (__tmp283030
                                              (let ((__tmp283031
                                                     (let ((__tmp283032
                                                            (let ((__tmp283062
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp283063
                                  (let ()
                                    (declare (not safe))
                                    (cons _$ctor277446_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp283063)))
                          (__tmp283033
                           (let ((__tmp283055
                                  (let ((__tmp283056
                                         (let ((__tmp283060
                                                (let ((__tmp283061
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$ctor277446_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp283061)))
                                               (__tmp283057
                                                (let ((__tmp283058
                                                       (let ((__tmp283059
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj277443_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp283059))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp283058
                                                        _args277433_))))
                                           (declare (not safe))
                                           (cons __tmp283060 __tmp283057))))
                                    (declare (not safe))
                                    (cons '%#call __tmp283056)))
                                 (__tmp283034
                                  (let ((__tmp283035
                                         (let ((__tmp283036
                                                (let ((__tmp283053
                                                       (let ((__tmp283054
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'error '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp283054)))
              (__tmp283037
               (let ((__tmp283051
                      (let ((__tmp283052
                             (let ()
                               (declare (not safe))
                               (cons '"missing constructor method implementation"
                                     '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp283052)))
                     (__tmp283038
                      (let ((__tmp283049
                             (let ((__tmp283050
                                    (let ()
                                      (declare (not safe))
                                      (cons 'class: '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp283050)))
                            (__tmp283039
                             (let ((__tmp283046
                                    (let ((__tmp283047
                                           (let ((__tmp283048
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self277425_
                                                     __id282487
                                                     __t282486
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp283048 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp283047)))
                                   (__tmp283040
                                    (let ((__tmp283044
                                           (let ((__tmp283045
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'method: '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp283045)))
                                          (__tmp283041
                                           (let ((__tmp283042
                                                  (let ((__tmp283043
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _ctor277441_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#quote
                                                          __tmp283043))))
                                             (declare (not safe))
                                             (cons __tmp283042 '()))))
                                      (declare (not safe))
                                      (cons __tmp283044 __tmp283041))))
                               (declare (not safe))
                               (cons __tmp283046 __tmp283040))))
                        (declare (not safe))
                        (cons __tmp283049 __tmp283039))))
                 (declare (not safe))
                 (cons __tmp283051 __tmp283038))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp283053
                                                        __tmp283037))))
                                           (declare (not safe))
                                           (cons '%#call __tmp283036))))
                                    (declare (not safe))
                                    (cons __tmp283035 '()))))
                             (declare (not safe))
                             (cons __tmp283055 __tmp283034))))
                      (declare (not safe))
                      (cons __tmp283062 __tmp283033))))
               (declare (not safe))
               (cons '%#if __tmp283032))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp283031 '()))))
                                         (declare (not safe))
                                         (cons __tmp283064 __tmp283030))))
                                 (declare (not safe))
                                 (cons '%#let-values __tmp283029))))
                          (__tmp283018
                           (let ((__tmp283019
                                  (let ((__tmp283020
                                         (let ()
                                           (declare (not safe))
                                           (cons _$obj277443_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp283020))))
                             (declare (not safe))
                             (cons __tmp283019 '()))))
                      (declare (not safe))
                      (cons __tmp283021 __tmp283018))))
               (declare (not safe))
               (cons '%#begin __tmp283017))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp283016 '()))))
                                         (declare (not safe))
                                         (cons __tmp283082 __tmp283015))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp283014))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp283013 _stx277426_))))
                     _$e277438_)
                    (let ((_$e277448_
                           (##structure-ref
                            _klass277429_
                            '9
                            gxc#!class::t
                            '#f)))
                      (if _$e277448_
                          ((lambda (_metaclass277451_)
                             (let* ((_$obj277453_
                                     (let ((__tmp283086 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp283086)))
                                    (_metakons277455_
                                     (let ((__tmp283087
                                            (let ()
                                              (declare (not safe))
                                              (gxc#optimizer-resolve-class
                                               _stx277426_
                                               _metaclass277451_))))
                                       (declare (not safe))
                                       (gxc#!class-lookup-method
                                        __tmp283087
                                        'instance-init!))))
                               (let ((__tmp283088
                                      (let ((__tmp283089
                                             (let ((__tmp283120
                                                    (let ((__tmp283121
                                                           (let ((__tmp283123
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj277453_ '())))
                         (__tmp283122
                          (let ()
                            (declare (not safe))
                            (cons _inline-make-object277435_ '()))))
                     (declare (not safe))
                     (cons __tmp283123 __tmp283122))))
              (declare (not safe))
              (cons __tmp283121 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp283090
                                                    (let ((__tmp283091
                                                           (let ((__tmp283092
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp283096
                                 (if _metakons277455_
                                     (let ((__tmp283097
                                            (let ((__tmp283105
                                                   (let ((__tmp283106
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _metakons277455_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp283106)))
                                                  (__tmp283098
                                                   (let ((__tmp283102
                                                          (let ((__tmp283103
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp283104
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self277425_
                                   __id282487
                                   __t282486
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp283104 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp283103)))
                 (__tmp283099
                  (let ((__tmp283100
                         (let ((__tmp283101
                                (let ()
                                  (declare (not safe))
                                  (cons _$obj277453_ '()))))
                           (declare (not safe))
                           (cons '%#ref __tmp283101))))
                    (declare (not safe))
                    (cons __tmp283100 _args277433_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp283102
                                                           __tmp283099))))
                                              (declare (not safe))
                                              (cons __tmp283105 __tmp283098))))
                                       (declare (not safe))
                                       (cons '%#call __tmp283097))
                                     (let ((__tmp283107
                                            (let ((__tmp283118
                                                   (let ((__tmp283119
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'call-method
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp283119)))
                                                  (__tmp283108
                                                   (let ((__tmp283115
                                                          (let ((__tmp283116
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp283117
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self277425_
                                   __id282487
                                   __t282486
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp283117 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp283116)))
                 (__tmp283109
                  (let ((__tmp283113
                         (let ((__tmp283114
                                (let ()
                                  (declare (not safe))
                                  (cons 'instance-init! '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp283114)))
                        (__tmp283110
                         (let ((__tmp283111
                                (let ((__tmp283112
                                       (let ()
                                         (declare (not safe))
                                         (cons _$obj277453_ '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp283112))))
                           (declare (not safe))
                           (cons __tmp283111 _args277433_))))
                    (declare (not safe))
                    (cons __tmp283113 __tmp283110))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp283115
                                                           __tmp283109))))
                                              (declare (not safe))
                                              (cons __tmp283118 __tmp283108))))
                                       (declare (not safe))
                                       (cons '%#call __tmp283107))))
                                (__tmp283093
                                 (let ((__tmp283094
                                        (let ((__tmp283095
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$obj277453_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp283095))))
                                   (declare (not safe))
                                   (cons __tmp283094 '()))))
                            (declare (not safe))
                            (cons __tmp283096 __tmp283093))))
                     (declare (not safe))
                     (cons '%#begin __tmp283092))))
              (declare (not safe))
              (cons __tmp283091 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp283120
                                                     __tmp283090))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp283089))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp283088
                                  _stx277426_))))
                           _$e277448_)
                          (if (##structure-ref
                               _klass277429_
                               '7
                               gxc#!class::t
                               '#f)
                              (if (fx= (length _args277433_) _fields277431_)
                                  (let ((__tmp283124
                                         (let ((__tmp283125
                                                (let ((__tmp283130
                                                       (let ((__tmp283131
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '##structure '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp283131)))
              (__tmp283126
               (let ((__tmp283127
                      (let ((__tmp283128
                             (let ((__tmp283129
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _self277425_
                                       __id282487
                                       __t282486
                                       '#f))))
                               (declare (not safe))
                               (cons __tmp283129 '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp283128))))
                 (declare (not safe))
                 (cons __tmp283127 _args277433_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp283130
                                                        __tmp283126))))
                                           (declare (not safe))
                                           (cons '%#call __tmp283125))))
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp283124
                                     _stx277426_))
                                  (let ((__tmp283133
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _self277425_
                                            __id282487
                                            __t282486
                                            '#f)))
                                        (__tmp283132
                                         (length (##structure-ref
                                                  _klass277429_
                                                  '5
                                                  gxc#!class::t
                                                  '#f))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"illegal struct constructor application; arity mismatch"
                                     _stx277426_
                                     __tmp283133
                                     __tmp283132)))
                              (let ((_$obj277458_
                                     (let ((__tmp283134 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp283134))))
                                (let _lp277460_ ((_rest277462_ _args277433_)
                                                 (_initializers277463_ '()))
                                  (let* ((___stx282602282603_ _rest277462_)
                                         (_g277467277488_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               ___stx282602282603_)))))
                                    (let ((___kont282604282605_
                                           (lambda (_L277542_
                                                    _L277543_
                                                    _L277544_)
                                             (let* ((_slot277575_
                                                     (keyword->symbol
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L277544_))))
                                                    (_off277577_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass277429_
                                                        _slot277575_))))
                                               (if _off277577_
                                                   (let ((__tmp283135
                                                          (let ((__tmp283136
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _off277577_ _L277543_))))
                    (declare (not safe))
                    (cons __tmp283136 _initializers277463_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp277460_
                                                      _L277542_
                                                      __tmp283135))
                                                   (let ((__tmp283137
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _self277425_
                                                             __id282487
                                                             __t282486
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"unknown slot"
                                                      _stx277426_
                                                      __tmp283137
                                                      _slot277575_))))))
                                          (___kont282606282607_
                                           (lambda ()
                                             (let ((__tmp283138
                                                    (let ((__tmp283139
                                                           (let ((__tmp283162
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp283163
                                 (let ((__tmp283165
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj277458_ '())))
                                       (__tmp283164
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object277435_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp283165 __tmp283164))))
                            (declare (not safe))
                            (cons __tmp283163 '())))
                         (__tmp283140
                          (let ((__tmp283141
                                 (let ((__tmp283142
                                        (let ((__tmp283159
                                               (let ((__tmp283160
                                                      (let ((__tmp283161
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj277458_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp283161))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp283160 '())))
                                              (__tmp283143
                                               (let ((__tmp283144
                                                      (lambda (_i277502_
                                                               _r277503_)
                                                        (let ((__tmp283145
                                                               (let ((__tmp283146
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp283156
                                     (let ((__tmp283157
                                            (let ((__tmp283158
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self277425_
                                                      __id282487
                                                      __t282486
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp283158 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp283157)))
                                    (__tmp283147
                                     (let ((__tmp283153
                                            (let ((__tmp283154
                                                   (let ((__tmp283155
                                                          (car _i277502_)))
                                                     (declare (not safe))
                                                     (cons __tmp283155 '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp283154)))
                                           (__tmp283148
                                            (let ((__tmp283151
                                                   (let ((__tmp283152
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj277458_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp283152)))
                                                  (__tmp283149
                                                   (let ((__tmp283150
                                                          (cdr _i277502_)))
                                                     (declare (not safe))
                                                     (cons __tmp283150 '()))))
                                              (declare (not safe))
                                              (cons __tmp283151 __tmp283149))))
                                       (declare (not safe))
                                       (cons __tmp283153 __tmp283148))))
                                (declare (not safe))
                                (cons __tmp283156 __tmp283147))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-set! __tmp283146))))
                  (declare (not safe))
                  (cons __tmp283145 _r277503_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl1 __tmp283144
                                                         '()
                                                         _initializers277463_))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp283159
                                                  __tmp283143))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp283142))))
                            (declare (not safe))
                            (cons __tmp283141 '()))))
                     (declare (not safe))
                     (cons __tmp283162 __tmp283140))))
              (declare (not safe))
              (cons '%#let-values __tmp283139))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp283138
                                                _stx277426_))))
                                          (___kont282608282609_
                                           (lambda ()
                                             (let ((__tmp283166
                                                    (let ((__tmp283167
                                                           (let ((__tmp283181
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp283182
                                 (let ((__tmp283184
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj277458_ '())))
                                       (__tmp283183
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object277435_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp283184 __tmp283183))))
                            (declare (not safe))
                            (cons __tmp283182 '())))
                         (__tmp283168
                          (let ((__tmp283169
                                 (let ((__tmp283170
                                        (let ((__tmp283174
                                               (let ((__tmp283175
                                                      (let ((__tmp283179
                                                             (let ((__tmp283180
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'class-instance-init! '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp283180)))
                    (__tmp283176
                     (let ((__tmp283177
                            (let ((__tmp283178
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj277458_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp283178))))
                       (declare (not safe))
                       (cons __tmp283177 _args277433_))))
                (declare (not safe))
                (cons __tmp283179 __tmp283176))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp283175)))
                                              (__tmp283171
                                               (let ((__tmp283172
                                                      (let ((__tmp283173
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj277458_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp283173))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp283172 '()))))
                                          (declare (not safe))
                                          (cons __tmp283174 __tmp283171))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp283170))))
                            (declare (not safe))
                            (cons __tmp283169 '()))))
                     (declare (not safe))
                     (cons __tmp283181 __tmp283168))))
              (declare (not safe))
              (cons '%#let-values __tmp283167))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp283166
                                                _stx277426_)))))
                                      (let* ((_g277465277505_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       ___stx282602282603_))
                                                    (___kont282606282607_)
                                                    (___kont282608282609_))))
                                             (___match282639282640_
                                              (lambda (_e277472277510_
                                                       _hd277473277513_
                                                       _tl277474277515_
                                                       _e277475277518_
                                                       _hd277476277521_
                                                       _tl277477277523_
                                                       _e277478277526_
                                                       _hd277479277529_
                                                       _tl277480277531_
                                                       _e277481277534_
                                                       _hd277482277537_
                                                       _tl277483277539_)
                                                (let ((_L277542_
                                                       _tl277483277539_)
                                                      (_L277543_
                                                       _hd277482277537_)
                                                      (_L277544_
                                                       _hd277479277529_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-keyword?
                                                         _L277544_))
                                                      (___kont282604282605_
                                                       _L277542_
                                                       _L277543_
                                                       _L277544_)
                                                      (___kont282608282609_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               ___stx282602282603_))
                                            (let ((_e277472277510_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      ___stx282602282603_))))
                                              (let ((_tl277474277515_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e277472277510_)))
                                                    (_hd277473277513_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e277472277510_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd277473277513_))
                                                    (let ((_e277475277518_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd277473277513_))))
                                                      (let ((_tl277477277523_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e277475277518_)))
                    (_hd277476277521_
                     (let () (declare (not safe)) (##car _e277475277518_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd277476277521_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd277476277521_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl277477277523_))
                            (let ((_e277478277526_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl277477277523_))))
                              (let ((_tl277480277531_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e277478277526_)))
                                    (_hd277479277529_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e277478277526_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl277480277531_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl277474277515_))
                                        (let ((_e277481277534_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl277474277515_))))
                                          (let ((_tl277483277539_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e277481277534_)))
                                                (_hd277482277537_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e277481277534_))))
                                            (___match282639282640_
                                             _e277472277510_
                                             _hd277473277513_
                                             _tl277474277515_
                                             _e277475277518_
                                             _hd277476277521_
                                             _tl277477277523_
                                             _e277478277526_
                                             _hd277479277529_
                                             _tl277480277531_
                                             _e277481277534_
                                             _hd277482277537_
                                             _tl277483277539_)))
                                        (___kont282608282609_))
                                    (___kont282608282609_))))
                            (___kont282608282609_))
                        (___kont282608282609_))
                    (___kont282608282609_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont282608282609_))))
                                            (let ()
                                              (declare (not safe))
                                              (_g277465277505_))))))))))))))))))
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
      (lambda (_self277248_ _stx277249_ _args277250_)
        (let* ((_g277252277262_
                (lambda (_g277253277259_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g277253277259_))))
               (_g277251277300_
                (lambda (_g277253277265_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g277253277265_))
                      (let ((_e277255277267_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g277253277265_))))
                        (let ((_hd277256277270_
                               (let ()
                                 (declare (not safe))
                                 (##car _e277255277267_)))
                              (_tl277257277272_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e277255277267_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl277257277272_))
                              ((lambda (_L277275_)
                                 (let* ((_klass277286_
                                         (let ((__tmp283185
                                                (##structure-ref
                                                 _self277248_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx277249_
                                            __tmp283185)))
                                        (_field277288_
                                         (let ((__tmp283186
                                                (##structure-ref
                                                 _self277248_
                                                 '2
                                                 gxc#!accessor::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _klass277286_
                                            __tmp283186)))
                                        (_object277290_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L277275_))))
                                   (if (##structure-ref
                                        _klass277286_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp283187
                                              (let ((__tmp283196
                                                     (if (##structure-ref
                                                          _self277248_
                                                          '3
                                                          gxc#!accessor::t
                                                          '#f)
                                                         '%#struct-direct-ref
                                                         '%#struct-unchecked-ref))
                                                    (__tmp283188
                                                     (let ((__tmp283193
                                                            (let ((__tmp283194
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp283195
                                  (##structure-ref
                                   _self277248_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp283195 '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp283194)))
                   (__tmp283189
                    (let ((__tmp283191
                           (let ((__tmp283192
                                  (let ()
                                    (declare (not safe))
                                    (cons _field277288_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp283192)))
                          (__tmp283190
                           (let ()
                             (declare (not safe))
                             (cons _object277290_ '()))))
                      (declare (not safe))
                      (cons __tmp283191 __tmp283190))))
               (declare (not safe))
               (cons __tmp283193 __tmp283189))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp283196
                                                      __tmp283188))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp283187
                                          _stx277249_))
                                       (if (##structure-ref
                                            _klass277286_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp283197
                                                  (let ((__tmp283206
                                                         (if (##structure-ref
                                                              _self277248_
                                                              '3
                                                              gxc#!accessor::t
                                                              '#f)
                                                             '%#struct-ref
                                                             '%#struct-unchecked-ref))
                                                        (__tmp283198
                                                         (let ((__tmp283203
                                                                (let ((__tmp283204
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp283205
                                      (##structure-ref
                                       _self277248_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp283205 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp283204)))
                       (__tmp283199
                        (let ((__tmp283201
                               (let ((__tmp283202
                                      (let ()
                                        (declare (not safe))
                                        (cons _field277288_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp283202)))
                              (__tmp283200
                               (let ()
                                 (declare (not safe))
                                 (cons _object277290_ '()))))
                          (declare (not safe))
                          (cons __tmp283201 __tmp283200))))
                   (declare (not safe))
                   (cons __tmp283203 __tmp283199))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp283206
                                                          __tmp283198))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp283197
                                              _stx277249_))
                                           (let ((_$e277293_
                                                  (let ((__tmp283207
                                                         (##structure-ref
                                                          _self277248_
                                                          '2
                                                          gxc#!accessor::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _klass277286_
                                                     __tmp283207))))
                                             (if _$e277293_
                                                 ((lambda (_klass277296_)
                                                    (let ((__tmp283208
                                                           (let ((__tmp283217
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##structure-ref
                               _self277248_
                               '3
                               gxc#!accessor::t
                               '#f)
                              '%#struct-ref
                              '%#struct-unchecked-ref))
                         (__tmp283209
                          (let ((__tmp283214
                                 (let ((__tmp283215
                                        (let ((__tmp283216
                                               (##structure-ref
                                                _self277248_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp283216 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp283215)))
                                (__tmp283210
                                 (let ((__tmp283212
                                        (let ((__tmp283213
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _field277288_ '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp283213)))
                                       (__tmp283211
                                        (let ()
                                          (declare (not safe))
                                          (cons _object277290_ '()))))
                                   (declare (not safe))
                                   (cons __tmp283212 __tmp283211))))
                            (declare (not safe))
                            (cons __tmp283214 __tmp283210))))
                     (declare (not safe))
                     (cons __tmp283217 __tmp283209))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp283208 _stx277249_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e277293_)
                                                 (if (##structure-ref
                                                      _self277248_
                                                      '3
                                                      gxc#!accessor::t
                                                      '#f)
                                                     (let ((__tmp283218
                                                            (let* ((_$obj277298_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp283219 (gensym '__obj)))
                              (declare (not safe))
                              (make-symbol__0 __tmp283219)))
                           (__tmp283220
                            (let ((__tmp283260
                                   (let ((__tmp283261
                                          (let ((__tmp283263
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _$obj277298_ '())))
                                                (__tmp283262
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _object277290_ '()))))
                                            (declare (not safe))
                                            (cons __tmp283263 __tmp283262))))
                                     (declare (not safe))
                                     (cons __tmp283261 '())))
                                  (__tmp283221
                                   (let ((__tmp283222
                                          (let ((__tmp283223
                                                 (let ((__tmp283252
                                                        (let ((__tmp283253
                                                               (let ((__tmp283257
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp283258
                                     (let ((__tmp283259
                                            (##structure-ref
                                             _klass277286_
                                             '1
                                             gxc#!type::t
                                             '#f)))
                                       (declare (not safe))
                                       (cons __tmp283259 '()))))
                                (declare (not safe))
                                (cons '%#quote __tmp283258)))
                             (__tmp283254
                              (let ((__tmp283255
                                     (let ((__tmp283256
                                            (let ()
                                              (declare (not safe))
                                              (cons _$obj277298_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp283256))))
                                (declare (not safe))
                                (cons __tmp283255 '()))))
                         (declare (not safe))
                         (cons __tmp283257 __tmp283254))))
                  (declare (not safe))
                  (cons '%#struct-direct-instance? __tmp283253)))
               (__tmp283224
                (let ((__tmp283241
                       (let ((__tmp283242
                              (let ((__tmp283249
                                     (let ((__tmp283250
                                            (let ((__tmp283251
                                                   (##structure-ref
                                                    _self277248_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp283251 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp283250)))
                                    (__tmp283243
                                     (let ((__tmp283247
                                            (let ((__tmp283248
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field277288_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp283248)))
                                           (__tmp283244
                                            (let ((__tmp283245
                                                   (let ((__tmp283246
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj277298_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp283246))))
                                              (declare (not safe))
                                              (cons __tmp283245 '()))))
                                       (declare (not safe))
                                       (cons __tmp283247 __tmp283244))))
                                (declare (not safe))
                                (cons __tmp283249 __tmp283243))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp283242)))
                      (__tmp283225
                       (let ((__tmp283226
                              (let ((__tmp283227
                                     (let ((__tmp283239
                                            (let ((__tmp283240
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'class-slot-ref
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp283240)))
                                           (__tmp283228
                                            (let ((__tmp283236
                                                   (let ((__tmp283237
                                                          (let ((__tmp283238
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref _self277248_ '1 gxc#!type::t '#f)))
                    (declare (not safe))
                    (cons __tmp283238 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp283237)))
                                                  (__tmp283229
                                                   (let ((__tmp283234
                                                          (let ((__tmp283235
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj277298_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp283235)))
                 (__tmp283230
                  (let ((__tmp283231
                         (let ((__tmp283232
                                (let ((__tmp283233
                                       (##structure-ref
                                        _self277248_
                                        '2
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (cons __tmp283233 '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp283232))))
                    (declare (not safe))
                    (cons __tmp283231 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp283234
                                                           __tmp283230))))
                                              (declare (not safe))
                                              (cons __tmp283236 __tmp283229))))
                                       (declare (not safe))
                                       (cons __tmp283239 __tmp283228))))
                                (declare (not safe))
                                (cons '%#call __tmp283227))))
                         (declare (not safe))
                         (cons __tmp283226 '()))))
                  (declare (not safe))
                  (cons __tmp283241 __tmp283225))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp283252
                                                         __tmp283224))))
                                            (declare (not safe))
                                            (cons '%#if __tmp283223))))
                                     (declare (not safe))
                                     (cons __tmp283222 '()))))
                              (declare (not safe))
                              (cons __tmp283260 __tmp283221))))
                      (declare (not safe))
                      (cons '%#let-values __tmp283220))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp283218 _stx277249_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp283264
                                                            (let ((__tmp283265
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp283271
                                  (let ((__tmp283272
                                         (let ()
                                           (declare (not safe))
                                           (cons 'unchecked-slot-ref '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp283272)))
                                 (__tmp283266
                                  (let ((__tmp283267
                                         (let ((__tmp283268
                                                (let ((__tmp283269
                                                       (let ((__tmp283270
                                                              (##structure-ref
                                                               _self277248_
                                                               '2
                                                               gxc#!accessor::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp283270
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote
                                                        __tmp283269))))
                                           (declare (not safe))
                                           (cons __tmp283268 '()))))
                                    (declare (not safe))
                                    (cons _object277290_ __tmp283267))))
                             (declare (not safe))
                             (cons __tmp283271 __tmp283266))))
                      (declare (not safe))
                      (cons '%#call __tmp283265))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp283264 _stx277249_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _hd277256277270_)
                              (let ()
                                (declare (not safe))
                                (_g277252277262_ _g277253277265_)))))
                      (let ()
                        (declare (not safe))
                        (_g277252277262_ _g277253277265_))))))
          (declare (not safe))
          (_g277251277300_ _args277250_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__t282489)
        (let ((__id282490
               (let ((__tmp282493
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t282489 'id))))
                 (if __tmp282493 __tmp282493 (error '"Unknown slot" 'id))))
              (__slot282491
               (let ((__tmp282494
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t282489 'slot))))
                 (if __tmp282494 __tmp282494 (error '"Unknown slot" 'slot))))
              (__checked?282492
               (let ((__tmp282495
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t282489 'checked?))))
                 (if __tmp282495
                     __tmp282495
                     (error '"Unknown slot" 'checked?)))))
          (lambda (_self277248_ _stx277249_ _args277250_)
            (let* ((_g277252277262_
                    (lambda (_g277253277259_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g277253277259_))))
                   (_g277251277300_
                    (lambda (_g277253277265_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g277253277265_))
                          (let ((_e277255277267_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g277253277265_))))
                            (let ((_hd277256277270_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e277255277267_)))
                                  (_tl277257277272_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e277255277267_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl277257277272_))
                                  ((lambda (_L277275_)
                                     (let* ((_klass277286_
                                             (let ((__tmp283273
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self277248_
                                                       __id282490
                                                       __t282489
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx277249_
                                                __tmp283273)))
                                            (_field277288_
                                             (let ((__tmp283274
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self277248_
                                                       __slot282491
                                                       __t282489
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _klass277286_
                                                __tmp283274)))
                                            (_object277290_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L277275_))))
                                       (if (##structure-ref
                                            _klass277286_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp283275
                                                  (let ((__tmp283284
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self277248_
                        __checked?282492
                        __t282489
                        '#f))
                     '%#struct-direct-ref
                     '%#struct-unchecked-ref))
                (__tmp283276
                 (let ((__tmp283281
                        (let ((__tmp283282
                               (let ((__tmp283283
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _self277248_
                                         __id282490
                                         __t282489
                                         '#f))))
                                 (declare (not safe))
                                 (cons __tmp283283 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp283282)))
                       (__tmp283277
                        (let ((__tmp283279
                               (let ((__tmp283280
                                      (let ()
                                        (declare (not safe))
                                        (cons _field277288_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp283280)))
                              (__tmp283278
                               (let ()
                                 (declare (not safe))
                                 (cons _object277290_ '()))))
                          (declare (not safe))
                          (cons __tmp283279 __tmp283278))))
                   (declare (not safe))
                   (cons __tmp283281 __tmp283277))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp283284
                                                          __tmp283276))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp283275
                                              _stx277249_))
                                           (if (##structure-ref
                                                _klass277286_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp283285
                                                      (let ((__tmp283294
                                                             (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self277248_
                            __checked?282492
                            __t282489
                            '#f))
                         '%#struct-ref
                         '%#struct-unchecked-ref))
                    (__tmp283286
                     (let ((__tmp283291
                            (let ((__tmp283292
                                   (let ((__tmp283293
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self277248_
                                             __id282490
                                             __t282489
                                             '#f))))
                                     (declare (not safe))
                                     (cons __tmp283293 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp283292)))
                           (__tmp283287
                            (let ((__tmp283289
                                   (let ((__tmp283290
                                          (let ()
                                            (declare (not safe))
                                            (cons _field277288_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp283290)))
                                  (__tmp283288
                                   (let ()
                                     (declare (not safe))
                                     (cons _object277290_ '()))))
                              (declare (not safe))
                              (cons __tmp283289 __tmp283288))))
                       (declare (not safe))
                       (cons __tmp283291 __tmp283287))))
                (declare (not safe))
                (cons __tmp283294 __tmp283286))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp283285
                                                  _stx277249_))
                                               (let ((_$e277293_
                                                      (let ((__tmp283295
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self277248_
                        __slot282491
                        __t282489
                        '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _klass277286_ __tmp283295))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e277293_
                                                     ((lambda (_klass277296_)
                                                        (let ((__tmp283296
                                                               (let ((__tmp283305
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self277248_
                                     __checked?282492
                                     __t282489
                                     '#f))
                                  '%#struct-ref
                                  '%#struct-unchecked-ref))
                             (__tmp283297
                              (let ((__tmp283302
                                     (let ((__tmp283303
                                            (let ((__tmp283304
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self277248_
                                                      __id282490
                                                      __t282489
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp283304 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp283303)))
                                    (__tmp283298
                                     (let ((__tmp283300
                                            (let ((__tmp283301
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field277288_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp283301)))
                                           (__tmp283299
                                            (let ()
                                              (declare (not safe))
                                              (cons _object277290_ '()))))
                                       (declare (not safe))
                                       (cons __tmp283300 __tmp283299))))
                                (declare (not safe))
                                (cons __tmp283302 __tmp283298))))
                         (declare (not safe))
                         (cons __tmp283305 __tmp283297))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp283296 _stx277249_)))
              _$e277293_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _self277248_
                                                            __checked?282492
                                                            __t282489
                                                            '#f))
                                                         (let ((__tmp283306
                                                                (let* ((_$obj277298_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp283307 (gensym '__obj)))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp283307)))
                               (__tmp283308
                                (let ((__tmp283348
                                       (let ((__tmp283349
                                              (let ((__tmp283351
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _$obj277298_
                                                             '())))
                                                    (__tmp283350
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _object277290_
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp283351
                                                      __tmp283350))))
                                         (declare (not safe))
                                         (cons __tmp283349 '())))
                                      (__tmp283309
                                       (let ((__tmp283310
                                              (let ((__tmp283311
                                                     (let ((__tmp283340
                                                            (let ((__tmp283341
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp283345
                                  (let ((__tmp283346
                                         (let ((__tmp283347
                                                (##structure-ref
                                                 _klass277286_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp283347 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp283346)))
                                 (__tmp283342
                                  (let ((__tmp283343
                                         (let ((__tmp283344
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj277298_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp283344))))
                                    (declare (not safe))
                                    (cons __tmp283343 '()))))
                             (declare (not safe))
                             (cons __tmp283345 __tmp283342))))
                      (declare (not safe))
                      (cons '%#struct-direct-instance? __tmp283341)))
                   (__tmp283312
                    (let ((__tmp283329
                           (let ((__tmp283330
                                  (let ((__tmp283337
                                         (let ((__tmp283338
                                                (let ((__tmp283339
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self277248_
                                                          __id282490
                                                          __t282489
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp283339 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp283338)))
                                        (__tmp283331
                                         (let ((__tmp283335
                                                (let ((__tmp283336
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field277288_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp283336)))
                                               (__tmp283332
                                                (let ((__tmp283333
                                                       (let ((__tmp283334
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj277298_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp283334))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp283333 '()))))
                                           (declare (not safe))
                                           (cons __tmp283335 __tmp283332))))
                                    (declare (not safe))
                                    (cons __tmp283337 __tmp283331))))
                             (declare (not safe))
                             (cons '%#struct-unchecked-ref __tmp283330)))
                          (__tmp283313
                           (let ((__tmp283314
                                  (let ((__tmp283315
                                         (let ((__tmp283327
                                                (let ((__tmp283328
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-slot-ref
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp283328)))
                                               (__tmp283316
                                                (let ((__tmp283324
                                                       (let ((__tmp283325
                                                              (let ((__tmp283326
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self277248_
                                __id282490
                                __t282489
                                '#f))))
                        (declare (not safe))
                        (cons __tmp283326 '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp283325)))
              (__tmp283317
               (let ((__tmp283322
                      (let ((__tmp283323
                             (let ()
                               (declare (not safe))
                               (cons _$obj277298_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp283323)))
                     (__tmp283318
                      (let ((__tmp283319
                             (let ((__tmp283320
                                    (let ((__tmp283321
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _self277248_
                                              __slot282491
                                              __t282489
                                              '#f))))
                                      (declare (not safe))
                                      (cons __tmp283321 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp283320))))
                        (declare (not safe))
                        (cons __tmp283319 '()))))
                 (declare (not safe))
                 (cons __tmp283322 __tmp283318))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp283324
                                                        __tmp283317))))
                                           (declare (not safe))
                                           (cons __tmp283327 __tmp283316))))
                                    (declare (not safe))
                                    (cons '%#call __tmp283315))))
                             (declare (not safe))
                             (cons __tmp283314 '()))))
                      (declare (not safe))
                      (cons __tmp283329 __tmp283313))))
               (declare (not safe))
               (cons __tmp283340 __tmp283312))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#if __tmp283311))))
                                         (declare (not safe))
                                         (cons __tmp283310 '()))))
                                  (declare (not safe))
                                  (cons __tmp283348 __tmp283309))))
                          (declare (not safe))
                          (cons '%#let-values __tmp283308))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp283306 _stx277249_))
                 (let ((__tmp283352
                        (let ((__tmp283353
                               (let ((__tmp283359
                                      (let ((__tmp283360
                                             (let ()
                                               (declare (not safe))
                                               (cons 'unchecked-slot-ref
                                                     '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp283360)))
                                     (__tmp283354
                                      (let ((__tmp283355
                                             (let ((__tmp283356
                                                    (let ((__tmp283357
                                                           (let ((__tmp283358
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _self277248_
                             __slot282491
                             __t282489
                             '#f))))
                     (declare (not safe))
                     (cons __tmp283358 '()))))
              (declare (not safe))
              (cons '%#quote __tmp283357))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp283356 '()))))
                                        (declare (not safe))
                                        (cons _object277290_ __tmp283355))))
                                 (declare (not safe))
                                 (cons __tmp283359 __tmp283354))))
                          (declare (not safe))
                          (cons '%#call __tmp283353))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp283352 _stx277249_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd277256277270_)
                                  (let ()
                                    (declare (not safe))
                                    (_g277252277262_ _g277253277265_)))))
                          (let ()
                            (declare (not safe))
                            (_g277252277262_ _g277253277265_))))))
              (declare (not safe))
              (_g277251277300_ _args277250_))))))
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
      (lambda (_self277053_ _stx277054_ _args277055_)
        (let* ((_g277057277071_
                (lambda (_g277058277068_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g277058277068_))))
               (_g277056277123_
                (lambda (_g277058277074_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g277058277074_))
                      (let ((_e277061277076_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g277058277074_))))
                        (let ((_hd277062277079_
                               (let ()
                                 (declare (not safe))
                                 (##car _e277061277076_)))
                              (_tl277063277081_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e277061277076_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl277063277081_))
                              (let ((_e277064277084_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl277063277081_))))
                                (let ((_hd277065277087_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e277064277084_)))
                                      (_tl277066277089_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e277064277084_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl277066277089_))
                                      ((lambda (_L277092_ _L277093_)
                                         (let* ((_klass277107_
                                                 (let ((__tmp283361
                                                        (##structure-ref
                                                         _self277053_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _stx277054_
                                                    __tmp283361)))
                                                (_field277109_
                                                 (let ((__tmp283362
                                                        (##structure-ref
                                                         _self277053_
                                                         '2
                                                         gxc#!mutator::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass277107_
                                                    __tmp283362)))
                                                (_object277111_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L277093_)))
                                                (_value277113_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L277092_))))
                                           (if (##structure-ref
                                                _klass277107_
                                                '8
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp283363
                                                      (let ((__tmp283373
                                                             (if (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _self277053_
                          '3
                          gxc#!mutator::t
                          '#f)
                         '%#struct-direct-set!
                         '%#struct-unchecked-set!))
                    (__tmp283364
                     (let ((__tmp283370
                            (let ((__tmp283371
                                   (let ((__tmp283372
                                          (##structure-ref
                                           _self277053_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp283372 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp283371)))
                           (__tmp283365
                            (let ((__tmp283368
                                   (let ((__tmp283369
                                          (let ()
                                            (declare (not safe))
                                            (cons _field277109_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp283369)))
                                  (__tmp283366
                                   (let ((__tmp283367
                                          (let ()
                                            (declare (not safe))
                                            (cons _value277113_ '()))))
                                     (declare (not safe))
                                     (cons _object277111_ __tmp283367))))
                              (declare (not safe))
                              (cons __tmp283368 __tmp283366))))
                       (declare (not safe))
                       (cons __tmp283370 __tmp283365))))
                (declare (not safe))
                (cons __tmp283373 __tmp283364))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp283363
                                                  _stx277054_))
                                               (if (##structure-ref
                                                    _klass277107_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp283374
                                                          (let ((__tmp283384
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##structure-ref
                              _self277053_
                              '3
                              gxc#!mutator::t
                              '#f)
                             '%#struct-set!
                             '%#struct-unchecked-set!))
                        (__tmp283375
                         (let ((__tmp283381
                                (let ((__tmp283382
                                       (let ((__tmp283383
                                              (##structure-ref
                                               _self277053_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp283383 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp283382)))
                               (__tmp283376
                                (let ((__tmp283379
                                       (let ((__tmp283380
                                              (let ()
                                                (declare (not safe))
                                                (cons _field277109_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp283380)))
                                      (__tmp283377
                                       (let ((__tmp283378
                                              (let ()
                                                (declare (not safe))
                                                (cons _value277113_ '()))))
                                         (declare (not safe))
                                         (cons _object277111_ __tmp283378))))
                                  (declare (not safe))
                                  (cons __tmp283379 __tmp283377))))
                           (declare (not safe))
                           (cons __tmp283381 __tmp283376))))
                    (declare (not safe))
                    (cons __tmp283384 __tmp283375))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp283374
                                                      _stx277054_))
                                                   (let ((_$e277116_
                                                          (let ((__tmp283385
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref
                          _self277053_
                          '2
                          gxc#!mutator::t
                          '#f)))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct _klass277107_ __tmp283385))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e277116_
                                                         ((lambda (_klass277119_)
                                                            (let ((__tmp283386
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp283396
                                  (if (##structure-ref
                                       _self277053_
                                       '3
                                       gxc#!mutator::t
                                       '#f)
                                      '%#struct-set!
                                      '%#struct-unchecked-set!))
                                 (__tmp283387
                                  (let ((__tmp283393
                                         (let ((__tmp283394
                                                (let ((__tmp283395
                                                       (##structure-ref
                                                        _self277053_
                                                        '1
                                                        gxc#!type::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp283395 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp283394)))
                                        (__tmp283388
                                         (let ((__tmp283391
                                                (let ((__tmp283392
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field277109_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp283392)))
                                               (__tmp283389
                                                (let ((__tmp283390
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _value277113_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons _object277111_
                                                        __tmp283390))))
                                           (declare (not safe))
                                           (cons __tmp283391 __tmp283389))))
                                    (declare (not safe))
                                    (cons __tmp283393 __tmp283388))))
                             (declare (not safe))
                             (cons __tmp283396 __tmp283387))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp283386 _stx277054_)))
                  _$e277116_)
                 (if (##structure-ref _self277053_ '3 gxc#!mutator::t '#f)
                     (let ((__tmp283397
                            (let* ((_$obj277121_
                                    (let ((__tmp283398 (gensym '__obj)))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp283398)))
                                   (__tmp283399
                                    (let ((__tmp283441
                                           (let ((__tmp283442
                                                  (let ((__tmp283444
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj277121_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp283443
                 (let () (declare (not safe)) (cons _object277111_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp283444
                                                          __tmp283443))))
                                             (declare (not safe))
                                             (cons __tmp283442 '())))
                                          (__tmp283400
                                           (let ((__tmp283401
                                                  (let ((__tmp283402
                                                         (let ((__tmp283433
                                                                (let ((__tmp283434
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp283438
                                      (let ((__tmp283439
                                             (let ((__tmp283440
                                                    (##structure-ref
                                                     _klass277107_
                                                     '1
                                                     gxc#!type::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp283440 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp283439)))
                                     (__tmp283435
                                      (let ((__tmp283436
                                             (let ((__tmp283437
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj277121_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp283437))))
                                        (declare (not safe))
                                        (cons __tmp283436 '()))))
                                 (declare (not safe))
                                 (cons __tmp283438 __tmp283435))))
                          (declare (not safe))
                          (cons '%#struct-direct-instance? __tmp283434)))
                       (__tmp283403
                        (let ((__tmp283421
                               (let ((__tmp283422
                                      (let ((__tmp283430
                                             (let ((__tmp283431
                                                    (let ((__tmp283432
                                                           (##structure-ref
                                                            _self277053_
                                                            '1
                                                            gxc#!type::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (cons __tmp283432 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp283431)))
                                            (__tmp283423
                                             (let ((__tmp283428
                                                    (let ((__tmp283429
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field277109_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp283429)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp283424
                                                    (let ((__tmp283426
                                                           (let ((__tmp283427
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj277121_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp283427)))
                  (__tmp283425
                   (let () (declare (not safe)) (cons _value277113_ '()))))
              (declare (not safe))
              (cons __tmp283426 __tmp283425))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp283428
                                                     __tmp283424))))
                                        (declare (not safe))
                                        (cons __tmp283430 __tmp283423))))
                                 (declare (not safe))
                                 (cons '%#struct-unchecked-set! __tmp283422)))
                              (__tmp283404
                               (let ((__tmp283405
                                      (let ((__tmp283406
                                             (let ((__tmp283419
                                                    (let ((__tmp283420
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp283420)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp283407
                                                    (let ((__tmp283416
                                                           (let ((__tmp283417
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp283418
                                 (##structure-ref
                                  _self277053_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (cons __tmp283418 '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp283417)))
                  (__tmp283408
                   (let ((__tmp283414
                          (let ((__tmp283415
                                 (let ()
                                   (declare (not safe))
                                   (cons _$obj277121_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp283415)))
                         (__tmp283409
                          (let ((__tmp283411
                                 (let ((__tmp283412
                                        (let ((__tmp283413
                                               (##structure-ref
                                                _self277053_
                                                '2
                                                gxc#!mutator::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp283413 '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp283412)))
                                (__tmp283410
                                 (let ()
                                   (declare (not safe))
                                   (cons _value277113_ '()))))
                            (declare (not safe))
                            (cons __tmp283411 __tmp283410))))
                     (declare (not safe))
                     (cons __tmp283414 __tmp283409))))
              (declare (not safe))
              (cons __tmp283416 __tmp283408))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp283419
                                                     __tmp283407))))
                                        (declare (not safe))
                                        (cons '%#call __tmp283406))))
                                 (declare (not safe))
                                 (cons __tmp283405 '()))))
                          (declare (not safe))
                          (cons __tmp283421 __tmp283404))))
                   (declare (not safe))
                   (cons __tmp283433 __tmp283403))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#if __tmp283402))))
                                             (declare (not safe))
                                             (cons __tmp283401 '()))))
                                      (declare (not safe))
                                      (cons __tmp283441 __tmp283400))))
                              (declare (not safe))
                              (cons '%#let-values __tmp283399))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp283397 _stx277054_))
                     (let ((__tmp283445
                            (let ((__tmp283446
                                   (let ((__tmp283453
                                          (let ((__tmp283454
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'unchecked-slot-set!
                                                         '()))))
                                            (declare (not safe))
                                            (cons '%#ref __tmp283454)))
                                         (__tmp283447
                                          (let ((__tmp283448
                                                 (let ((__tmp283450
                                                        (let ((__tmp283451
                                                               (let ((__tmp283452
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##structure-ref
                               _self277053_
                               '2
                               gxc#!mutator::t
                               '#f)))
                         (declare (not safe))
                         (cons __tmp283452 '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp283451)))
               (__tmp283449
                (let () (declare (not safe)) (cons _value277113_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp283450
                                                         __tmp283449))))
                                            (declare (not safe))
                                            (cons _object277111_
                                                  __tmp283448))))
                                     (declare (not safe))
                                     (cons __tmp283453 __tmp283447))))
                              (declare (not safe))
                              (cons '%#call __tmp283446))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp283445 _stx277054_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd277065277087_
                                       _hd277062277079_)
                                      (let ()
                                        (declare (not safe))
                                        (_g277057277071_ _g277058277074_)))))
                              (let ()
                                (declare (not safe))
                                (_g277057277071_ _g277058277074_)))))
                      (let ()
                        (declare (not safe))
                        (_g277057277071_ _g277058277074_))))))
          (declare (not safe))
          (_g277056277123_ _args277055_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__t282496)
        (let ((__id282497
               (let ((__tmp282500
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t282496 'id))))
                 (if __tmp282500 __tmp282500 (error '"Unknown slot" 'id))))
              (__slot282498
               (let ((__tmp282501
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t282496 'slot))))
                 (if __tmp282501 __tmp282501 (error '"Unknown slot" 'slot))))
              (__checked?282499
               (let ((__tmp282502
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t282496 'checked?))))
                 (if __tmp282502
                     __tmp282502
                     (error '"Unknown slot" 'checked?)))))
          (lambda (_self277053_ _stx277054_ _args277055_)
            (let* ((_g277057277071_
                    (lambda (_g277058277068_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g277058277068_))))
                   (_g277056277123_
                    (lambda (_g277058277074_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g277058277074_))
                          (let ((_e277061277076_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g277058277074_))))
                            (let ((_hd277062277079_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e277061277076_)))
                                  (_tl277063277081_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e277061277076_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl277063277081_))
                                  (let ((_e277064277084_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl277063277081_))))
                                    (let ((_hd277065277087_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e277064277084_)))
                                          (_tl277066277089_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e277064277084_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl277066277089_))
                                          ((lambda (_L277092_ _L277093_)
                                             (let* ((_klass277107_
                                                     (let ((__tmp283455
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self277053_
                                                               __id282497
                                                               __t282496
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _stx277054_
                                                        __tmp283455)))
                                                    (_field277109_
                                                     (let ((__tmp283456
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self277053_
                                                               __slot282498
                                                               __t282496
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass277107_
                                                        __tmp283456)))
                                                    (_object277111_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L277093_)))
                                                    (_value277113_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L277092_))))
                                               (if (##structure-ref
                                                    _klass277107_
                                                    '8
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp283457
                                                          (let ((__tmp283467
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self277053_
                                __checked?282499
                                __t282496
                                '#f))
                             '%#struct-direct-set!
                             '%#struct-unchecked-set!))
                        (__tmp283458
                         (let ((__tmp283464
                                (let ((__tmp283465
                                       (let ((__tmp283466
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _self277053_
                                                 __id282497
                                                 __t282496
                                                 '#f))))
                                         (declare (not safe))
                                         (cons __tmp283466 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp283465)))
                               (__tmp283459
                                (let ((__tmp283462
                                       (let ((__tmp283463
                                              (let ()
                                                (declare (not safe))
                                                (cons _field277109_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp283463)))
                                      (__tmp283460
                                       (let ((__tmp283461
                                              (let ()
                                                (declare (not safe))
                                                (cons _value277113_ '()))))
                                         (declare (not safe))
                                         (cons _object277111_ __tmp283461))))
                                  (declare (not safe))
                                  (cons __tmp283462 __tmp283460))))
                           (declare (not safe))
                           (cons __tmp283464 __tmp283459))))
                    (declare (not safe))
                    (cons __tmp283467 __tmp283458))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp283457
                                                      _stx277054_))
                                                   (if (##structure-ref
                                                        _klass277107_
                                                        '7
                                                        gxc#!class::t
                                                        '#f)
                                                       (let ((__tmp283468
                                                              (let ((__tmp283478
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _self277053_
                                    __checked?282499
                                    __t282496
                                    '#f))
                                 '%#struct-set!
                                 '%#struct-unchecked-set!))
                            (__tmp283469
                             (let ((__tmp283475
                                    (let ((__tmp283476
                                           (let ((__tmp283477
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self277053_
                                                     __id282497
                                                     __t282496
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp283477 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp283476)))
                                   (__tmp283470
                                    (let ((__tmp283473
                                           (let ((__tmp283474
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _field277109_ '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp283474)))
                                          (__tmp283471
                                           (let ((__tmp283472
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _value277113_ '()))))
                                             (declare (not safe))
                                             (cons _object277111_
                                                   __tmp283472))))
                                      (declare (not safe))
                                      (cons __tmp283473 __tmp283471))))
                               (declare (not safe))
                               (cons __tmp283475 __tmp283470))))
                        (declare (not safe))
                        (cons __tmp283478 __tmp283469))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp283468 _stx277054_))
               (let ((_$e277116_
                      (let ((__tmp283479
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self277053_
                                __slot282498
                                __t282496
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _klass277107_
                         __tmp283479))))
                 (if _$e277116_
                     ((lambda (_klass277119_)
                        (let ((__tmp283480
                               (let ((__tmp283490
                                      (if (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self277053_
                                             __checked?282499
                                             __t282496
                                             '#f))
                                          '%#struct-set!
                                          '%#struct-unchecked-set!))
                                     (__tmp283481
                                      (let ((__tmp283487
                                             (let ((__tmp283488
                                                    (let ((__tmp283489
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _self277053_
                                                              __id282497
                                                              __t282496
                                                              '#f))))
                                                      (declare (not safe))
                                                      (cons __tmp283489 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp283488)))
                                            (__tmp283482
                                             (let ((__tmp283485
                                                    (let ((__tmp283486
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field277109_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp283486)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp283483
                                                    (let ((__tmp283484
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _value277113_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _object277111_ __tmp283484))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp283485
                                                     __tmp283483))))
                                        (declare (not safe))
                                        (cons __tmp283487 __tmp283482))))
                                 (declare (not safe))
                                 (cons __tmp283490 __tmp283481))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp283480 _stx277054_)))
                      _$e277116_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self277053_
                            __checked?282499
                            __t282496
                            '#f))
                         (let ((__tmp283491
                                (let* ((_$obj277121_
                                        (let ((__tmp283492 (gensym '__obj)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp283492)))
                                       (__tmp283493
                                        (let ((__tmp283535
                                               (let ((__tmp283536
                                                      (let ((__tmp283538
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj277121_ '())))
                    (__tmp283537
                     (let () (declare (not safe)) (cons _object277111_ '()))))
                (declare (not safe))
                (cons __tmp283538 __tmp283537))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp283536 '())))
                                              (__tmp283494
                                               (let ((__tmp283495
                                                      (let ((__tmp283496
                                                             (let ((__tmp283527
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp283528
                                   (let ((__tmp283532
                                          (let ((__tmp283533
                                                 (let ((__tmp283534
                                                        (##structure-ref
                                                         _klass277107_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp283534 '()))))
                                            (declare (not safe))
                                            (cons '%#quote __tmp283533)))
                                         (__tmp283529
                                          (let ((__tmp283530
                                                 (let ((__tmp283531
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj277121_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp283531))))
                                            (declare (not safe))
                                            (cons __tmp283530 '()))))
                                     (declare (not safe))
                                     (cons __tmp283532 __tmp283529))))
                              (declare (not safe))
                              (cons '%#struct-direct-instance? __tmp283528)))
                           (__tmp283497
                            (let ((__tmp283515
                                   (let ((__tmp283516
                                          (let ((__tmp283524
                                                 (let ((__tmp283525
                                                        (let ((__tmp283526
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _self277053_
                          __id282497
                          __t282496
                          '#f))))
                  (declare (not safe))
                  (cons __tmp283526 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp283525)))
                                                (__tmp283517
                                                 (let ((__tmp283522
                                                        (let ((__tmp283523
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _field277109_ '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp283523)))
               (__tmp283518
                (let ((__tmp283520
                       (let ((__tmp283521
                              (let ()
                                (declare (not safe))
                                (cons _$obj277121_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp283521)))
                      (__tmp283519
                       (let () (declare (not safe)) (cons _value277113_ '()))))
                  (declare (not safe))
                  (cons __tmp283520 __tmp283519))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp283522
                                                         __tmp283518))))
                                            (declare (not safe))
                                            (cons __tmp283524 __tmp283517))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp283516)))
                                  (__tmp283498
                                   (let ((__tmp283499
                                          (let ((__tmp283500
                                                 (let ((__tmp283513
                                                        (let ((__tmp283514
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons 'class-slot-set! '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp283514)))
               (__tmp283501
                (let ((__tmp283510
                       (let ((__tmp283511
                              (let ((__tmp283512
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _self277053_
                                        __id282497
                                        __t282496
                                        '#f))))
                                (declare (not safe))
                                (cons __tmp283512 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp283511)))
                      (__tmp283502
                       (let ((__tmp283508
                              (let ((__tmp283509
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj277121_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp283509)))
                             (__tmp283503
                              (let ((__tmp283505
                                     (let ((__tmp283506
                                            (let ((__tmp283507
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self277053_
                                                      __slot282498
                                                      __t282496
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp283507 '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp283506)))
                                    (__tmp283504
                                     (let ()
                                       (declare (not safe))
                                       (cons _value277113_ '()))))
                                (declare (not safe))
                                (cons __tmp283505 __tmp283504))))
                         (declare (not safe))
                         (cons __tmp283508 __tmp283503))))
                  (declare (not safe))
                  (cons __tmp283510 __tmp283502))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp283513
                                                         __tmp283501))))
                                            (declare (not safe))
                                            (cons '%#call __tmp283500))))
                                     (declare (not safe))
                                     (cons __tmp283499 '()))))
                              (declare (not safe))
                              (cons __tmp283515 __tmp283498))))
                       (declare (not safe))
                       (cons __tmp283527 __tmp283497))))
                (declare (not safe))
                (cons '%#if __tmp283496))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp283495 '()))))
                                          (declare (not safe))
                                          (cons __tmp283535 __tmp283494))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp283493))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp283491 _stx277054_))
                         (let ((__tmp283539
                                (let ((__tmp283540
                                       (let ((__tmp283547
                                              (let ((__tmp283548
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons 'unchecked-slot-set!
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#ref __tmp283548)))
                                             (__tmp283541
                                              (let ((__tmp283542
                                                     (let ((__tmp283544
                                                            (let ((__tmp283545
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp283546
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self277053_
                                     __slot282498
                                     __t282496
                                     '#f))))
                             (declare (not safe))
                             (cons __tmp283546 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp283545)))
                   (__tmp283543
                    (let () (declare (not safe)) (cons _value277113_ '()))))
               (declare (not safe))
               (cons __tmp283544 __tmp283543))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _object277111_
                                                      __tmp283542))))
                                         (declare (not safe))
                                         (cons __tmp283547 __tmp283541))))
                                  (declare (not safe))
                                  (cons '%#call __tmp283540))))
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp283539
                            _stx277054_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _hd277065277087_
                                           _hd277062277079_)
                                          (let ()
                                            (declare (not safe))
                                            (_g277057277071_
                                             _g277058277074_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g277057277071_ _g277058277074_)))))
                          (let ()
                            (declare (not safe))
                            (_g277057277071_ _g277058277074_))))))
              (declare (not safe))
              (_g277056277123_ _args277055_))))))
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
      (lambda (_self276887_ _stx276888_ _args276889_)
        (let* ((_self276890276899_ _self276887_)
               (_E276892276903_
                (lambda () (error '"No clause matching" _self276890276899_)))
               (_K276893276910_
                (lambda (_inline276906_ _dispatch276907_ _arity276908_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self276887_ _args276889_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx276888_
                         _arity276908_)))
                  (if _inline276906_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp283549
                               (let ((__tmp283550
                                      (_inline276906_ _stx276888_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp283550
                                  _stx276888_))))
                          (declare (not safe))
                          (gxc#compile-e__0 __tmp283549)))
                      (if _dispatch276907_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch276907_))
                            (let ((__tmp283551
                                   (let ((__tmp283552
                                          (let ((__tmp283553
                                                 (let ((__tmp283554
                                                        (let ((__tmp283555
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch276907_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp283555))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp283554
                                                         _args276889_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp283553))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp283552
                                      _stx276888_))))
                              (declare (not safe))
                              (gxc#compile-e__0 __tmp283551)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _stx276888_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self276890276899_ 'gxc#!lambda::t))
              (let* ((_e276894276913_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self276890276899_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e276895276916_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self276890276899_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity276919_ _e276895276916_)
                     (_e276896276921_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self276890276899_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch276924_ _e276896276921_)
                     (_e276897276926_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self276890276899_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline276929_ _e276897276926_))
                (declare (not safe))
                (_K276893276910_
                 _inline276929_
                 _dispatch276924_
                 _arity276919_))
              (let () (declare (not safe)) (_E276892276903_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self276726_ _stx276727_ _args276728_)
        (let* ((_self276729276736_ _self276726_)
               (_E276731276740_
                (lambda () (error '"No clause matching" _self276729276736_)))
               (_K276732276754_
                (lambda (_clauses276743_)
                  (let ((_$e276749_
                         (let ((__tmp283556
                                (lambda (_g276744276746_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g276744276746_
                                     _args276728_)))))
                           (declare (not safe))
                           (find __tmp283556 _clauses276743_))))
                    (if _$e276749_
                        ((lambda (_clause276752_)
                           (let ((__method282771
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause276752_
                                     'optimize-call))))
                             (if __method282771
                                 (__method282771
                                  _clause276752_
                                  _stx276727_
                                  _args276728_)
                                 (error '"Missing method"
                                        _clause276752_
                                        'optimize-call))))
                         _$e276749_)
                        (let ((__tmp283557
                               (map gxc#!lambda-arity _clauses276743_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx276727_
                           __tmp283557)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self276729276736_
                 'gxc#!case-lambda::t))
              (let* ((_e276733276757_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self276729276736_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e276734276760_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self276729276736_
                         '2
                         gxc#!case-lambda::t
                         '#f)))
                     (_clauses276763_ _e276734276760_))
                (declare (not safe))
                (_K276732276754_ _clauses276763_))
              (let () (declare (not safe)) (_E276731276740_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self276540_ _args276541_)
        (let* ((_self276542276549_ _self276540_)
               (_E276544276553_
                (lambda () (error '"No clause matching" _self276542276549_)))
               (_K276545276593_
                (lambda (_arity276556_)
                  (let* ((_arity276557276566_ _arity276556_)
                         (_E276560276570_
                          (lambda ()
                            (error '"No clause matching"
                                   _arity276557276566_))))
                    (let ((_K276564276590_
                           (lambda ()
                             (fx= (length _args276541_) _arity276556_)))
                          (_K276561276576_
                           (lambda (_arity276574_)
                             (fx>= (length _args276541_) _arity276574_))))
                      (let ((_try-match276559276586_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity276557276566_))
                                   (let ((_tl276563276581_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity276557276566_)))
                                         (_hd276562276579_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity276557276566_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl276563276581_))
                                         (let ((_arity276584_
                                                _hd276562276579_))
                                           (declare (not safe))
                                           (_K276561276576_ _arity276584_))
                                         (let ()
                                           (declare (not safe))
                                           (_E276560276570_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E276560276570_))))))
                        (if (fixnum? _arity276557276566_)
                            (let () (declare (not safe)) (_K276564276590_))
                            (let ()
                              (declare (not safe))
                              (_try-match276559276586_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self276542276549_ 'gxc#!lambda::t))
              (let* ((_e276546276596_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self276542276549_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e276547276599_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self276542276549_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity276602_ _e276547276599_))
                (declare (not safe))
                (_K276545276593_ _arity276602_))
              (let () (declare (not safe)) (_E276544276553_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self276425_ _stx276426_ _args276427_)
        (let* ((_self276428276436_ _self276425_)
               (_E276430276440_
                (lambda () (error '"No clause matching" _self276428276436_)))
               (_K276431276524_
                (lambda (_dispatch276443_ _table276444_)
                  (let* ((_g276445276454_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch276443_)))
                         (_else276447276462_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch276443_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _stx276426_))))
                         (_K276449276508_
                          (lambda (_main276465_ _keys276466_)
                            (let ((_g283558_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx276426_
                                      _args276427_))))
                              (begin
                                (let ((_g283559_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g283558_)
                                             (##vector-length _g283558_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g283559_ 2)))
                                      (error "Context expects 2 values"
                                             _g283559_)))
                                (let ((_pargs276468_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g283558_ 0)))
                                      (_kwargs276469_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g283558_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main276465_))
                                    (if _table276444_
                                        (let ((_xargs276476_
                                               (map (lambda (_key276471_)
                                                      (let ((_$e276473_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _key276471_ _kwargs276469_))))
                (if _$e276473_ (values _$e276473_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys276466_)))
                                          (for-each
                                           (lambda (_kw276478_)
                                             (if (memq (car _kw276478_)
                                                       _keys276466_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx276426_
                                                    _keys276466_
                                                    _kw276478_))))
                                           _kwargs276469_)
                                          (let ((__tmp283560
                                                 (let ((__tmp283561
                                                        (let ((__tmp283562
                                                               (let ((__tmp283567
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp283568
                                     (let ()
                                       (declare (not safe))
                                       (cons _main276465_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp283568)))
                             (__tmp283563
                              (let ((__tmp283565
                                     (let ((__tmp283566
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp283566)))
                                    (__tmp283564
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs276468_
                                               _xargs276476_))))
                                (declare (not safe))
                                (cons __tmp283565 __tmp283564))))
                         (declare (not safe))
                         (cons __tmp283567 __tmp283563))))
                  (declare (not safe))
                  (cons '%#call __tmp283562))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp283561
                                                    _stx276426_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0 __tmp283560)))
                                        (let* ((_kwt276480_
                                                (let ((__tmp283569
                                                       (gensym '__kwt)))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp283569)))
                                               (_kwvars276483_
                                                (map (lambda (_g283570_)
                                                       (let ((__tmp283571
                                                              (gensym '__kw)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp283571)))
                                                     _kwargs276469_))
                                               (_kwbind276488_
                                                (map (lambda (_kw276485_
                                                              _kwvar276486_)
                                                       (let ((__tmp283574
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar276486_ '())))
                     (__tmp283572
                      (let ((__tmp283573 (cdr _kw276485_)))
                        (declare (not safe))
                        (cons __tmp283573 '()))))
                 (declare (not safe))
                 (cons __tmp283574 __tmp283572)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs276469_
                                                     _kwvars276483_))
                                               (_kwset276493_
                                                (map (lambda (_kw276490_
                                                              _kwvar276491_)
                                                       (let ((__tmp283575
                                                              (let ((__tmp283576
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp283584
                                    (let ((__tmp283585
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt276480_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp283585)))
                                   (__tmp283577
                                    (let ((__tmp283581
                                           (let ((__tmp283582
                                                  (let ((__tmp283583
                                                         (car _kw276490_)))
                                                    (declare (not safe))
                                                    (cons __tmp283583 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp283582)))
                                          (__tmp283578
                                           (let ((__tmp283579
                                                  (let ((__tmp283580
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar276491_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp283580))))
                                             (declare (not safe))
                                             (cons __tmp283579 '()))))
                                      (declare (not safe))
                                      (cons __tmp283581 __tmp283578))))
                               (declare (not safe))
                               (cons __tmp283584 __tmp283577))))
                        (declare (not safe))
                        (cons '(%#ref hash-put!) __tmp283576))))
                 (declare (not safe))
                 (cons '%#call __tmp283575)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs276469_
                                                     _kwvars276483_))
                                               (_xkwargs276498_
                                                (map (lambda (_kw276495_
                                                              _kwvar276496_)
                                                       (let ((__tmp283588
                                                              (car _kw276495_))
                                                             (__tmp283586
                                                              (let ((__tmp283587
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar276496_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp283587))))
                 (declare (not safe))
                 (cons __tmp283588 __tmp283586)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs276469_
                                                     _kwvars276483_))
                                               (_xargs276505_
                                                (map (lambda (_key276500_)
                                                       (let ((_$e276502_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq _key276500_ _xkwargs276498_))))
                 (if _$e276502_ (values _$e276502_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys276466_)))
                                          (let ((__tmp283589
                                                 (let ((__tmp283590
                                                        (let ((__tmp283591
                                                               (let ((__tmp283592
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp283593
                                     (let ((__tmp283594
                                            (let ((__tmp283608
                                                   (let ((__tmp283609
                                                          (let ((__tmp283619
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt276480_ '())))
                        (__tmp283610
                         (let ((__tmp283611
                                (let ((__tmp283612
                                       (let ((__tmp283613
                                              (let ((__tmp283614
                                                     (let ((__tmp283615
                                                            (let ((__tmp283616
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp283617
                                  (let ((__tmp283618 (length _kwargs276469_)))
                                    (declare (not safe))
                                    (cons __tmp283618 '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp283617))))
                      (declare (not safe))
                      (cons __tmp283616 '()))))
               (declare (not safe))
               (cons '(%#quote size:) __tmp283615))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-hash-table-eq)
                                                      __tmp283614))))
                                         (declare (not safe))
                                         (cons '%#call __tmp283613))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp283612
                                   _stx276426_))))
                           (declare (not safe))
                           (cons __tmp283611 '()))))
                    (declare (not safe))
                    (cons __tmp283619 __tmp283610))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp283609 '())))
                                                  (__tmp283595
                                                   (let ((__tmp283596
                                                          (let ((__tmp283597
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp283598
                                (let ((__tmp283599
                                       (let ((__tmp283600
                                              (let ((__tmp283601
                                                     (let ((__tmp283606
                                                            (let ((__tmp283607
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main276465_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp283607)))
                   (__tmp283602
                    (let ((__tmp283604
                           (let ((__tmp283605
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt276480_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp283605)))
                          (__tmp283603
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs276468_ _xargs276505_))))
                      (declare (not safe))
                      (cons __tmp283604 __tmp283603))))
               (declare (not safe))
               (cons __tmp283606 __tmp283602))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp283601))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp283600
                                          _stx276426_))))
                                  (declare (not safe))
                                  (cons __tmp283599 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp283598 _kwset276493_))))
                    (declare (not safe))
                    (cons '%#begin __tmp283597))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp283596 '()))))
                                              (declare (not safe))
                                              (cons __tmp283608 __tmp283595))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp283594))))
                                (declare (not safe))
                                (cons __tmp283593 '()))))
                         (declare (not safe))
                         (cons _kwbind276488_ __tmp283592))))
                  (declare (not safe))
                  (cons '%#let-values __tmp283591))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp283590
                                                    _stx276426_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0
                                             __tmp283589)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g276445276454_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e276450276511_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g276445276454_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                               (_e276451276514_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g276445276454_
                                   '2
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_keys276517_ _e276451276514_)
                               (_e276452276519_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g276445276454_
                                   '3
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_main276522_ _e276452276519_))
                          (declare (not safe))
                          (_K276449276508_ _main276522_ _keys276517_))
                        (let () (declare (not safe)) (_else276447276462_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self276428276436_
                 'gxc#!kw-lambda::t))
              (let* ((_e276432276527_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self276428276436_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e276433276530_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self276428276436_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table276533_ _e276433276530_)
                     (_e276434276535_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self276428276436_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch276538_ _e276434276535_))
                (declare (not safe))
                (_K276431276524_ _dispatch276538_ _table276533_))
              (let () (declare (not safe)) (_E276430276440_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx276038_ _args276039_)
        (let _lp276041_ ((_rest276043_ _args276039_)
                         (_pargs276044_ '())
                         (_kwargs276045_ '()))
          (let* ((___stx282653282654_ _rest276043_)
                 (_g276051276103_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx282653282654_)))))
            (let ((___kont282655282656_
                   (lambda (_L276282_ _L276283_)
                     (let ((__tmp283620
                            (let ()
                              (declare (not safe))
                              (cons _L276283_ _pargs276044_))))
                       (declare (not safe))
                       (_lp276041_ _L276282_ __tmp283620 _kwargs276045_))))
                  (___kont282657282658_
                   (lambda (_L276228_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L276228_ _pargs276044_))
                             (reverse _kwargs276045_))))
                  (___kont282659282660_
                   (lambda (_L276175_ _L276176_ _L276177_)
                     (let ((_kw276194_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _L276177_))))
                       (if (assq _kw276194_ _kwargs276045_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx276038_
                              _kw276194_))
                           (let ((__tmp283621
                                  (let ((__tmp283622
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw276194_ _L276176_))))
                                    (declare (not safe))
                                    (cons __tmp283622 _kwargs276045_))))
                             (declare (not safe))
                             (_lp276041_
                              _L276175_
                              _pargs276044_
                              __tmp283621))))))
                  (___kont282661282662_
                   (lambda (_L276123_ _L276124_)
                     (let ((__tmp283623
                            (let ()
                              (declare (not safe))
                              (cons _L276124_ _pargs276044_))))
                       (declare (not safe))
                       (_lp276041_ _L276123_ __tmp283623 _kwargs276045_))))
                  (___kont282663282664_
                   (lambda ()
                     (values (reverse _pargs276044_)
                             (reverse _kwargs276045_)))))
              (let* ((_g276050276110_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx282653282654_))
                            (___kont282663282664_)
                            (let () (declare (not safe)) (_g276051276103_)))))
                     (___match282760282761_
                      (lambda (_e276082276143_
                               _hd276083276146_
                               _tl276084276148_
                               _e276085276151_
                               _hd276086276154_
                               _tl276087276156_
                               _e276088276159_
                               _hd276089276162_
                               _tl276090276164_
                               _e276091276167_
                               _hd276092276170_
                               _tl276093276172_)
                        (let ((_L276175_ _tl276093276172_)
                              (_L276176_ _hd276092276170_)
                              (_L276177_ _hd276089276162_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L276177_))
                              (___kont282659282660_
                               _L276175_
                               _L276176_
                               _L276177_)
                              (___kont282661282662_
                               _tl276084276148_
                               _hd276083276146_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx282653282654_))
                    (let ((_e276055276247_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx282653282654_))))
                      (let ((_tl276057276252_
                             (let ()
                               (declare (not safe))
                               (##cdr _e276055276247_)))
                            (_hd276056276250_
                             (let ()
                               (declare (not safe))
                               (##car _e276055276247_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd276056276250_))
                            (let ((_e276058276255_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd276056276250_))))
                              (let ((_tl276060276260_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e276058276255_)))
                                    (_hd276059276258_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e276058276255_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd276059276258_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd276059276258_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl276060276260_))
                                            (let ((_e276061276263_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl276060276260_))))
                                              (let ((_tl276063276268_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e276061276263_)))
                                                    (_hd276062276266_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e276061276263_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd276062276266_))
                                                    (let ((_e276064276271_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd276062276266_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e276064276271_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl276063276268_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl276057276252_))
                          (let ((_e276065276274_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl276057276252_))))
                            (let ((_tl276067276279_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e276065276274_)))
                                  (_hd276066276277_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e276065276274_))))
                              (___kont282655282656_
                               _tl276067276279_
                               _hd276066276277_)))
                          (___kont282661282662_
                           _tl276057276252_
                           _hd276056276250_))
                      (___kont282661282662_ _tl276057276252_ _hd276056276250_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e276064276271_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl276063276268_))
                          (___kont282657282658_ _tl276057276252_)
                          (___kont282661282662_
                           _tl276057276252_
                           _hd276056276250_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl276063276268_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl276057276252_))
                              (let ((_e276091276167_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl276057276252_))))
                                (let ((_tl276093276172_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e276091276167_)))
                                      (_hd276092276170_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e276091276167_))))
                                  (___match282760282761_
                                   _e276055276247_
                                   _hd276056276250_
                                   _tl276057276252_
                                   _e276058276255_
                                   _hd276059276258_
                                   _tl276060276260_
                                   _e276061276263_
                                   _hd276062276266_
                                   _tl276063276268_
                                   _e276091276167_
                                   _hd276092276170_
                                   _tl276093276172_)))
                              (___kont282661282662_
                               _tl276057276252_
                               _hd276056276250_))
                          (___kont282661282662_
                           _tl276057276252_
                           _hd276056276250_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl276063276268_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl276057276252_))
                                                            (let ((_e276091276167_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl276057276252_))))
                      (let ((_tl276093276172_
                             (let ()
                               (declare (not safe))
                               (##cdr _e276091276167_)))
                            (_hd276092276170_
                             (let ()
                               (declare (not safe))
                               (##car _e276091276167_))))
                        (___match282760282761_
                         _e276055276247_
                         _hd276056276250_
                         _tl276057276252_
                         _e276058276255_
                         _hd276059276258_
                         _tl276060276260_
                         _e276061276263_
                         _hd276062276266_
                         _tl276063276268_
                         _e276091276167_
                         _hd276092276170_
                         _tl276093276172_)))
                    (___kont282661282662_ _tl276057276252_ _hd276056276250_))
                (___kont282661282662_ _tl276057276252_ _hd276056276250_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont282661282662_
                                             _tl276057276252_
                                             _hd276056276250_))
                                        (___kont282661282662_
                                         _tl276057276252_
                                         _hd276056276250_))
                                    (___kont282661282662_
                                     _tl276057276252_
                                     _hd276056276250_))))
                            (___kont282661282662_
                             _tl276057276252_
                             _hd276056276250_))))
                    (let () (declare (not safe)) (_g276050276110_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self276034_ _stx276035_ _args276036_)
        (let () (declare (not safe)) (gxc#xform-call% _stx276035_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
