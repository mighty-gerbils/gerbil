(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1710715080)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp154728 (list gxc#::basic-xform::t))
            (__tmp154726
             (let ((__tmp154727
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp154727 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp154728
         '()
         __tmp154726
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _$args154429_
        (apply make-instance gxc#::optimize-call::t _$args154429_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp154729
             (lambda ()
               (force gxc#::basic-xform-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::optimize-call::t
                  '%#call
                  gxc#optimize-call%))
               (let ()
                 (declare (not safe))
                 (seal-class! gxc#::optimize-call::t)))))
        (declare (not safe))
        (make-promise __tmp154729)))
    (define gxc#apply-optimize-call
      (lambda (_stx154421_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_self154424_
                (let ((__obj154723
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj154723))
               (__tmp154730
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self154424_ _stx154421_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp154730
           gxc#current-compile-method
           _self154424_))))
    (define gxc#optimize-call%
      (lambda (_self154275_ _stx154276_)
        (let* ((___stx154474154475_ _stx154276_)
               (_g154279154299_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx154474154475_)))))
          (let ((___kont154476154477_
                 (lambda (_L154343_ _L154344_)
                   (let* ((_rator-id154362_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L154344_)))
                          (_rator-type154364_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id154362_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type154364_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp154731
                                  (##structure-ref
                                   _rator-type154364_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id154362_
                              '" => "
                              _rator-type154364_
                              '" "
                              __tmp154731))
                           (let ((_optimized154367_
                                  (let ((__method154724
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type154364_
                                            'optimize-call))))
                                    (if __method154724
                                        (__method154724
                                         _rator-type154364_
                                         _self154275_
                                         _stx154276_
                                         _L154343_)
                                        (let ()
                                          (declare (not safe))
                                          (error '"Missing method"
                                                 _rator-type154364_
                                                 'optimize-call))))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type154364_))
                                 _optimized154367_
                                 (let* ((___stx154456154457_ _optimized154367_)
                                        (_g154370154380_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx154456154457_)))))
                                   (let ((___kont154458154459_
                                          (lambda (_L154400_)
                                            (let ((__tmp154732
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L154400_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp154732
                                               _stx154276_))))
                                         (___kont154460154461_
                                          (lambda () _optimized154367_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx154456154457_))
                                         (let ((_e154375154392_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx154456154457_))))
                                           (let ((_tl154373154397_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e154375154392_)))
                                                 (_hd154374154395_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e154375154392_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd154374154395_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd154374154395_))
                                                     (___kont154458154459_
                                                      _tl154373154397_)
                                                     (___kont154460154461_))
                                                 (___kont154460154461_))))
                                         (___kont154460154461_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type154364_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _self154275_ _stx154276_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _stx154276_
                                _rator-type154364_)))))))
                (___kont154478154479_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _self154275_ _stx154276_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx154474154475_))
                (let ((_e154285154311_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx154474154475_))))
                  (let ((_tl154283154316_
                         (let () (declare (not safe)) (##cdr _e154285154311_)))
                        (_hd154284154314_
                         (let ()
                           (declare (not safe))
                           (##car _e154285154311_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl154283154316_))
                        (let ((_e154288154319_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl154283154316_))))
                          (let ((_tl154286154324_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e154288154319_)))
                                (_hd154287154322_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e154288154319_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd154287154322_))
                                (let ((_e154291154327_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd154287154322_))))
                                  (let ((_tl154289154332_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e154291154327_)))
                                        (_hd154290154330_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e154291154327_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd154290154330_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd154290154330_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl154289154332_))
                                                (let ((_e154294154335_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl154289154332_))))
                                                  (let ((_tl154292154340_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e154294154335_)))
                                                        (_hd154293154338_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e154294154335_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl154292154340_))
                                                        (___kont154476154477_
                                                         _tl154286154324_
                                                         _hd154293154338_)
                                                        (___kont154478154479_))))
                                                (___kont154478154479_))
                                            (___kont154478154479_))
                                        (___kont154478154479_))))
                                (___kont154478154479_))))
                        (___kont154478154479_))))
                (___kont154478154479_))))))
    (define gxc#!predicate::optimize-call
      (lambda (_self154228_ _ctx154229_ _stx154230_ _args154231_)
        (let* ((_g154233154243_
                (lambda (_g154234154240_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g154234154240_))))
               (_g154232154272_
                (lambda (_g154234154246_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g154234154246_))
                      (let ((_e154238154248_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g154234154246_))))
                        (let ((_hd154237154251_
                               (let ()
                                 (declare (not safe))
                                 (##car _e154238154248_)))
                              (_tl154236154253_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e154238154248_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl154236154253_))
                              ((lambda (_L154256_)
                                 (let* ((_klass154267_
                                         (let ((__tmp154733
                                                (##structure-ref
                                                 _self154228_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx154230_
                                            __tmp154733)))
                                        (_object154269_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _ctx154229_
                                            _L154256_))))
                                   (if (##structure-ref
                                        _klass154267_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp154749
                                              (let ((__tmp154750
                                                     (let ((__tmp154752
                                                            (let ((__tmp154753
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp154754
                                  (##structure-ref
                                   _klass154267_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp154754 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp154753)))
                   (__tmp154751
                    (let () (declare (not safe)) (cons _object154269_ '()))))
               (declare (not safe))
               (cons __tmp154752 __tmp154751))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#struct-direct-instance?
                                                      __tmp154750))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp154749
                                          _stx154230_))
                                       (if (##structure-ref
                                            _klass154267_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp154743
                                                  (let ((__tmp154744
                                                         (let ((__tmp154746
                                                                (let ((__tmp154747
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp154748
                                      (##structure-ref
                                       _klass154267_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp154748 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp154747)))
                       (__tmp154745
                        (let ()
                          (declare (not safe))
                          (cons _object154269_ '()))))
                   (declare (not safe))
                   (cons __tmp154746 __tmp154745))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-instance?
                                                          __tmp154744))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp154743
                                              _stx154230_))
                                           (let ((__tmp154734
                                                  (let ((__tmp154735
                                                         (let ((__tmp154741
                                                                (let ((__tmp154742
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'class-instance? '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp154742)))
                       (__tmp154736
                        (let ((__tmp154738
                               (let ((__tmp154739
                                      (let ((__tmp154740
                                             (##structure-ref
                                              _self154228_
                                              '1
                                              gxc#!type::t
                                              '#f)))
                                        (declare (not safe))
                                        (cons __tmp154740 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp154739)))
                              (__tmp154737
                               (let ()
                                 (declare (not safe))
                                 (cons _object154269_ '()))))
                          (declare (not safe))
                          (cons __tmp154738 __tmp154737))))
                   (declare (not safe))
                   (cons __tmp154741 __tmp154736))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#call
                                                          __tmp154735))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp154734
                                              _stx154230_))))))
                               _hd154237154251_)
                              (let ()
                                (declare (not safe))
                                (_g154233154243_ _g154234154246_)))))
                      (let ()
                        (declare (not safe))
                        (_g154233154243_ _g154234154246_))))))
          (declare (not safe))
          (_g154232154272_ _args154231_))))
    (define gxc#!predicate::optimize-call::specialize
      (lambda (__klass154431 __method-table154432)
        (let ((__id154433
               (let ((__slot154434
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154431 'id))))
                 (if __slot154434
                     __slot154434
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self154228_ _ctx154229_ _stx154230_ _args154231_)
            (let* ((_g154233154243_
                    (lambda (_g154234154240_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g154234154240_))))
                   (_g154232154272_
                    (lambda (_g154234154246_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g154234154246_))
                          (let ((_e154238154248_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g154234154246_))))
                            (let ((_hd154237154251_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e154238154248_)))
                                  (_tl154236154253_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e154238154248_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl154236154253_))
                                  ((lambda (_L154256_)
                                     (let* ((_klass154267_
                                             (let ((__tmp154755
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self154228_
                                                       __id154433
                                                       __klass154431
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx154230_
                                                __tmp154755)))
                                            (_object154269_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _ctx154229_
                                                _L154256_))))
                                       (if (##structure-ref
                                            _klass154267_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp154771
                                                  (let ((__tmp154772
                                                         (let ((__tmp154774
                                                                (let ((__tmp154775
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp154776
                                      (##structure-ref
                                       _klass154267_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp154776 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp154775)))
                       (__tmp154773
                        (let ()
                          (declare (not safe))
                          (cons _object154269_ '()))))
                   (declare (not safe))
                   (cons __tmp154774 __tmp154773))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-direct-instance?
                                                          __tmp154772))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp154771
                                              _stx154230_))
                                           (if (##structure-ref
                                                _klass154267_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp154765
                                                      (let ((__tmp154766
                                                             (let ((__tmp154768
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp154769
                                   (let ((__tmp154770
                                          (##structure-ref
                                           _klass154267_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp154770 '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp154769)))
                           (__tmp154767
                            (let ()
                              (declare (not safe))
                              (cons _object154269_ '()))))
                       (declare (not safe))
                       (cons __tmp154768 __tmp154767))))
                (declare (not safe))
                (cons '%#struct-instance? __tmp154766))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp154765
                                                  _stx154230_))
                                               (let ((__tmp154756
                                                      (let ((__tmp154757
                                                             (let ((__tmp154763
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp154764
                                   (let ()
                                     (declare (not safe))
                                     (cons 'class-instance? '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp154764)))
                           (__tmp154758
                            (let ((__tmp154760
                                   (let ((__tmp154761
                                          (let ((__tmp154762
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _self154228_
                                                    __id154433
                                                    __klass154431
                                                    '#f))))
                                            (declare (not safe))
                                            (cons __tmp154762 '()))))
                                     (declare (not safe))
                                     (cons '%#ref __tmp154761)))
                                  (__tmp154759
                                   (let ()
                                     (declare (not safe))
                                     (cons _object154269_ '()))))
                              (declare (not safe))
                              (cons __tmp154760 __tmp154759))))
                       (declare (not safe))
                       (cons __tmp154763 __tmp154758))))
                (declare (not safe))
                (cons '%#call __tmp154757))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp154756
                                                  _stx154230_))))))
                                   _hd154237154251_)
                                  (let ()
                                    (declare (not safe))
                                    (_g154233154243_ _g154234154246_)))))
                          (let ()
                            (declare (not safe))
                            (_g154233154243_ _g154234154246_))))))
              (declare (not safe))
              (_g154232154272_ _args154231_))))))
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
      (lambda (_self153943_ _ctx153944_ _stx153945_ _args153946_)
        (let* ((_klass153948_
                (let ((__tmp154777
                       (##structure-ref _self153943_ '1 gxc#!type::t '#f)))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _stx153945_ __tmp154777)))
               (_fields153950_
                (length (##structure-ref _klass153948_ '5 gxc#!class::t '#f)))
               (_args153956_
                (map (lambda (_g153951153953_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _ctx153944_ _g153951153953_)))
                     _args153946_))
               (_inline-make-object153958_
                (let ((__tmp154778
                       (let ((__tmp154784
                              (let ((__tmp154785
                                     (let ()
                                       (declare (not safe))
                                       (cons '##structure '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp154785)))
                             (__tmp154779
                              (let ((__tmp154781
                                     (let ((__tmp154782
                                            (let ((__tmp154783
                                                   (##structure-ref
                                                    _self153943_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp154783 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp154782)))
                                    (__tmp154780
                                     (make-list _fields153950_ '(%#quote #f))))
                                (declare (not safe))
                                (cons __tmp154781 __tmp154780))))
                         (declare (not safe))
                         (cons __tmp154784 __tmp154779))))
                  (declare (not safe))
                  (cons '%#call __tmp154778))))
          (let ((_$e153961_
                 (##structure-ref _klass153948_ '6 gxc#!class::t '#f)))
            (if _$e153961_
                ((lambda (_ctor153964_)
                   (let ((_$obj153966_
                          (let ((__tmp154886 (gensym '__obj)))
                            (declare (not safe))
                            (make-symbol__0 __tmp154886)))
                         (_ctor-impl153967_
                          (let ()
                            (declare (not safe))
                            (gxc#!class-lookup-method
                             _klass153948_
                             _ctor153964_))))
                     (let ((__tmp154887
                            (let ((__tmp154888
                                   (let ((__tmp154956
                                          (let ((__tmp154957
                                                 (let ((__tmp154959
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj153966_
                                                                '())))
                                                       (__tmp154958
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _inline-make-object153958_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp154959
                                                         __tmp154958))))
                                            (declare (not safe))
                                            (cons __tmp154957 '())))
                                         (__tmp154889
                                          (let ((__tmp154890
                                                 (let ((__tmp154891
                                                        (let ((__tmp154895
                                                               (if _ctor-impl153967_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp154950
                                  (let ((__tmp154954
                                         (let ((__tmp154955
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _ctor-impl153967_
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp154955)))
                                        (__tmp154951
                                         (let ((__tmp154952
                                                (let ((__tmp154953
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj153966_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp154953))))
                                           (declare (not safe))
                                           (cons __tmp154952 _args153956_))))
                                    (declare (not safe))
                                    (cons __tmp154954 __tmp154951))))
                             (declare (not safe))
                             (cons '%#call __tmp154950))
                           (let* ((_$ctor153969_
                                   (let ((__tmp154896 (gensym '__constructor)))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp154896)))
                                  (__tmp154897
                                   (let ((__tmp154932
                                          (let ((__tmp154933
                                                 (let ((__tmp154949
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$ctor153969_
                                                                '())))
                                                       (__tmp154934
                                                        (let ((__tmp154935
                                                               (let ((__tmp154936
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp154947
                                     (let ((__tmp154948
                                            (let ()
                                              (declare (not safe))
                                              (cons 'direct-method-ref '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp154948)))
                                    (__tmp154937
                                     (let ((__tmp154944
                                            (let ((__tmp154945
                                                   (let ((__tmp154946
                                                          (##structure-ref
                                                           _self153943_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp154946 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp154945)))
                                           (__tmp154938
                                            (let ((__tmp154942
                                                   (let ((__tmp154943
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj153966_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp154943)))
                                                  (__tmp154939
                                                   (let ((__tmp154940
                                                          (let ((__tmp154941
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _ctor153964_ '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp154941))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp154940 '()))))
                                              (declare (not safe))
                                              (cons __tmp154942 __tmp154939))))
                                       (declare (not safe))
                                       (cons __tmp154944 __tmp154938))))
                                (declare (not safe))
                                (cons __tmp154947 __tmp154937))))
                         (declare (not safe))
                         (cons '%#call __tmp154936))))
                  (declare (not safe))
                  (cons __tmp154935 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp154949
                                                         __tmp154934))))
                                            (declare (not safe))
                                            (cons __tmp154933 '())))
                                         (__tmp154898
                                          (let ((__tmp154899
                                                 (let ((__tmp154900
                                                        (let ((__tmp154930
                                                               (let ((__tmp154931
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$ctor153969_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp154931)))
                      (__tmp154901
                       (let ((__tmp154923
                              (let ((__tmp154924
                                     (let ((__tmp154928
                                            (let ((__tmp154929
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$ctor153969_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp154929)))
                                           (__tmp154925
                                            (let ((__tmp154926
                                                   (let ((__tmp154927
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj153966_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp154927))))
                                              (declare (not safe))
                                              (cons __tmp154926
                                                    _args153956_))))
                                       (declare (not safe))
                                       (cons __tmp154928 __tmp154925))))
                                (declare (not safe))
                                (cons '%#call __tmp154924)))
                             (__tmp154902
                              (let ((__tmp154903
                                     (let ((__tmp154904
                                            (let ((__tmp154921
                                                   (let ((__tmp154922
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp154922)))
                                                  (__tmp154905
                                                   (let ((__tmp154919
                                                          (let ((__tmp154920
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons '"missing constructor method implementation"
                                 '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp154920)))
                 (__tmp154906
                  (let ((__tmp154917
                         (let ((__tmp154918
                                (let ()
                                  (declare (not safe))
                                  (cons 'class: '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp154918)))
                        (__tmp154907
                         (let ((__tmp154914
                                (let ((__tmp154915
                                       (let ((__tmp154916
                                              (##structure-ref
                                               _self153943_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp154916 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp154915)))
                               (__tmp154908
                                (let ((__tmp154912
                                       (let ((__tmp154913
                                              (let ()
                                                (declare (not safe))
                                                (cons 'method: '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp154913)))
                                      (__tmp154909
                                       (let ((__tmp154910
                                              (let ((__tmp154911
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _ctor153964_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#quote __tmp154911))))
                                         (declare (not safe))
                                         (cons __tmp154910 '()))))
                                  (declare (not safe))
                                  (cons __tmp154912 __tmp154909))))
                           (declare (not safe))
                           (cons __tmp154914 __tmp154908))))
                    (declare (not safe))
                    (cons __tmp154917 __tmp154907))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp154919
                                                           __tmp154906))))
                                              (declare (not safe))
                                              (cons __tmp154921 __tmp154905))))
                                       (declare (not safe))
                                       (cons '%#call __tmp154904))))
                                (declare (not safe))
                                (cons __tmp154903 '()))))
                         (declare (not safe))
                         (cons __tmp154923 __tmp154902))))
                  (declare (not safe))
                  (cons __tmp154930 __tmp154901))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#if __tmp154900))))
                                            (declare (not safe))
                                            (cons __tmp154899 '()))))
                                     (declare (not safe))
                                     (cons __tmp154932 __tmp154898))))
                             (declare (not safe))
                             (cons '%#let-values __tmp154897))))
                      (__tmp154892
                       (let ((__tmp154893
                              (let ((__tmp154894
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj153966_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp154894))))
                         (declare (not safe))
                         (cons __tmp154893 '()))))
                  (declare (not safe))
                  (cons __tmp154895 __tmp154892))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#begin
                                                         __tmp154891))))
                                            (declare (not safe))
                                            (cons __tmp154890 '()))))
                                     (declare (not safe))
                                     (cons __tmp154956 __tmp154889))))
                              (declare (not safe))
                              (cons '%#let-values __tmp154888))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp154887 _stx153945_))))
                 _$e153961_)
                (let ((_$e153971_
                       (##structure-ref _klass153948_ '10 gxc#!class::t '#f)))
                  (if _$e153971_
                      ((lambda (_metaclass153974_)
                         (let* ((_$obj153976_
                                 (let ((__tmp154848 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp154848)))
                                (_metakons153978_
                                 (let ((__tmp154849
                                        (let ()
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-class
                                           _stx153945_
                                           _metaclass153974_))))
                                   (declare (not safe))
                                   (gxc#!class-lookup-method
                                    __tmp154849
                                    'instance-init!))))
                           (let ((__tmp154850
                                  (let ((__tmp154851
                                         (let ((__tmp154882
                                                (let ((__tmp154883
                                                       (let ((__tmp154885
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj153976_ '())))
                     (__tmp154884
                      (let ()
                        (declare (not safe))
                        (cons _inline-make-object153958_ '()))))
                 (declare (not safe))
                 (cons __tmp154885 __tmp154884))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp154883 '())))
                                               (__tmp154852
                                                (let ((__tmp154853
                                                       (let ((__tmp154854
                                                              (let ((__tmp154858
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if _metakons153978_
                                 (let ((__tmp154872
                                        (let ((__tmp154880
                                               (let ((__tmp154881
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _metakons153978_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp154881)))
                                              (__tmp154873
                                               (let ((__tmp154877
                                                      (let ((__tmp154878
                                                             (let ((__tmp154879
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self153943_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp154879 '()))))
                (declare (not safe))
                (cons '%#ref __tmp154878)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp154874
                                                      (let ((__tmp154875
                                                             (let ((__tmp154876
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _$obj153976_ '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp154876))))
                (declare (not safe))
                (cons __tmp154875 _args153956_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp154877
                                                       __tmp154874))))
                                          (declare (not safe))
                                          (cons __tmp154880 __tmp154873))))
                                   (declare (not safe))
                                   (cons '%#call __tmp154872))
                                 (let ((__tmp154859
                                        (let ((__tmp154870
                                               (let ((__tmp154871
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'call-method
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp154871)))
                                              (__tmp154860
                                               (let ((__tmp154867
                                                      (let ((__tmp154868
                                                             (let ((__tmp154869
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self153943_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp154869 '()))))
                (declare (not safe))
                (cons '%#ref __tmp154868)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp154861
                                                      (let ((__tmp154865
                                                             (let ((__tmp154866
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'instance-init! '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp154866)))
                    (__tmp154862
                     (let ((__tmp154863
                            (let ((__tmp154864
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj153976_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp154864))))
                       (declare (not safe))
                       (cons __tmp154863 _args153956_))))
                (declare (not safe))
                (cons __tmp154865 __tmp154862))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp154867
                                                       __tmp154861))))
                                          (declare (not safe))
                                          (cons __tmp154870 __tmp154860))))
                                   (declare (not safe))
                                   (cons '%#call __tmp154859))))
                            (__tmp154855
                             (let ((__tmp154856
                                    (let ((__tmp154857
                                           (let ()
                                             (declare (not safe))
                                             (cons _$obj153976_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp154857))))
                               (declare (not safe))
                               (cons __tmp154856 '()))))
                        (declare (not safe))
                        (cons __tmp154858 __tmp154855))))
                 (declare (not safe))
                 (cons '%#begin __tmp154854))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp154853 '()))))
                                           (declare (not safe))
                                           (cons __tmp154882 __tmp154852))))
                                    (declare (not safe))
                                    (cons '%#let-values __tmp154851))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp154850 _stx153945_))))
                       _$e153971_)
                      (if (##structure-ref _klass153948_ '7 gxc#!class::t '#f)
                          (if (fx= (length _args153956_) _fields153950_)
                              (let ((__tmp154840
                                     (let ((__tmp154841
                                            (let ((__tmp154846
                                                   (let ((__tmp154847
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp154847)))
                                                  (__tmp154842
                                                   (let ((__tmp154843
                                                          (let ((__tmp154844
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp154845
                                (##structure-ref
                                 _self153943_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (cons __tmp154845 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp154844))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp154843
                                                           _args153956_))))
                                              (declare (not safe))
                                              (cons __tmp154846 __tmp154842))))
                                       (declare (not safe))
                                       (cons '%#call __tmp154841))))
                                (declare (not safe))
                                (gxc#xform-wrap-source
                                 __tmp154840
                                 _stx153945_))
                              (let ((__tmp154839
                                     (##structure-ref
                                      _self153943_
                                      '1
                                      gxc#!type::t
                                      '#f))
                                    (__tmp154838
                                     (length (##structure-ref
                                              _klass153948_
                                              '5
                                              gxc#!class::t
                                              '#f))))
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"illegal struct constructor application; arity mismatch"
                                 _stx153945_
                                 __tmp154839
                                 __tmp154838)))
                          (let ((_$obj153981_
                                 (let ((__tmp154786 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp154786))))
                            (let _lp153983_ ((_rest153985_ _args153956_)
                                             (_initializers153986_ '()))
                              (let* ((___stx154512154513_ _rest153985_)
                                     (_g153990154011_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx154512154513_)))))
                                (let ((___kont154514154515_
                                       (lambda (_L154065_ _L154066_ _L154067_)
                                         (let* ((_slot154098_
                                                 (let ((__tmp154787
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L154067_))))
                                                   (declare (not safe))
                                                   (keyword->symbol
                                                    __tmp154787)))
                                                (_off154100_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass153948_
                                                    _slot154098_))))
                                           (if _off154100_
                                               (let ((__tmp154789
                                                      (let ((__tmp154790
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _off154100_ _L154066_))))
                (declare (not safe))
                (cons __tmp154790 _initializers153986_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp153983_
                                                  _L154065_
                                                  __tmp154789))
                                               (let ((__tmp154788
                                                      (##structure-ref
                                                       _self153943_
                                                       '1
                                                       gxc#!type::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"unknown slot"
                                                  _stx153945_
                                                  __tmp154788
                                                  _slot154098_))))))
                                      (___kont154516154517_
                                       (lambda ()
                                         (let ((__tmp154791
                                                (let ((__tmp154792
                                                       (let ((__tmp154815
                                                              (let ((__tmp154816
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp154818
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj153981_ '())))
                                   (__tmp154817
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object153958_ '()))))
                               (declare (not safe))
                               (cons __tmp154818 __tmp154817))))
                        (declare (not safe))
                        (cons __tmp154816 '())))
                     (__tmp154793
                      (let ((__tmp154794
                             (let ((__tmp154795
                                    (let ((__tmp154812
                                           (let ((__tmp154813
                                                  (let ((__tmp154814
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj153981_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp154814))))
                                             (declare (not safe))
                                             (cons __tmp154813 '())))
                                          (__tmp154796
                                           (let ((__tmp154797
                                                  (lambda (_i154025_ _r154026_)
                                                    (let ((__tmp154798
                                                           (let ((__tmp154799
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp154809
                                 (let ((__tmp154810
                                        (let ((__tmp154811
                                               (##structure-ref
                                                _self153943_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp154811 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp154810)))
                                (__tmp154800
                                 (let ((__tmp154806
                                        (let ((__tmp154807
                                               (let ((__tmp154808
                                                      (car _i154025_)))
                                                 (declare (not safe))
                                                 (cons __tmp154808 '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp154807)))
                                       (__tmp154801
                                        (let ((__tmp154804
                                               (let ((__tmp154805
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _$obj153981_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp154805)))
                                              (__tmp154802
                                               (let ((__tmp154803
                                                      (cdr _i154025_)))
                                                 (declare (not safe))
                                                 (cons __tmp154803 '()))))
                                          (declare (not safe))
                                          (cons __tmp154804 __tmp154802))))
                                   (declare (not safe))
                                   (cons __tmp154806 __tmp154801))))
                            (declare (not safe))
                            (cons __tmp154809 __tmp154800))))
                     (declare (not safe))
                     (cons '%#struct-unchecked-set! __tmp154799))))
              (declare (not safe))
              (cons __tmp154798 _r154026_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (foldl1 __tmp154797
                                                     '()
                                                     _initializers153986_))))
                                      (declare (not safe))
                                      (foldr1 cons __tmp154812 __tmp154796))))
                               (declare (not safe))
                               (cons '%#begin __tmp154795))))
                        (declare (not safe))
                        (cons __tmp154794 '()))))
                 (declare (not safe))
                 (cons __tmp154815 __tmp154793))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp154792))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp154791
                                            _stx153945_))))
                                      (___kont154518154519_
                                       (lambda ()
                                         (let ((__tmp154819
                                                (let ((__tmp154820
                                                       (let ((__tmp154834
                                                              (let ((__tmp154835
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp154837
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj153981_ '())))
                                   (__tmp154836
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object153958_ '()))))
                               (declare (not safe))
                               (cons __tmp154837 __tmp154836))))
                        (declare (not safe))
                        (cons __tmp154835 '())))
                     (__tmp154821
                      (let ((__tmp154822
                             (let ((__tmp154823
                                    (let ((__tmp154827
                                           (let ((__tmp154828
                                                  (let ((__tmp154832
                                                         (let ((__tmp154833
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons 'class-instance-init! '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp154833)))
                (__tmp154829
                 (let ((__tmp154830
                        (let ((__tmp154831
                               (let ()
                                 (declare (not safe))
                                 (cons _$obj153981_ '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp154831))))
                   (declare (not safe))
                   (cons __tmp154830 _args153956_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp154832
                                                          __tmp154829))))
                                             (declare (not safe))
                                             (cons '%#call __tmp154828)))
                                          (__tmp154824
                                           (let ((__tmp154825
                                                  (let ((__tmp154826
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj153981_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp154826))))
                                             (declare (not safe))
                                             (cons __tmp154825 '()))))
                                      (declare (not safe))
                                      (cons __tmp154827 __tmp154824))))
                               (declare (not safe))
                               (cons '%#begin __tmp154823))))
                        (declare (not safe))
                        (cons __tmp154822 '()))))
                 (declare (not safe))
                 (cons __tmp154834 __tmp154821))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp154820))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp154819
                                            _stx153945_)))))
                                  (let* ((_g153988154028_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   ___stx154512154513_))
                                                (___kont154516154517_)
                                                (___kont154518154519_))))
                                         (___match154549154550_
                                          (lambda (_e153997154033_
                                                   _hd153996154036_
                                                   _tl153995154038_
                                                   _e154000154041_
                                                   _hd153999154044_
                                                   _tl153998154046_
                                                   _e154003154049_
                                                   _hd154002154052_
                                                   _tl154001154054_
                                                   _e154006154057_
                                                   _hd154005154060_
                                                   _tl154004154062_)
                                            (let ((_L154065_ _tl154004154062_)
                                                  (_L154066_ _hd154005154060_)
                                                  (_L154067_ _hd154002154052_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-keyword?
                                                     _L154067_))
                                                  (___kont154514154515_
                                                   _L154065_
                                                   _L154066_
                                                   _L154067_)
                                                  (___kont154518154519_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx154512154513_))
                                        (let ((_e153997154033_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx154512154513_))))
                                          (let ((_tl153995154038_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e153997154033_)))
                                                (_hd153996154036_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e153997154033_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd153996154036_))
                                                (let ((_e154000154041_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd153996154036_))))
                                                  (let ((_tl153998154046_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e154000154041_)))
                                                        (_hd153999154044_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e154000154041_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd153999154044_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#quote
                                                               _hd153999154044_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl153998154046_))
                        (let ((_e154003154049_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl153998154046_))))
                          (let ((_tl154001154054_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e154003154049_)))
                                (_hd154002154052_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e154003154049_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl154001154054_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl153995154038_))
                                    (let ((_e154006154057_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl153995154038_))))
                                      (let ((_tl154004154062_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e154006154057_)))
                                            (_hd154005154060_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e154006154057_))))
                                        (___match154549154550_
                                         _e153997154033_
                                         _hd153996154036_
                                         _tl153995154038_
                                         _e154000154041_
                                         _hd153999154044_
                                         _tl153998154046_
                                         _e154003154049_
                                         _hd154002154052_
                                         _tl154001154054_
                                         _e154006154057_
                                         _hd154005154060_
                                         _tl154004154062_)))
                                    (___kont154518154519_))
                                (___kont154518154519_))))
                        (___kont154518154519_))
                    (___kont154518154519_))
                (___kont154518154519_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont154518154519_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g153988154028_))))))))))))))))
    (define gxc#!constructor::optimize-call::specialize
      (lambda (__klass154435 __method-table154436)
        (let ((__id154437
               (let ((__slot154438
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154435 'id))))
                 (if __slot154438
                     __slot154438
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self153943_ _ctx153944_ _stx153945_ _args153946_)
            (let* ((_klass153948_
                    (let ((__tmp154960
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _self153943_
                              __id154437
                              __klass154435
                              '#f))))
                      (declare (not safe))
                      (gxc#optimizer-resolve-class _stx153945_ __tmp154960)))
                   (_fields153950_
                    (length (##structure-ref
                             _klass153948_
                             '5
                             gxc#!class::t
                             '#f)))
                   (_args153956_
                    (map (lambda (_g153951153953_)
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _ctx153944_ _g153951153953_)))
                         _args153946_))
                   (_inline-make-object153958_
                    (let ((__tmp154961
                           (let ((__tmp154967
                                  (let ((__tmp154968
                                         (let ()
                                           (declare (not safe))
                                           (cons '##structure '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp154968)))
                                 (__tmp154962
                                  (let ((__tmp154964
                                         (let ((__tmp154965
                                                (let ((__tmp154966
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self153943_
                                                          __id154437
                                                          __klass154435
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp154966 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp154965)))
                                        (__tmp154963
                                         (make-list
                                          _fields153950_
                                          '(%#quote #f))))
                                    (declare (not safe))
                                    (cons __tmp154964 __tmp154963))))
                             (declare (not safe))
                             (cons __tmp154967 __tmp154962))))
                      (declare (not safe))
                      (cons '%#call __tmp154961))))
              (let ((_$e153961_
                     (##structure-ref _klass153948_ '6 gxc#!class::t '#f)))
                (if _$e153961_
                    ((lambda (_ctor153964_)
                       (let ((_$obj153966_
                              (let ((__tmp155069 (gensym '__obj)))
                                (declare (not safe))
                                (make-symbol__0 __tmp155069)))
                             (_ctor-impl153967_
                              (let ()
                                (declare (not safe))
                                (gxc#!class-lookup-method
                                 _klass153948_
                                 _ctor153964_))))
                         (let ((__tmp155070
                                (let ((__tmp155071
                                       (let ((__tmp155139
                                              (let ((__tmp155140
                                                     (let ((__tmp155142
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$obj153966_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp155141
                    (let ()
                      (declare (not safe))
                      (cons _inline-make-object153958_ '()))))
               (declare (not safe))
               (cons __tmp155142 __tmp155141))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp155140 '())))
                                             (__tmp155072
                                              (let ((__tmp155073
                                                     (let ((__tmp155074
                                                            (let ((__tmp155078
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _ctor-impl153967_
                               (let ((__tmp155133
                                      (let ((__tmp155137
                                             (let ((__tmp155138
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor-impl153967_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp155138)))
                                            (__tmp155134
                                             (let ((__tmp155135
                                                    (let ((__tmp155136
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$obj153966_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp155136))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp155135
                                                     _args153956_))))
                                        (declare (not safe))
                                        (cons __tmp155137 __tmp155134))))
                                 (declare (not safe))
                                 (cons '%#call __tmp155133))
                               (let* ((_$ctor153969_
                                       (let ((__tmp155079
                                              (gensym '__constructor)))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp155079)))
                                      (__tmp155080
                                       (let ((__tmp155115
                                              (let ((__tmp155116
                                                     (let ((__tmp155132
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$ctor153969_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp155117
                    (let ((__tmp155118
                           (let ((__tmp155119
                                  (let ((__tmp155130
                                         (let ((__tmp155131
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'direct-method-ref
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp155131)))
                                        (__tmp155120
                                         (let ((__tmp155127
                                                (let ((__tmp155128
                                                       (let ((__tmp155129
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self153943_
                         __id154437
                         __klass154435
                         '#f))))
                 (declare (not safe))
                 (cons __tmp155129 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp155128)))
                                               (__tmp155121
                                                (let ((__tmp155125
                                                       (let ((__tmp155126
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj153966_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp155126)))
              (__tmp155122
               (let ((__tmp155123
                      (let ((__tmp155124
                             (let ()
                               (declare (not safe))
                               (cons _ctor153964_ '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp155124))))
                 (declare (not safe))
                 (cons __tmp155123 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp155125
                                                        __tmp155122))))
                                           (declare (not safe))
                                           (cons __tmp155127 __tmp155121))))
                                    (declare (not safe))
                                    (cons __tmp155130 __tmp155120))))
                             (declare (not safe))
                             (cons '%#call __tmp155119))))
                      (declare (not safe))
                      (cons __tmp155118 '()))))
               (declare (not safe))
               (cons __tmp155132 __tmp155117))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp155116 '())))
                                             (__tmp155081
                                              (let ((__tmp155082
                                                     (let ((__tmp155083
                                                            (let ((__tmp155113
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155114
                                  (let ()
                                    (declare (not safe))
                                    (cons _$ctor153969_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp155114)))
                          (__tmp155084
                           (let ((__tmp155106
                                  (let ((__tmp155107
                                         (let ((__tmp155111
                                                (let ((__tmp155112
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$ctor153969_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp155112)))
                                               (__tmp155108
                                                (let ((__tmp155109
                                                       (let ((__tmp155110
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj153966_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp155110))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp155109
                                                        _args153956_))))
                                           (declare (not safe))
                                           (cons __tmp155111 __tmp155108))))
                                    (declare (not safe))
                                    (cons '%#call __tmp155107)))
                                 (__tmp155085
                                  (let ((__tmp155086
                                         (let ((__tmp155087
                                                (let ((__tmp155104
                                                       (let ((__tmp155105
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'error '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp155105)))
              (__tmp155088
               (let ((__tmp155102
                      (let ((__tmp155103
                             (let ()
                               (declare (not safe))
                               (cons '"missing constructor method implementation"
                                     '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp155103)))
                     (__tmp155089
                      (let ((__tmp155100
                             (let ((__tmp155101
                                    (let ()
                                      (declare (not safe))
                                      (cons 'class: '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp155101)))
                            (__tmp155090
                             (let ((__tmp155097
                                    (let ((__tmp155098
                                           (let ((__tmp155099
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self153943_
                                                     __id154437
                                                     __klass154435
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp155099 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp155098)))
                                   (__tmp155091
                                    (let ((__tmp155095
                                           (let ((__tmp155096
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'method: '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp155096)))
                                          (__tmp155092
                                           (let ((__tmp155093
                                                  (let ((__tmp155094
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _ctor153964_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#quote
                                                          __tmp155094))))
                                             (declare (not safe))
                                             (cons __tmp155093 '()))))
                                      (declare (not safe))
                                      (cons __tmp155095 __tmp155092))))
                               (declare (not safe))
                               (cons __tmp155097 __tmp155091))))
                        (declare (not safe))
                        (cons __tmp155100 __tmp155090))))
                 (declare (not safe))
                 (cons __tmp155102 __tmp155089))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp155104
                                                        __tmp155088))))
                                           (declare (not safe))
                                           (cons '%#call __tmp155087))))
                                    (declare (not safe))
                                    (cons __tmp155086 '()))))
                             (declare (not safe))
                             (cons __tmp155106 __tmp155085))))
                      (declare (not safe))
                      (cons __tmp155113 __tmp155084))))
               (declare (not safe))
               (cons '%#if __tmp155083))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp155082 '()))))
                                         (declare (not safe))
                                         (cons __tmp155115 __tmp155081))))
                                 (declare (not safe))
                                 (cons '%#let-values __tmp155080))))
                          (__tmp155075
                           (let ((__tmp155076
                                  (let ((__tmp155077
                                         (let ()
                                           (declare (not safe))
                                           (cons _$obj153966_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp155077))))
                             (declare (not safe))
                             (cons __tmp155076 '()))))
                      (declare (not safe))
                      (cons __tmp155078 __tmp155075))))
               (declare (not safe))
               (cons '%#begin __tmp155074))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp155073 '()))))
                                         (declare (not safe))
                                         (cons __tmp155139 __tmp155072))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp155071))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp155070 _stx153945_))))
                     _$e153961_)
                    (let ((_$e153971_
                           (##structure-ref
                            _klass153948_
                            '10
                            gxc#!class::t
                            '#f)))
                      (if _$e153971_
                          ((lambda (_metaclass153974_)
                             (let* ((_$obj153976_
                                     (let ((__tmp155031 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp155031)))
                                    (_metakons153978_
                                     (let ((__tmp155032
                                            (let ()
                                              (declare (not safe))
                                              (gxc#optimizer-resolve-class
                                               _stx153945_
                                               _metaclass153974_))))
                                       (declare (not safe))
                                       (gxc#!class-lookup-method
                                        __tmp155032
                                        'instance-init!))))
                               (let ((__tmp155033
                                      (let ((__tmp155034
                                             (let ((__tmp155065
                                                    (let ((__tmp155066
                                                           (let ((__tmp155068
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj153976_ '())))
                         (__tmp155067
                          (let ()
                            (declare (not safe))
                            (cons _inline-make-object153958_ '()))))
                     (declare (not safe))
                     (cons __tmp155068 __tmp155067))))
              (declare (not safe))
              (cons __tmp155066 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp155035
                                                    (let ((__tmp155036
                                                           (let ((__tmp155037
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp155041
                                 (if _metakons153978_
                                     (let ((__tmp155055
                                            (let ((__tmp155063
                                                   (let ((__tmp155064
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _metakons153978_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155064)))
                                                  (__tmp155056
                                                   (let ((__tmp155060
                                                          (let ((__tmp155061
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp155062
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self153943_
                                   __id154437
                                   __klass154435
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp155062 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp155061)))
                 (__tmp155057
                  (let ((__tmp155058
                         (let ((__tmp155059
                                (let ()
                                  (declare (not safe))
                                  (cons _$obj153976_ '()))))
                           (declare (not safe))
                           (cons '%#ref __tmp155059))))
                    (declare (not safe))
                    (cons __tmp155058 _args153956_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp155060
                                                           __tmp155057))))
                                              (declare (not safe))
                                              (cons __tmp155063 __tmp155056))))
                                       (declare (not safe))
                                       (cons '%#call __tmp155055))
                                     (let ((__tmp155042
                                            (let ((__tmp155053
                                                   (let ((__tmp155054
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'call-method
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155054)))
                                                  (__tmp155043
                                                   (let ((__tmp155050
                                                          (let ((__tmp155051
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp155052
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self153943_
                                   __id154437
                                   __klass154435
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp155052 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp155051)))
                 (__tmp155044
                  (let ((__tmp155048
                         (let ((__tmp155049
                                (let ()
                                  (declare (not safe))
                                  (cons 'instance-init! '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp155049)))
                        (__tmp155045
                         (let ((__tmp155046
                                (let ((__tmp155047
                                       (let ()
                                         (declare (not safe))
                                         (cons _$obj153976_ '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp155047))))
                           (declare (not safe))
                           (cons __tmp155046 _args153956_))))
                    (declare (not safe))
                    (cons __tmp155048 __tmp155045))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp155050
                                                           __tmp155044))))
                                              (declare (not safe))
                                              (cons __tmp155053 __tmp155043))))
                                       (declare (not safe))
                                       (cons '%#call __tmp155042))))
                                (__tmp155038
                                 (let ((__tmp155039
                                        (let ((__tmp155040
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$obj153976_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp155040))))
                                   (declare (not safe))
                                   (cons __tmp155039 '()))))
                            (declare (not safe))
                            (cons __tmp155041 __tmp155038))))
                     (declare (not safe))
                     (cons '%#begin __tmp155037))))
              (declare (not safe))
              (cons __tmp155036 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp155065
                                                     __tmp155035))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp155034))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp155033
                                  _stx153945_))))
                           _$e153971_)
                          (if (##structure-ref
                               _klass153948_
                               '7
                               gxc#!class::t
                               '#f)
                              (if (fx= (length _args153956_) _fields153950_)
                                  (let ((__tmp155023
                                         (let ((__tmp155024
                                                (let ((__tmp155029
                                                       (let ((__tmp155030
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '##structure '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp155030)))
              (__tmp155025
               (let ((__tmp155026
                      (let ((__tmp155027
                             (let ((__tmp155028
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _self153943_
                                       __id154437
                                       __klass154435
                                       '#f))))
                               (declare (not safe))
                               (cons __tmp155028 '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp155027))))
                 (declare (not safe))
                 (cons __tmp155026 _args153956_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp155029
                                                        __tmp155025))))
                                           (declare (not safe))
                                           (cons '%#call __tmp155024))))
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp155023
                                     _stx153945_))
                                  (let ((__tmp155022
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _self153943_
                                            __id154437
                                            __klass154435
                                            '#f)))
                                        (__tmp155021
                                         (length (##structure-ref
                                                  _klass153948_
                                                  '5
                                                  gxc#!class::t
                                                  '#f))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"illegal struct constructor application; arity mismatch"
                                     _stx153945_
                                     __tmp155022
                                     __tmp155021)))
                              (let ((_$obj153981_
                                     (let ((__tmp154969 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp154969))))
                                (let _lp153983_ ((_rest153985_ _args153956_)
                                                 (_initializers153986_ '()))
                                  (let* ((___stx154554154555_ _rest153985_)
                                         (_g153990154011_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               ___stx154554154555_)))))
                                    (let ((___kont154556154557_
                                           (lambda (_L154065_
                                                    _L154066_
                                                    _L154067_)
                                             (let* ((_slot154098_
                                                     (let ((__tmp154970
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _L154067_))))
                                                       (declare (not safe))
                                                       (keyword->symbol
                                                        __tmp154970)))
                                                    (_off154100_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass153948_
                                                        _slot154098_))))
                                               (if _off154100_
                                                   (let ((__tmp154972
                                                          (let ((__tmp154973
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _off154100_ _L154066_))))
                    (declare (not safe))
                    (cons __tmp154973 _initializers153986_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp153983_
                                                      _L154065_
                                                      __tmp154972))
                                                   (let ((__tmp154971
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _self153943_
                                                             __id154437
                                                             __klass154435
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"unknown slot"
                                                      _stx153945_
                                                      __tmp154971
                                                      _slot154098_))))))
                                          (___kont154558154559_
                                           (lambda ()
                                             (let ((__tmp154974
                                                    (let ((__tmp154975
                                                           (let ((__tmp154998
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp154999
                                 (let ((__tmp155001
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj153981_ '())))
                                       (__tmp155000
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object153958_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp155001 __tmp155000))))
                            (declare (not safe))
                            (cons __tmp154999 '())))
                         (__tmp154976
                          (let ((__tmp154977
                                 (let ((__tmp154978
                                        (let ((__tmp154995
                                               (let ((__tmp154996
                                                      (let ((__tmp154997
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj153981_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp154997))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp154996 '())))
                                              (__tmp154979
                                               (let ((__tmp154980
                                                      (lambda (_i154025_
                                                               _r154026_)
                                                        (let ((__tmp154981
                                                               (let ((__tmp154982
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp154992
                                     (let ((__tmp154993
                                            (let ((__tmp154994
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self153943_
                                                      __id154437
                                                      __klass154435
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp154994 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp154993)))
                                    (__tmp154983
                                     (let ((__tmp154989
                                            (let ((__tmp154990
                                                   (let ((__tmp154991
                                                          (car _i154025_)))
                                                     (declare (not safe))
                                                     (cons __tmp154991 '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp154990)))
                                           (__tmp154984
                                            (let ((__tmp154987
                                                   (let ((__tmp154988
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj153981_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp154988)))
                                                  (__tmp154985
                                                   (let ((__tmp154986
                                                          (cdr _i154025_)))
                                                     (declare (not safe))
                                                     (cons __tmp154986 '()))))
                                              (declare (not safe))
                                              (cons __tmp154987 __tmp154985))))
                                       (declare (not safe))
                                       (cons __tmp154989 __tmp154984))))
                                (declare (not safe))
                                (cons __tmp154992 __tmp154983))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-set! __tmp154982))))
                  (declare (not safe))
                  (cons __tmp154981 _r154026_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl1 __tmp154980
                                                         '()
                                                         _initializers153986_))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp154995
                                                  __tmp154979))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp154978))))
                            (declare (not safe))
                            (cons __tmp154977 '()))))
                     (declare (not safe))
                     (cons __tmp154998 __tmp154976))))
              (declare (not safe))
              (cons '%#let-values __tmp154975))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp154974
                                                _stx153945_))))
                                          (___kont154560154561_
                                           (lambda ()
                                             (let ((__tmp155002
                                                    (let ((__tmp155003
                                                           (let ((__tmp155017
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp155018
                                 (let ((__tmp155020
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj153981_ '())))
                                       (__tmp155019
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object153958_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp155020 __tmp155019))))
                            (declare (not safe))
                            (cons __tmp155018 '())))
                         (__tmp155004
                          (let ((__tmp155005
                                 (let ((__tmp155006
                                        (let ((__tmp155010
                                               (let ((__tmp155011
                                                      (let ((__tmp155015
                                                             (let ((__tmp155016
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'class-instance-init! '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp155016)))
                    (__tmp155012
                     (let ((__tmp155013
                            (let ((__tmp155014
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj153981_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp155014))))
                       (declare (not safe))
                       (cons __tmp155013 _args153956_))))
                (declare (not safe))
                (cons __tmp155015 __tmp155012))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp155011)))
                                              (__tmp155007
                                               (let ((__tmp155008
                                                      (let ((__tmp155009
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj153981_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp155009))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp155008 '()))))
                                          (declare (not safe))
                                          (cons __tmp155010 __tmp155007))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp155006))))
                            (declare (not safe))
                            (cons __tmp155005 '()))))
                     (declare (not safe))
                     (cons __tmp155017 __tmp155004))))
              (declare (not safe))
              (cons '%#let-values __tmp155003))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp155002
                                                _stx153945_)))))
                                      (let* ((_g153988154028_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       ___stx154554154555_))
                                                    (___kont154558154559_)
                                                    (___kont154560154561_))))
                                             (___match154591154592_
                                              (lambda (_e153997154033_
                                                       _hd153996154036_
                                                       _tl153995154038_
                                                       _e154000154041_
                                                       _hd153999154044_
                                                       _tl153998154046_
                                                       _e154003154049_
                                                       _hd154002154052_
                                                       _tl154001154054_
                                                       _e154006154057_
                                                       _hd154005154060_
                                                       _tl154004154062_)
                                                (let ((_L154065_
                                                       _tl154004154062_)
                                                      (_L154066_
                                                       _hd154005154060_)
                                                      (_L154067_
                                                       _hd154002154052_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-keyword?
                                                         _L154067_))
                                                      (___kont154556154557_
                                                       _L154065_
                                                       _L154066_
                                                       _L154067_)
                                                      (___kont154560154561_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               ___stx154554154555_))
                                            (let ((_e153997154033_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      ___stx154554154555_))))
                                              (let ((_tl153995154038_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e153997154033_)))
                                                    (_hd153996154036_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e153997154033_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd153996154036_))
                                                    (let ((_e154000154041_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd153996154036_))))
                                                      (let ((_tl153998154046_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e154000154041_)))
                    (_hd153999154044_
                     (let () (declare (not safe)) (##car _e154000154041_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd153999154044_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd153999154044_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl153998154046_))
                            (let ((_e154003154049_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl153998154046_))))
                              (let ((_tl154001154054_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e154003154049_)))
                                    (_hd154002154052_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e154003154049_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl154001154054_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl153995154038_))
                                        (let ((_e154006154057_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl153995154038_))))
                                          (let ((_tl154004154062_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e154006154057_)))
                                                (_hd154005154060_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e154006154057_))))
                                            (___match154591154592_
                                             _e153997154033_
                                             _hd153996154036_
                                             _tl153995154038_
                                             _e154000154041_
                                             _hd153999154044_
                                             _tl153998154046_
                                             _e154003154049_
                                             _hd154002154052_
                                             _tl154001154054_
                                             _e154006154057_
                                             _hd154005154060_
                                             _tl154004154062_)))
                                        (___kont154560154561_))
                                    (___kont154560154561_))))
                            (___kont154560154561_))
                        (___kont154560154561_))
                    (___kont154560154561_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont154560154561_))))
                                            (let ()
                                              (declare (not safe))
                                              (_g153988154028_))))))))))))))))))
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
      (lambda (_self153765_ _ctx153766_ _stx153767_ _args153768_)
        (let* ((_g153770153780_
                (lambda (_g153771153777_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g153771153777_))))
               (_g153769153818_
                (lambda (_g153771153783_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g153771153783_))
                      (let ((_e153775153785_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g153771153783_))))
                        (let ((_hd153774153788_
                               (let ()
                                 (declare (not safe))
                                 (##car _e153775153785_)))
                              (_tl153773153790_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e153775153785_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl153773153790_))
                              ((lambda (_L153793_)
                                 (let* ((_klass153804_
                                         (let ((__tmp155143
                                                (##structure-ref
                                                 _self153765_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx153767_
                                            __tmp155143)))
                                        (_field153806_
                                         (let ((__tmp155144
                                                (##structure-ref
                                                 _self153765_
                                                 '2
                                                 gxc#!accessor::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _klass153804_
                                            __tmp155144)))
                                        (_object153808_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _ctx153766_
                                            _L153793_))))
                                   (if (##structure-ref
                                        _klass153804_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp155221
                                              (let ((__tmp155230
                                                     (if (##structure-ref
                                                          _self153765_
                                                          '3
                                                          gxc#!accessor::t
                                                          '#f)
                                                         '%#struct-direct-ref
                                                         '%#struct-unchecked-ref))
                                                    (__tmp155222
                                                     (let ((__tmp155227
                                                            (let ((__tmp155228
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155229
                                  (##structure-ref
                                   _self153765_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp155229 '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp155228)))
                   (__tmp155223
                    (let ((__tmp155225
                           (let ((__tmp155226
                                  (let ()
                                    (declare (not safe))
                                    (cons _field153806_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp155226)))
                          (__tmp155224
                           (let ()
                             (declare (not safe))
                             (cons _object153808_ '()))))
                      (declare (not safe))
                      (cons __tmp155225 __tmp155224))))
               (declare (not safe))
               (cons __tmp155227 __tmp155223))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp155230
                                                      __tmp155222))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp155221
                                          _stx153767_))
                                       (if (##structure-ref
                                            _klass153804_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp155211
                                                  (let ((__tmp155220
                                                         (if (##structure-ref
                                                              _self153765_
                                                              '3
                                                              gxc#!accessor::t
                                                              '#f)
                                                             '%#struct-ref
                                                             '%#struct-unchecked-ref))
                                                        (__tmp155212
                                                         (let ((__tmp155217
                                                                (let ((__tmp155218
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp155219
                                      (##structure-ref
                                       _self153765_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp155219 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp155218)))
                       (__tmp155213
                        (let ((__tmp155215
                               (let ((__tmp155216
                                      (let ()
                                        (declare (not safe))
                                        (cons _field153806_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp155216)))
                              (__tmp155214
                               (let ()
                                 (declare (not safe))
                                 (cons _object153808_ '()))))
                          (declare (not safe))
                          (cons __tmp155215 __tmp155214))))
                   (declare (not safe))
                   (cons __tmp155217 __tmp155213))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp155220
                                                          __tmp155212))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp155211
                                              _stx153767_))
                                           (let ((_$e153811_
                                                  (let ((__tmp155145
                                                         (##structure-ref
                                                          _self153765_
                                                          '2
                                                          gxc#!accessor::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _klass153804_
                                                     __tmp155145))))
                                             (if _$e153811_
                                                 ((lambda (_klass153814_)
                                                    (let ((__tmp155201
                                                           (let ((__tmp155210
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##structure-ref
                               _self153765_
                               '3
                               gxc#!accessor::t
                               '#f)
                              '%#struct-ref
                              '%#struct-unchecked-ref))
                         (__tmp155202
                          (let ((__tmp155207
                                 (let ((__tmp155208
                                        (let ((__tmp155209
                                               (##structure-ref
                                                _self153765_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp155209 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp155208)))
                                (__tmp155203
                                 (let ((__tmp155205
                                        (let ((__tmp155206
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _field153806_ '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp155206)))
                                       (__tmp155204
                                        (let ()
                                          (declare (not safe))
                                          (cons _object153808_ '()))))
                                   (declare (not safe))
                                   (cons __tmp155205 __tmp155204))))
                            (declare (not safe))
                            (cons __tmp155207 __tmp155203))))
                     (declare (not safe))
                     (cons __tmp155210 __tmp155202))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp155201 _stx153767_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e153811_)
                                                 (if (##structure-ref
                                                      _self153765_
                                                      '3
                                                      gxc#!accessor::t
                                                      '#f)
                                                     (let ((__tmp155155
                                                            (let* ((_$obj153816_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp155156 (gensym '__obj)))
                              (declare (not safe))
                              (make-symbol__0 __tmp155156)))
                           (__tmp155157
                            (let ((__tmp155197
                                   (let ((__tmp155198
                                          (let ((__tmp155200
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _$obj153816_ '())))
                                                (__tmp155199
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _object153808_ '()))))
                                            (declare (not safe))
                                            (cons __tmp155200 __tmp155199))))
                                     (declare (not safe))
                                     (cons __tmp155198 '())))
                                  (__tmp155158
                                   (let ((__tmp155159
                                          (let ((__tmp155160
                                                 (let ((__tmp155189
                                                        (let ((__tmp155190
                                                               (let ((__tmp155194
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp155195
                                     (let ((__tmp155196
                                            (##structure-ref
                                             _klass153804_
                                             '1
                                             gxc#!type::t
                                             '#f)))
                                       (declare (not safe))
                                       (cons __tmp155196 '()))))
                                (declare (not safe))
                                (cons '%#quote __tmp155195)))
                             (__tmp155191
                              (let ((__tmp155192
                                     (let ((__tmp155193
                                            (let ()
                                              (declare (not safe))
                                              (cons _$obj153816_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp155193))))
                                (declare (not safe))
                                (cons __tmp155192 '()))))
                         (declare (not safe))
                         (cons __tmp155194 __tmp155191))))
                  (declare (not safe))
                  (cons '%#struct-direct-instance? __tmp155190)))
               (__tmp155161
                (let ((__tmp155178
                       (let ((__tmp155179
                              (let ((__tmp155186
                                     (let ((__tmp155187
                                            (let ((__tmp155188
                                                   (##structure-ref
                                                    _self153765_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp155188 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp155187)))
                                    (__tmp155180
                                     (let ((__tmp155184
                                            (let ((__tmp155185
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field153806_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp155185)))
                                           (__tmp155181
                                            (let ((__tmp155182
                                                   (let ((__tmp155183
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj153816_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155183))))
                                              (declare (not safe))
                                              (cons __tmp155182 '()))))
                                       (declare (not safe))
                                       (cons __tmp155184 __tmp155181))))
                                (declare (not safe))
                                (cons __tmp155186 __tmp155180))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp155179)))
                      (__tmp155162
                       (let ((__tmp155163
                              (let ((__tmp155164
                                     (let ((__tmp155176
                                            (let ((__tmp155177
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'class-slot-ref
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp155177)))
                                           (__tmp155165
                                            (let ((__tmp155173
                                                   (let ((__tmp155174
                                                          (let ((__tmp155175
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref _self153765_ '1 gxc#!type::t '#f)))
                    (declare (not safe))
                    (cons __tmp155175 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155174)))
                                                  (__tmp155166
                                                   (let ((__tmp155171
                                                          (let ((__tmp155172
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj153816_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp155172)))
                 (__tmp155167
                  (let ((__tmp155168
                         (let ((__tmp155169
                                (let ((__tmp155170
                                       (##structure-ref
                                        _self153765_
                                        '2
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (cons __tmp155170 '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp155169))))
                    (declare (not safe))
                    (cons __tmp155168 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp155171
                                                           __tmp155167))))
                                              (declare (not safe))
                                              (cons __tmp155173 __tmp155166))))
                                       (declare (not safe))
                                       (cons __tmp155176 __tmp155165))))
                                (declare (not safe))
                                (cons '%#call __tmp155164))))
                         (declare (not safe))
                         (cons __tmp155163 '()))))
                  (declare (not safe))
                  (cons __tmp155178 __tmp155162))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp155189
                                                         __tmp155161))))
                                            (declare (not safe))
                                            (cons '%#if __tmp155160))))
                                     (declare (not safe))
                                     (cons __tmp155159 '()))))
                              (declare (not safe))
                              (cons __tmp155197 __tmp155158))))
                      (declare (not safe))
                      (cons '%#let-values __tmp155157))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp155155 _stx153767_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp155146
                                                            (let ((__tmp155147
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155153
                                  (let ((__tmp155154
                                         (let ()
                                           (declare (not safe))
                                           (cons 'unchecked-slot-ref '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp155154)))
                                 (__tmp155148
                                  (let ((__tmp155149
                                         (let ((__tmp155150
                                                (let ((__tmp155151
                                                       (let ((__tmp155152
                                                              (##structure-ref
                                                               _self153765_
                                                               '2
                                                               gxc#!accessor::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp155152
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote
                                                        __tmp155151))))
                                           (declare (not safe))
                                           (cons __tmp155150 '()))))
                                    (declare (not safe))
                                    (cons _object153808_ __tmp155149))))
                             (declare (not safe))
                             (cons __tmp155153 __tmp155148))))
                      (declare (not safe))
                      (cons '%#call __tmp155147))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp155146 _stx153767_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _hd153774153788_)
                              (let ()
                                (declare (not safe))
                                (_g153770153780_ _g153771153783_)))))
                      (let ()
                        (declare (not safe))
                        (_g153770153780_ _g153771153783_))))))
          (declare (not safe))
          (_g153769153818_ _args153768_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass154439 __method-table154440)
        (let ((__checked?154441
               (let ((__slot154444
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154439 'checked?))))
                 (if __slot154444
                     __slot154444
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__id154442
               (let ((__slot154445
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154439 'id))))
                 (if __slot154445
                     __slot154445
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__slot154443
               (let ((__slot154446
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154439 'slot))))
                 (if __slot154446
                     __slot154446
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_self153765_ _ctx153766_ _stx153767_ _args153768_)
            (let* ((_g153770153780_
                    (lambda (_g153771153777_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g153771153777_))))
                   (_g153769153818_
                    (lambda (_g153771153783_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g153771153783_))
                          (let ((_e153775153785_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g153771153783_))))
                            (let ((_hd153774153788_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e153775153785_)))
                                  (_tl153773153790_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e153775153785_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl153773153790_))
                                  ((lambda (_L153793_)
                                     (let* ((_klass153804_
                                             (let ((__tmp155231
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self153765_
                                                       __id154442
                                                       __klass154439
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx153767_
                                                __tmp155231)))
                                            (_field153806_
                                             (let ((__tmp155232
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self153765_
                                                       __slot154443
                                                       __klass154439
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _klass153804_
                                                __tmp155232)))
                                            (_object153808_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _ctx153766_
                                                _L153793_))))
                                       (if (##structure-ref
                                            _klass153804_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp155309
                                                  (let ((__tmp155318
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self153765_
                        __checked?154441
                        __klass154439
                        '#f))
                     '%#struct-direct-ref
                     '%#struct-unchecked-ref))
                (__tmp155310
                 (let ((__tmp155315
                        (let ((__tmp155316
                               (let ((__tmp155317
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _self153765_
                                         __id154442
                                         __klass154439
                                         '#f))))
                                 (declare (not safe))
                                 (cons __tmp155317 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp155316)))
                       (__tmp155311
                        (let ((__tmp155313
                               (let ((__tmp155314
                                      (let ()
                                        (declare (not safe))
                                        (cons _field153806_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp155314)))
                              (__tmp155312
                               (let ()
                                 (declare (not safe))
                                 (cons _object153808_ '()))))
                          (declare (not safe))
                          (cons __tmp155313 __tmp155312))))
                   (declare (not safe))
                   (cons __tmp155315 __tmp155311))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp155318
                                                          __tmp155310))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp155309
                                              _stx153767_))
                                           (if (##structure-ref
                                                _klass153804_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp155299
                                                      (let ((__tmp155308
                                                             (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self153765_
                            __checked?154441
                            __klass154439
                            '#f))
                         '%#struct-ref
                         '%#struct-unchecked-ref))
                    (__tmp155300
                     (let ((__tmp155305
                            (let ((__tmp155306
                                   (let ((__tmp155307
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self153765_
                                             __id154442
                                             __klass154439
                                             '#f))))
                                     (declare (not safe))
                                     (cons __tmp155307 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp155306)))
                           (__tmp155301
                            (let ((__tmp155303
                                   (let ((__tmp155304
                                          (let ()
                                            (declare (not safe))
                                            (cons _field153806_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp155304)))
                                  (__tmp155302
                                   (let ()
                                     (declare (not safe))
                                     (cons _object153808_ '()))))
                              (declare (not safe))
                              (cons __tmp155303 __tmp155302))))
                       (declare (not safe))
                       (cons __tmp155305 __tmp155301))))
                (declare (not safe))
                (cons __tmp155308 __tmp155300))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp155299
                                                  _stx153767_))
                                               (let ((_$e153811_
                                                      (let ((__tmp155233
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self153765_
                        __slot154443
                        __klass154439
                        '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _klass153804_ __tmp155233))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e153811_
                                                     ((lambda (_klass153814_)
                                                        (let ((__tmp155289
                                                               (let ((__tmp155298
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self153765_
                                     __checked?154441
                                     __klass154439
                                     '#f))
                                  '%#struct-ref
                                  '%#struct-unchecked-ref))
                             (__tmp155290
                              (let ((__tmp155295
                                     (let ((__tmp155296
                                            (let ((__tmp155297
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self153765_
                                                      __id154442
                                                      __klass154439
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp155297 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp155296)))
                                    (__tmp155291
                                     (let ((__tmp155293
                                            (let ((__tmp155294
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field153806_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp155294)))
                                           (__tmp155292
                                            (let ()
                                              (declare (not safe))
                                              (cons _object153808_ '()))))
                                       (declare (not safe))
                                       (cons __tmp155293 __tmp155292))))
                                (declare (not safe))
                                (cons __tmp155295 __tmp155291))))
                         (declare (not safe))
                         (cons __tmp155298 __tmp155290))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp155289 _stx153767_)))
              _$e153811_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _self153765_
                                                            __checked?154441
                                                            __klass154439
                                                            '#f))
                                                         (let ((__tmp155243
                                                                (let* ((_$obj153816_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp155244 (gensym '__obj)))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp155244)))
                               (__tmp155245
                                (let ((__tmp155285
                                       (let ((__tmp155286
                                              (let ((__tmp155288
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _$obj153816_
                                                             '())))
                                                    (__tmp155287
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _object153808_
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp155288
                                                      __tmp155287))))
                                         (declare (not safe))
                                         (cons __tmp155286 '())))
                                      (__tmp155246
                                       (let ((__tmp155247
                                              (let ((__tmp155248
                                                     (let ((__tmp155277
                                                            (let ((__tmp155278
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155282
                                  (let ((__tmp155283
                                         (let ((__tmp155284
                                                (##structure-ref
                                                 _klass153804_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp155284 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp155283)))
                                 (__tmp155279
                                  (let ((__tmp155280
                                         (let ((__tmp155281
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj153816_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp155281))))
                                    (declare (not safe))
                                    (cons __tmp155280 '()))))
                             (declare (not safe))
                             (cons __tmp155282 __tmp155279))))
                      (declare (not safe))
                      (cons '%#struct-direct-instance? __tmp155278)))
                   (__tmp155249
                    (let ((__tmp155266
                           (let ((__tmp155267
                                  (let ((__tmp155274
                                         (let ((__tmp155275
                                                (let ((__tmp155276
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self153765_
                                                          __id154442
                                                          __klass154439
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp155276 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp155275)))
                                        (__tmp155268
                                         (let ((__tmp155272
                                                (let ((__tmp155273
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field153806_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp155273)))
                                               (__tmp155269
                                                (let ((__tmp155270
                                                       (let ((__tmp155271
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj153816_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp155271))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp155270 '()))))
                                           (declare (not safe))
                                           (cons __tmp155272 __tmp155269))))
                                    (declare (not safe))
                                    (cons __tmp155274 __tmp155268))))
                             (declare (not safe))
                             (cons '%#struct-unchecked-ref __tmp155267)))
                          (__tmp155250
                           (let ((__tmp155251
                                  (let ((__tmp155252
                                         (let ((__tmp155264
                                                (let ((__tmp155265
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-slot-ref
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp155265)))
                                               (__tmp155253
                                                (let ((__tmp155261
                                                       (let ((__tmp155262
                                                              (let ((__tmp155263
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self153765_
                                __id154442
                                __klass154439
                                '#f))))
                        (declare (not safe))
                        (cons __tmp155263 '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp155262)))
              (__tmp155254
               (let ((__tmp155259
                      (let ((__tmp155260
                             (let ()
                               (declare (not safe))
                               (cons _$obj153816_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp155260)))
                     (__tmp155255
                      (let ((__tmp155256
                             (let ((__tmp155257
                                    (let ((__tmp155258
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _self153765_
                                              __slot154443
                                              __klass154439
                                              '#f))))
                                      (declare (not safe))
                                      (cons __tmp155258 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp155257))))
                        (declare (not safe))
                        (cons __tmp155256 '()))))
                 (declare (not safe))
                 (cons __tmp155259 __tmp155255))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp155261
                                                        __tmp155254))))
                                           (declare (not safe))
                                           (cons __tmp155264 __tmp155253))))
                                    (declare (not safe))
                                    (cons '%#call __tmp155252))))
                             (declare (not safe))
                             (cons __tmp155251 '()))))
                      (declare (not safe))
                      (cons __tmp155266 __tmp155250))))
               (declare (not safe))
               (cons __tmp155277 __tmp155249))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#if __tmp155248))))
                                         (declare (not safe))
                                         (cons __tmp155247 '()))))
                                  (declare (not safe))
                                  (cons __tmp155285 __tmp155246))))
                          (declare (not safe))
                          (cons '%#let-values __tmp155245))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp155243 _stx153767_))
                 (let ((__tmp155234
                        (let ((__tmp155235
                               (let ((__tmp155241
                                      (let ((__tmp155242
                                             (let ()
                                               (declare (not safe))
                                               (cons 'unchecked-slot-ref
                                                     '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp155242)))
                                     (__tmp155236
                                      (let ((__tmp155237
                                             (let ((__tmp155238
                                                    (let ((__tmp155239
                                                           (let ((__tmp155240
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _self153765_
                             __slot154443
                             __klass154439
                             '#f))))
                     (declare (not safe))
                     (cons __tmp155240 '()))))
              (declare (not safe))
              (cons '%#quote __tmp155239))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp155238 '()))))
                                        (declare (not safe))
                                        (cons _object153808_ __tmp155237))))
                                 (declare (not safe))
                                 (cons __tmp155241 __tmp155236))))
                          (declare (not safe))
                          (cons '%#call __tmp155235))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp155234 _stx153767_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd153774153788_)
                                  (let ()
                                    (declare (not safe))
                                    (_g153770153780_ _g153771153783_)))))
                          (let ()
                            (declare (not safe))
                            (_g153770153780_ _g153771153783_))))))
              (declare (not safe))
              (_g153769153818_ _args153768_))))))
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
      (lambda (_self153569_ _ctx153570_ _stx153571_ _args153572_)
        (let* ((_g153574153588_
                (lambda (_g153575153585_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g153575153585_))))
               (_g153573153640_
                (lambda (_g153575153591_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g153575153591_))
                      (let ((_e153580153593_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g153575153591_))))
                        (let ((_hd153579153596_
                               (let ()
                                 (declare (not safe))
                                 (##car _e153580153593_)))
                              (_tl153578153598_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e153580153593_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl153578153598_))
                              (let ((_e153583153601_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl153578153598_))))
                                (let ((_hd153582153604_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e153583153601_)))
                                      (_tl153581153606_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e153583153601_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl153581153606_))
                                      ((lambda (_L153609_ _L153610_)
                                         (let* ((_klass153624_
                                                 (let ((__tmp155319
                                                        (##structure-ref
                                                         _self153569_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _stx153571_
                                                    __tmp155319)))
                                                (_field153626_
                                                 (let ((__tmp155320
                                                        (##structure-ref
                                                         _self153569_
                                                         '2
                                                         gxc#!mutator::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass153624_
                                                    __tmp155320)))
                                                (_object153628_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _ctx153570_
                                                    _L153610_)))
                                                (_value153630_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _ctx153570_
                                                    _L153609_))))
                                           (if (##structure-ref
                                                _klass153624_
                                                '8
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp155402
                                                      (let ((__tmp155412
                                                             (if (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _self153569_
                          '3
                          gxc#!mutator::t
                          '#f)
                         '%#struct-direct-set!
                         '%#struct-unchecked-set!))
                    (__tmp155403
                     (let ((__tmp155409
                            (let ((__tmp155410
                                   (let ((__tmp155411
                                          (##structure-ref
                                           _self153569_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp155411 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp155410)))
                           (__tmp155404
                            (let ((__tmp155407
                                   (let ((__tmp155408
                                          (let ()
                                            (declare (not safe))
                                            (cons _field153626_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp155408)))
                                  (__tmp155405
                                   (let ((__tmp155406
                                          (let ()
                                            (declare (not safe))
                                            (cons _value153630_ '()))))
                                     (declare (not safe))
                                     (cons _object153628_ __tmp155406))))
                              (declare (not safe))
                              (cons __tmp155407 __tmp155405))))
                       (declare (not safe))
                       (cons __tmp155409 __tmp155404))))
                (declare (not safe))
                (cons __tmp155412 __tmp155403))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp155402
                                                  _stx153571_))
                                               (if (##structure-ref
                                                    _klass153624_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp155391
                                                          (let ((__tmp155401
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##structure-ref
                              _self153569_
                              '3
                              gxc#!mutator::t
                              '#f)
                             '%#struct-set!
                             '%#struct-unchecked-set!))
                        (__tmp155392
                         (let ((__tmp155398
                                (let ((__tmp155399
                                       (let ((__tmp155400
                                              (##structure-ref
                                               _self153569_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp155400 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp155399)))
                               (__tmp155393
                                (let ((__tmp155396
                                       (let ((__tmp155397
                                              (let ()
                                                (declare (not safe))
                                                (cons _field153626_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp155397)))
                                      (__tmp155394
                                       (let ((__tmp155395
                                              (let ()
                                                (declare (not safe))
                                                (cons _value153630_ '()))))
                                         (declare (not safe))
                                         (cons _object153628_ __tmp155395))))
                                  (declare (not safe))
                                  (cons __tmp155396 __tmp155394))))
                           (declare (not safe))
                           (cons __tmp155398 __tmp155393))))
                    (declare (not safe))
                    (cons __tmp155401 __tmp155392))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp155391
                                                      _stx153571_))
                                                   (let ((_$e153633_
                                                          (let ((__tmp155321
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref
                          _self153569_
                          '2
                          gxc#!mutator::t
                          '#f)))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct _klass153624_ __tmp155321))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e153633_
                                                         ((lambda (_klass153636_)
                                                            (let ((__tmp155380
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155390
                                  (if (##structure-ref
                                       _self153569_
                                       '3
                                       gxc#!mutator::t
                                       '#f)
                                      '%#struct-set!
                                      '%#struct-unchecked-set!))
                                 (__tmp155381
                                  (let ((__tmp155387
                                         (let ((__tmp155388
                                                (let ((__tmp155389
                                                       (##structure-ref
                                                        _self153569_
                                                        '1
                                                        gxc#!type::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp155389 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp155388)))
                                        (__tmp155382
                                         (let ((__tmp155385
                                                (let ((__tmp155386
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field153626_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp155386)))
                                               (__tmp155383
                                                (let ((__tmp155384
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _value153630_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons _object153628_
                                                        __tmp155384))))
                                           (declare (not safe))
                                           (cons __tmp155385 __tmp155383))))
                                    (declare (not safe))
                                    (cons __tmp155387 __tmp155382))))
                             (declare (not safe))
                             (cons __tmp155390 __tmp155381))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp155380 _stx153571_)))
                  _$e153633_)
                 (if (##structure-ref _self153569_ '3 gxc#!mutator::t '#f)
                     (let ((__tmp155332
                            (let* ((_$obj153638_
                                    (let ((__tmp155333 (gensym '__obj)))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp155333)))
                                   (__tmp155334
                                    (let ((__tmp155376
                                           (let ((__tmp155377
                                                  (let ((__tmp155379
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj153638_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp155378
                 (let () (declare (not safe)) (cons _object153628_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp155379
                                                          __tmp155378))))
                                             (declare (not safe))
                                             (cons __tmp155377 '())))
                                          (__tmp155335
                                           (let ((__tmp155336
                                                  (let ((__tmp155337
                                                         (let ((__tmp155368
                                                                (let ((__tmp155369
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp155373
                                      (let ((__tmp155374
                                             (let ((__tmp155375
                                                    (##structure-ref
                                                     _klass153624_
                                                     '1
                                                     gxc#!type::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp155375 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp155374)))
                                     (__tmp155370
                                      (let ((__tmp155371
                                             (let ((__tmp155372
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj153638_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp155372))))
                                        (declare (not safe))
                                        (cons __tmp155371 '()))))
                                 (declare (not safe))
                                 (cons __tmp155373 __tmp155370))))
                          (declare (not safe))
                          (cons '%#struct-direct-instance? __tmp155369)))
                       (__tmp155338
                        (let ((__tmp155356
                               (let ((__tmp155357
                                      (let ((__tmp155365
                                             (let ((__tmp155366
                                                    (let ((__tmp155367
                                                           (##structure-ref
                                                            _self153569_
                                                            '1
                                                            gxc#!type::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (cons __tmp155367 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp155366)))
                                            (__tmp155358
                                             (let ((__tmp155363
                                                    (let ((__tmp155364
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field153626_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp155364)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp155359
                                                    (let ((__tmp155361
                                                           (let ((__tmp155362
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj153638_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp155362)))
                  (__tmp155360
                   (let () (declare (not safe)) (cons _value153630_ '()))))
              (declare (not safe))
              (cons __tmp155361 __tmp155360))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp155363
                                                     __tmp155359))))
                                        (declare (not safe))
                                        (cons __tmp155365 __tmp155358))))
                                 (declare (not safe))
                                 (cons '%#struct-unchecked-set! __tmp155357)))
                              (__tmp155339
                               (let ((__tmp155340
                                      (let ((__tmp155341
                                             (let ((__tmp155354
                                                    (let ((__tmp155355
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp155355)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp155342
                                                    (let ((__tmp155351
                                                           (let ((__tmp155352
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp155353
                                 (##structure-ref
                                  _self153569_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (cons __tmp155353 '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp155352)))
                  (__tmp155343
                   (let ((__tmp155349
                          (let ((__tmp155350
                                 (let ()
                                   (declare (not safe))
                                   (cons _$obj153638_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp155350)))
                         (__tmp155344
                          (let ((__tmp155346
                                 (let ((__tmp155347
                                        (let ((__tmp155348
                                               (##structure-ref
                                                _self153569_
                                                '2
                                                gxc#!mutator::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp155348 '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp155347)))
                                (__tmp155345
                                 (let ()
                                   (declare (not safe))
                                   (cons _value153630_ '()))))
                            (declare (not safe))
                            (cons __tmp155346 __tmp155345))))
                     (declare (not safe))
                     (cons __tmp155349 __tmp155344))))
              (declare (not safe))
              (cons __tmp155351 __tmp155343))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp155354
                                                     __tmp155342))))
                                        (declare (not safe))
                                        (cons '%#call __tmp155341))))
                                 (declare (not safe))
                                 (cons __tmp155340 '()))))
                          (declare (not safe))
                          (cons __tmp155356 __tmp155339))))
                   (declare (not safe))
                   (cons __tmp155368 __tmp155338))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#if __tmp155337))))
                                             (declare (not safe))
                                             (cons __tmp155336 '()))))
                                      (declare (not safe))
                                      (cons __tmp155376 __tmp155335))))
                              (declare (not safe))
                              (cons '%#let-values __tmp155334))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp155332 _stx153571_))
                     (let ((__tmp155322
                            (let ((__tmp155323
                                   (let ((__tmp155330
                                          (let ((__tmp155331
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'unchecked-slot-set!
                                                         '()))))
                                            (declare (not safe))
                                            (cons '%#ref __tmp155331)))
                                         (__tmp155324
                                          (let ((__tmp155325
                                                 (let ((__tmp155327
                                                        (let ((__tmp155328
                                                               (let ((__tmp155329
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##structure-ref
                               _self153569_
                               '2
                               gxc#!mutator::t
                               '#f)))
                         (declare (not safe))
                         (cons __tmp155329 '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp155328)))
               (__tmp155326
                (let () (declare (not safe)) (cons _value153630_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp155327
                                                         __tmp155326))))
                                            (declare (not safe))
                                            (cons _object153628_
                                                  __tmp155325))))
                                     (declare (not safe))
                                     (cons __tmp155330 __tmp155324))))
                              (declare (not safe))
                              (cons '%#call __tmp155323))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp155322 _stx153571_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd153582153604_
                                       _hd153579153596_)
                                      (let ()
                                        (declare (not safe))
                                        (_g153574153588_ _g153575153591_)))))
                              (let ()
                                (declare (not safe))
                                (_g153574153588_ _g153575153591_)))))
                      (let ()
                        (declare (not safe))
                        (_g153574153588_ _g153575153591_))))))
          (declare (not safe))
          (_g153573153640_ _args153572_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass154447 __method-table154448)
        (let ((__checked?154449
               (let ((__slot154452
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154447 'checked?))))
                 (if __slot154452
                     __slot154452
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__id154450
               (let ((__slot154453
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154447 'id))))
                 (if __slot154453
                     __slot154453
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__slot154451
               (let ((__slot154454
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154447 'slot))))
                 (if __slot154454
                     __slot154454
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_self153569_ _ctx153570_ _stx153571_ _args153572_)
            (let* ((_g153574153588_
                    (lambda (_g153575153585_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g153575153585_))))
                   (_g153573153640_
                    (lambda (_g153575153591_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g153575153591_))
                          (let ((_e153580153593_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g153575153591_))))
                            (let ((_hd153579153596_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e153580153593_)))
                                  (_tl153578153598_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e153580153593_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl153578153598_))
                                  (let ((_e153583153601_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl153578153598_))))
                                    (let ((_hd153582153604_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e153583153601_)))
                                          (_tl153581153606_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e153583153601_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl153581153606_))
                                          ((lambda (_L153609_ _L153610_)
                                             (let* ((_klass153624_
                                                     (let ((__tmp155413
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self153569_
                                                               __id154450
                                                               __klass154447
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _stx153571_
                                                        __tmp155413)))
                                                    (_field153626_
                                                     (let ((__tmp155414
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self153569_
                                                               __slot154451
                                                               __klass154447
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass153624_
                                                        __tmp155414)))
                                                    (_object153628_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _ctx153570_
                                                        _L153610_)))
                                                    (_value153630_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _ctx153570_
                                                        _L153609_))))
                                               (if (##structure-ref
                                                    _klass153624_
                                                    '8
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp155496
                                                          (let ((__tmp155506
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self153569_
                                __checked?154449
                                __klass154447
                                '#f))
                             '%#struct-direct-set!
                             '%#struct-unchecked-set!))
                        (__tmp155497
                         (let ((__tmp155503
                                (let ((__tmp155504
                                       (let ((__tmp155505
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _self153569_
                                                 __id154450
                                                 __klass154447
                                                 '#f))))
                                         (declare (not safe))
                                         (cons __tmp155505 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp155504)))
                               (__tmp155498
                                (let ((__tmp155501
                                       (let ((__tmp155502
                                              (let ()
                                                (declare (not safe))
                                                (cons _field153626_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp155502)))
                                      (__tmp155499
                                       (let ((__tmp155500
                                              (let ()
                                                (declare (not safe))
                                                (cons _value153630_ '()))))
                                         (declare (not safe))
                                         (cons _object153628_ __tmp155500))))
                                  (declare (not safe))
                                  (cons __tmp155501 __tmp155499))))
                           (declare (not safe))
                           (cons __tmp155503 __tmp155498))))
                    (declare (not safe))
                    (cons __tmp155506 __tmp155497))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp155496
                                                      _stx153571_))
                                                   (if (##structure-ref
                                                        _klass153624_
                                                        '7
                                                        gxc#!class::t
                                                        '#f)
                                                       (let ((__tmp155485
                                                              (let ((__tmp155495
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _self153569_
                                    __checked?154449
                                    __klass154447
                                    '#f))
                                 '%#struct-set!
                                 '%#struct-unchecked-set!))
                            (__tmp155486
                             (let ((__tmp155492
                                    (let ((__tmp155493
                                           (let ((__tmp155494
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self153569_
                                                     __id154450
                                                     __klass154447
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp155494 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp155493)))
                                   (__tmp155487
                                    (let ((__tmp155490
                                           (let ((__tmp155491
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _field153626_ '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp155491)))
                                          (__tmp155488
                                           (let ((__tmp155489
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _value153630_ '()))))
                                             (declare (not safe))
                                             (cons _object153628_
                                                   __tmp155489))))
                                      (declare (not safe))
                                      (cons __tmp155490 __tmp155488))))
                               (declare (not safe))
                               (cons __tmp155492 __tmp155487))))
                        (declare (not safe))
                        (cons __tmp155495 __tmp155486))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp155485 _stx153571_))
               (let ((_$e153633_
                      (let ((__tmp155415
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self153569_
                                __slot154451
                                __klass154447
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _klass153624_
                         __tmp155415))))
                 (if _$e153633_
                     ((lambda (_klass153636_)
                        (let ((__tmp155474
                               (let ((__tmp155484
                                      (if (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self153569_
                                             __checked?154449
                                             __klass154447
                                             '#f))
                                          '%#struct-set!
                                          '%#struct-unchecked-set!))
                                     (__tmp155475
                                      (let ((__tmp155481
                                             (let ((__tmp155482
                                                    (let ((__tmp155483
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _self153569_
                                                              __id154450
                                                              __klass154447
                                                              '#f))))
                                                      (declare (not safe))
                                                      (cons __tmp155483 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp155482)))
                                            (__tmp155476
                                             (let ((__tmp155479
                                                    (let ((__tmp155480
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field153626_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp155480)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp155477
                                                    (let ((__tmp155478
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _value153630_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _object153628_ __tmp155478))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp155479
                                                     __tmp155477))))
                                        (declare (not safe))
                                        (cons __tmp155481 __tmp155476))))
                                 (declare (not safe))
                                 (cons __tmp155484 __tmp155475))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp155474 _stx153571_)))
                      _$e153633_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self153569_
                            __checked?154449
                            __klass154447
                            '#f))
                         (let ((__tmp155426
                                (let* ((_$obj153638_
                                        (let ((__tmp155427 (gensym '__obj)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp155427)))
                                       (__tmp155428
                                        (let ((__tmp155470
                                               (let ((__tmp155471
                                                      (let ((__tmp155473
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj153638_ '())))
                    (__tmp155472
                     (let () (declare (not safe)) (cons _object153628_ '()))))
                (declare (not safe))
                (cons __tmp155473 __tmp155472))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp155471 '())))
                                              (__tmp155429
                                               (let ((__tmp155430
                                                      (let ((__tmp155431
                                                             (let ((__tmp155462
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp155463
                                   (let ((__tmp155467
                                          (let ((__tmp155468
                                                 (let ((__tmp155469
                                                        (##structure-ref
                                                         _klass153624_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp155469 '()))))
                                            (declare (not safe))
                                            (cons '%#quote __tmp155468)))
                                         (__tmp155464
                                          (let ((__tmp155465
                                                 (let ((__tmp155466
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj153638_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp155466))))
                                            (declare (not safe))
                                            (cons __tmp155465 '()))))
                                     (declare (not safe))
                                     (cons __tmp155467 __tmp155464))))
                              (declare (not safe))
                              (cons '%#struct-direct-instance? __tmp155463)))
                           (__tmp155432
                            (let ((__tmp155450
                                   (let ((__tmp155451
                                          (let ((__tmp155459
                                                 (let ((__tmp155460
                                                        (let ((__tmp155461
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _self153569_
                          __id154450
                          __klass154447
                          '#f))))
                  (declare (not safe))
                  (cons __tmp155461 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp155460)))
                                                (__tmp155452
                                                 (let ((__tmp155457
                                                        (let ((__tmp155458
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _field153626_ '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp155458)))
               (__tmp155453
                (let ((__tmp155455
                       (let ((__tmp155456
                              (let ()
                                (declare (not safe))
                                (cons _$obj153638_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp155456)))
                      (__tmp155454
                       (let () (declare (not safe)) (cons _value153630_ '()))))
                  (declare (not safe))
                  (cons __tmp155455 __tmp155454))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp155457
                                                         __tmp155453))))
                                            (declare (not safe))
                                            (cons __tmp155459 __tmp155452))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp155451)))
                                  (__tmp155433
                                   (let ((__tmp155434
                                          (let ((__tmp155435
                                                 (let ((__tmp155448
                                                        (let ((__tmp155449
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons 'class-slot-set! '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp155449)))
               (__tmp155436
                (let ((__tmp155445
                       (let ((__tmp155446
                              (let ((__tmp155447
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _self153569_
                                        __id154450
                                        __klass154447
                                        '#f))))
                                (declare (not safe))
                                (cons __tmp155447 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp155446)))
                      (__tmp155437
                       (let ((__tmp155443
                              (let ((__tmp155444
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj153638_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp155444)))
                             (__tmp155438
                              (let ((__tmp155440
                                     (let ((__tmp155441
                                            (let ((__tmp155442
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self153569_
                                                      __slot154451
                                                      __klass154447
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp155442 '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp155441)))
                                    (__tmp155439
                                     (let ()
                                       (declare (not safe))
                                       (cons _value153630_ '()))))
                                (declare (not safe))
                                (cons __tmp155440 __tmp155439))))
                         (declare (not safe))
                         (cons __tmp155443 __tmp155438))))
                  (declare (not safe))
                  (cons __tmp155445 __tmp155437))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp155448
                                                         __tmp155436))))
                                            (declare (not safe))
                                            (cons '%#call __tmp155435))))
                                     (declare (not safe))
                                     (cons __tmp155434 '()))))
                              (declare (not safe))
                              (cons __tmp155450 __tmp155433))))
                       (declare (not safe))
                       (cons __tmp155462 __tmp155432))))
                (declare (not safe))
                (cons '%#if __tmp155431))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp155430 '()))))
                                          (declare (not safe))
                                          (cons __tmp155470 __tmp155429))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp155428))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp155426 _stx153571_))
                         (let ((__tmp155416
                                (let ((__tmp155417
                                       (let ((__tmp155424
                                              (let ((__tmp155425
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons 'unchecked-slot-set!
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#ref __tmp155425)))
                                             (__tmp155418
                                              (let ((__tmp155419
                                                     (let ((__tmp155421
                                                            (let ((__tmp155422
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155423
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self153569_
                                     __slot154451
                                     __klass154447
                                     '#f))))
                             (declare (not safe))
                             (cons __tmp155423 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp155422)))
                   (__tmp155420
                    (let () (declare (not safe)) (cons _value153630_ '()))))
               (declare (not safe))
               (cons __tmp155421 __tmp155420))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _object153628_
                                                      __tmp155419))))
                                         (declare (not safe))
                                         (cons __tmp155424 __tmp155418))))
                                  (declare (not safe))
                                  (cons '%#call __tmp155417))))
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp155416
                            _stx153571_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _hd153582153604_
                                           _hd153579153596_)
                                          (let ()
                                            (declare (not safe))
                                            (_g153574153588_
                                             _g153575153591_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g153574153588_ _g153575153591_)))))
                          (let ()
                            (declare (not safe))
                            (_g153574153588_ _g153575153591_))))))
              (declare (not safe))
              (_g153573153640_ _args153572_))))))
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
      (lambda (_self153402_ _ctx153403_ _stx153404_ _args153405_)
        (let* ((_self153406153415_ _self153402_)
               (_E153408153419_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153406153415_))))
               (_K153409153426_
                (lambda (_inline153422_ _dispatch153423_ _arity153424_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self153402_ _args153405_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx153404_
                         _arity153424_)))
                  (if _inline153422_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp155512
                               (let ((__tmp155513
                                      (_inline153422_ _stx153404_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp155513
                                  _stx153404_))))
                          (declare (not safe))
                          (gxc#compile-e__1 _ctx153403_ __tmp155512)))
                      (if _dispatch153423_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch153423_))
                            (let ((__tmp155507
                                   (let ((__tmp155508
                                          (let ((__tmp155509
                                                 (let ((__tmp155510
                                                        (let ((__tmp155511
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch153423_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp155511))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp155510
                                                         _args153405_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp155509))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp155508
                                      _stx153404_))))
                              (declare (not safe))
                              (gxc#compile-e__1 _ctx153403_ __tmp155507)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _ctx153403_ _stx153404_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self153406153415_ 'gxc#!lambda::t))
              (let* ((_e153410153429_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153406153415_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e153411153432_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153406153415_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity153435_ _e153411153432_)
                     (_e153412153437_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153406153415_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch153440_ _e153412153437_)
                     (_e153413153442_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153406153415_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline153445_ _e153413153442_))
                (declare (not safe))
                (_K153409153426_
                 _inline153445_
                 _dispatch153440_
                 _arity153435_))
              (let () (declare (not safe)) (_E153408153419_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self153240_ _ctx153241_ _stx153242_ _args153243_)
        (let* ((_self153244153251_ _self153240_)
               (_E153246153255_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153244153251_))))
               (_K153247153269_
                (lambda (_clauses153258_)
                  (let ((_$e153264_
                         (let ((__tmp155514
                                (lambda (_g153259153261_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g153259153261_
                                     _args153243_)))))
                           (declare (not safe))
                           (find __tmp155514 _clauses153258_))))
                    (if _$e153264_
                        ((lambda (_clause153267_)
                           (let ((__method154725
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause153267_
                                     'optimize-call))))
                             (if __method154725
                                 (__method154725
                                  _clause153267_
                                  _ctx153241_
                                  _stx153242_
                                  _args153243_)
                                 (let ()
                                   (declare (not safe))
                                   (error '"Missing method"
                                          _clause153267_
                                          'optimize-call)))))
                         _$e153264_)
                        (let ((__tmp155515
                               (map gxc#!lambda-arity _clauses153258_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx153242_
                           __tmp155515)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self153244153251_
                 'gxc#!case-lambda::t))
              (let* ((_e153248153272_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153244153251_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e153249153275_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153244153251_
                         '2
                         gxc#!case-lambda::t
                         '#f)))
                     (_clauses153278_ _e153249153275_))
                (declare (not safe))
                (_K153247153269_ _clauses153278_))
              (let () (declare (not safe)) (_E153246153255_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self153054_ _args153055_)
        (let* ((_self153056153063_ _self153054_)
               (_E153058153067_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153056153063_))))
               (_K153059153107_
                (lambda (_arity153070_)
                  (let* ((_arity153071153080_ _arity153070_)
                         (_E153074153084_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (error '"No clause matching"
                                     _arity153071153080_)))))
                    (let ((_K153078153104_
                           (lambda ()
                             (fx= (length _args153055_) _arity153070_)))
                          (_K153075153090_
                           (lambda (_arity153088_)
                             (fx>= (length _args153055_) _arity153088_))))
                      (let ((_try-match153073153100_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity153071153080_))
                                   (let ((_tl153077153095_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity153071153080_)))
                                         (_hd153076153093_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity153071153080_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl153077153095_))
                                         (let ((_arity153098_
                                                _hd153076153093_))
                                           (declare (not safe))
                                           (_K153075153090_ _arity153098_))
                                         (let ()
                                           (declare (not safe))
                                           (_E153074153084_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E153074153084_))))))
                        (if (let ()
                              (declare (not safe))
                              (fixnum? _arity153071153080_))
                            (let () (declare (not safe)) (_K153078153104_))
                            (let ()
                              (declare (not safe))
                              (_try-match153073153100_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self153056153063_ 'gxc#!lambda::t))
              (let* ((_e153060153110_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153056153063_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e153061153113_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153056153063_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity153116_ _e153061153113_))
                (declare (not safe))
                (_K153059153107_ _arity153116_))
              (let () (declare (not safe)) (_E153058153067_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self152938_ _ctx152939_ _stx152940_ _args152941_)
        (let* ((_self152942152950_ _self152938_)
               (_E152944152954_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self152942152950_))))
               (_K152945153038_
                (lambda (_dispatch152957_ _table152958_)
                  (let* ((_g152959152968_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch152957_)))
                         (_else152961152976_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch152957_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _ctx152939_ _stx152940_))))
                         (_K152963153022_
                          (lambda (_main152979_ _keys152980_)
                            (let ((_g155516_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx152940_
                                      _args152941_))))
                              (begin
                                (let ((_g155517_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g155516_)
                                             (##vector-length _g155516_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g155517_ 2)))
                                      (error "Context expects 2 values"
                                             _g155517_)))
                                (let ((_pargs152982_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g155516_ 0)))
                                      (_kwargs152983_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g155516_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main152979_))
                                    (if _table152958_
                                        (let ((_xargs152990_
                                               (map (lambda (_key152985_)
                                                      (let ((_$e152987_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq__0 _key152985_ _kwargs152983_))))
                (if _$e152987_ (values _$e152987_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys152980_)))
                                          (for-each
                                           (lambda (_kw152992_)
                                             (if (memq (car _kw152992_)
                                                       _keys152980_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx152940_
                                                    _keys152980_
                                                    _kw152992_))))
                                           _kwargs152983_)
                                          (let ((__tmp155569
                                                 (let ((__tmp155570
                                                        (let ((__tmp155571
                                                               (let ((__tmp155576
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp155577
                                     (let ()
                                       (declare (not safe))
                                       (cons _main152979_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp155577)))
                             (__tmp155572
                              (let ((__tmp155574
                                     (let ((__tmp155575
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp155575)))
                                    (__tmp155573
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs152982_
                                               _xargs152990_))))
                                (declare (not safe))
                                (cons __tmp155574 __tmp155573))))
                         (declare (not safe))
                         (cons __tmp155576 __tmp155572))))
                  (declare (not safe))
                  (cons '%#call __tmp155571))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp155570
                                                    _stx152940_))))
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _ctx152939_
                                             __tmp155569)))
                                        (let* ((_kwt152994_
                                                (let ((__tmp155518
                                                       (gensym '__kwt)))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp155518)))
                                               (_kwvars152997_
                                                (map (lambda (_g155519_)
                                                       (let ((__tmp155520
                                                              (gensym '__kw)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp155520)))
                                                     _kwargs152983_))
                                               (_kwbind153002_
                                                (map (lambda (_kw152999_
                                                              _kwvar153000_)
                                                       (let ((__tmp155523
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar153000_ '())))
                     (__tmp155521
                      (let ((__tmp155522 (cdr _kw152999_)))
                        (declare (not safe))
                        (cons __tmp155522 '()))))
                 (declare (not safe))
                 (cons __tmp155523 __tmp155521)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs152983_
                                                     _kwvars152997_))
                                               (_kwset153007_
                                                (map (lambda (_kw153004_
                                                              _kwvar153005_)
                                                       (let ((__tmp155524
                                                              (let ((__tmp155525
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp155533
                                    (let ((__tmp155534
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt152994_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp155534)))
                                   (__tmp155526
                                    (let ((__tmp155530
                                           (let ((__tmp155531
                                                  (let ((__tmp155532
                                                         (car _kw153004_)))
                                                    (declare (not safe))
                                                    (cons __tmp155532 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp155531)))
                                          (__tmp155527
                                           (let ((__tmp155528
                                                  (let ((__tmp155529
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar153005_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp155529))))
                                             (declare (not safe))
                                             (cons __tmp155528 '()))))
                                      (declare (not safe))
                                      (cons __tmp155530 __tmp155527))))
                               (declare (not safe))
                               (cons __tmp155533 __tmp155526))))
                        (declare (not safe))
                        (cons '(%#ref symbolic-table-set!) __tmp155525))))
                 (declare (not safe))
                 (cons '%#call __tmp155524)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs152983_
                                                     _kwvars152997_))
                                               (_xkwargs153012_
                                                (map (lambda (_kw153009_
                                                              _kwvar153010_)
                                                       (let ((__tmp155537
                                                              (car _kw153009_))
                                                             (__tmp155535
                                                              (let ((__tmp155536
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar153010_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp155536))))
                 (declare (not safe))
                 (cons __tmp155537 __tmp155535)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs152983_
                                                     _kwvars152997_))
                                               (_xargs153019_
                                                (map (lambda (_key153014_)
                                                       (let ((_$e153016_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq__0 _key153014_ _xkwargs153012_))))
                 (if _$e153016_ (values _$e153016_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys152980_)))
                                          (let ((__tmp155538
                                                 (let ((__tmp155539
                                                        (let ((__tmp155540
                                                               (let ((__tmp155541
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp155542
                                     (let ((__tmp155543
                                            (let ((__tmp155557
                                                   (let ((__tmp155558
                                                          (let ((__tmp155568
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt152994_ '())))
                        (__tmp155559
                         (let ((__tmp155560
                                (let ((__tmp155561
                                       (let ((__tmp155562
                                              (let ((__tmp155563
                                                     (let ((__tmp155565
                                                            (let ((__tmp155566
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155567 (length _kwargs152983_)))
                             (declare (not safe))
                             (cons __tmp155567 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp155566)))
                   (__tmp155564
                    (let () (declare (not safe)) (cons '(%#quote 0) '()))))
               (declare (not safe))
               (cons __tmp155565 __tmp155564))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-symbolic-table)
                                                      __tmp155563))))
                                         (declare (not safe))
                                         (cons '%#call __tmp155562))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp155561
                                   _stx152940_))))
                           (declare (not safe))
                           (cons __tmp155560 '()))))
                    (declare (not safe))
                    (cons __tmp155568 __tmp155559))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp155558 '())))
                                                  (__tmp155544
                                                   (let ((__tmp155545
                                                          (let ((__tmp155546
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp155547
                                (let ((__tmp155548
                                       (let ((__tmp155549
                                              (let ((__tmp155550
                                                     (let ((__tmp155555
                                                            (let ((__tmp155556
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main152979_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp155556)))
                   (__tmp155551
                    (let ((__tmp155553
                           (let ((__tmp155554
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt152994_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp155554)))
                          (__tmp155552
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs152982_ _xargs153019_))))
                      (declare (not safe))
                      (cons __tmp155553 __tmp155552))))
               (declare (not safe))
               (cons __tmp155555 __tmp155551))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp155550))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp155549
                                          _stx152940_))))
                                  (declare (not safe))
                                  (cons __tmp155548 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp155547 _kwset153007_))))
                    (declare (not safe))
                    (cons '%#begin __tmp155546))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp155545 '()))))
                                              (declare (not safe))
                                              (cons __tmp155557 __tmp155544))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp155543))))
                                (declare (not safe))
                                (cons __tmp155542 '()))))
                         (declare (not safe))
                         (cons _kwbind153002_ __tmp155541))))
                  (declare (not safe))
                  (cons '%#let-values __tmp155540))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp155539
                                                    _stx152940_))))
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _ctx152939_
                                             __tmp155538)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g152959152968_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e152964153025_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g152959152968_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                               (_e152965153028_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g152959152968_
                                   '2
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_keys153031_ _e152965153028_)
                               (_e152966153033_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g152959152968_
                                   '3
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_main153036_ _e152966153033_))
                          (declare (not safe))
                          (_K152963153022_ _main153036_ _keys153031_))
                        (let () (declare (not safe)) (_else152961152976_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self152942152950_
                 'gxc#!kw-lambda::t))
              (let* ((_e152946153041_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self152942152950_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e152947153044_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self152942152950_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table153047_ _e152947153044_)
                     (_e152948153049_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self152942152950_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch153052_ _e152948153049_))
                (declare (not safe))
                (_K152945153038_ _dispatch153052_ _table153047_))
              (let () (declare (not safe)) (_E152944152954_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx152551_ _args152552_)
        (let _lp152554_ ((_rest152556_ _args152552_)
                         (_pargs152557_ '())
                         (_kwargs152558_ '()))
          (let* ((___stx154605154606_ _rest152556_)
                 (_g152564152616_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx154605154606_)))))
            (let ((___kont154607154608_
                   (lambda (_L152795_ _L152796_)
                     (let ((__tmp155578
                            (let ()
                              (declare (not safe))
                              (cons _L152796_ _pargs152557_))))
                       (declare (not safe))
                       (_lp152554_ _L152795_ __tmp155578 _kwargs152558_))))
                  (___kont154609154610_
                   (lambda (_L152741_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L152741_ _pargs152557_))
                             (reverse _kwargs152558_))))
                  (___kont154611154612_
                   (lambda (_L152688_ _L152689_ _L152690_)
                     (let ((_kw152707_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _L152690_))))
                       (if (assq _kw152707_ _kwargs152558_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx152551_
                              _kw152707_))
                           (let ((__tmp155579
                                  (let ((__tmp155580
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw152707_ _L152689_))))
                                    (declare (not safe))
                                    (cons __tmp155580 _kwargs152558_))))
                             (declare (not safe))
                             (_lp152554_
                              _L152688_
                              _pargs152557_
                              __tmp155579))))))
                  (___kont154613154614_
                   (lambda (_L152636_ _L152637_)
                     (let ((__tmp155581
                            (let ()
                              (declare (not safe))
                              (cons _L152637_ _pargs152557_))))
                       (declare (not safe))
                       (_lp152554_ _L152636_ __tmp155581 _kwargs152558_))))
                  (___kont154615154616_
                   (lambda ()
                     (values (reverse _pargs152557_)
                             (reverse _kwargs152558_)))))
              (let* ((_g152563152623_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx154605154606_))
                            (___kont154615154616_)
                            (let () (declare (not safe)) (_g152564152616_)))))
                     (___match154712154713_
                      (lambda (_e152597152656_
                               _hd152596152659_
                               _tl152595152661_
                               _e152600152664_
                               _hd152599152667_
                               _tl152598152669_
                               _e152603152672_
                               _hd152602152675_
                               _tl152601152677_
                               _e152606152680_
                               _hd152605152683_
                               _tl152604152685_)
                        (let ((_L152688_ _tl152604152685_)
                              (_L152689_ _hd152605152683_)
                              (_L152690_ _hd152602152675_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L152690_))
                              (___kont154611154612_
                               _L152688_
                               _L152689_
                               _L152690_)
                              (___kont154613154614_
                               _tl152595152661_
                               _hd152596152659_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx154605154606_))
                    (let ((_e152570152760_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx154605154606_))))
                      (let ((_tl152568152765_
                             (let ()
                               (declare (not safe))
                               (##cdr _e152570152760_)))
                            (_hd152569152763_
                             (let ()
                               (declare (not safe))
                               (##car _e152570152760_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd152569152763_))
                            (let ((_e152573152768_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd152569152763_))))
                              (let ((_tl152571152773_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e152573152768_)))
                                    (_hd152572152771_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e152573152768_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd152572152771_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd152572152771_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl152571152773_))
                                            (let ((_e152576152776_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl152571152773_))))
                                              (let ((_tl152574152781_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e152576152776_)))
                                                    (_hd152575152779_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e152576152776_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd152575152779_))
                                                    (let ((_e152577152784_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd152575152779_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e152577152784_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl152574152781_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl152568152765_))
                          (let ((_e152580152787_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl152568152765_))))
                            (let ((_tl152578152792_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e152580152787_)))
                                  (_hd152579152790_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e152580152787_))))
                              (___kont154607154608_
                               _tl152578152792_
                               _hd152579152790_)))
                          (___kont154613154614_
                           _tl152568152765_
                           _hd152569152763_))
                      (___kont154613154614_ _tl152568152765_ _hd152569152763_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e152577152784_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl152574152781_))
                          (___kont154609154610_ _tl152568152765_)
                          (___kont154613154614_
                           _tl152568152765_
                           _hd152569152763_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl152574152781_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl152568152765_))
                              (let ((_e152606152680_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl152568152765_))))
                                (let ((_tl152604152685_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e152606152680_)))
                                      (_hd152605152683_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e152606152680_))))
                                  (___match154712154713_
                                   _e152570152760_
                                   _hd152569152763_
                                   _tl152568152765_
                                   _e152573152768_
                                   _hd152572152771_
                                   _tl152571152773_
                                   _e152576152776_
                                   _hd152575152779_
                                   _tl152574152781_
                                   _e152606152680_
                                   _hd152605152683_
                                   _tl152604152685_)))
                              (___kont154613154614_
                               _tl152568152765_
                               _hd152569152763_))
                          (___kont154613154614_
                           _tl152568152765_
                           _hd152569152763_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl152574152781_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl152568152765_))
                                                            (let ((_e152606152680_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl152568152765_))))
                      (let ((_tl152604152685_
                             (let ()
                               (declare (not safe))
                               (##cdr _e152606152680_)))
                            (_hd152605152683_
                             (let ()
                               (declare (not safe))
                               (##car _e152606152680_))))
                        (___match154712154713_
                         _e152570152760_
                         _hd152569152763_
                         _tl152568152765_
                         _e152573152768_
                         _hd152572152771_
                         _tl152571152773_
                         _e152576152776_
                         _hd152575152779_
                         _tl152574152781_
                         _e152606152680_
                         _hd152605152683_
                         _tl152604152685_)))
                    (___kont154613154614_ _tl152568152765_ _hd152569152763_))
                (___kont154613154614_ _tl152568152765_ _hd152569152763_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont154613154614_
                                             _tl152568152765_
                                             _hd152569152763_))
                                        (___kont154613154614_
                                         _tl152568152765_
                                         _hd152569152763_))
                                    (___kont154613154614_
                                     _tl152568152765_
                                     _hd152569152763_))))
                            (___kont154613154614_
                             _tl152568152765_
                             _hd152569152763_))))
                    (let () (declare (not safe)) (_g152563152623_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self152546_ _ctx152547_ _stx152548_ _args152549_)
        (let ()
          (declare (not safe))
          (gxc#xform-call% _ctx152547_ _stx152548_))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
