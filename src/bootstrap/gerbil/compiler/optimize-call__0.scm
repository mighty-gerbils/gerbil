(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1710064757)
  (begin
    (define gxc#&optimize-call
      (make-promise
       (lambda ()
         (let ((_tbl149474_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp149769 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-merge! _tbl149474_ __tmp149769))
           (let ()
             (declare (not safe))
             (hash-put! _tbl149474_ '%#call gxc#optimize-call%))
           _tbl149474_))))
    (define gxc#apply-optimize-call
      (lambda (_stx149457_ . _args149459_)
        (let ((__tmp149771
               (lambda ()
                 (declare (not safe))
                 (if (null? _args149459_)
                     (gxc#compile-e__0 _stx149457_)
                     (let ((_arg1149464_ (car _args149459_))
                           (_rest149466_ (cdr _args149459_)))
                       (if (null? _rest149466_)
                           (gxc#compile-e__1 _stx149457_ _arg1149464_)
                           (let ((_arg2149469_ (car _rest149466_))
                                 (_rest149471_ (cdr _rest149466_)))
                             (if (null? _rest149471_)
                                 (gxc#compile-e__2
                                  _stx149457_
                                  _arg1149464_
                                  _arg2149469_)
                                 (apply gxc#compile-e
                                        _stx149457_
                                        _arg1149464_
                                        _arg2149469_
                                        _rest149471_))))))))
              (__tmp149770 (force gxc#&optimize-call)))
          (declare (not safe))
          (call-with-parameters
           __tmp149771
           gxc#current-compile-methods
           __tmp149770))))
    (define gxc#optimize-call%
      (lambda (_stx149312_)
        (let* ((___stx149519149520_ _stx149312_)
               (_g149315149335_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx149519149520_)))))
          (let ((___kont149521149522_
                 (lambda (_L149379_ _L149380_)
                   (let* ((_rator-id149398_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L149380_)))
                          (_rator-type149400_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id149398_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type149400_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp149772
                                  (##structure-ref
                                   _rator-type149400_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id149398_
                              '" => "
                              _rator-type149400_
                              '" "
                              __tmp149772))
                           (let ((_optimized149403_
                                  (let ((__method149767
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type149400_
                                            'optimize-call))))
                                    (if __method149767
                                        (__method149767
                                         _rator-type149400_
                                         _stx149312_
                                         _L149379_)
                                        (let ()
                                          (declare (not safe))
                                          (error '"Missing method"
                                                 _rator-type149400_
                                                 'optimize-call))))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type149400_))
                                 _optimized149403_
                                 (let* ((___stx149501149502_ _optimized149403_)
                                        (_g149406149416_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx149501149502_)))))
                                   (let ((___kont149503149504_
                                          (lambda (_L149436_)
                                            (let ((__tmp149773
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L149436_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp149773
                                               _stx149312_))))
                                         (___kont149505149506_
                                          (lambda () _optimized149403_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx149501149502_))
                                         (let ((_e149409149428_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx149501149502_))))
                                           (let ((_tl149411149433_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e149409149428_)))
                                                 (_hd149410149431_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e149409149428_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd149410149431_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd149410149431_))
                                                     (___kont149503149504_
                                                      _tl149411149433_)
                                                     (___kont149505149506_))
                                                 (___kont149505149506_))))
                                         (___kont149505149506_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type149400_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx149312_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _stx149312_
                                _rator-type149400_)))))))
                (___kont149523149524_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _stx149312_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx149519149520_))
                (let ((_e149319149347_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx149519149520_))))
                  (let ((_tl149321149352_
                         (let () (declare (not safe)) (##cdr _e149319149347_)))
                        (_hd149320149350_
                         (let ()
                           (declare (not safe))
                           (##car _e149319149347_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl149321149352_))
                        (let ((_e149322149355_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl149321149352_))))
                          (let ((_tl149324149360_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e149322149355_)))
                                (_hd149323149358_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e149322149355_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd149323149358_))
                                (let ((_e149325149363_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd149323149358_))))
                                  (let ((_tl149327149368_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e149325149363_)))
                                        (_hd149326149366_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e149325149363_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd149326149366_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd149326149366_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl149327149368_))
                                                (let ((_e149328149371_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl149327149368_))))
                                                  (let ((_tl149330149376_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e149328149371_)))
                                                        (_hd149329149374_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e149328149371_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl149330149376_))
                                                        (___kont149521149522_
                                                         _tl149324149360_
                                                         _hd149329149374_)
                                                        (___kont149523149524_))))
                                                (___kont149523149524_))
                                            (___kont149523149524_))
                                        (___kont149523149524_))))
                                (___kont149523149524_))))
                        (___kont149523149524_))))
                (___kont149523149524_))))))
    (define gxc#!predicate::optimize-call
      (lambda (_self149266_ _stx149267_ _args149268_)
        (let* ((_g149270149280_
                (lambda (_g149271149277_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g149271149277_))))
               (_g149269149309_
                (lambda (_g149271149283_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g149271149283_))
                      (let ((_e149273149285_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g149271149283_))))
                        (let ((_hd149274149288_
                               (let ()
                                 (declare (not safe))
                                 (##car _e149273149285_)))
                              (_tl149275149290_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e149273149285_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl149275149290_))
                              ((lambda (_L149293_)
                                 (let* ((_klass149304_
                                         (let ((__tmp149774
                                                (##structure-ref
                                                 _self149266_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx149267_
                                            __tmp149774)))
                                        (_object149306_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L149293_))))
                                   (if (##structure-ref
                                        _klass149304_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp149775
                                              (let ((__tmp149776
                                                     (let ((__tmp149778
                                                            (let ((__tmp149779
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp149780
                                  (##structure-ref
                                   _klass149304_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp149780 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp149779)))
                   (__tmp149777
                    (let () (declare (not safe)) (cons _object149306_ '()))))
               (declare (not safe))
               (cons __tmp149778 __tmp149777))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#struct-direct-instance?
                                                      __tmp149776))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp149775
                                          _stx149267_))
                                       (if (##structure-ref
                                            _klass149304_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp149781
                                                  (let ((__tmp149782
                                                         (let ((__tmp149784
                                                                (let ((__tmp149785
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp149786
                                      (##structure-ref
                                       _klass149304_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp149786 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp149785)))
                       (__tmp149783
                        (let ()
                          (declare (not safe))
                          (cons _object149306_ '()))))
                   (declare (not safe))
                   (cons __tmp149784 __tmp149783))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-instance?
                                                          __tmp149782))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp149781
                                              _stx149267_))
                                           (let ((__tmp149787
                                                  (let ((__tmp149788
                                                         (let ((__tmp149794
                                                                (let ((__tmp149795
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'class-instance? '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp149795)))
                       (__tmp149789
                        (let ((__tmp149791
                               (let ((__tmp149792
                                      (let ((__tmp149793
                                             (##structure-ref
                                              _self149266_
                                              '1
                                              gxc#!type::t
                                              '#f)))
                                        (declare (not safe))
                                        (cons __tmp149793 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp149792)))
                              (__tmp149790
                               (let ()
                                 (declare (not safe))
                                 (cons _object149306_ '()))))
                          (declare (not safe))
                          (cons __tmp149791 __tmp149790))))
                   (declare (not safe))
                   (cons __tmp149794 __tmp149789))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#call
                                                          __tmp149788))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp149787
                                              _stx149267_))))))
                               _hd149274149288_)
                              (let ()
                                (declare (not safe))
                                (_g149270149280_ _g149271149283_)))))
                      (let ()
                        (declare (not safe))
                        (_g149270149280_ _g149271149283_))))))
          (declare (not safe))
          (_g149269149309_ _args149268_))))
    (define gxc#!predicate::optimize-call::specialize
      (lambda (__klass149476 __method-table149477)
        (let ((__id149478
               (let ((__slot149479
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass149476 'id))))
                 (if __slot149479
                     __slot149479
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self149266_ _stx149267_ _args149268_)
            (let* ((_g149270149280_
                    (lambda (_g149271149277_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g149271149277_))))
                   (_g149269149309_
                    (lambda (_g149271149283_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g149271149283_))
                          (let ((_e149273149285_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g149271149283_))))
                            (let ((_hd149274149288_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e149273149285_)))
                                  (_tl149275149290_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e149273149285_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl149275149290_))
                                  ((lambda (_L149293_)
                                     (let* ((_klass149304_
                                             (let ((__tmp149796
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self149266_
                                                       __id149478
                                                       __klass149476
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx149267_
                                                __tmp149796)))
                                            (_object149306_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L149293_))))
                                       (if (##structure-ref
                                            _klass149304_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp149797
                                                  (let ((__tmp149798
                                                         (let ((__tmp149800
                                                                (let ((__tmp149801
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp149802
                                      (##structure-ref
                                       _klass149304_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp149802 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp149801)))
                       (__tmp149799
                        (let ()
                          (declare (not safe))
                          (cons _object149306_ '()))))
                   (declare (not safe))
                   (cons __tmp149800 __tmp149799))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-direct-instance?
                                                          __tmp149798))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp149797
                                              _stx149267_))
                                           (if (##structure-ref
                                                _klass149304_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp149803
                                                      (let ((__tmp149804
                                                             (let ((__tmp149806
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp149807
                                   (let ((__tmp149808
                                          (##structure-ref
                                           _klass149304_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp149808 '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp149807)))
                           (__tmp149805
                            (let ()
                              (declare (not safe))
                              (cons _object149306_ '()))))
                       (declare (not safe))
                       (cons __tmp149806 __tmp149805))))
                (declare (not safe))
                (cons '%#struct-instance? __tmp149804))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp149803
                                                  _stx149267_))
                                               (let ((__tmp149809
                                                      (let ((__tmp149810
                                                             (let ((__tmp149816
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp149817
                                   (let ()
                                     (declare (not safe))
                                     (cons 'class-instance? '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp149817)))
                           (__tmp149811
                            (let ((__tmp149813
                                   (let ((__tmp149814
                                          (let ((__tmp149815
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _self149266_
                                                    __id149478
                                                    __klass149476
                                                    '#f))))
                                            (declare (not safe))
                                            (cons __tmp149815 '()))))
                                     (declare (not safe))
                                     (cons '%#ref __tmp149814)))
                                  (__tmp149812
                                   (let ()
                                     (declare (not safe))
                                     (cons _object149306_ '()))))
                              (declare (not safe))
                              (cons __tmp149813 __tmp149812))))
                       (declare (not safe))
                       (cons __tmp149816 __tmp149811))))
                (declare (not safe))
                (cons '%#call __tmp149810))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp149809
                                                  _stx149267_))))))
                                   _hd149274149288_)
                                  (let ()
                                    (declare (not safe))
                                    (_g149270149280_ _g149271149283_)))))
                          (let ()
                            (declare (not safe))
                            (_g149270149280_ _g149271149283_))))))
              (declare (not safe))
              (_g149269149309_ _args149268_))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!predicate::optimize-call
       gxc#!predicate::optimize-call::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#!constructor::optimize-call
      (lambda (_self148986_ _stx148987_ _args148988_)
        (let* ((_klass148990_
                (let ((__tmp149818
                       (##structure-ref _self148986_ '1 gxc#!type::t '#f)))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _stx148987_ __tmp149818)))
               (_fields148992_
                (length (##structure-ref _klass148990_ '5 gxc#!class::t '#f)))
               (_args148994_ (map gxc#compile-e _args148988_))
               (_inline-make-object148996_
                (let ((__tmp149819
                       (let ((__tmp149825
                              (let ((__tmp149826
                                     (let ()
                                       (declare (not safe))
                                       (cons '##structure '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp149826)))
                             (__tmp149820
                              (let ((__tmp149822
                                     (let ((__tmp149823
                                            (let ((__tmp149824
                                                   (##structure-ref
                                                    _self148986_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp149824 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp149823)))
                                    (__tmp149821
                                     (make-list _fields148992_ '(%#quote #f))))
                                (declare (not safe))
                                (cons __tmp149822 __tmp149821))))
                         (declare (not safe))
                         (cons __tmp149825 __tmp149820))))
                  (declare (not safe))
                  (cons '%#call __tmp149819))))
          (let ((_$e148999_
                 (##structure-ref _klass148990_ '6 gxc#!class::t '#f)))
            (if _$e148999_
                ((lambda (_ctor149002_)
                   (let ((_$obj149004_
                          (let ((__tmp149827 (gensym '__obj)))
                            (declare (not safe))
                            (make-symbol__0 __tmp149827)))
                         (_ctor-impl149005_
                          (let ()
                            (declare (not safe))
                            (gxc#!class-lookup-method
                             _klass148990_
                             _ctor149002_))))
                     (let ((__tmp149828
                            (let ((__tmp149829
                                   (let ((__tmp149897
                                          (let ((__tmp149898
                                                 (let ((__tmp149900
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj149004_
                                                                '())))
                                                       (__tmp149899
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _inline-make-object148996_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp149900
                                                         __tmp149899))))
                                            (declare (not safe))
                                            (cons __tmp149898 '())))
                                         (__tmp149830
                                          (let ((__tmp149831
                                                 (let ((__tmp149832
                                                        (let ((__tmp149836
                                                               (if _ctor-impl149005_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp149837
                                  (let ((__tmp149841
                                         (let ((__tmp149842
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _ctor-impl149005_
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp149842)))
                                        (__tmp149838
                                         (let ((__tmp149839
                                                (let ((__tmp149840
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj149004_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp149840))))
                                           (declare (not safe))
                                           (cons __tmp149839 _args148994_))))
                                    (declare (not safe))
                                    (cons __tmp149841 __tmp149838))))
                             (declare (not safe))
                             (cons '%#call __tmp149837))
                           (let* ((_$ctor149007_
                                   (let ((__tmp149843 (gensym '__constructor)))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp149843)))
                                  (__tmp149844
                                   (let ((__tmp149879
                                          (let ((__tmp149880
                                                 (let ((__tmp149896
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$ctor149007_
                                                                '())))
                                                       (__tmp149881
                                                        (let ((__tmp149882
                                                               (let ((__tmp149883
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp149894
                                     (let ((__tmp149895
                                            (let ()
                                              (declare (not safe))
                                              (cons 'direct-method-ref '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp149895)))
                                    (__tmp149884
                                     (let ((__tmp149891
                                            (let ((__tmp149892
                                                   (let ((__tmp149893
                                                          (##structure-ref
                                                           _self148986_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp149893 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp149892)))
                                           (__tmp149885
                                            (let ((__tmp149889
                                                   (let ((__tmp149890
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj149004_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp149890)))
                                                  (__tmp149886
                                                   (let ((__tmp149887
                                                          (let ((__tmp149888
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _ctor149002_ '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp149888))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp149887 '()))))
                                              (declare (not safe))
                                              (cons __tmp149889 __tmp149886))))
                                       (declare (not safe))
                                       (cons __tmp149891 __tmp149885))))
                                (declare (not safe))
                                (cons __tmp149894 __tmp149884))))
                         (declare (not safe))
                         (cons '%#call __tmp149883))))
                  (declare (not safe))
                  (cons __tmp149882 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp149896
                                                         __tmp149881))))
                                            (declare (not safe))
                                            (cons __tmp149880 '())))
                                         (__tmp149845
                                          (let ((__tmp149846
                                                 (let ((__tmp149847
                                                        (let ((__tmp149877
                                                               (let ((__tmp149878
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$ctor149007_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp149878)))
                      (__tmp149848
                       (let ((__tmp149870
                              (let ((__tmp149871
                                     (let ((__tmp149875
                                            (let ((__tmp149876
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$ctor149007_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp149876)))
                                           (__tmp149872
                                            (let ((__tmp149873
                                                   (let ((__tmp149874
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj149004_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp149874))))
                                              (declare (not safe))
                                              (cons __tmp149873
                                                    _args148994_))))
                                       (declare (not safe))
                                       (cons __tmp149875 __tmp149872))))
                                (declare (not safe))
                                (cons '%#call __tmp149871)))
                             (__tmp149849
                              (let ((__tmp149850
                                     (let ((__tmp149851
                                            (let ((__tmp149868
                                                   (let ((__tmp149869
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp149869)))
                                                  (__tmp149852
                                                   (let ((__tmp149866
                                                          (let ((__tmp149867
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons '"missing constructor method implementation"
                                 '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp149867)))
                 (__tmp149853
                  (let ((__tmp149864
                         (let ((__tmp149865
                                (let ()
                                  (declare (not safe))
                                  (cons 'class: '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp149865)))
                        (__tmp149854
                         (let ((__tmp149861
                                (let ((__tmp149862
                                       (let ((__tmp149863
                                              (##structure-ref
                                               _self148986_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp149863 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp149862)))
                               (__tmp149855
                                (let ((__tmp149859
                                       (let ((__tmp149860
                                              (let ()
                                                (declare (not safe))
                                                (cons 'method: '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp149860)))
                                      (__tmp149856
                                       (let ((__tmp149857
                                              (let ((__tmp149858
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _ctor149002_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#quote __tmp149858))))
                                         (declare (not safe))
                                         (cons __tmp149857 '()))))
                                  (declare (not safe))
                                  (cons __tmp149859 __tmp149856))))
                           (declare (not safe))
                           (cons __tmp149861 __tmp149855))))
                    (declare (not safe))
                    (cons __tmp149864 __tmp149854))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp149866
                                                           __tmp149853))))
                                              (declare (not safe))
                                              (cons __tmp149868 __tmp149852))))
                                       (declare (not safe))
                                       (cons '%#call __tmp149851))))
                                (declare (not safe))
                                (cons __tmp149850 '()))))
                         (declare (not safe))
                         (cons __tmp149870 __tmp149849))))
                  (declare (not safe))
                  (cons __tmp149877 __tmp149848))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#if __tmp149847))))
                                            (declare (not safe))
                                            (cons __tmp149846 '()))))
                                     (declare (not safe))
                                     (cons __tmp149879 __tmp149845))))
                             (declare (not safe))
                             (cons '%#let-values __tmp149844))))
                      (__tmp149833
                       (let ((__tmp149834
                              (let ((__tmp149835
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj149004_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp149835))))
                         (declare (not safe))
                         (cons __tmp149834 '()))))
                  (declare (not safe))
                  (cons __tmp149836 __tmp149833))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#begin
                                                         __tmp149832))))
                                            (declare (not safe))
                                            (cons __tmp149831 '()))))
                                     (declare (not safe))
                                     (cons __tmp149897 __tmp149830))))
                              (declare (not safe))
                              (cons '%#let-values __tmp149829))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp149828 _stx148987_))))
                 _$e148999_)
                (let ((_$e149009_
                       (##structure-ref _klass148990_ '9 gxc#!class::t '#f)))
                  (if _$e149009_
                      ((lambda (_metaclass149012_)
                         (let* ((_$obj149014_
                                 (let ((__tmp149901 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp149901)))
                                (_metakons149016_
                                 (let ((__tmp149902
                                        (let ()
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-class
                                           _stx148987_
                                           _metaclass149012_))))
                                   (declare (not safe))
                                   (gxc#!class-lookup-method
                                    __tmp149902
                                    'instance-init!))))
                           (let ((__tmp149903
                                  (let ((__tmp149904
                                         (let ((__tmp149935
                                                (let ((__tmp149936
                                                       (let ((__tmp149938
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj149014_ '())))
                     (__tmp149937
                      (let ()
                        (declare (not safe))
                        (cons _inline-make-object148996_ '()))))
                 (declare (not safe))
                 (cons __tmp149938 __tmp149937))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp149936 '())))
                                               (__tmp149905
                                                (let ((__tmp149906
                                                       (let ((__tmp149907
                                                              (let ((__tmp149911
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if _metakons149016_
                                 (let ((__tmp149912
                                        (let ((__tmp149920
                                               (let ((__tmp149921
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _metakons149016_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp149921)))
                                              (__tmp149913
                                               (let ((__tmp149917
                                                      (let ((__tmp149918
                                                             (let ((__tmp149919
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self148986_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp149919 '()))))
                (declare (not safe))
                (cons '%#ref __tmp149918)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp149914
                                                      (let ((__tmp149915
                                                             (let ((__tmp149916
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _$obj149014_ '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp149916))))
                (declare (not safe))
                (cons __tmp149915 _args148994_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp149917
                                                       __tmp149914))))
                                          (declare (not safe))
                                          (cons __tmp149920 __tmp149913))))
                                   (declare (not safe))
                                   (cons '%#call __tmp149912))
                                 (let ((__tmp149922
                                        (let ((__tmp149933
                                               (let ((__tmp149934
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'call-method
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp149934)))
                                              (__tmp149923
                                               (let ((__tmp149930
                                                      (let ((__tmp149931
                                                             (let ((__tmp149932
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self148986_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp149932 '()))))
                (declare (not safe))
                (cons '%#ref __tmp149931)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp149924
                                                      (let ((__tmp149928
                                                             (let ((__tmp149929
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'instance-init! '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp149929)))
                    (__tmp149925
                     (let ((__tmp149926
                            (let ((__tmp149927
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj149014_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp149927))))
                       (declare (not safe))
                       (cons __tmp149926 _args148994_))))
                (declare (not safe))
                (cons __tmp149928 __tmp149925))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp149930
                                                       __tmp149924))))
                                          (declare (not safe))
                                          (cons __tmp149933 __tmp149923))))
                                   (declare (not safe))
                                   (cons '%#call __tmp149922))))
                            (__tmp149908
                             (let ((__tmp149909
                                    (let ((__tmp149910
                                           (let ()
                                             (declare (not safe))
                                             (cons _$obj149014_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp149910))))
                               (declare (not safe))
                               (cons __tmp149909 '()))))
                        (declare (not safe))
                        (cons __tmp149911 __tmp149908))))
                 (declare (not safe))
                 (cons '%#begin __tmp149907))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp149906 '()))))
                                           (declare (not safe))
                                           (cons __tmp149935 __tmp149905))))
                                    (declare (not safe))
                                    (cons '%#let-values __tmp149904))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp149903 _stx148987_))))
                       _$e149009_)
                      (if (##structure-ref _klass148990_ '7 gxc#!class::t '#f)
                          (if (fx= (length _args148994_) _fields148992_)
                              (let ((__tmp149939
                                     (let ((__tmp149940
                                            (let ((__tmp149945
                                                   (let ((__tmp149946
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp149946)))
                                                  (__tmp149941
                                                   (let ((__tmp149942
                                                          (let ((__tmp149943
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp149944
                                (##structure-ref
                                 _self148986_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (cons __tmp149944 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp149943))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp149942
                                                           _args148994_))))
                                              (declare (not safe))
                                              (cons __tmp149945 __tmp149941))))
                                       (declare (not safe))
                                       (cons '%#call __tmp149940))))
                                (declare (not safe))
                                (gxc#xform-wrap-source
                                 __tmp149939
                                 _stx148987_))
                              (let ((__tmp149948
                                     (##structure-ref
                                      _self148986_
                                      '1
                                      gxc#!type::t
                                      '#f))
                                    (__tmp149947
                                     (length (##structure-ref
                                              _klass148990_
                                              '5
                                              gxc#!class::t
                                              '#f))))
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"illegal struct constructor application; arity mismatch"
                                 _stx148987_
                                 __tmp149948
                                 __tmp149947)))
                          (let ((_$obj149019_
                                 (let ((__tmp149949 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp149949))))
                            (let _lp149021_ ((_rest149023_ _args148994_)
                                             (_initializers149024_ '()))
                              (let* ((___stx149557149558_ _rest149023_)
                                     (_g149028149049_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx149557149558_)))))
                                (let ((___kont149559149560_
                                       (lambda (_L149103_ _L149104_ _L149105_)
                                         (let* ((_slot149136_
                                                 (keyword->symbol
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e _L149105_))))
                                                (_off149138_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass148990_
                                                    _slot149136_))))
                                           (if _off149138_
                                               (let ((__tmp149950
                                                      (let ((__tmp149951
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _off149138_ _L149104_))))
                (declare (not safe))
                (cons __tmp149951 _initializers149024_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp149021_
                                                  _L149103_
                                                  __tmp149950))
                                               (let ((__tmp149952
                                                      (##structure-ref
                                                       _self148986_
                                                       '1
                                                       gxc#!type::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"unknown slot"
                                                  _stx148987_
                                                  __tmp149952
                                                  _slot149136_))))))
                                      (___kont149561149562_
                                       (lambda ()
                                         (let ((__tmp149953
                                                (let ((__tmp149954
                                                       (let ((__tmp149977
                                                              (let ((__tmp149978
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp149980
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj149019_ '())))
                                   (__tmp149979
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object148996_ '()))))
                               (declare (not safe))
                               (cons __tmp149980 __tmp149979))))
                        (declare (not safe))
                        (cons __tmp149978 '())))
                     (__tmp149955
                      (let ((__tmp149956
                             (let ((__tmp149957
                                    (let ((__tmp149974
                                           (let ((__tmp149975
                                                  (let ((__tmp149976
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj149019_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp149976))))
                                             (declare (not safe))
                                             (cons __tmp149975 '())))
                                          (__tmp149958
                                           (let ((__tmp149959
                                                  (lambda (_i149063_ _r149064_)
                                                    (let ((__tmp149960
                                                           (let ((__tmp149961
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp149971
                                 (let ((__tmp149972
                                        (let ((__tmp149973
                                               (##structure-ref
                                                _self148986_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp149973 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp149972)))
                                (__tmp149962
                                 (let ((__tmp149968
                                        (let ((__tmp149969
                                               (let ((__tmp149970
                                                      (car _i149063_)))
                                                 (declare (not safe))
                                                 (cons __tmp149970 '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp149969)))
                                       (__tmp149963
                                        (let ((__tmp149966
                                               (let ((__tmp149967
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _$obj149019_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp149967)))
                                              (__tmp149964
                                               (let ((__tmp149965
                                                      (cdr _i149063_)))
                                                 (declare (not safe))
                                                 (cons __tmp149965 '()))))
                                          (declare (not safe))
                                          (cons __tmp149966 __tmp149964))))
                                   (declare (not safe))
                                   (cons __tmp149968 __tmp149963))))
                            (declare (not safe))
                            (cons __tmp149971 __tmp149962))))
                     (declare (not safe))
                     (cons '%#struct-unchecked-set! __tmp149961))))
              (declare (not safe))
              (cons __tmp149960 _r149064_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (foldl1 __tmp149959
                                                     '()
                                                     _initializers149024_))))
                                      (declare (not safe))
                                      (foldr1 cons __tmp149974 __tmp149958))))
                               (declare (not safe))
                               (cons '%#begin __tmp149957))))
                        (declare (not safe))
                        (cons __tmp149956 '()))))
                 (declare (not safe))
                 (cons __tmp149977 __tmp149955))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp149954))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp149953
                                            _stx148987_))))
                                      (___kont149563149564_
                                       (lambda ()
                                         (let ((__tmp149981
                                                (let ((__tmp149982
                                                       (let ((__tmp149996
                                                              (let ((__tmp149997
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp149999
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj149019_ '())))
                                   (__tmp149998
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object148996_ '()))))
                               (declare (not safe))
                               (cons __tmp149999 __tmp149998))))
                        (declare (not safe))
                        (cons __tmp149997 '())))
                     (__tmp149983
                      (let ((__tmp149984
                             (let ((__tmp149985
                                    (let ((__tmp149989
                                           (let ((__tmp149990
                                                  (let ((__tmp149994
                                                         (let ((__tmp149995
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons 'class-instance-init! '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp149995)))
                (__tmp149991
                 (let ((__tmp149992
                        (let ((__tmp149993
                               (let ()
                                 (declare (not safe))
                                 (cons _$obj149019_ '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp149993))))
                   (declare (not safe))
                   (cons __tmp149992 _args148994_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp149994
                                                          __tmp149991))))
                                             (declare (not safe))
                                             (cons '%#call __tmp149990)))
                                          (__tmp149986
                                           (let ((__tmp149987
                                                  (let ((__tmp149988
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj149019_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp149988))))
                                             (declare (not safe))
                                             (cons __tmp149987 '()))))
                                      (declare (not safe))
                                      (cons __tmp149989 __tmp149986))))
                               (declare (not safe))
                               (cons '%#begin __tmp149985))))
                        (declare (not safe))
                        (cons __tmp149984 '()))))
                 (declare (not safe))
                 (cons __tmp149996 __tmp149983))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp149982))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp149981
                                            _stx148987_)))))
                                  (let* ((_g149026149066_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   ___stx149557149558_))
                                                (___kont149561149562_)
                                                (___kont149563149564_))))
                                         (___match149594149595_
                                          (lambda (_e149033149071_
                                                   _hd149034149074_
                                                   _tl149035149076_
                                                   _e149036149079_
                                                   _hd149037149082_
                                                   _tl149038149084_
                                                   _e149039149087_
                                                   _hd149040149090_
                                                   _tl149041149092_
                                                   _e149042149095_
                                                   _hd149043149098_
                                                   _tl149044149100_)
                                            (let ((_L149103_ _tl149044149100_)
                                                  (_L149104_ _hd149043149098_)
                                                  (_L149105_ _hd149040149090_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-keyword?
                                                     _L149105_))
                                                  (___kont149559149560_
                                                   _L149103_
                                                   _L149104_
                                                   _L149105_)
                                                  (___kont149563149564_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx149557149558_))
                                        (let ((_e149033149071_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx149557149558_))))
                                          (let ((_tl149035149076_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e149033149071_)))
                                                (_hd149034149074_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e149033149071_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd149034149074_))
                                                (let ((_e149036149079_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd149034149074_))))
                                                  (let ((_tl149038149084_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e149036149079_)))
                                                        (_hd149037149082_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e149036149079_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd149037149082_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#quote
                                                               _hd149037149082_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl149038149084_))
                        (let ((_e149039149087_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl149038149084_))))
                          (let ((_tl149041149092_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e149039149087_)))
                                (_hd149040149090_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e149039149087_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl149041149092_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl149035149076_))
                                    (let ((_e149042149095_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl149035149076_))))
                                      (let ((_tl149044149100_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e149042149095_)))
                                            (_hd149043149098_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e149042149095_))))
                                        (___match149594149595_
                                         _e149033149071_
                                         _hd149034149074_
                                         _tl149035149076_
                                         _e149036149079_
                                         _hd149037149082_
                                         _tl149038149084_
                                         _e149039149087_
                                         _hd149040149090_
                                         _tl149041149092_
                                         _e149042149095_
                                         _hd149043149098_
                                         _tl149044149100_)))
                                    (___kont149563149564_))
                                (___kont149563149564_))))
                        (___kont149563149564_))
                    (___kont149563149564_))
                (___kont149563149564_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont149563149564_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g149026149066_))))))))))))))))
    (define gxc#!constructor::optimize-call::specialize
      (lambda (__klass149480 __method-table149481)
        (let ((__id149482
               (let ((__slot149483
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass149480 'id))))
                 (if __slot149483
                     __slot149483
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self148986_ _stx148987_ _args148988_)
            (let* ((_klass148990_
                    (let ((__tmp150000
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _self148986_
                              __id149482
                              __klass149480
                              '#f))))
                      (declare (not safe))
                      (gxc#optimizer-resolve-class _stx148987_ __tmp150000)))
                   (_fields148992_
                    (length (##structure-ref
                             _klass148990_
                             '5
                             gxc#!class::t
                             '#f)))
                   (_args148994_ (map gxc#compile-e _args148988_))
                   (_inline-make-object148996_
                    (let ((__tmp150001
                           (let ((__tmp150007
                                  (let ((__tmp150008
                                         (let ()
                                           (declare (not safe))
                                           (cons '##structure '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp150008)))
                                 (__tmp150002
                                  (let ((__tmp150004
                                         (let ((__tmp150005
                                                (let ((__tmp150006
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self148986_
                                                          __id149482
                                                          __klass149480
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp150006 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp150005)))
                                        (__tmp150003
                                         (make-list
                                          _fields148992_
                                          '(%#quote #f))))
                                    (declare (not safe))
                                    (cons __tmp150004 __tmp150003))))
                             (declare (not safe))
                             (cons __tmp150007 __tmp150002))))
                      (declare (not safe))
                      (cons '%#call __tmp150001))))
              (let ((_$e148999_
                     (##structure-ref _klass148990_ '6 gxc#!class::t '#f)))
                (if _$e148999_
                    ((lambda (_ctor149002_)
                       (let ((_$obj149004_
                              (let ((__tmp150009 (gensym '__obj)))
                                (declare (not safe))
                                (make-symbol__0 __tmp150009)))
                             (_ctor-impl149005_
                              (let ()
                                (declare (not safe))
                                (gxc#!class-lookup-method
                                 _klass148990_
                                 _ctor149002_))))
                         (let ((__tmp150010
                                (let ((__tmp150011
                                       (let ((__tmp150079
                                              (let ((__tmp150080
                                                     (let ((__tmp150082
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$obj149004_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp150081
                    (let ()
                      (declare (not safe))
                      (cons _inline-make-object148996_ '()))))
               (declare (not safe))
               (cons __tmp150082 __tmp150081))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp150080 '())))
                                             (__tmp150012
                                              (let ((__tmp150013
                                                     (let ((__tmp150014
                                                            (let ((__tmp150018
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _ctor-impl149005_
                               (let ((__tmp150019
                                      (let ((__tmp150023
                                             (let ((__tmp150024
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor-impl149005_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp150024)))
                                            (__tmp150020
                                             (let ((__tmp150021
                                                    (let ((__tmp150022
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$obj149004_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp150022))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp150021
                                                     _args148994_))))
                                        (declare (not safe))
                                        (cons __tmp150023 __tmp150020))))
                                 (declare (not safe))
                                 (cons '%#call __tmp150019))
                               (let* ((_$ctor149007_
                                       (let ((__tmp150025
                                              (gensym '__constructor)))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp150025)))
                                      (__tmp150026
                                       (let ((__tmp150061
                                              (let ((__tmp150062
                                                     (let ((__tmp150078
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$ctor149007_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp150063
                    (let ((__tmp150064
                           (let ((__tmp150065
                                  (let ((__tmp150076
                                         (let ((__tmp150077
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'direct-method-ref
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp150077)))
                                        (__tmp150066
                                         (let ((__tmp150073
                                                (let ((__tmp150074
                                                       (let ((__tmp150075
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self148986_
                         __id149482
                         __klass149480
                         '#f))))
                 (declare (not safe))
                 (cons __tmp150075 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp150074)))
                                               (__tmp150067
                                                (let ((__tmp150071
                                                       (let ((__tmp150072
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj149004_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp150072)))
              (__tmp150068
               (let ((__tmp150069
                      (let ((__tmp150070
                             (let ()
                               (declare (not safe))
                               (cons _ctor149002_ '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp150070))))
                 (declare (not safe))
                 (cons __tmp150069 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp150071
                                                        __tmp150068))))
                                           (declare (not safe))
                                           (cons __tmp150073 __tmp150067))))
                                    (declare (not safe))
                                    (cons __tmp150076 __tmp150066))))
                             (declare (not safe))
                             (cons '%#call __tmp150065))))
                      (declare (not safe))
                      (cons __tmp150064 '()))))
               (declare (not safe))
               (cons __tmp150078 __tmp150063))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp150062 '())))
                                             (__tmp150027
                                              (let ((__tmp150028
                                                     (let ((__tmp150029
                                                            (let ((__tmp150059
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp150060
                                  (let ()
                                    (declare (not safe))
                                    (cons _$ctor149007_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp150060)))
                          (__tmp150030
                           (let ((__tmp150052
                                  (let ((__tmp150053
                                         (let ((__tmp150057
                                                (let ((__tmp150058
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$ctor149007_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp150058)))
                                               (__tmp150054
                                                (let ((__tmp150055
                                                       (let ((__tmp150056
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj149004_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp150056))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp150055
                                                        _args148994_))))
                                           (declare (not safe))
                                           (cons __tmp150057 __tmp150054))))
                                    (declare (not safe))
                                    (cons '%#call __tmp150053)))
                                 (__tmp150031
                                  (let ((__tmp150032
                                         (let ((__tmp150033
                                                (let ((__tmp150050
                                                       (let ((__tmp150051
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'error '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp150051)))
              (__tmp150034
               (let ((__tmp150048
                      (let ((__tmp150049
                             (let ()
                               (declare (not safe))
                               (cons '"missing constructor method implementation"
                                     '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp150049)))
                     (__tmp150035
                      (let ((__tmp150046
                             (let ((__tmp150047
                                    (let ()
                                      (declare (not safe))
                                      (cons 'class: '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp150047)))
                            (__tmp150036
                             (let ((__tmp150043
                                    (let ((__tmp150044
                                           (let ((__tmp150045
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self148986_
                                                     __id149482
                                                     __klass149480
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp150045 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp150044)))
                                   (__tmp150037
                                    (let ((__tmp150041
                                           (let ((__tmp150042
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'method: '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp150042)))
                                          (__tmp150038
                                           (let ((__tmp150039
                                                  (let ((__tmp150040
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _ctor149002_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#quote
                                                          __tmp150040))))
                                             (declare (not safe))
                                             (cons __tmp150039 '()))))
                                      (declare (not safe))
                                      (cons __tmp150041 __tmp150038))))
                               (declare (not safe))
                               (cons __tmp150043 __tmp150037))))
                        (declare (not safe))
                        (cons __tmp150046 __tmp150036))))
                 (declare (not safe))
                 (cons __tmp150048 __tmp150035))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp150050
                                                        __tmp150034))))
                                           (declare (not safe))
                                           (cons '%#call __tmp150033))))
                                    (declare (not safe))
                                    (cons __tmp150032 '()))))
                             (declare (not safe))
                             (cons __tmp150052 __tmp150031))))
                      (declare (not safe))
                      (cons __tmp150059 __tmp150030))))
               (declare (not safe))
               (cons '%#if __tmp150029))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp150028 '()))))
                                         (declare (not safe))
                                         (cons __tmp150061 __tmp150027))))
                                 (declare (not safe))
                                 (cons '%#let-values __tmp150026))))
                          (__tmp150015
                           (let ((__tmp150016
                                  (let ((__tmp150017
                                         (let ()
                                           (declare (not safe))
                                           (cons _$obj149004_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp150017))))
                             (declare (not safe))
                             (cons __tmp150016 '()))))
                      (declare (not safe))
                      (cons __tmp150018 __tmp150015))))
               (declare (not safe))
               (cons '%#begin __tmp150014))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp150013 '()))))
                                         (declare (not safe))
                                         (cons __tmp150079 __tmp150012))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp150011))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp150010 _stx148987_))))
                     _$e148999_)
                    (let ((_$e149009_
                           (##structure-ref
                            _klass148990_
                            '9
                            gxc#!class::t
                            '#f)))
                      (if _$e149009_
                          ((lambda (_metaclass149012_)
                             (let* ((_$obj149014_
                                     (let ((__tmp150083 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp150083)))
                                    (_metakons149016_
                                     (let ((__tmp150084
                                            (let ()
                                              (declare (not safe))
                                              (gxc#optimizer-resolve-class
                                               _stx148987_
                                               _metaclass149012_))))
                                       (declare (not safe))
                                       (gxc#!class-lookup-method
                                        __tmp150084
                                        'instance-init!))))
                               (let ((__tmp150085
                                      (let ((__tmp150086
                                             (let ((__tmp150117
                                                    (let ((__tmp150118
                                                           (let ((__tmp150120
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj149014_ '())))
                         (__tmp150119
                          (let ()
                            (declare (not safe))
                            (cons _inline-make-object148996_ '()))))
                     (declare (not safe))
                     (cons __tmp150120 __tmp150119))))
              (declare (not safe))
              (cons __tmp150118 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp150087
                                                    (let ((__tmp150088
                                                           (let ((__tmp150089
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp150093
                                 (if _metakons149016_
                                     (let ((__tmp150094
                                            (let ((__tmp150102
                                                   (let ((__tmp150103
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _metakons149016_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp150103)))
                                                  (__tmp150095
                                                   (let ((__tmp150099
                                                          (let ((__tmp150100
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp150101
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self148986_
                                   __id149482
                                   __klass149480
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp150101 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp150100)))
                 (__tmp150096
                  (let ((__tmp150097
                         (let ((__tmp150098
                                (let ()
                                  (declare (not safe))
                                  (cons _$obj149014_ '()))))
                           (declare (not safe))
                           (cons '%#ref __tmp150098))))
                    (declare (not safe))
                    (cons __tmp150097 _args148994_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp150099
                                                           __tmp150096))))
                                              (declare (not safe))
                                              (cons __tmp150102 __tmp150095))))
                                       (declare (not safe))
                                       (cons '%#call __tmp150094))
                                     (let ((__tmp150104
                                            (let ((__tmp150115
                                                   (let ((__tmp150116
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'call-method
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp150116)))
                                                  (__tmp150105
                                                   (let ((__tmp150112
                                                          (let ((__tmp150113
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp150114
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self148986_
                                   __id149482
                                   __klass149480
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp150114 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp150113)))
                 (__tmp150106
                  (let ((__tmp150110
                         (let ((__tmp150111
                                (let ()
                                  (declare (not safe))
                                  (cons 'instance-init! '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp150111)))
                        (__tmp150107
                         (let ((__tmp150108
                                (let ((__tmp150109
                                       (let ()
                                         (declare (not safe))
                                         (cons _$obj149014_ '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp150109))))
                           (declare (not safe))
                           (cons __tmp150108 _args148994_))))
                    (declare (not safe))
                    (cons __tmp150110 __tmp150107))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp150112
                                                           __tmp150106))))
                                              (declare (not safe))
                                              (cons __tmp150115 __tmp150105))))
                                       (declare (not safe))
                                       (cons '%#call __tmp150104))))
                                (__tmp150090
                                 (let ((__tmp150091
                                        (let ((__tmp150092
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$obj149014_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp150092))))
                                   (declare (not safe))
                                   (cons __tmp150091 '()))))
                            (declare (not safe))
                            (cons __tmp150093 __tmp150090))))
                     (declare (not safe))
                     (cons '%#begin __tmp150089))))
              (declare (not safe))
              (cons __tmp150088 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp150117
                                                     __tmp150087))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp150086))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp150085
                                  _stx148987_))))
                           _$e149009_)
                          (if (##structure-ref
                               _klass148990_
                               '7
                               gxc#!class::t
                               '#f)
                              (if (fx= (length _args148994_) _fields148992_)
                                  (let ((__tmp150121
                                         (let ((__tmp150122
                                                (let ((__tmp150127
                                                       (let ((__tmp150128
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '##structure '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp150128)))
              (__tmp150123
               (let ((__tmp150124
                      (let ((__tmp150125
                             (let ((__tmp150126
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _self148986_
                                       __id149482
                                       __klass149480
                                       '#f))))
                               (declare (not safe))
                               (cons __tmp150126 '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp150125))))
                 (declare (not safe))
                 (cons __tmp150124 _args148994_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp150127
                                                        __tmp150123))))
                                           (declare (not safe))
                                           (cons '%#call __tmp150122))))
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp150121
                                     _stx148987_))
                                  (let ((__tmp150130
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _self148986_
                                            __id149482
                                            __klass149480
                                            '#f)))
                                        (__tmp150129
                                         (length (##structure-ref
                                                  _klass148990_
                                                  '5
                                                  gxc#!class::t
                                                  '#f))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"illegal struct constructor application; arity mismatch"
                                     _stx148987_
                                     __tmp150130
                                     __tmp150129)))
                              (let ((_$obj149019_
                                     (let ((__tmp150131 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp150131))))
                                (let _lp149021_ ((_rest149023_ _args148994_)
                                                 (_initializers149024_ '()))
                                  (let* ((___stx149599149600_ _rest149023_)
                                         (_g149028149049_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               ___stx149599149600_)))))
                                    (let ((___kont149601149602_
                                           (lambda (_L149103_
                                                    _L149104_
                                                    _L149105_)
                                             (let* ((_slot149136_
                                                     (keyword->symbol
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L149105_))))
                                                    (_off149138_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass148990_
                                                        _slot149136_))))
                                               (if _off149138_
                                                   (let ((__tmp150132
                                                          (let ((__tmp150133
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _off149138_ _L149104_))))
                    (declare (not safe))
                    (cons __tmp150133 _initializers149024_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp149021_
                                                      _L149103_
                                                      __tmp150132))
                                                   (let ((__tmp150134
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _self148986_
                                                             __id149482
                                                             __klass149480
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"unknown slot"
                                                      _stx148987_
                                                      __tmp150134
                                                      _slot149136_))))))
                                          (___kont149603149604_
                                           (lambda ()
                                             (let ((__tmp150135
                                                    (let ((__tmp150136
                                                           (let ((__tmp150159
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp150160
                                 (let ((__tmp150162
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj149019_ '())))
                                       (__tmp150161
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object148996_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp150162 __tmp150161))))
                            (declare (not safe))
                            (cons __tmp150160 '())))
                         (__tmp150137
                          (let ((__tmp150138
                                 (let ((__tmp150139
                                        (let ((__tmp150156
                                               (let ((__tmp150157
                                                      (let ((__tmp150158
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj149019_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp150158))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp150157 '())))
                                              (__tmp150140
                                               (let ((__tmp150141
                                                      (lambda (_i149063_
                                                               _r149064_)
                                                        (let ((__tmp150142
                                                               (let ((__tmp150143
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp150153
                                     (let ((__tmp150154
                                            (let ((__tmp150155
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self148986_
                                                      __id149482
                                                      __klass149480
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp150155 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp150154)))
                                    (__tmp150144
                                     (let ((__tmp150150
                                            (let ((__tmp150151
                                                   (let ((__tmp150152
                                                          (car _i149063_)))
                                                     (declare (not safe))
                                                     (cons __tmp150152 '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp150151)))
                                           (__tmp150145
                                            (let ((__tmp150148
                                                   (let ((__tmp150149
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj149019_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp150149)))
                                                  (__tmp150146
                                                   (let ((__tmp150147
                                                          (cdr _i149063_)))
                                                     (declare (not safe))
                                                     (cons __tmp150147 '()))))
                                              (declare (not safe))
                                              (cons __tmp150148 __tmp150146))))
                                       (declare (not safe))
                                       (cons __tmp150150 __tmp150145))))
                                (declare (not safe))
                                (cons __tmp150153 __tmp150144))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-set! __tmp150143))))
                  (declare (not safe))
                  (cons __tmp150142 _r149064_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl1 __tmp150141
                                                         '()
                                                         _initializers149024_))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp150156
                                                  __tmp150140))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp150139))))
                            (declare (not safe))
                            (cons __tmp150138 '()))))
                     (declare (not safe))
                     (cons __tmp150159 __tmp150137))))
              (declare (not safe))
              (cons '%#let-values __tmp150136))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp150135
                                                _stx148987_))))
                                          (___kont149605149606_
                                           (lambda ()
                                             (let ((__tmp150163
                                                    (let ((__tmp150164
                                                           (let ((__tmp150178
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp150179
                                 (let ((__tmp150181
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj149019_ '())))
                                       (__tmp150180
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object148996_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp150181 __tmp150180))))
                            (declare (not safe))
                            (cons __tmp150179 '())))
                         (__tmp150165
                          (let ((__tmp150166
                                 (let ((__tmp150167
                                        (let ((__tmp150171
                                               (let ((__tmp150172
                                                      (let ((__tmp150176
                                                             (let ((__tmp150177
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'class-instance-init! '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp150177)))
                    (__tmp150173
                     (let ((__tmp150174
                            (let ((__tmp150175
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj149019_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp150175))))
                       (declare (not safe))
                       (cons __tmp150174 _args148994_))))
                (declare (not safe))
                (cons __tmp150176 __tmp150173))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp150172)))
                                              (__tmp150168
                                               (let ((__tmp150169
                                                      (let ((__tmp150170
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj149019_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp150170))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp150169 '()))))
                                          (declare (not safe))
                                          (cons __tmp150171 __tmp150168))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp150167))))
                            (declare (not safe))
                            (cons __tmp150166 '()))))
                     (declare (not safe))
                     (cons __tmp150178 __tmp150165))))
              (declare (not safe))
              (cons '%#let-values __tmp150164))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp150163
                                                _stx148987_)))))
                                      (let* ((_g149026149066_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       ___stx149599149600_))
                                                    (___kont149603149604_)
                                                    (___kont149605149606_))))
                                             (___match149636149637_
                                              (lambda (_e149033149071_
                                                       _hd149034149074_
                                                       _tl149035149076_
                                                       _e149036149079_
                                                       _hd149037149082_
                                                       _tl149038149084_
                                                       _e149039149087_
                                                       _hd149040149090_
                                                       _tl149041149092_
                                                       _e149042149095_
                                                       _hd149043149098_
                                                       _tl149044149100_)
                                                (let ((_L149103_
                                                       _tl149044149100_)
                                                      (_L149104_
                                                       _hd149043149098_)
                                                      (_L149105_
                                                       _hd149040149090_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-keyword?
                                                         _L149105_))
                                                      (___kont149601149602_
                                                       _L149103_
                                                       _L149104_
                                                       _L149105_)
                                                      (___kont149605149606_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               ___stx149599149600_))
                                            (let ((_e149033149071_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      ___stx149599149600_))))
                                              (let ((_tl149035149076_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e149033149071_)))
                                                    (_hd149034149074_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e149033149071_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd149034149074_))
                                                    (let ((_e149036149079_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd149034149074_))))
                                                      (let ((_tl149038149084_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e149036149079_)))
                    (_hd149037149082_
                     (let () (declare (not safe)) (##car _e149036149079_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd149037149082_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd149037149082_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl149038149084_))
                            (let ((_e149039149087_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl149038149084_))))
                              (let ((_tl149041149092_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e149039149087_)))
                                    (_hd149040149090_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e149039149087_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl149041149092_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl149035149076_))
                                        (let ((_e149042149095_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl149035149076_))))
                                          (let ((_tl149044149100_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e149042149095_)))
                                                (_hd149043149098_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e149042149095_))))
                                            (___match149636149637_
                                             _e149033149071_
                                             _hd149034149074_
                                             _tl149035149076_
                                             _e149036149079_
                                             _hd149037149082_
                                             _tl149038149084_
                                             _e149039149087_
                                             _hd149040149090_
                                             _tl149041149092_
                                             _e149042149095_
                                             _hd149043149098_
                                             _tl149044149100_)))
                                        (___kont149605149606_))
                                    (___kont149605149606_))))
                            (___kont149605149606_))
                        (___kont149605149606_))
                    (___kont149605149606_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont149605149606_))))
                                            (let ()
                                              (declare (not safe))
                                              (_g149026149066_))))))))))))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!constructor::optimize-call
       gxc#!constructor::optimize-call::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_self148809_ _stx148810_ _args148811_)
        (let* ((_g148813148823_
                (lambda (_g148814148820_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g148814148820_))))
               (_g148812148861_
                (lambda (_g148814148826_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g148814148826_))
                      (let ((_e148816148828_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g148814148826_))))
                        (let ((_hd148817148831_
                               (let ()
                                 (declare (not safe))
                                 (##car _e148816148828_)))
                              (_tl148818148833_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e148816148828_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl148818148833_))
                              ((lambda (_L148836_)
                                 (let* ((_klass148847_
                                         (let ((__tmp150182
                                                (##structure-ref
                                                 _self148809_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx148810_
                                            __tmp150182)))
                                        (_field148849_
                                         (let ((__tmp150183
                                                (##structure-ref
                                                 _self148809_
                                                 '2
                                                 gxc#!accessor::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _klass148847_
                                            __tmp150183)))
                                        (_object148851_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L148836_))))
                                   (if (##structure-ref
                                        _klass148847_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp150184
                                              (let ((__tmp150193
                                                     (if (##structure-ref
                                                          _self148809_
                                                          '3
                                                          gxc#!accessor::t
                                                          '#f)
                                                         '%#struct-direct-ref
                                                         '%#struct-unchecked-ref))
                                                    (__tmp150185
                                                     (let ((__tmp150190
                                                            (let ((__tmp150191
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp150192
                                  (##structure-ref
                                   _self148809_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp150192 '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp150191)))
                   (__tmp150186
                    (let ((__tmp150188
                           (let ((__tmp150189
                                  (let ()
                                    (declare (not safe))
                                    (cons _field148849_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp150189)))
                          (__tmp150187
                           (let ()
                             (declare (not safe))
                             (cons _object148851_ '()))))
                      (declare (not safe))
                      (cons __tmp150188 __tmp150187))))
               (declare (not safe))
               (cons __tmp150190 __tmp150186))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp150193
                                                      __tmp150185))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp150184
                                          _stx148810_))
                                       (if (##structure-ref
                                            _klass148847_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp150194
                                                  (let ((__tmp150203
                                                         (if (##structure-ref
                                                              _self148809_
                                                              '3
                                                              gxc#!accessor::t
                                                              '#f)
                                                             '%#struct-ref
                                                             '%#struct-unchecked-ref))
                                                        (__tmp150195
                                                         (let ((__tmp150200
                                                                (let ((__tmp150201
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp150202
                                      (##structure-ref
                                       _self148809_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp150202 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp150201)))
                       (__tmp150196
                        (let ((__tmp150198
                               (let ((__tmp150199
                                      (let ()
                                        (declare (not safe))
                                        (cons _field148849_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp150199)))
                              (__tmp150197
                               (let ()
                                 (declare (not safe))
                                 (cons _object148851_ '()))))
                          (declare (not safe))
                          (cons __tmp150198 __tmp150197))))
                   (declare (not safe))
                   (cons __tmp150200 __tmp150196))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp150203
                                                          __tmp150195))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp150194
                                              _stx148810_))
                                           (let ((_$e148854_
                                                  (let ((__tmp150204
                                                         (##structure-ref
                                                          _self148809_
                                                          '2
                                                          gxc#!accessor::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _klass148847_
                                                     __tmp150204))))
                                             (if _$e148854_
                                                 ((lambda (_klass148857_)
                                                    (let ((__tmp150205
                                                           (let ((__tmp150214
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##structure-ref
                               _self148809_
                               '3
                               gxc#!accessor::t
                               '#f)
                              '%#struct-ref
                              '%#struct-unchecked-ref))
                         (__tmp150206
                          (let ((__tmp150211
                                 (let ((__tmp150212
                                        (let ((__tmp150213
                                               (##structure-ref
                                                _self148809_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp150213 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp150212)))
                                (__tmp150207
                                 (let ((__tmp150209
                                        (let ((__tmp150210
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _field148849_ '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp150210)))
                                       (__tmp150208
                                        (let ()
                                          (declare (not safe))
                                          (cons _object148851_ '()))))
                                   (declare (not safe))
                                   (cons __tmp150209 __tmp150208))))
                            (declare (not safe))
                            (cons __tmp150211 __tmp150207))))
                     (declare (not safe))
                     (cons __tmp150214 __tmp150206))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp150205 _stx148810_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e148854_)
                                                 (if (##structure-ref
                                                      _self148809_
                                                      '3
                                                      gxc#!accessor::t
                                                      '#f)
                                                     (let ((__tmp150215
                                                            (let* ((_$obj148859_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp150216 (gensym '__obj)))
                              (declare (not safe))
                              (make-symbol__0 __tmp150216)))
                           (__tmp150217
                            (let ((__tmp150257
                                   (let ((__tmp150258
                                          (let ((__tmp150260
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _$obj148859_ '())))
                                                (__tmp150259
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _object148851_ '()))))
                                            (declare (not safe))
                                            (cons __tmp150260 __tmp150259))))
                                     (declare (not safe))
                                     (cons __tmp150258 '())))
                                  (__tmp150218
                                   (let ((__tmp150219
                                          (let ((__tmp150220
                                                 (let ((__tmp150249
                                                        (let ((__tmp150250
                                                               (let ((__tmp150254
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp150255
                                     (let ((__tmp150256
                                            (##structure-ref
                                             _klass148847_
                                             '1
                                             gxc#!type::t
                                             '#f)))
                                       (declare (not safe))
                                       (cons __tmp150256 '()))))
                                (declare (not safe))
                                (cons '%#quote __tmp150255)))
                             (__tmp150251
                              (let ((__tmp150252
                                     (let ((__tmp150253
                                            (let ()
                                              (declare (not safe))
                                              (cons _$obj148859_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp150253))))
                                (declare (not safe))
                                (cons __tmp150252 '()))))
                         (declare (not safe))
                         (cons __tmp150254 __tmp150251))))
                  (declare (not safe))
                  (cons '%#struct-direct-instance? __tmp150250)))
               (__tmp150221
                (let ((__tmp150238
                       (let ((__tmp150239
                              (let ((__tmp150246
                                     (let ((__tmp150247
                                            (let ((__tmp150248
                                                   (##structure-ref
                                                    _self148809_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp150248 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp150247)))
                                    (__tmp150240
                                     (let ((__tmp150244
                                            (let ((__tmp150245
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field148849_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp150245)))
                                           (__tmp150241
                                            (let ((__tmp150242
                                                   (let ((__tmp150243
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj148859_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp150243))))
                                              (declare (not safe))
                                              (cons __tmp150242 '()))))
                                       (declare (not safe))
                                       (cons __tmp150244 __tmp150241))))
                                (declare (not safe))
                                (cons __tmp150246 __tmp150240))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp150239)))
                      (__tmp150222
                       (let ((__tmp150223
                              (let ((__tmp150224
                                     (let ((__tmp150236
                                            (let ((__tmp150237
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'class-slot-ref
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp150237)))
                                           (__tmp150225
                                            (let ((__tmp150233
                                                   (let ((__tmp150234
                                                          (let ((__tmp150235
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref _self148809_ '1 gxc#!type::t '#f)))
                    (declare (not safe))
                    (cons __tmp150235 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp150234)))
                                                  (__tmp150226
                                                   (let ((__tmp150231
                                                          (let ((__tmp150232
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj148859_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp150232)))
                 (__tmp150227
                  (let ((__tmp150228
                         (let ((__tmp150229
                                (let ((__tmp150230
                                       (##structure-ref
                                        _self148809_
                                        '2
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (cons __tmp150230 '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp150229))))
                    (declare (not safe))
                    (cons __tmp150228 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp150231
                                                           __tmp150227))))
                                              (declare (not safe))
                                              (cons __tmp150233 __tmp150226))))
                                       (declare (not safe))
                                       (cons __tmp150236 __tmp150225))))
                                (declare (not safe))
                                (cons '%#call __tmp150224))))
                         (declare (not safe))
                         (cons __tmp150223 '()))))
                  (declare (not safe))
                  (cons __tmp150238 __tmp150222))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp150249
                                                         __tmp150221))))
                                            (declare (not safe))
                                            (cons '%#if __tmp150220))))
                                     (declare (not safe))
                                     (cons __tmp150219 '()))))
                              (declare (not safe))
                              (cons __tmp150257 __tmp150218))))
                      (declare (not safe))
                      (cons '%#let-values __tmp150217))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp150215 _stx148810_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp150261
                                                            (let ((__tmp150262
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp150268
                                  (let ((__tmp150269
                                         (let ()
                                           (declare (not safe))
                                           (cons 'unchecked-slot-ref '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp150269)))
                                 (__tmp150263
                                  (let ((__tmp150264
                                         (let ((__tmp150265
                                                (let ((__tmp150266
                                                       (let ((__tmp150267
                                                              (##structure-ref
                                                               _self148809_
                                                               '2
                                                               gxc#!accessor::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp150267
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote
                                                        __tmp150266))))
                                           (declare (not safe))
                                           (cons __tmp150265 '()))))
                                    (declare (not safe))
                                    (cons _object148851_ __tmp150264))))
                             (declare (not safe))
                             (cons __tmp150268 __tmp150263))))
                      (declare (not safe))
                      (cons '%#call __tmp150262))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp150261 _stx148810_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _hd148817148831_)
                              (let ()
                                (declare (not safe))
                                (_g148813148823_ _g148814148826_)))))
                      (let ()
                        (declare (not safe))
                        (_g148813148823_ _g148814148826_))))))
          (declare (not safe))
          (_g148812148861_ _args148811_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass149484 __method-table149485)
        (let ((__id149486
               (let ((__slot149489
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass149484 'id))))
                 (if __slot149489
                     __slot149489
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__checked?149487
               (let ((__slot149490
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass149484 'checked?))))
                 (if __slot149490
                     __slot149490
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__slot149488
               (let ((__slot149491
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass149484 'slot))))
                 (if __slot149491
                     __slot149491
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_self148809_ _stx148810_ _args148811_)
            (let* ((_g148813148823_
                    (lambda (_g148814148820_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g148814148820_))))
                   (_g148812148861_
                    (lambda (_g148814148826_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g148814148826_))
                          (let ((_e148816148828_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g148814148826_))))
                            (let ((_hd148817148831_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e148816148828_)))
                                  (_tl148818148833_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e148816148828_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl148818148833_))
                                  ((lambda (_L148836_)
                                     (let* ((_klass148847_
                                             (let ((__tmp150270
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self148809_
                                                       __id149486
                                                       __klass149484
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx148810_
                                                __tmp150270)))
                                            (_field148849_
                                             (let ((__tmp150271
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self148809_
                                                       __slot149488
                                                       __klass149484
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _klass148847_
                                                __tmp150271)))
                                            (_object148851_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L148836_))))
                                       (if (##structure-ref
                                            _klass148847_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp150272
                                                  (let ((__tmp150281
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self148809_
                        __checked?149487
                        __klass149484
                        '#f))
                     '%#struct-direct-ref
                     '%#struct-unchecked-ref))
                (__tmp150273
                 (let ((__tmp150278
                        (let ((__tmp150279
                               (let ((__tmp150280
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _self148809_
                                         __id149486
                                         __klass149484
                                         '#f))))
                                 (declare (not safe))
                                 (cons __tmp150280 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp150279)))
                       (__tmp150274
                        (let ((__tmp150276
                               (let ((__tmp150277
                                      (let ()
                                        (declare (not safe))
                                        (cons _field148849_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp150277)))
                              (__tmp150275
                               (let ()
                                 (declare (not safe))
                                 (cons _object148851_ '()))))
                          (declare (not safe))
                          (cons __tmp150276 __tmp150275))))
                   (declare (not safe))
                   (cons __tmp150278 __tmp150274))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp150281
                                                          __tmp150273))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp150272
                                              _stx148810_))
                                           (if (##structure-ref
                                                _klass148847_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp150282
                                                      (let ((__tmp150291
                                                             (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self148809_
                            __checked?149487
                            __klass149484
                            '#f))
                         '%#struct-ref
                         '%#struct-unchecked-ref))
                    (__tmp150283
                     (let ((__tmp150288
                            (let ((__tmp150289
                                   (let ((__tmp150290
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self148809_
                                             __id149486
                                             __klass149484
                                             '#f))))
                                     (declare (not safe))
                                     (cons __tmp150290 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp150289)))
                           (__tmp150284
                            (let ((__tmp150286
                                   (let ((__tmp150287
                                          (let ()
                                            (declare (not safe))
                                            (cons _field148849_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp150287)))
                                  (__tmp150285
                                   (let ()
                                     (declare (not safe))
                                     (cons _object148851_ '()))))
                              (declare (not safe))
                              (cons __tmp150286 __tmp150285))))
                       (declare (not safe))
                       (cons __tmp150288 __tmp150284))))
                (declare (not safe))
                (cons __tmp150291 __tmp150283))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp150282
                                                  _stx148810_))
                                               (let ((_$e148854_
                                                      (let ((__tmp150292
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self148809_
                        __slot149488
                        __klass149484
                        '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _klass148847_ __tmp150292))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e148854_
                                                     ((lambda (_klass148857_)
                                                        (let ((__tmp150293
                                                               (let ((__tmp150302
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self148809_
                                     __checked?149487
                                     __klass149484
                                     '#f))
                                  '%#struct-ref
                                  '%#struct-unchecked-ref))
                             (__tmp150294
                              (let ((__tmp150299
                                     (let ((__tmp150300
                                            (let ((__tmp150301
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self148809_
                                                      __id149486
                                                      __klass149484
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp150301 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp150300)))
                                    (__tmp150295
                                     (let ((__tmp150297
                                            (let ((__tmp150298
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field148849_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp150298)))
                                           (__tmp150296
                                            (let ()
                                              (declare (not safe))
                                              (cons _object148851_ '()))))
                                       (declare (not safe))
                                       (cons __tmp150297 __tmp150296))))
                                (declare (not safe))
                                (cons __tmp150299 __tmp150295))))
                         (declare (not safe))
                         (cons __tmp150302 __tmp150294))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp150293 _stx148810_)))
              _$e148854_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _self148809_
                                                            __checked?149487
                                                            __klass149484
                                                            '#f))
                                                         (let ((__tmp150303
                                                                (let* ((_$obj148859_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp150304 (gensym '__obj)))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp150304)))
                               (__tmp150305
                                (let ((__tmp150345
                                       (let ((__tmp150346
                                              (let ((__tmp150348
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _$obj148859_
                                                             '())))
                                                    (__tmp150347
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _object148851_
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp150348
                                                      __tmp150347))))
                                         (declare (not safe))
                                         (cons __tmp150346 '())))
                                      (__tmp150306
                                       (let ((__tmp150307
                                              (let ((__tmp150308
                                                     (let ((__tmp150337
                                                            (let ((__tmp150338
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp150342
                                  (let ((__tmp150343
                                         (let ((__tmp150344
                                                (##structure-ref
                                                 _klass148847_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp150344 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp150343)))
                                 (__tmp150339
                                  (let ((__tmp150340
                                         (let ((__tmp150341
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj148859_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp150341))))
                                    (declare (not safe))
                                    (cons __tmp150340 '()))))
                             (declare (not safe))
                             (cons __tmp150342 __tmp150339))))
                      (declare (not safe))
                      (cons '%#struct-direct-instance? __tmp150338)))
                   (__tmp150309
                    (let ((__tmp150326
                           (let ((__tmp150327
                                  (let ((__tmp150334
                                         (let ((__tmp150335
                                                (let ((__tmp150336
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self148809_
                                                          __id149486
                                                          __klass149484
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp150336 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp150335)))
                                        (__tmp150328
                                         (let ((__tmp150332
                                                (let ((__tmp150333
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field148849_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp150333)))
                                               (__tmp150329
                                                (let ((__tmp150330
                                                       (let ((__tmp150331
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj148859_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp150331))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp150330 '()))))
                                           (declare (not safe))
                                           (cons __tmp150332 __tmp150329))))
                                    (declare (not safe))
                                    (cons __tmp150334 __tmp150328))))
                             (declare (not safe))
                             (cons '%#struct-unchecked-ref __tmp150327)))
                          (__tmp150310
                           (let ((__tmp150311
                                  (let ((__tmp150312
                                         (let ((__tmp150324
                                                (let ((__tmp150325
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-slot-ref
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp150325)))
                                               (__tmp150313
                                                (let ((__tmp150321
                                                       (let ((__tmp150322
                                                              (let ((__tmp150323
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self148809_
                                __id149486
                                __klass149484
                                '#f))))
                        (declare (not safe))
                        (cons __tmp150323 '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp150322)))
              (__tmp150314
               (let ((__tmp150319
                      (let ((__tmp150320
                             (let ()
                               (declare (not safe))
                               (cons _$obj148859_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp150320)))
                     (__tmp150315
                      (let ((__tmp150316
                             (let ((__tmp150317
                                    (let ((__tmp150318
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _self148809_
                                              __slot149488
                                              __klass149484
                                              '#f))))
                                      (declare (not safe))
                                      (cons __tmp150318 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp150317))))
                        (declare (not safe))
                        (cons __tmp150316 '()))))
                 (declare (not safe))
                 (cons __tmp150319 __tmp150315))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp150321
                                                        __tmp150314))))
                                           (declare (not safe))
                                           (cons __tmp150324 __tmp150313))))
                                    (declare (not safe))
                                    (cons '%#call __tmp150312))))
                             (declare (not safe))
                             (cons __tmp150311 '()))))
                      (declare (not safe))
                      (cons __tmp150326 __tmp150310))))
               (declare (not safe))
               (cons __tmp150337 __tmp150309))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#if __tmp150308))))
                                         (declare (not safe))
                                         (cons __tmp150307 '()))))
                                  (declare (not safe))
                                  (cons __tmp150345 __tmp150306))))
                          (declare (not safe))
                          (cons '%#let-values __tmp150305))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp150303 _stx148810_))
                 (let ((__tmp150349
                        (let ((__tmp150350
                               (let ((__tmp150356
                                      (let ((__tmp150357
                                             (let ()
                                               (declare (not safe))
                                               (cons 'unchecked-slot-ref
                                                     '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp150357)))
                                     (__tmp150351
                                      (let ((__tmp150352
                                             (let ((__tmp150353
                                                    (let ((__tmp150354
                                                           (let ((__tmp150355
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _self148809_
                             __slot149488
                             __klass149484
                             '#f))))
                     (declare (not safe))
                     (cons __tmp150355 '()))))
              (declare (not safe))
              (cons '%#quote __tmp150354))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp150353 '()))))
                                        (declare (not safe))
                                        (cons _object148851_ __tmp150352))))
                                 (declare (not safe))
                                 (cons __tmp150356 __tmp150351))))
                          (declare (not safe))
                          (cons '%#call __tmp150350))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp150349 _stx148810_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd148817148831_)
                                  (let ()
                                    (declare (not safe))
                                    (_g148813148823_ _g148814148826_)))))
                          (let ()
                            (declare (not safe))
                            (_g148813148823_ _g148814148826_))))))
              (declare (not safe))
              (_g148812148861_ _args148811_))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!accessor::optimize-call
       gxc#!accessor::optimize-call::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!accessor::t
       'optimize-call
       gxc#!accessor::optimize-call
       '#f))
    (define gxc#!mutator::optimize-call
      (lambda (_self148614_ _stx148615_ _args148616_)
        (let* ((_g148618148632_
                (lambda (_g148619148629_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g148619148629_))))
               (_g148617148684_
                (lambda (_g148619148635_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g148619148635_))
                      (let ((_e148622148637_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g148619148635_))))
                        (let ((_hd148623148640_
                               (let ()
                                 (declare (not safe))
                                 (##car _e148622148637_)))
                              (_tl148624148642_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e148622148637_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl148624148642_))
                              (let ((_e148625148645_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl148624148642_))))
                                (let ((_hd148626148648_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e148625148645_)))
                                      (_tl148627148650_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e148625148645_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl148627148650_))
                                      ((lambda (_L148653_ _L148654_)
                                         (let* ((_klass148668_
                                                 (let ((__tmp150358
                                                        (##structure-ref
                                                         _self148614_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _stx148615_
                                                    __tmp150358)))
                                                (_field148670_
                                                 (let ((__tmp150359
                                                        (##structure-ref
                                                         _self148614_
                                                         '2
                                                         gxc#!mutator::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass148668_
                                                    __tmp150359)))
                                                (_object148672_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L148654_)))
                                                (_value148674_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L148653_))))
                                           (if (##structure-ref
                                                _klass148668_
                                                '8
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp150360
                                                      (let ((__tmp150370
                                                             (if (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _self148614_
                          '3
                          gxc#!mutator::t
                          '#f)
                         '%#struct-direct-set!
                         '%#struct-unchecked-set!))
                    (__tmp150361
                     (let ((__tmp150367
                            (let ((__tmp150368
                                   (let ((__tmp150369
                                          (##structure-ref
                                           _self148614_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp150369 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp150368)))
                           (__tmp150362
                            (let ((__tmp150365
                                   (let ((__tmp150366
                                          (let ()
                                            (declare (not safe))
                                            (cons _field148670_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp150366)))
                                  (__tmp150363
                                   (let ((__tmp150364
                                          (let ()
                                            (declare (not safe))
                                            (cons _value148674_ '()))))
                                     (declare (not safe))
                                     (cons _object148672_ __tmp150364))))
                              (declare (not safe))
                              (cons __tmp150365 __tmp150363))))
                       (declare (not safe))
                       (cons __tmp150367 __tmp150362))))
                (declare (not safe))
                (cons __tmp150370 __tmp150361))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp150360
                                                  _stx148615_))
                                               (if (##structure-ref
                                                    _klass148668_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp150371
                                                          (let ((__tmp150381
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##structure-ref
                              _self148614_
                              '3
                              gxc#!mutator::t
                              '#f)
                             '%#struct-set!
                             '%#struct-unchecked-set!))
                        (__tmp150372
                         (let ((__tmp150378
                                (let ((__tmp150379
                                       (let ((__tmp150380
                                              (##structure-ref
                                               _self148614_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp150380 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp150379)))
                               (__tmp150373
                                (let ((__tmp150376
                                       (let ((__tmp150377
                                              (let ()
                                                (declare (not safe))
                                                (cons _field148670_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp150377)))
                                      (__tmp150374
                                       (let ((__tmp150375
                                              (let ()
                                                (declare (not safe))
                                                (cons _value148674_ '()))))
                                         (declare (not safe))
                                         (cons _object148672_ __tmp150375))))
                                  (declare (not safe))
                                  (cons __tmp150376 __tmp150374))))
                           (declare (not safe))
                           (cons __tmp150378 __tmp150373))))
                    (declare (not safe))
                    (cons __tmp150381 __tmp150372))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp150371
                                                      _stx148615_))
                                                   (let ((_$e148677_
                                                          (let ((__tmp150382
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref
                          _self148614_
                          '2
                          gxc#!mutator::t
                          '#f)))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct _klass148668_ __tmp150382))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e148677_
                                                         ((lambda (_klass148680_)
                                                            (let ((__tmp150383
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp150393
                                  (if (##structure-ref
                                       _self148614_
                                       '3
                                       gxc#!mutator::t
                                       '#f)
                                      '%#struct-set!
                                      '%#struct-unchecked-set!))
                                 (__tmp150384
                                  (let ((__tmp150390
                                         (let ((__tmp150391
                                                (let ((__tmp150392
                                                       (##structure-ref
                                                        _self148614_
                                                        '1
                                                        gxc#!type::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp150392 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp150391)))
                                        (__tmp150385
                                         (let ((__tmp150388
                                                (let ((__tmp150389
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field148670_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp150389)))
                                               (__tmp150386
                                                (let ((__tmp150387
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _value148674_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons _object148672_
                                                        __tmp150387))))
                                           (declare (not safe))
                                           (cons __tmp150388 __tmp150386))))
                                    (declare (not safe))
                                    (cons __tmp150390 __tmp150385))))
                             (declare (not safe))
                             (cons __tmp150393 __tmp150384))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp150383 _stx148615_)))
                  _$e148677_)
                 (if (##structure-ref _self148614_ '3 gxc#!mutator::t '#f)
                     (let ((__tmp150394
                            (let* ((_$obj148682_
                                    (let ((__tmp150395 (gensym '__obj)))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp150395)))
                                   (__tmp150396
                                    (let ((__tmp150438
                                           (let ((__tmp150439
                                                  (let ((__tmp150441
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj148682_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp150440
                 (let () (declare (not safe)) (cons _object148672_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp150441
                                                          __tmp150440))))
                                             (declare (not safe))
                                             (cons __tmp150439 '())))
                                          (__tmp150397
                                           (let ((__tmp150398
                                                  (let ((__tmp150399
                                                         (let ((__tmp150430
                                                                (let ((__tmp150431
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp150435
                                      (let ((__tmp150436
                                             (let ((__tmp150437
                                                    (##structure-ref
                                                     _klass148668_
                                                     '1
                                                     gxc#!type::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp150437 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp150436)))
                                     (__tmp150432
                                      (let ((__tmp150433
                                             (let ((__tmp150434
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj148682_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp150434))))
                                        (declare (not safe))
                                        (cons __tmp150433 '()))))
                                 (declare (not safe))
                                 (cons __tmp150435 __tmp150432))))
                          (declare (not safe))
                          (cons '%#struct-direct-instance? __tmp150431)))
                       (__tmp150400
                        (let ((__tmp150418
                               (let ((__tmp150419
                                      (let ((__tmp150427
                                             (let ((__tmp150428
                                                    (let ((__tmp150429
                                                           (##structure-ref
                                                            _self148614_
                                                            '1
                                                            gxc#!type::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (cons __tmp150429 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp150428)))
                                            (__tmp150420
                                             (let ((__tmp150425
                                                    (let ((__tmp150426
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field148670_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp150426)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp150421
                                                    (let ((__tmp150423
                                                           (let ((__tmp150424
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj148682_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp150424)))
                  (__tmp150422
                   (let () (declare (not safe)) (cons _value148674_ '()))))
              (declare (not safe))
              (cons __tmp150423 __tmp150422))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp150425
                                                     __tmp150421))))
                                        (declare (not safe))
                                        (cons __tmp150427 __tmp150420))))
                                 (declare (not safe))
                                 (cons '%#struct-unchecked-set! __tmp150419)))
                              (__tmp150401
                               (let ((__tmp150402
                                      (let ((__tmp150403
                                             (let ((__tmp150416
                                                    (let ((__tmp150417
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp150417)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp150404
                                                    (let ((__tmp150413
                                                           (let ((__tmp150414
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp150415
                                 (##structure-ref
                                  _self148614_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (cons __tmp150415 '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp150414)))
                  (__tmp150405
                   (let ((__tmp150411
                          (let ((__tmp150412
                                 (let ()
                                   (declare (not safe))
                                   (cons _$obj148682_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp150412)))
                         (__tmp150406
                          (let ((__tmp150408
                                 (let ((__tmp150409
                                        (let ((__tmp150410
                                               (##structure-ref
                                                _self148614_
                                                '2
                                                gxc#!mutator::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp150410 '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp150409)))
                                (__tmp150407
                                 (let ()
                                   (declare (not safe))
                                   (cons _value148674_ '()))))
                            (declare (not safe))
                            (cons __tmp150408 __tmp150407))))
                     (declare (not safe))
                     (cons __tmp150411 __tmp150406))))
              (declare (not safe))
              (cons __tmp150413 __tmp150405))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp150416
                                                     __tmp150404))))
                                        (declare (not safe))
                                        (cons '%#call __tmp150403))))
                                 (declare (not safe))
                                 (cons __tmp150402 '()))))
                          (declare (not safe))
                          (cons __tmp150418 __tmp150401))))
                   (declare (not safe))
                   (cons __tmp150430 __tmp150400))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#if __tmp150399))))
                                             (declare (not safe))
                                             (cons __tmp150398 '()))))
                                      (declare (not safe))
                                      (cons __tmp150438 __tmp150397))))
                              (declare (not safe))
                              (cons '%#let-values __tmp150396))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp150394 _stx148615_))
                     (let ((__tmp150442
                            (let ((__tmp150443
                                   (let ((__tmp150450
                                          (let ((__tmp150451
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'unchecked-slot-set!
                                                         '()))))
                                            (declare (not safe))
                                            (cons '%#ref __tmp150451)))
                                         (__tmp150444
                                          (let ((__tmp150445
                                                 (let ((__tmp150447
                                                        (let ((__tmp150448
                                                               (let ((__tmp150449
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##structure-ref
                               _self148614_
                               '2
                               gxc#!mutator::t
                               '#f)))
                         (declare (not safe))
                         (cons __tmp150449 '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp150448)))
               (__tmp150446
                (let () (declare (not safe)) (cons _value148674_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp150447
                                                         __tmp150446))))
                                            (declare (not safe))
                                            (cons _object148672_
                                                  __tmp150445))))
                                     (declare (not safe))
                                     (cons __tmp150450 __tmp150444))))
                              (declare (not safe))
                              (cons '%#call __tmp150443))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp150442 _stx148615_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd148626148648_
                                       _hd148623148640_)
                                      (let ()
                                        (declare (not safe))
                                        (_g148618148632_ _g148619148635_)))))
                              (let ()
                                (declare (not safe))
                                (_g148618148632_ _g148619148635_)))))
                      (let ()
                        (declare (not safe))
                        (_g148618148632_ _g148619148635_))))))
          (declare (not safe))
          (_g148617148684_ _args148616_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass149492 __method-table149493)
        (let ((__id149494
               (let ((__slot149497
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass149492 'id))))
                 (if __slot149497
                     __slot149497
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__checked?149495
               (let ((__slot149498
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass149492 'checked?))))
                 (if __slot149498
                     __slot149498
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__slot149496
               (let ((__slot149499
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass149492 'slot))))
                 (if __slot149499
                     __slot149499
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_self148614_ _stx148615_ _args148616_)
            (let* ((_g148618148632_
                    (lambda (_g148619148629_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g148619148629_))))
                   (_g148617148684_
                    (lambda (_g148619148635_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g148619148635_))
                          (let ((_e148622148637_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g148619148635_))))
                            (let ((_hd148623148640_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e148622148637_)))
                                  (_tl148624148642_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e148622148637_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl148624148642_))
                                  (let ((_e148625148645_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl148624148642_))))
                                    (let ((_hd148626148648_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e148625148645_)))
                                          (_tl148627148650_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e148625148645_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl148627148650_))
                                          ((lambda (_L148653_ _L148654_)
                                             (let* ((_klass148668_
                                                     (let ((__tmp150452
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self148614_
                                                               __id149494
                                                               __klass149492
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _stx148615_
                                                        __tmp150452)))
                                                    (_field148670_
                                                     (let ((__tmp150453
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self148614_
                                                               __slot149496
                                                               __klass149492
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass148668_
                                                        __tmp150453)))
                                                    (_object148672_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L148654_)))
                                                    (_value148674_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L148653_))))
                                               (if (##structure-ref
                                                    _klass148668_
                                                    '8
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp150454
                                                          (let ((__tmp150464
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self148614_
                                __checked?149495
                                __klass149492
                                '#f))
                             '%#struct-direct-set!
                             '%#struct-unchecked-set!))
                        (__tmp150455
                         (let ((__tmp150461
                                (let ((__tmp150462
                                       (let ((__tmp150463
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _self148614_
                                                 __id149494
                                                 __klass149492
                                                 '#f))))
                                         (declare (not safe))
                                         (cons __tmp150463 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp150462)))
                               (__tmp150456
                                (let ((__tmp150459
                                       (let ((__tmp150460
                                              (let ()
                                                (declare (not safe))
                                                (cons _field148670_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp150460)))
                                      (__tmp150457
                                       (let ((__tmp150458
                                              (let ()
                                                (declare (not safe))
                                                (cons _value148674_ '()))))
                                         (declare (not safe))
                                         (cons _object148672_ __tmp150458))))
                                  (declare (not safe))
                                  (cons __tmp150459 __tmp150457))))
                           (declare (not safe))
                           (cons __tmp150461 __tmp150456))))
                    (declare (not safe))
                    (cons __tmp150464 __tmp150455))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp150454
                                                      _stx148615_))
                                                   (if (##structure-ref
                                                        _klass148668_
                                                        '7
                                                        gxc#!class::t
                                                        '#f)
                                                       (let ((__tmp150465
                                                              (let ((__tmp150475
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _self148614_
                                    __checked?149495
                                    __klass149492
                                    '#f))
                                 '%#struct-set!
                                 '%#struct-unchecked-set!))
                            (__tmp150466
                             (let ((__tmp150472
                                    (let ((__tmp150473
                                           (let ((__tmp150474
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self148614_
                                                     __id149494
                                                     __klass149492
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp150474 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp150473)))
                                   (__tmp150467
                                    (let ((__tmp150470
                                           (let ((__tmp150471
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _field148670_ '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp150471)))
                                          (__tmp150468
                                           (let ((__tmp150469
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _value148674_ '()))))
                                             (declare (not safe))
                                             (cons _object148672_
                                                   __tmp150469))))
                                      (declare (not safe))
                                      (cons __tmp150470 __tmp150468))))
                               (declare (not safe))
                               (cons __tmp150472 __tmp150467))))
                        (declare (not safe))
                        (cons __tmp150475 __tmp150466))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp150465 _stx148615_))
               (let ((_$e148677_
                      (let ((__tmp150476
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self148614_
                                __slot149496
                                __klass149492
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _klass148668_
                         __tmp150476))))
                 (if _$e148677_
                     ((lambda (_klass148680_)
                        (let ((__tmp150477
                               (let ((__tmp150487
                                      (if (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self148614_
                                             __checked?149495
                                             __klass149492
                                             '#f))
                                          '%#struct-set!
                                          '%#struct-unchecked-set!))
                                     (__tmp150478
                                      (let ((__tmp150484
                                             (let ((__tmp150485
                                                    (let ((__tmp150486
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _self148614_
                                                              __id149494
                                                              __klass149492
                                                              '#f))))
                                                      (declare (not safe))
                                                      (cons __tmp150486 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp150485)))
                                            (__tmp150479
                                             (let ((__tmp150482
                                                    (let ((__tmp150483
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field148670_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp150483)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp150480
                                                    (let ((__tmp150481
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _value148674_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _object148672_ __tmp150481))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp150482
                                                     __tmp150480))))
                                        (declare (not safe))
                                        (cons __tmp150484 __tmp150479))))
                                 (declare (not safe))
                                 (cons __tmp150487 __tmp150478))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp150477 _stx148615_)))
                      _$e148677_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self148614_
                            __checked?149495
                            __klass149492
                            '#f))
                         (let ((__tmp150488
                                (let* ((_$obj148682_
                                        (let ((__tmp150489 (gensym '__obj)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp150489)))
                                       (__tmp150490
                                        (let ((__tmp150532
                                               (let ((__tmp150533
                                                      (let ((__tmp150535
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj148682_ '())))
                    (__tmp150534
                     (let () (declare (not safe)) (cons _object148672_ '()))))
                (declare (not safe))
                (cons __tmp150535 __tmp150534))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp150533 '())))
                                              (__tmp150491
                                               (let ((__tmp150492
                                                      (let ((__tmp150493
                                                             (let ((__tmp150524
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp150525
                                   (let ((__tmp150529
                                          (let ((__tmp150530
                                                 (let ((__tmp150531
                                                        (##structure-ref
                                                         _klass148668_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp150531 '()))))
                                            (declare (not safe))
                                            (cons '%#quote __tmp150530)))
                                         (__tmp150526
                                          (let ((__tmp150527
                                                 (let ((__tmp150528
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj148682_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp150528))))
                                            (declare (not safe))
                                            (cons __tmp150527 '()))))
                                     (declare (not safe))
                                     (cons __tmp150529 __tmp150526))))
                              (declare (not safe))
                              (cons '%#struct-direct-instance? __tmp150525)))
                           (__tmp150494
                            (let ((__tmp150512
                                   (let ((__tmp150513
                                          (let ((__tmp150521
                                                 (let ((__tmp150522
                                                        (let ((__tmp150523
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _self148614_
                          __id149494
                          __klass149492
                          '#f))))
                  (declare (not safe))
                  (cons __tmp150523 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp150522)))
                                                (__tmp150514
                                                 (let ((__tmp150519
                                                        (let ((__tmp150520
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _field148670_ '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp150520)))
               (__tmp150515
                (let ((__tmp150517
                       (let ((__tmp150518
                              (let ()
                                (declare (not safe))
                                (cons _$obj148682_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp150518)))
                      (__tmp150516
                       (let () (declare (not safe)) (cons _value148674_ '()))))
                  (declare (not safe))
                  (cons __tmp150517 __tmp150516))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp150519
                                                         __tmp150515))))
                                            (declare (not safe))
                                            (cons __tmp150521 __tmp150514))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp150513)))
                                  (__tmp150495
                                   (let ((__tmp150496
                                          (let ((__tmp150497
                                                 (let ((__tmp150510
                                                        (let ((__tmp150511
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons 'class-slot-set! '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp150511)))
               (__tmp150498
                (let ((__tmp150507
                       (let ((__tmp150508
                              (let ((__tmp150509
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _self148614_
                                        __id149494
                                        __klass149492
                                        '#f))))
                                (declare (not safe))
                                (cons __tmp150509 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp150508)))
                      (__tmp150499
                       (let ((__tmp150505
                              (let ((__tmp150506
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj148682_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp150506)))
                             (__tmp150500
                              (let ((__tmp150502
                                     (let ((__tmp150503
                                            (let ((__tmp150504
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self148614_
                                                      __slot149496
                                                      __klass149492
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp150504 '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp150503)))
                                    (__tmp150501
                                     (let ()
                                       (declare (not safe))
                                       (cons _value148674_ '()))))
                                (declare (not safe))
                                (cons __tmp150502 __tmp150501))))
                         (declare (not safe))
                         (cons __tmp150505 __tmp150500))))
                  (declare (not safe))
                  (cons __tmp150507 __tmp150499))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp150510
                                                         __tmp150498))))
                                            (declare (not safe))
                                            (cons '%#call __tmp150497))))
                                     (declare (not safe))
                                     (cons __tmp150496 '()))))
                              (declare (not safe))
                              (cons __tmp150512 __tmp150495))))
                       (declare (not safe))
                       (cons __tmp150524 __tmp150494))))
                (declare (not safe))
                (cons '%#if __tmp150493))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp150492 '()))))
                                          (declare (not safe))
                                          (cons __tmp150532 __tmp150491))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp150490))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp150488 _stx148615_))
                         (let ((__tmp150536
                                (let ((__tmp150537
                                       (let ((__tmp150544
                                              (let ((__tmp150545
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons 'unchecked-slot-set!
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#ref __tmp150545)))
                                             (__tmp150538
                                              (let ((__tmp150539
                                                     (let ((__tmp150541
                                                            (let ((__tmp150542
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp150543
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self148614_
                                     __slot149496
                                     __klass149492
                                     '#f))))
                             (declare (not safe))
                             (cons __tmp150543 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp150542)))
                   (__tmp150540
                    (let () (declare (not safe)) (cons _value148674_ '()))))
               (declare (not safe))
               (cons __tmp150541 __tmp150540))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _object148672_
                                                      __tmp150539))))
                                         (declare (not safe))
                                         (cons __tmp150544 __tmp150538))))
                                  (declare (not safe))
                                  (cons '%#call __tmp150537))))
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp150536
                            _stx148615_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _hd148626148648_
                                           _hd148623148640_)
                                          (let ()
                                            (declare (not safe))
                                            (_g148618148632_
                                             _g148619148635_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g148618148632_ _g148619148635_)))))
                          (let ()
                            (declare (not safe))
                            (_g148618148632_ _g148619148635_))))))
              (declare (not safe))
              (_g148617148684_ _args148616_))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!mutator::optimize-call
       gxc#!mutator::optimize-call::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!mutator::t
       'optimize-call
       gxc#!mutator::optimize-call
       '#f))
    (define gxc#!lambda::optimize-call
      (lambda (_self148448_ _stx148449_ _args148450_)
        (let* ((_self148451148460_ _self148448_)
               (_E148453148464_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self148451148460_))))
               (_K148454148471_
                (lambda (_inline148467_ _dispatch148468_ _arity148469_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self148448_ _args148450_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx148449_
                         _arity148469_)))
                  (if _inline148467_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp150546
                               (let ((__tmp150547
                                      (_inline148467_ _stx148449_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp150547
                                  _stx148449_))))
                          (declare (not safe))
                          (gxc#compile-e__0 __tmp150546)))
                      (if _dispatch148468_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch148468_))
                            (let ((__tmp150548
                                   (let ((__tmp150549
                                          (let ((__tmp150550
                                                 (let ((__tmp150551
                                                        (let ((__tmp150552
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch148468_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp150552))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp150551
                                                         _args148450_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp150550))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp150549
                                      _stx148449_))))
                              (declare (not safe))
                              (gxc#compile-e__0 __tmp150548)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _stx148449_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self148451148460_ 'gxc#!lambda::t))
              (let* ((_e148455148474_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self148451148460_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e148456148477_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self148451148460_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity148480_ _e148456148477_)
                     (_e148457148482_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self148451148460_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch148485_ _e148457148482_)
                     (_e148458148487_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self148451148460_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline148490_ _e148458148487_))
                (declare (not safe))
                (_K148454148471_
                 _inline148490_
                 _dispatch148485_
                 _arity148480_))
              (let () (declare (not safe)) (_E148453148464_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self148287_ _stx148288_ _args148289_)
        (let* ((_self148290148297_ _self148287_)
               (_E148292148301_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self148290148297_))))
               (_K148293148315_
                (lambda (_clauses148304_)
                  (let ((_$e148310_
                         (let ((__tmp150553
                                (lambda (_g148305148307_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g148305148307_
                                     _args148289_)))))
                           (declare (not safe))
                           (find __tmp150553 _clauses148304_))))
                    (if _$e148310_
                        ((lambda (_clause148313_)
                           (let ((__method149768
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause148313_
                                     'optimize-call))))
                             (if __method149768
                                 (__method149768
                                  _clause148313_
                                  _stx148288_
                                  _args148289_)
                                 (let ()
                                   (declare (not safe))
                                   (error '"Missing method"
                                          _clause148313_
                                          'optimize-call)))))
                         _$e148310_)
                        (let ((__tmp150554
                               (map gxc#!lambda-arity _clauses148304_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx148288_
                           __tmp150554)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self148290148297_
                 'gxc#!case-lambda::t))
              (let* ((_e148294148318_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self148290148297_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e148295148321_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self148290148297_
                         '2
                         gxc#!case-lambda::t
                         '#f)))
                     (_clauses148324_ _e148295148321_))
                (declare (not safe))
                (_K148293148315_ _clauses148324_))
              (let () (declare (not safe)) (_E148292148301_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self148101_ _args148102_)
        (let* ((_self148103148110_ _self148101_)
               (_E148105148114_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self148103148110_))))
               (_K148106148154_
                (lambda (_arity148117_)
                  (let* ((_arity148118148127_ _arity148117_)
                         (_E148121148131_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (error '"No clause matching"
                                     _arity148118148127_)))))
                    (let ((_K148125148151_
                           (lambda ()
                             (fx= (length _args148102_) _arity148117_)))
                          (_K148122148137_
                           (lambda (_arity148135_)
                             (fx>= (length _args148102_) _arity148135_))))
                      (let ((_try-match148120148147_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity148118148127_))
                                   (let ((_tl148124148142_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity148118148127_)))
                                         (_hd148123148140_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity148118148127_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl148124148142_))
                                         (let ((_arity148145_
                                                _hd148123148140_))
                                           (declare (not safe))
                                           (_K148122148137_ _arity148145_))
                                         (let ()
                                           (declare (not safe))
                                           (_E148121148131_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E148121148131_))))))
                        (if (let ()
                              (declare (not safe))
                              (fixnum? _arity148118148127_))
                            (let () (declare (not safe)) (_K148125148151_))
                            (let ()
                              (declare (not safe))
                              (_try-match148120148147_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self148103148110_ 'gxc#!lambda::t))
              (let* ((_e148107148157_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self148103148110_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e148108148160_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self148103148110_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity148163_ _e148108148160_))
                (declare (not safe))
                (_K148106148154_ _arity148163_))
              (let () (declare (not safe)) (_E148105148114_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self147986_ _stx147987_ _args147988_)
        (let* ((_self147989147997_ _self147986_)
               (_E147991148001_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self147989147997_))))
               (_K147992148085_
                (lambda (_dispatch148004_ _table148005_)
                  (let* ((_g148006148015_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch148004_)))
                         (_else148008148023_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch148004_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _stx147987_))))
                         (_K148010148069_
                          (lambda (_main148026_ _keys148027_)
                            (let ((_g150555_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx147987_
                                      _args147988_))))
                              (begin
                                (let ((_g150556_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g150555_)
                                             (##vector-length _g150555_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g150556_ 2)))
                                      (error "Context expects 2 values"
                                             _g150556_)))
                                (let ((_pargs148029_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g150555_ 0)))
                                      (_kwargs148030_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g150555_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main148026_))
                                    (if _table148005_
                                        (let ((_xargs148037_
                                               (map (lambda (_key148032_)
                                                      (let ((_$e148034_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq__0 _key148032_ _kwargs148030_))))
                (if _$e148034_ (values _$e148034_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys148027_)))
                                          (for-each
                                           (lambda (_kw148039_)
                                             (if (memq (car _kw148039_)
                                                       _keys148027_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx147987_
                                                    _keys148027_
                                                    _kw148039_))))
                                           _kwargs148030_)
                                          (let ((__tmp150557
                                                 (let ((__tmp150558
                                                        (let ((__tmp150559
                                                               (let ((__tmp150564
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp150565
                                     (let ()
                                       (declare (not safe))
                                       (cons _main148026_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp150565)))
                             (__tmp150560
                              (let ((__tmp150562
                                     (let ((__tmp150563
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp150563)))
                                    (__tmp150561
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs148029_
                                               _xargs148037_))))
                                (declare (not safe))
                                (cons __tmp150562 __tmp150561))))
                         (declare (not safe))
                         (cons __tmp150564 __tmp150560))))
                  (declare (not safe))
                  (cons '%#call __tmp150559))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp150558
                                                    _stx147987_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0 __tmp150557)))
                                        (let* ((_kwt148041_
                                                (let ((__tmp150566
                                                       (gensym '__kwt)))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp150566)))
                                               (_kwvars148044_
                                                (map (lambda (_g150567_)
                                                       (let ((__tmp150568
                                                              (gensym '__kw)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp150568)))
                                                     _kwargs148030_))
                                               (_kwbind148049_
                                                (map (lambda (_kw148046_
                                                              _kwvar148047_)
                                                       (let ((__tmp150571
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar148047_ '())))
                     (__tmp150569
                      (let ((__tmp150570 (cdr _kw148046_)))
                        (declare (not safe))
                        (cons __tmp150570 '()))))
                 (declare (not safe))
                 (cons __tmp150571 __tmp150569)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs148030_
                                                     _kwvars148044_))
                                               (_kwset148054_
                                                (map (lambda (_kw148051_
                                                              _kwvar148052_)
                                                       (let ((__tmp150572
                                                              (let ((__tmp150573
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp150581
                                    (let ((__tmp150582
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt148041_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp150582)))
                                   (__tmp150574
                                    (let ((__tmp150578
                                           (let ((__tmp150579
                                                  (let ((__tmp150580
                                                         (car _kw148051_)))
                                                    (declare (not safe))
                                                    (cons __tmp150580 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp150579)))
                                          (__tmp150575
                                           (let ((__tmp150576
                                                  (let ((__tmp150577
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar148052_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp150577))))
                                             (declare (not safe))
                                             (cons __tmp150576 '()))))
                                      (declare (not safe))
                                      (cons __tmp150578 __tmp150575))))
                               (declare (not safe))
                               (cons __tmp150581 __tmp150574))))
                        (declare (not safe))
                        (cons '(%#ref symbolic-table-set!) __tmp150573))))
                 (declare (not safe))
                 (cons '%#call __tmp150572)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs148030_
                                                     _kwvars148044_))
                                               (_xkwargs148059_
                                                (map (lambda (_kw148056_
                                                              _kwvar148057_)
                                                       (let ((__tmp150585
                                                              (car _kw148056_))
                                                             (__tmp150583
                                                              (let ((__tmp150584
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar148057_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp150584))))
                 (declare (not safe))
                 (cons __tmp150585 __tmp150583)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs148030_
                                                     _kwvars148044_))
                                               (_xargs148066_
                                                (map (lambda (_key148061_)
                                                       (let ((_$e148063_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq__0 _key148061_ _xkwargs148059_))))
                 (if _$e148063_ (values _$e148063_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys148027_)))
                                          (let ((__tmp150586
                                                 (let ((__tmp150587
                                                        (let ((__tmp150588
                                                               (let ((__tmp150589
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp150590
                                     (let ((__tmp150591
                                            (let ((__tmp150605
                                                   (let ((__tmp150606
                                                          (let ((__tmp150616
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt148041_ '())))
                        (__tmp150607
                         (let ((__tmp150608
                                (let ((__tmp150609
                                       (let ((__tmp150610
                                              (let ((__tmp150611
                                                     (let ((__tmp150613
                                                            (let ((__tmp150614
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp150615 (length _kwargs148030_)))
                             (declare (not safe))
                             (cons __tmp150615 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp150614)))
                   (__tmp150612
                    (let () (declare (not safe)) (cons '(%#quote 0) '()))))
               (declare (not safe))
               (cons __tmp150613 __tmp150612))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-symbolic-table)
                                                      __tmp150611))))
                                         (declare (not safe))
                                         (cons '%#call __tmp150610))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp150609
                                   _stx147987_))))
                           (declare (not safe))
                           (cons __tmp150608 '()))))
                    (declare (not safe))
                    (cons __tmp150616 __tmp150607))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp150606 '())))
                                                  (__tmp150592
                                                   (let ((__tmp150593
                                                          (let ((__tmp150594
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp150595
                                (let ((__tmp150596
                                       (let ((__tmp150597
                                              (let ((__tmp150598
                                                     (let ((__tmp150603
                                                            (let ((__tmp150604
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main148026_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp150604)))
                   (__tmp150599
                    (let ((__tmp150601
                           (let ((__tmp150602
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt148041_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp150602)))
                          (__tmp150600
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs148029_ _xargs148066_))))
                      (declare (not safe))
                      (cons __tmp150601 __tmp150600))))
               (declare (not safe))
               (cons __tmp150603 __tmp150599))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp150598))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp150597
                                          _stx147987_))))
                                  (declare (not safe))
                                  (cons __tmp150596 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp150595 _kwset148054_))))
                    (declare (not safe))
                    (cons '%#begin __tmp150594))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp150593 '()))))
                                              (declare (not safe))
                                              (cons __tmp150605 __tmp150592))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp150591))))
                                (declare (not safe))
                                (cons __tmp150590 '()))))
                         (declare (not safe))
                         (cons _kwbind148049_ __tmp150589))))
                  (declare (not safe))
                  (cons '%#let-values __tmp150588))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp150587
                                                    _stx147987_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0
                                             __tmp150586)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g148006148015_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e148011148072_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g148006148015_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                               (_e148012148075_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g148006148015_
                                   '2
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_keys148078_ _e148012148075_)
                               (_e148013148080_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g148006148015_
                                   '3
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_main148083_ _e148013148080_))
                          (declare (not safe))
                          (_K148010148069_ _main148083_ _keys148078_))
                        (let () (declare (not safe)) (_else148008148023_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self147989147997_
                 'gxc#!kw-lambda::t))
              (let* ((_e147993148088_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self147989147997_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e147994148091_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self147989147997_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table148094_ _e147994148091_)
                     (_e147995148096_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self147989147997_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch148099_ _e147995148096_))
                (declare (not safe))
                (_K147992148085_ _dispatch148099_ _table148094_))
              (let () (declare (not safe)) (_E147991148001_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx147599_ _args147600_)
        (let _lp147602_ ((_rest147604_ _args147600_)
                         (_pargs147605_ '())
                         (_kwargs147606_ '()))
          (let* ((___stx149650149651_ _rest147604_)
                 (_g147612147664_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx149650149651_)))))
            (let ((___kont149652149653_
                   (lambda (_L147843_ _L147844_)
                     (let ((__tmp150617
                            (let ()
                              (declare (not safe))
                              (cons _L147844_ _pargs147605_))))
                       (declare (not safe))
                       (_lp147602_ _L147843_ __tmp150617 _kwargs147606_))))
                  (___kont149654149655_
                   (lambda (_L147789_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L147789_ _pargs147605_))
                             (reverse _kwargs147606_))))
                  (___kont149656149657_
                   (lambda (_L147736_ _L147737_ _L147738_)
                     (let ((_kw147755_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _L147738_))))
                       (if (assq _kw147755_ _kwargs147606_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx147599_
                              _kw147755_))
                           (let ((__tmp150618
                                  (let ((__tmp150619
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw147755_ _L147737_))))
                                    (declare (not safe))
                                    (cons __tmp150619 _kwargs147606_))))
                             (declare (not safe))
                             (_lp147602_
                              _L147736_
                              _pargs147605_
                              __tmp150618))))))
                  (___kont149658149659_
                   (lambda (_L147684_ _L147685_)
                     (let ((__tmp150620
                            (let ()
                              (declare (not safe))
                              (cons _L147685_ _pargs147605_))))
                       (declare (not safe))
                       (_lp147602_ _L147684_ __tmp150620 _kwargs147606_))))
                  (___kont149660149661_
                   (lambda ()
                     (values (reverse _pargs147605_)
                             (reverse _kwargs147606_)))))
              (let* ((_g147611147671_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx149650149651_))
                            (___kont149660149661_)
                            (let () (declare (not safe)) (_g147612147664_)))))
                     (___match149757149758_
                      (lambda (_e147643147704_
                               _hd147644147707_
                               _tl147645147709_
                               _e147646147712_
                               _hd147647147715_
                               _tl147648147717_
                               _e147649147720_
                               _hd147650147723_
                               _tl147651147725_
                               _e147652147728_
                               _hd147653147731_
                               _tl147654147733_)
                        (let ((_L147736_ _tl147654147733_)
                              (_L147737_ _hd147653147731_)
                              (_L147738_ _hd147650147723_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L147738_))
                              (___kont149656149657_
                               _L147736_
                               _L147737_
                               _L147738_)
                              (___kont149658149659_
                               _tl147645147709_
                               _hd147644147707_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx149650149651_))
                    (let ((_e147616147808_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx149650149651_))))
                      (let ((_tl147618147813_
                             (let ()
                               (declare (not safe))
                               (##cdr _e147616147808_)))
                            (_hd147617147811_
                             (let ()
                               (declare (not safe))
                               (##car _e147616147808_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd147617147811_))
                            (let ((_e147619147816_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd147617147811_))))
                              (let ((_tl147621147821_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e147619147816_)))
                                    (_hd147620147819_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e147619147816_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd147620147819_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd147620147819_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl147621147821_))
                                            (let ((_e147622147824_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl147621147821_))))
                                              (let ((_tl147624147829_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e147622147824_)))
                                                    (_hd147623147827_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e147622147824_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd147623147827_))
                                                    (let ((_e147625147832_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd147623147827_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e147625147832_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl147624147829_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl147618147813_))
                          (let ((_e147626147835_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl147618147813_))))
                            (let ((_tl147628147840_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e147626147835_)))
                                  (_hd147627147838_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e147626147835_))))
                              (___kont149652149653_
                               _tl147628147840_
                               _hd147627147838_)))
                          (___kont149658149659_
                           _tl147618147813_
                           _hd147617147811_))
                      (___kont149658149659_ _tl147618147813_ _hd147617147811_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e147625147832_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl147624147829_))
                          (___kont149654149655_ _tl147618147813_)
                          (___kont149658149659_
                           _tl147618147813_
                           _hd147617147811_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl147624147829_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl147618147813_))
                              (let ((_e147652147728_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl147618147813_))))
                                (let ((_tl147654147733_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e147652147728_)))
                                      (_hd147653147731_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e147652147728_))))
                                  (___match149757149758_
                                   _e147616147808_
                                   _hd147617147811_
                                   _tl147618147813_
                                   _e147619147816_
                                   _hd147620147819_
                                   _tl147621147821_
                                   _e147622147824_
                                   _hd147623147827_
                                   _tl147624147829_
                                   _e147652147728_
                                   _hd147653147731_
                                   _tl147654147733_)))
                              (___kont149658149659_
                               _tl147618147813_
                               _hd147617147811_))
                          (___kont149658149659_
                           _tl147618147813_
                           _hd147617147811_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl147624147829_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl147618147813_))
                                                            (let ((_e147652147728_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl147618147813_))))
                      (let ((_tl147654147733_
                             (let ()
                               (declare (not safe))
                               (##cdr _e147652147728_)))
                            (_hd147653147731_
                             (let ()
                               (declare (not safe))
                               (##car _e147652147728_))))
                        (___match149757149758_
                         _e147616147808_
                         _hd147617147811_
                         _tl147618147813_
                         _e147619147816_
                         _hd147620147819_
                         _tl147621147821_
                         _e147622147824_
                         _hd147623147827_
                         _tl147624147829_
                         _e147652147728_
                         _hd147653147731_
                         _tl147654147733_)))
                    (___kont149658149659_ _tl147618147813_ _hd147617147811_))
                (___kont149658149659_ _tl147618147813_ _hd147617147811_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont149658149659_
                                             _tl147618147813_
                                             _hd147617147811_))
                                        (___kont149658149659_
                                         _tl147618147813_
                                         _hd147617147811_))
                                    (___kont149658149659_
                                     _tl147618147813_
                                     _hd147617147811_))))
                            (___kont149658149659_
                             _tl147618147813_
                             _hd147617147811_))))
                    (let () (declare (not safe)) (_g147611147671_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self147595_ _stx147596_ _args147597_)
        (let () (declare (not safe)) (gxc#xform-call% _stx147596_))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
