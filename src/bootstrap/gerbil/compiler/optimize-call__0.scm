(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1708202853)
  (begin
    (define gxc#&optimize-call
      (make-promise
       (lambda ()
         (let ((_tbl269297_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp273655 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-copy! _tbl269297_ __tmp273655))
           (let ()
             (declare (not safe))
             (table-set! _tbl269297_ '%#call gxc#optimize-call%))
           _tbl269297_))))
    (define gxc#apply-optimize-call
      (lambda (_stx269280_ . _args269282_)
        (let ((__tmp273657
               (lambda ()
                 (declare (not safe))
                 (if (null? _args269282_)
                     (gxc#compile-e__0 _stx269280_)
                     (let ((_arg1269287_ (car _args269282_))
                           (_rest269289_ (cdr _args269282_)))
                       (if (null? _rest269289_)
                           (gxc#compile-e__1 _stx269280_ _arg1269287_)
                           (let ((_arg2269292_ (car _rest269289_))
                                 (_rest269294_ (cdr _rest269289_)))
                             (if (null? _rest269294_)
                                 (gxc#compile-e__2
                                  _stx269280_
                                  _arg1269287_
                                  _arg2269292_)
                                 (apply gxc#compile-e
                                        _stx269280_
                                        _arg1269287_
                                        _arg2269292_
                                        _rest269294_))))))))
              (__tmp273656 (force gxc#&optimize-call)))
          (declare (not safe))
          (call-with-parameters
           __tmp273657
           gxc#current-compile-methods
           __tmp273656))))
    (define gxc#optimize-call%
      (lambda (_stx269135_)
        (let* ((___stx273405273406_ _stx269135_)
               (_g269138269158_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx273405273406_)))))
          (let ((___kont273407273408_
                 (lambda (_L269202_ _L269203_)
                   (let* ((_rator-id269221_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L269203_)))
                          (_rator-type269223_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id269221_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type269223_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp273658
                                  (##structure-ref
                                   _rator-type269223_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id269221_
                              '" => "
                              _rator-type269223_
                              '" "
                              __tmp273658))
                           (let ((_optimized269226_
                                  (let ((__method273653
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type269223_
                                            'optimize-call))))
                                    (if __method273653
                                        (__method273653
                                         _rator-type269223_
                                         _stx269135_
                                         _L269202_)
                                        (error '"Missing method"
                                               _rator-type269223_
                                               'optimize-call)))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type269223_))
                                 _optimized269226_
                                 (let* ((___stx273387273388_ _optimized269226_)
                                        (_g269229269239_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx273387273388_)))))
                                   (let ((___kont273389273390_
                                          (lambda (_L269259_)
                                            (let ((__tmp273659
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L269259_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp273659
                                               _stx269135_))))
                                         (___kont273391273392_
                                          (lambda () _optimized269226_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx273387273388_))
                                         (let ((_e269234269251_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx273387273388_))))
                                           (let ((_tl269232269256_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e269234269251_)))
                                                 (_hd269233269254_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e269234269251_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd269233269254_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd269233269254_))
                                                     (___kont273389273390_
                                                      _tl269232269256_)
                                                     (___kont273391273392_))
                                                 (___kont273391273392_))))
                                         (___kont273391273392_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type269223_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx269135_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _stx269135_
                                _rator-type269223_)))))))
                (___kont273409273410_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _stx269135_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx273405273406_))
                (let ((_e269144269170_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx273405273406_))))
                  (let ((_tl269142269175_
                         (let () (declare (not safe)) (##cdr _e269144269170_)))
                        (_hd269143269173_
                         (let ()
                           (declare (not safe))
                           (##car _e269144269170_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl269142269175_))
                        (let ((_e269147269178_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl269142269175_))))
                          (let ((_tl269145269183_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e269147269178_)))
                                (_hd269146269181_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e269147269178_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd269146269181_))
                                (let ((_e269150269186_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd269146269181_))))
                                  (let ((_tl269148269191_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e269150269186_)))
                                        (_hd269149269189_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e269150269186_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd269149269189_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd269149269189_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl269148269191_))
                                                (let ((_e269153269194_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl269148269191_))))
                                                  (let ((_tl269151269199_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e269153269194_)))
                                                        (_hd269152269197_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e269153269194_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl269151269199_))
                                                        (___kont273407273408_
                                                         _tl269145269183_
                                                         _hd269152269197_)
                                                        (___kont273409273410_))))
                                                (___kont273409273410_))
                                            (___kont273409273410_))
                                        (___kont273409273410_))))
                                (___kont273409273410_))))
                        (___kont273409273410_))))
                (___kont273409273410_))))))
    (define gxc#!predicate::optimize-call
      (lambda (_self269089_ _stx269090_ _args269091_)
        (let* ((_g269093269103_
                (lambda (_g269094269100_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g269094269100_))))
               (_g269092269132_
                (lambda (_g269094269106_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g269094269106_))
                      (let ((_e269098269108_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g269094269106_))))
                        (let ((_hd269097269111_
                               (let ()
                                 (declare (not safe))
                                 (##car _e269098269108_)))
                              (_tl269096269113_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e269098269108_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl269096269113_))
                              ((lambda (_L269116_)
                                 (let* ((_klass269127_
                                         (let ((__tmp273660
                                                (##structure-ref
                                                 _self269089_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx269090_
                                            __tmp273660)))
                                        (_object269129_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L269116_))))
                                   (if (##structure-ref
                                        _klass269127_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp273676
                                              (let ((__tmp273677
                                                     (let ((__tmp273679
                                                            (let ((__tmp273680
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp273681
                                  (##structure-ref
                                   _klass269127_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp273681 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp273680)))
                   (__tmp273678
                    (let () (declare (not safe)) (cons _object269129_ '()))))
               (declare (not safe))
               (cons __tmp273679 __tmp273678))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#struct-direct-instance?
                                                      __tmp273677))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp273676
                                          _stx269090_))
                                       (if (##structure-ref
                                            _klass269127_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp273670
                                                  (let ((__tmp273671
                                                         (let ((__tmp273673
                                                                (let ((__tmp273674
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp273675
                                      (##structure-ref
                                       _klass269127_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp273675 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp273674)))
                       (__tmp273672
                        (let ()
                          (declare (not safe))
                          (cons _object269129_ '()))))
                   (declare (not safe))
                   (cons __tmp273673 __tmp273672))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-instance?
                                                          __tmp273671))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp273670
                                              _stx269090_))
                                           (let ((__tmp273661
                                                  (let ((__tmp273662
                                                         (let ((__tmp273668
                                                                (let ((__tmp273669
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'class-instance? '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp273669)))
                       (__tmp273663
                        (let ((__tmp273665
                               (let ((__tmp273666
                                      (let ((__tmp273667
                                             (##structure-ref
                                              _self269089_
                                              '1
                                              gxc#!type::t
                                              '#f)))
                                        (declare (not safe))
                                        (cons __tmp273667 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp273666)))
                              (__tmp273664
                               (let ()
                                 (declare (not safe))
                                 (cons _object269129_ '()))))
                          (declare (not safe))
                          (cons __tmp273665 __tmp273664))))
                   (declare (not safe))
                   (cons __tmp273668 __tmp273663))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#call
                                                          __tmp273662))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp273661
                                              _stx269090_))))))
                               _hd269097269111_)
                              (let ()
                                (declare (not safe))
                                (_g269093269103_ _g269094269106_)))))
                      (let ()
                        (declare (not safe))
                        (_g269093269103_ _g269094269106_))))))
          (declare (not safe))
          (_g269092269132_ _args269091_))))
    (define gxc#!predicate::optimize-call::specialize
      (lambda (__t273366)
        (let ((__id273367
               (let ((__tmp273368
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t273366 'id))))
                 (if __tmp273368 __tmp273368 (error '"Unknown slot" 'id)))))
          (lambda (_self269089_ _stx269090_ _args269091_)
            (let* ((_g269093269103_
                    (lambda (_g269094269100_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g269094269100_))))
                   (_g269092269132_
                    (lambda (_g269094269106_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g269094269106_))
                          (let ((_e269098269108_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g269094269106_))))
                            (let ((_hd269097269111_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e269098269108_)))
                                  (_tl269096269113_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e269098269108_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl269096269113_))
                                  ((lambda (_L269116_)
                                     (let* ((_klass269127_
                                             (let ((__tmp273682
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self269089_
                                                       __id273367
                                                       __t273366
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx269090_
                                                __tmp273682)))
                                            (_object269129_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L269116_))))
                                       (if (##structure-ref
                                            _klass269127_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp273698
                                                  (let ((__tmp273699
                                                         (let ((__tmp273701
                                                                (let ((__tmp273702
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp273703
                                      (##structure-ref
                                       _klass269127_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp273703 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp273702)))
                       (__tmp273700
                        (let ()
                          (declare (not safe))
                          (cons _object269129_ '()))))
                   (declare (not safe))
                   (cons __tmp273701 __tmp273700))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-direct-instance?
                                                          __tmp273699))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp273698
                                              _stx269090_))
                                           (if (##structure-ref
                                                _klass269127_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp273692
                                                      (let ((__tmp273693
                                                             (let ((__tmp273695
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp273696
                                   (let ((__tmp273697
                                          (##structure-ref
                                           _klass269127_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp273697 '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp273696)))
                           (__tmp273694
                            (let ()
                              (declare (not safe))
                              (cons _object269129_ '()))))
                       (declare (not safe))
                       (cons __tmp273695 __tmp273694))))
                (declare (not safe))
                (cons '%#struct-instance? __tmp273693))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp273692
                                                  _stx269090_))
                                               (let ((__tmp273683
                                                      (let ((__tmp273684
                                                             (let ((__tmp273690
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp273691
                                   (let ()
                                     (declare (not safe))
                                     (cons 'class-instance? '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp273691)))
                           (__tmp273685
                            (let ((__tmp273687
                                   (let ((__tmp273688
                                          (let ((__tmp273689
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _self269089_
                                                    __id273367
                                                    __t273366
                                                    '#f))))
                                            (declare (not safe))
                                            (cons __tmp273689 '()))))
                                     (declare (not safe))
                                     (cons '%#ref __tmp273688)))
                                  (__tmp273686
                                   (let ()
                                     (declare (not safe))
                                     (cons _object269129_ '()))))
                              (declare (not safe))
                              (cons __tmp273687 __tmp273686))))
                       (declare (not safe))
                       (cons __tmp273690 __tmp273685))))
                (declare (not safe))
                (cons '%#call __tmp273684))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp273683
                                                  _stx269090_))))))
                                   _hd269097269111_)
                                  (let ()
                                    (declare (not safe))
                                    (_g269093269103_ _g269094269106_)))))
                          (let ()
                            (declare (not safe))
                            (_g269093269103_ _g269094269106_))))))
              (declare (not safe))
              (_g269092269132_ _args269091_))))))
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
      (lambda (_self268809_ _stx268810_ _args268811_)
        (let* ((_klass268813_
                (let ((__tmp273704
                       (##structure-ref _self268809_ '1 gxc#!type::t '#f)))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _stx268810_ __tmp273704)))
               (_fields268815_
                (length (##structure-ref _klass268813_ '5 gxc#!class::t '#f)))
               (_args268817_ (map gxc#compile-e _args268811_))
               (_inline-make-object268819_
                (let ((__tmp273705
                       (let ((__tmp273711
                              (let ((__tmp273712
                                     (let ()
                                       (declare (not safe))
                                       (cons '##structure '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp273712)))
                             (__tmp273706
                              (let ((__tmp273708
                                     (let ((__tmp273709
                                            (let ((__tmp273710
                                                   (##structure-ref
                                                    _self268809_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp273710 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp273709)))
                                    (__tmp273707
                                     (make-list _fields268815_ '(%#quote #f))))
                                (declare (not safe))
                                (cons __tmp273708 __tmp273707))))
                         (declare (not safe))
                         (cons __tmp273711 __tmp273706))))
                  (declare (not safe))
                  (cons '%#call __tmp273705))))
          (let ((_$e268822_
                 (##structure-ref _klass268813_ '6 gxc#!class::t '#f)))
            (if _$e268822_
                ((lambda (_ctor268825_)
                   (let ((_$obj268827_
                          (let ((__tmp273812 (gensym '__obj)))
                            (declare (not safe))
                            (make-symbol__0 __tmp273812)))
                         (_ctor-impl268828_
                          (let ()
                            (declare (not safe))
                            (gxc#!class-lookup-method
                             _klass268813_
                             _ctor268825_))))
                     (let ((__tmp273813
                            (let ((__tmp273814
                                   (let ((__tmp273882
                                          (let ((__tmp273883
                                                 (let ((__tmp273885
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj268827_
                                                                '())))
                                                       (__tmp273884
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _inline-make-object268819_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp273885
                                                         __tmp273884))))
                                            (declare (not safe))
                                            (cons __tmp273883 '())))
                                         (__tmp273815
                                          (let ((__tmp273816
                                                 (let ((__tmp273817
                                                        (let ((__tmp273821
                                                               (if _ctor-impl268828_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp273876
                                  (let ((__tmp273880
                                         (let ((__tmp273881
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _ctor-impl268828_
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp273881)))
                                        (__tmp273877
                                         (let ((__tmp273878
                                                (let ((__tmp273879
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj268827_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp273879))))
                                           (declare (not safe))
                                           (cons __tmp273878 _args268817_))))
                                    (declare (not safe))
                                    (cons __tmp273880 __tmp273877))))
                             (declare (not safe))
                             (cons '%#call __tmp273876))
                           (let* ((_$ctor268830_
                                   (let ((__tmp273822 (gensym '__constructor)))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp273822)))
                                  (__tmp273823
                                   (let ((__tmp273858
                                          (let ((__tmp273859
                                                 (let ((__tmp273875
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$ctor268830_
                                                                '())))
                                                       (__tmp273860
                                                        (let ((__tmp273861
                                                               (let ((__tmp273862
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp273873
                                     (let ((__tmp273874
                                            (let ()
                                              (declare (not safe))
                                              (cons 'direct-method-ref '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp273874)))
                                    (__tmp273863
                                     (let ((__tmp273870
                                            (let ((__tmp273871
                                                   (let ((__tmp273872
                                                          (##structure-ref
                                                           _self268809_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp273872 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp273871)))
                                           (__tmp273864
                                            (let ((__tmp273868
                                                   (let ((__tmp273869
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj268827_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp273869)))
                                                  (__tmp273865
                                                   (let ((__tmp273866
                                                          (let ((__tmp273867
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _ctor268825_ '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp273867))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp273866 '()))))
                                              (declare (not safe))
                                              (cons __tmp273868 __tmp273865))))
                                       (declare (not safe))
                                       (cons __tmp273870 __tmp273864))))
                                (declare (not safe))
                                (cons __tmp273873 __tmp273863))))
                         (declare (not safe))
                         (cons '%#call __tmp273862))))
                  (declare (not safe))
                  (cons __tmp273861 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp273875
                                                         __tmp273860))))
                                            (declare (not safe))
                                            (cons __tmp273859 '())))
                                         (__tmp273824
                                          (let ((__tmp273825
                                                 (let ((__tmp273826
                                                        (let ((__tmp273856
                                                               (let ((__tmp273857
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$ctor268830_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp273857)))
                      (__tmp273827
                       (let ((__tmp273849
                              (let ((__tmp273850
                                     (let ((__tmp273854
                                            (let ((__tmp273855
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$ctor268830_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp273855)))
                                           (__tmp273851
                                            (let ((__tmp273852
                                                   (let ((__tmp273853
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj268827_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp273853))))
                                              (declare (not safe))
                                              (cons __tmp273852
                                                    _args268817_))))
                                       (declare (not safe))
                                       (cons __tmp273854 __tmp273851))))
                                (declare (not safe))
                                (cons '%#call __tmp273850)))
                             (__tmp273828
                              (let ((__tmp273829
                                     (let ((__tmp273830
                                            (let ((__tmp273847
                                                   (let ((__tmp273848
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp273848)))
                                                  (__tmp273831
                                                   (let ((__tmp273845
                                                          (let ((__tmp273846
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons '"missing constructor method implementation"
                                 '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp273846)))
                 (__tmp273832
                  (let ((__tmp273843
                         (let ((__tmp273844
                                (let ()
                                  (declare (not safe))
                                  (cons 'class: '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp273844)))
                        (__tmp273833
                         (let ((__tmp273840
                                (let ((__tmp273841
                                       (let ((__tmp273842
                                              (##structure-ref
                                               _self268809_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp273842 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp273841)))
                               (__tmp273834
                                (let ((__tmp273838
                                       (let ((__tmp273839
                                              (let ()
                                                (declare (not safe))
                                                (cons 'method: '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp273839)))
                                      (__tmp273835
                                       (let ((__tmp273836
                                              (let ((__tmp273837
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _ctor268825_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#quote __tmp273837))))
                                         (declare (not safe))
                                         (cons __tmp273836 '()))))
                                  (declare (not safe))
                                  (cons __tmp273838 __tmp273835))))
                           (declare (not safe))
                           (cons __tmp273840 __tmp273834))))
                    (declare (not safe))
                    (cons __tmp273843 __tmp273833))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp273845
                                                           __tmp273832))))
                                              (declare (not safe))
                                              (cons __tmp273847 __tmp273831))))
                                       (declare (not safe))
                                       (cons '%#call __tmp273830))))
                                (declare (not safe))
                                (cons __tmp273829 '()))))
                         (declare (not safe))
                         (cons __tmp273849 __tmp273828))))
                  (declare (not safe))
                  (cons __tmp273856 __tmp273827))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#if __tmp273826))))
                                            (declare (not safe))
                                            (cons __tmp273825 '()))))
                                     (declare (not safe))
                                     (cons __tmp273858 __tmp273824))))
                             (declare (not safe))
                             (cons '%#let-values __tmp273823))))
                      (__tmp273818
                       (let ((__tmp273819
                              (let ((__tmp273820
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj268827_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp273820))))
                         (declare (not safe))
                         (cons __tmp273819 '()))))
                  (declare (not safe))
                  (cons __tmp273821 __tmp273818))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#begin
                                                         __tmp273817))))
                                            (declare (not safe))
                                            (cons __tmp273816 '()))))
                                     (declare (not safe))
                                     (cons __tmp273882 __tmp273815))))
                              (declare (not safe))
                              (cons '%#let-values __tmp273814))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp273813 _stx268810_))))
                 _$e268822_)
                (let ((_$e268832_
                       (##structure-ref _klass268813_ '9 gxc#!class::t '#f)))
                  (if _$e268832_
                      ((lambda (_metaclass268835_)
                         (let* ((_$obj268837_
                                 (let ((__tmp273774 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp273774)))
                                (_metakons268839_
                                 (let ((__tmp273775
                                        (let ()
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-class
                                           _stx268810_
                                           _metaclass268835_))))
                                   (declare (not safe))
                                   (gxc#!class-lookup-method
                                    __tmp273775
                                    'instance-init!))))
                           (let ((__tmp273776
                                  (let ((__tmp273777
                                         (let ((__tmp273808
                                                (let ((__tmp273809
                                                       (let ((__tmp273811
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj268837_ '())))
                     (__tmp273810
                      (let ()
                        (declare (not safe))
                        (cons _inline-make-object268819_ '()))))
                 (declare (not safe))
                 (cons __tmp273811 __tmp273810))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp273809 '())))
                                               (__tmp273778
                                                (let ((__tmp273779
                                                       (let ((__tmp273780
                                                              (let ((__tmp273784
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if _metakons268839_
                                 (let ((__tmp273798
                                        (let ((__tmp273806
                                               (let ((__tmp273807
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _metakons268839_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp273807)))
                                              (__tmp273799
                                               (let ((__tmp273803
                                                      (let ((__tmp273804
                                                             (let ((__tmp273805
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self268809_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp273805 '()))))
                (declare (not safe))
                (cons '%#ref __tmp273804)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp273800
                                                      (let ((__tmp273801
                                                             (let ((__tmp273802
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _$obj268837_ '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp273802))))
                (declare (not safe))
                (cons __tmp273801 _args268817_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp273803
                                                       __tmp273800))))
                                          (declare (not safe))
                                          (cons __tmp273806 __tmp273799))))
                                   (declare (not safe))
                                   (cons '%#call __tmp273798))
                                 (let ((__tmp273785
                                        (let ((__tmp273796
                                               (let ((__tmp273797
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'call-method
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp273797)))
                                              (__tmp273786
                                               (let ((__tmp273793
                                                      (let ((__tmp273794
                                                             (let ((__tmp273795
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self268809_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp273795 '()))))
                (declare (not safe))
                (cons '%#ref __tmp273794)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp273787
                                                      (let ((__tmp273791
                                                             (let ((__tmp273792
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'instance-init! '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp273792)))
                    (__tmp273788
                     (let ((__tmp273789
                            (let ((__tmp273790
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj268837_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp273790))))
                       (declare (not safe))
                       (cons __tmp273789 _args268817_))))
                (declare (not safe))
                (cons __tmp273791 __tmp273788))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp273793
                                                       __tmp273787))))
                                          (declare (not safe))
                                          (cons __tmp273796 __tmp273786))))
                                   (declare (not safe))
                                   (cons '%#call __tmp273785))))
                            (__tmp273781
                             (let ((__tmp273782
                                    (let ((__tmp273783
                                           (let ()
                                             (declare (not safe))
                                             (cons _$obj268837_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp273783))))
                               (declare (not safe))
                               (cons __tmp273782 '()))))
                        (declare (not safe))
                        (cons __tmp273784 __tmp273781))))
                 (declare (not safe))
                 (cons '%#begin __tmp273780))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp273779 '()))))
                                           (declare (not safe))
                                           (cons __tmp273808 __tmp273778))))
                                    (declare (not safe))
                                    (cons '%#let-values __tmp273777))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp273776 _stx268810_))))
                       _$e268832_)
                      (if (##structure-ref _klass268813_ '7 gxc#!class::t '#f)
                          (if (fx= (length _args268817_) _fields268815_)
                              (let ((__tmp273766
                                     (let ((__tmp273767
                                            (let ((__tmp273772
                                                   (let ((__tmp273773
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp273773)))
                                                  (__tmp273768
                                                   (let ((__tmp273769
                                                          (let ((__tmp273770
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp273771
                                (##structure-ref
                                 _self268809_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (cons __tmp273771 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp273770))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp273769
                                                           _args268817_))))
                                              (declare (not safe))
                                              (cons __tmp273772 __tmp273768))))
                                       (declare (not safe))
                                       (cons '%#call __tmp273767))))
                                (declare (not safe))
                                (gxc#xform-wrap-source
                                 __tmp273766
                                 _stx268810_))
                              (let ((__tmp273765
                                     (##structure-ref
                                      _self268809_
                                      '1
                                      gxc#!type::t
                                      '#f))
                                    (__tmp273764
                                     (length (##structure-ref
                                              _klass268813_
                                              '5
                                              gxc#!class::t
                                              '#f))))
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"illegal struct constructor application; arity mismatch"
                                 _stx268810_
                                 __tmp273765
                                 __tmp273764)))
                          (let ((_$obj268842_
                                 (let ((__tmp273713 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp273713))))
                            (let _lp268844_ ((_rest268846_ _args268817_)
                                             (_initializers268847_ '()))
                              (let* ((___stx273443273444_ _rest268846_)
                                     (_g268851268872_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx273443273444_)))))
                                (let ((___kont273445273446_
                                       (lambda (_L268926_ _L268927_ _L268928_)
                                         (let* ((_slot268959_
                                                 (keyword->symbol
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e _L268928_))))
                                                (_off268961_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass268813_
                                                    _slot268959_))))
                                           (if _off268961_
                                               (let ((__tmp273715
                                                      (let ((__tmp273716
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _off268961_ _L268927_))))
                (declare (not safe))
                (cons __tmp273716 _initializers268847_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp268844_
                                                  _L268926_
                                                  __tmp273715))
                                               (let ((__tmp273714
                                                      (##structure-ref
                                                       _self268809_
                                                       '1
                                                       gxc#!type::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"unknown slot"
                                                  _stx268810_
                                                  __tmp273714
                                                  _slot268959_))))))
                                      (___kont273447273448_
                                       (lambda ()
                                         (let ((__tmp273717
                                                (let ((__tmp273718
                                                       (let ((__tmp273741
                                                              (let ((__tmp273742
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp273744
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj268842_ '())))
                                   (__tmp273743
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object268819_ '()))))
                               (declare (not safe))
                               (cons __tmp273744 __tmp273743))))
                        (declare (not safe))
                        (cons __tmp273742 '())))
                     (__tmp273719
                      (let ((__tmp273720
                             (let ((__tmp273721
                                    (let ((__tmp273738
                                           (let ((__tmp273739
                                                  (let ((__tmp273740
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj268842_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp273740))))
                                             (declare (not safe))
                                             (cons __tmp273739 '())))
                                          (__tmp273722
                                           (let ((__tmp273723
                                                  (lambda (_i268886_ _r268887_)
                                                    (let ((__tmp273724
                                                           (let ((__tmp273725
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp273735
                                 (let ((__tmp273736
                                        (let ((__tmp273737
                                               (##structure-ref
                                                _self268809_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp273737 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp273736)))
                                (__tmp273726
                                 (let ((__tmp273732
                                        (let ((__tmp273733
                                               (let ((__tmp273734
                                                      (car _i268886_)))
                                                 (declare (not safe))
                                                 (cons __tmp273734 '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp273733)))
                                       (__tmp273727
                                        (let ((__tmp273730
                                               (let ((__tmp273731
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _$obj268842_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp273731)))
                                              (__tmp273728
                                               (let ((__tmp273729
                                                      (cdr _i268886_)))
                                                 (declare (not safe))
                                                 (cons __tmp273729 '()))))
                                          (declare (not safe))
                                          (cons __tmp273730 __tmp273728))))
                                   (declare (not safe))
                                   (cons __tmp273732 __tmp273727))))
                            (declare (not safe))
                            (cons __tmp273735 __tmp273726))))
                     (declare (not safe))
                     (cons '%#struct-unchecked-set! __tmp273725))))
              (declare (not safe))
              (cons __tmp273724 _r268887_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (foldl1 __tmp273723
                                                     '()
                                                     _initializers268847_))))
                                      (declare (not safe))
                                      (foldr1 cons __tmp273738 __tmp273722))))
                               (declare (not safe))
                               (cons '%#begin __tmp273721))))
                        (declare (not safe))
                        (cons __tmp273720 '()))))
                 (declare (not safe))
                 (cons __tmp273741 __tmp273719))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp273718))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp273717
                                            _stx268810_))))
                                      (___kont273449273450_
                                       (lambda ()
                                         (let ((__tmp273745
                                                (let ((__tmp273746
                                                       (let ((__tmp273760
                                                              (let ((__tmp273761
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp273763
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj268842_ '())))
                                   (__tmp273762
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object268819_ '()))))
                               (declare (not safe))
                               (cons __tmp273763 __tmp273762))))
                        (declare (not safe))
                        (cons __tmp273761 '())))
                     (__tmp273747
                      (let ((__tmp273748
                             (let ((__tmp273749
                                    (let ((__tmp273753
                                           (let ((__tmp273754
                                                  (let ((__tmp273758
                                                         (let ((__tmp273759
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons 'class-instance-init! '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp273759)))
                (__tmp273755
                 (let ((__tmp273756
                        (let ((__tmp273757
                               (let ()
                                 (declare (not safe))
                                 (cons _$obj268842_ '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp273757))))
                   (declare (not safe))
                   (cons __tmp273756 _args268817_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp273758
                                                          __tmp273755))))
                                             (declare (not safe))
                                             (cons '%#call __tmp273754)))
                                          (__tmp273750
                                           (let ((__tmp273751
                                                  (let ((__tmp273752
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj268842_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp273752))))
                                             (declare (not safe))
                                             (cons __tmp273751 '()))))
                                      (declare (not safe))
                                      (cons __tmp273753 __tmp273750))))
                               (declare (not safe))
                               (cons '%#begin __tmp273749))))
                        (declare (not safe))
                        (cons __tmp273748 '()))))
                 (declare (not safe))
                 (cons __tmp273760 __tmp273747))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp273746))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp273745
                                            _stx268810_)))))
                                  (let* ((_g268849268889_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   ___stx273443273444_))
                                                (___kont273447273448_)
                                                (___kont273449273450_))))
                                         (___match273480273481_
                                          (lambda (_e268858268894_
                                                   _hd268857268897_
                                                   _tl268856268899_
                                                   _e268861268902_
                                                   _hd268860268905_
                                                   _tl268859268907_
                                                   _e268864268910_
                                                   _hd268863268913_
                                                   _tl268862268915_
                                                   _e268867268918_
                                                   _hd268866268921_
                                                   _tl268865268923_)
                                            (let ((_L268926_ _tl268865268923_)
                                                  (_L268927_ _hd268866268921_)
                                                  (_L268928_ _hd268863268913_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-keyword?
                                                     _L268928_))
                                                  (___kont273445273446_
                                                   _L268926_
                                                   _L268927_
                                                   _L268928_)
                                                  (___kont273449273450_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx273443273444_))
                                        (let ((_e268858268894_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx273443273444_))))
                                          (let ((_tl268856268899_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e268858268894_)))
                                                (_hd268857268897_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e268858268894_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd268857268897_))
                                                (let ((_e268861268902_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd268857268897_))))
                                                  (let ((_tl268859268907_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e268861268902_)))
                                                        (_hd268860268905_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e268861268902_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd268860268905_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#quote
                                                               _hd268860268905_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl268859268907_))
                        (let ((_e268864268910_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl268859268907_))))
                          (let ((_tl268862268915_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e268864268910_)))
                                (_hd268863268913_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e268864268910_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl268862268915_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl268856268899_))
                                    (let ((_e268867268918_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl268856268899_))))
                                      (let ((_tl268865268923_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e268867268918_)))
                                            (_hd268866268921_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e268867268918_))))
                                        (___match273480273481_
                                         _e268858268894_
                                         _hd268857268897_
                                         _tl268856268899_
                                         _e268861268902_
                                         _hd268860268905_
                                         _tl268859268907_
                                         _e268864268910_
                                         _hd268863268913_
                                         _tl268862268915_
                                         _e268867268918_
                                         _hd268866268921_
                                         _tl268865268923_)))
                                    (___kont273449273450_))
                                (___kont273449273450_))))
                        (___kont273449273450_))
                    (___kont273449273450_))
                (___kont273449273450_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont273449273450_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g268849268889_))))))))))))))))
    (define gxc#!constructor::optimize-call::specialize
      (lambda (__t273369)
        (let ((__id273370
               (let ((__tmp273371
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t273369 'id))))
                 (if __tmp273371 __tmp273371 (error '"Unknown slot" 'id)))))
          (lambda (_self268809_ _stx268810_ _args268811_)
            (let* ((_klass268813_
                    (let ((__tmp273886
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _self268809_
                              __id273370
                              __t273369
                              '#f))))
                      (declare (not safe))
                      (gxc#optimizer-resolve-class _stx268810_ __tmp273886)))
                   (_fields268815_
                    (length (##structure-ref
                             _klass268813_
                             '5
                             gxc#!class::t
                             '#f)))
                   (_args268817_ (map gxc#compile-e _args268811_))
                   (_inline-make-object268819_
                    (let ((__tmp273887
                           (let ((__tmp273893
                                  (let ((__tmp273894
                                         (let ()
                                           (declare (not safe))
                                           (cons '##structure '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp273894)))
                                 (__tmp273888
                                  (let ((__tmp273890
                                         (let ((__tmp273891
                                                (let ((__tmp273892
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self268809_
                                                          __id273370
                                                          __t273369
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp273892 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp273891)))
                                        (__tmp273889
                                         (make-list
                                          _fields268815_
                                          '(%#quote #f))))
                                    (declare (not safe))
                                    (cons __tmp273890 __tmp273889))))
                             (declare (not safe))
                             (cons __tmp273893 __tmp273888))))
                      (declare (not safe))
                      (cons '%#call __tmp273887))))
              (let ((_$e268822_
                     (##structure-ref _klass268813_ '6 gxc#!class::t '#f)))
                (if _$e268822_
                    ((lambda (_ctor268825_)
                       (let ((_$obj268827_
                              (let ((__tmp273994 (gensym '__obj)))
                                (declare (not safe))
                                (make-symbol__0 __tmp273994)))
                             (_ctor-impl268828_
                              (let ()
                                (declare (not safe))
                                (gxc#!class-lookup-method
                                 _klass268813_
                                 _ctor268825_))))
                         (let ((__tmp273995
                                (let ((__tmp273996
                                       (let ((__tmp274064
                                              (let ((__tmp274065
                                                     (let ((__tmp274067
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$obj268827_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp274066
                    (let ()
                      (declare (not safe))
                      (cons _inline-make-object268819_ '()))))
               (declare (not safe))
               (cons __tmp274067 __tmp274066))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp274065 '())))
                                             (__tmp273997
                                              (let ((__tmp273998
                                                     (let ((__tmp273999
                                                            (let ((__tmp274003
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _ctor-impl268828_
                               (let ((__tmp274058
                                      (let ((__tmp274062
                                             (let ((__tmp274063
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor-impl268828_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp274063)))
                                            (__tmp274059
                                             (let ((__tmp274060
                                                    (let ((__tmp274061
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$obj268827_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp274061))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp274060
                                                     _args268817_))))
                                        (declare (not safe))
                                        (cons __tmp274062 __tmp274059))))
                                 (declare (not safe))
                                 (cons '%#call __tmp274058))
                               (let* ((_$ctor268830_
                                       (let ((__tmp274004
                                              (gensym '__constructor)))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp274004)))
                                      (__tmp274005
                                       (let ((__tmp274040
                                              (let ((__tmp274041
                                                     (let ((__tmp274057
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$ctor268830_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp274042
                    (let ((__tmp274043
                           (let ((__tmp274044
                                  (let ((__tmp274055
                                         (let ((__tmp274056
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'direct-method-ref
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp274056)))
                                        (__tmp274045
                                         (let ((__tmp274052
                                                (let ((__tmp274053
                                                       (let ((__tmp274054
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self268809_
                         __id273370
                         __t273369
                         '#f))))
                 (declare (not safe))
                 (cons __tmp274054 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp274053)))
                                               (__tmp274046
                                                (let ((__tmp274050
                                                       (let ((__tmp274051
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj268827_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp274051)))
              (__tmp274047
               (let ((__tmp274048
                      (let ((__tmp274049
                             (let ()
                               (declare (not safe))
                               (cons _ctor268825_ '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp274049))))
                 (declare (not safe))
                 (cons __tmp274048 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp274050
                                                        __tmp274047))))
                                           (declare (not safe))
                                           (cons __tmp274052 __tmp274046))))
                                    (declare (not safe))
                                    (cons __tmp274055 __tmp274045))))
                             (declare (not safe))
                             (cons '%#call __tmp274044))))
                      (declare (not safe))
                      (cons __tmp274043 '()))))
               (declare (not safe))
               (cons __tmp274057 __tmp274042))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp274041 '())))
                                             (__tmp274006
                                              (let ((__tmp274007
                                                     (let ((__tmp274008
                                                            (let ((__tmp274038
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp274039
                                  (let ()
                                    (declare (not safe))
                                    (cons _$ctor268830_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp274039)))
                          (__tmp274009
                           (let ((__tmp274031
                                  (let ((__tmp274032
                                         (let ((__tmp274036
                                                (let ((__tmp274037
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$ctor268830_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp274037)))
                                               (__tmp274033
                                                (let ((__tmp274034
                                                       (let ((__tmp274035
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj268827_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp274035))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp274034
                                                        _args268817_))))
                                           (declare (not safe))
                                           (cons __tmp274036 __tmp274033))))
                                    (declare (not safe))
                                    (cons '%#call __tmp274032)))
                                 (__tmp274010
                                  (let ((__tmp274011
                                         (let ((__tmp274012
                                                (let ((__tmp274029
                                                       (let ((__tmp274030
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'error '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp274030)))
              (__tmp274013
               (let ((__tmp274027
                      (let ((__tmp274028
                             (let ()
                               (declare (not safe))
                               (cons '"missing constructor method implementation"
                                     '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp274028)))
                     (__tmp274014
                      (let ((__tmp274025
                             (let ((__tmp274026
                                    (let ()
                                      (declare (not safe))
                                      (cons 'class: '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp274026)))
                            (__tmp274015
                             (let ((__tmp274022
                                    (let ((__tmp274023
                                           (let ((__tmp274024
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self268809_
                                                     __id273370
                                                     __t273369
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp274024 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp274023)))
                                   (__tmp274016
                                    (let ((__tmp274020
                                           (let ((__tmp274021
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'method: '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp274021)))
                                          (__tmp274017
                                           (let ((__tmp274018
                                                  (let ((__tmp274019
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _ctor268825_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#quote
                                                          __tmp274019))))
                                             (declare (not safe))
                                             (cons __tmp274018 '()))))
                                      (declare (not safe))
                                      (cons __tmp274020 __tmp274017))))
                               (declare (not safe))
                               (cons __tmp274022 __tmp274016))))
                        (declare (not safe))
                        (cons __tmp274025 __tmp274015))))
                 (declare (not safe))
                 (cons __tmp274027 __tmp274014))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp274029
                                                        __tmp274013))))
                                           (declare (not safe))
                                           (cons '%#call __tmp274012))))
                                    (declare (not safe))
                                    (cons __tmp274011 '()))))
                             (declare (not safe))
                             (cons __tmp274031 __tmp274010))))
                      (declare (not safe))
                      (cons __tmp274038 __tmp274009))))
               (declare (not safe))
               (cons '%#if __tmp274008))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp274007 '()))))
                                         (declare (not safe))
                                         (cons __tmp274040 __tmp274006))))
                                 (declare (not safe))
                                 (cons '%#let-values __tmp274005))))
                          (__tmp274000
                           (let ((__tmp274001
                                  (let ((__tmp274002
                                         (let ()
                                           (declare (not safe))
                                           (cons _$obj268827_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp274002))))
                             (declare (not safe))
                             (cons __tmp274001 '()))))
                      (declare (not safe))
                      (cons __tmp274003 __tmp274000))))
               (declare (not safe))
               (cons '%#begin __tmp273999))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp273998 '()))))
                                         (declare (not safe))
                                         (cons __tmp274064 __tmp273997))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp273996))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp273995 _stx268810_))))
                     _$e268822_)
                    (let ((_$e268832_
                           (##structure-ref
                            _klass268813_
                            '9
                            gxc#!class::t
                            '#f)))
                      (if _$e268832_
                          ((lambda (_metaclass268835_)
                             (let* ((_$obj268837_
                                     (let ((__tmp273956 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp273956)))
                                    (_metakons268839_
                                     (let ((__tmp273957
                                            (let ()
                                              (declare (not safe))
                                              (gxc#optimizer-resolve-class
                                               _stx268810_
                                               _metaclass268835_))))
                                       (declare (not safe))
                                       (gxc#!class-lookup-method
                                        __tmp273957
                                        'instance-init!))))
                               (let ((__tmp273958
                                      (let ((__tmp273959
                                             (let ((__tmp273990
                                                    (let ((__tmp273991
                                                           (let ((__tmp273993
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj268837_ '())))
                         (__tmp273992
                          (let ()
                            (declare (not safe))
                            (cons _inline-make-object268819_ '()))))
                     (declare (not safe))
                     (cons __tmp273993 __tmp273992))))
              (declare (not safe))
              (cons __tmp273991 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp273960
                                                    (let ((__tmp273961
                                                           (let ((__tmp273962
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp273966
                                 (if _metakons268839_
                                     (let ((__tmp273980
                                            (let ((__tmp273988
                                                   (let ((__tmp273989
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _metakons268839_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp273989)))
                                                  (__tmp273981
                                                   (let ((__tmp273985
                                                          (let ((__tmp273986
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp273987
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self268809_
                                   __id273370
                                   __t273369
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp273987 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp273986)))
                 (__tmp273982
                  (let ((__tmp273983
                         (let ((__tmp273984
                                (let ()
                                  (declare (not safe))
                                  (cons _$obj268837_ '()))))
                           (declare (not safe))
                           (cons '%#ref __tmp273984))))
                    (declare (not safe))
                    (cons __tmp273983 _args268817_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp273985
                                                           __tmp273982))))
                                              (declare (not safe))
                                              (cons __tmp273988 __tmp273981))))
                                       (declare (not safe))
                                       (cons '%#call __tmp273980))
                                     (let ((__tmp273967
                                            (let ((__tmp273978
                                                   (let ((__tmp273979
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'call-method
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp273979)))
                                                  (__tmp273968
                                                   (let ((__tmp273975
                                                          (let ((__tmp273976
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp273977
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self268809_
                                   __id273370
                                   __t273369
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp273977 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp273976)))
                 (__tmp273969
                  (let ((__tmp273973
                         (let ((__tmp273974
                                (let ()
                                  (declare (not safe))
                                  (cons 'instance-init! '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp273974)))
                        (__tmp273970
                         (let ((__tmp273971
                                (let ((__tmp273972
                                       (let ()
                                         (declare (not safe))
                                         (cons _$obj268837_ '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp273972))))
                           (declare (not safe))
                           (cons __tmp273971 _args268817_))))
                    (declare (not safe))
                    (cons __tmp273973 __tmp273970))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp273975
                                                           __tmp273969))))
                                              (declare (not safe))
                                              (cons __tmp273978 __tmp273968))))
                                       (declare (not safe))
                                       (cons '%#call __tmp273967))))
                                (__tmp273963
                                 (let ((__tmp273964
                                        (let ((__tmp273965
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$obj268837_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp273965))))
                                   (declare (not safe))
                                   (cons __tmp273964 '()))))
                            (declare (not safe))
                            (cons __tmp273966 __tmp273963))))
                     (declare (not safe))
                     (cons '%#begin __tmp273962))))
              (declare (not safe))
              (cons __tmp273961 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp273990
                                                     __tmp273960))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp273959))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp273958
                                  _stx268810_))))
                           _$e268832_)
                          (if (##structure-ref
                               _klass268813_
                               '7
                               gxc#!class::t
                               '#f)
                              (if (fx= (length _args268817_) _fields268815_)
                                  (let ((__tmp273948
                                         (let ((__tmp273949
                                                (let ((__tmp273954
                                                       (let ((__tmp273955
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '##structure '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp273955)))
              (__tmp273950
               (let ((__tmp273951
                      (let ((__tmp273952
                             (let ((__tmp273953
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _self268809_
                                       __id273370
                                       __t273369
                                       '#f))))
                               (declare (not safe))
                               (cons __tmp273953 '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp273952))))
                 (declare (not safe))
                 (cons __tmp273951 _args268817_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp273954
                                                        __tmp273950))))
                                           (declare (not safe))
                                           (cons '%#call __tmp273949))))
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp273948
                                     _stx268810_))
                                  (let ((__tmp273947
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _self268809_
                                            __id273370
                                            __t273369
                                            '#f)))
                                        (__tmp273946
                                         (length (##structure-ref
                                                  _klass268813_
                                                  '5
                                                  gxc#!class::t
                                                  '#f))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"illegal struct constructor application; arity mismatch"
                                     _stx268810_
                                     __tmp273947
                                     __tmp273946)))
                              (let ((_$obj268842_
                                     (let ((__tmp273895 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp273895))))
                                (let _lp268844_ ((_rest268846_ _args268817_)
                                                 (_initializers268847_ '()))
                                  (let* ((___stx273485273486_ _rest268846_)
                                         (_g268851268872_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               ___stx273485273486_)))))
                                    (let ((___kont273487273488_
                                           (lambda (_L268926_
                                                    _L268927_
                                                    _L268928_)
                                             (let* ((_slot268959_
                                                     (keyword->symbol
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L268928_))))
                                                    (_off268961_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass268813_
                                                        _slot268959_))))
                                               (if _off268961_
                                                   (let ((__tmp273897
                                                          (let ((__tmp273898
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _off268961_ _L268927_))))
                    (declare (not safe))
                    (cons __tmp273898 _initializers268847_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp268844_
                                                      _L268926_
                                                      __tmp273897))
                                                   (let ((__tmp273896
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _self268809_
                                                             __id273370
                                                             __t273369
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"unknown slot"
                                                      _stx268810_
                                                      __tmp273896
                                                      _slot268959_))))))
                                          (___kont273489273490_
                                           (lambda ()
                                             (let ((__tmp273899
                                                    (let ((__tmp273900
                                                           (let ((__tmp273923
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp273924
                                 (let ((__tmp273926
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj268842_ '())))
                                       (__tmp273925
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object268819_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp273926 __tmp273925))))
                            (declare (not safe))
                            (cons __tmp273924 '())))
                         (__tmp273901
                          (let ((__tmp273902
                                 (let ((__tmp273903
                                        (let ((__tmp273920
                                               (let ((__tmp273921
                                                      (let ((__tmp273922
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj268842_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp273922))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp273921 '())))
                                              (__tmp273904
                                               (let ((__tmp273905
                                                      (lambda (_i268886_
                                                               _r268887_)
                                                        (let ((__tmp273906
                                                               (let ((__tmp273907
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp273917
                                     (let ((__tmp273918
                                            (let ((__tmp273919
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self268809_
                                                      __id273370
                                                      __t273369
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp273919 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp273918)))
                                    (__tmp273908
                                     (let ((__tmp273914
                                            (let ((__tmp273915
                                                   (let ((__tmp273916
                                                          (car _i268886_)))
                                                     (declare (not safe))
                                                     (cons __tmp273916 '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp273915)))
                                           (__tmp273909
                                            (let ((__tmp273912
                                                   (let ((__tmp273913
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj268842_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp273913)))
                                                  (__tmp273910
                                                   (let ((__tmp273911
                                                          (cdr _i268886_)))
                                                     (declare (not safe))
                                                     (cons __tmp273911 '()))))
                                              (declare (not safe))
                                              (cons __tmp273912 __tmp273910))))
                                       (declare (not safe))
                                       (cons __tmp273914 __tmp273909))))
                                (declare (not safe))
                                (cons __tmp273917 __tmp273908))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-set! __tmp273907))))
                  (declare (not safe))
                  (cons __tmp273906 _r268887_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl1 __tmp273905
                                                         '()
                                                         _initializers268847_))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp273920
                                                  __tmp273904))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp273903))))
                            (declare (not safe))
                            (cons __tmp273902 '()))))
                     (declare (not safe))
                     (cons __tmp273923 __tmp273901))))
              (declare (not safe))
              (cons '%#let-values __tmp273900))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp273899
                                                _stx268810_))))
                                          (___kont273491273492_
                                           (lambda ()
                                             (let ((__tmp273927
                                                    (let ((__tmp273928
                                                           (let ((__tmp273942
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp273943
                                 (let ((__tmp273945
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj268842_ '())))
                                       (__tmp273944
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object268819_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp273945 __tmp273944))))
                            (declare (not safe))
                            (cons __tmp273943 '())))
                         (__tmp273929
                          (let ((__tmp273930
                                 (let ((__tmp273931
                                        (let ((__tmp273935
                                               (let ((__tmp273936
                                                      (let ((__tmp273940
                                                             (let ((__tmp273941
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'class-instance-init! '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp273941)))
                    (__tmp273937
                     (let ((__tmp273938
                            (let ((__tmp273939
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj268842_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp273939))))
                       (declare (not safe))
                       (cons __tmp273938 _args268817_))))
                (declare (not safe))
                (cons __tmp273940 __tmp273937))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp273936)))
                                              (__tmp273932
                                               (let ((__tmp273933
                                                      (let ((__tmp273934
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj268842_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp273934))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp273933 '()))))
                                          (declare (not safe))
                                          (cons __tmp273935 __tmp273932))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp273931))))
                            (declare (not safe))
                            (cons __tmp273930 '()))))
                     (declare (not safe))
                     (cons __tmp273942 __tmp273929))))
              (declare (not safe))
              (cons '%#let-values __tmp273928))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp273927
                                                _stx268810_)))))
                                      (let* ((_g268849268889_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       ___stx273485273486_))
                                                    (___kont273489273490_)
                                                    (___kont273491273492_))))
                                             (___match273522273523_
                                              (lambda (_e268858268894_
                                                       _hd268857268897_
                                                       _tl268856268899_
                                                       _e268861268902_
                                                       _hd268860268905_
                                                       _tl268859268907_
                                                       _e268864268910_
                                                       _hd268863268913_
                                                       _tl268862268915_
                                                       _e268867268918_
                                                       _hd268866268921_
                                                       _tl268865268923_)
                                                (let ((_L268926_
                                                       _tl268865268923_)
                                                      (_L268927_
                                                       _hd268866268921_)
                                                      (_L268928_
                                                       _hd268863268913_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-keyword?
                                                         _L268928_))
                                                      (___kont273487273488_
                                                       _L268926_
                                                       _L268927_
                                                       _L268928_)
                                                      (___kont273491273492_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               ___stx273485273486_))
                                            (let ((_e268858268894_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      ___stx273485273486_))))
                                              (let ((_tl268856268899_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e268858268894_)))
                                                    (_hd268857268897_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e268858268894_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd268857268897_))
                                                    (let ((_e268861268902_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd268857268897_))))
                                                      (let ((_tl268859268907_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e268861268902_)))
                    (_hd268860268905_
                     (let () (declare (not safe)) (##car _e268861268902_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd268860268905_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd268860268905_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl268859268907_))
                            (let ((_e268864268910_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl268859268907_))))
                              (let ((_tl268862268915_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e268864268910_)))
                                    (_hd268863268913_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e268864268910_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl268862268915_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl268856268899_))
                                        (let ((_e268867268918_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl268856268899_))))
                                          (let ((_tl268865268923_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e268867268918_)))
                                                (_hd268866268921_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e268867268918_))))
                                            (___match273522273523_
                                             _e268858268894_
                                             _hd268857268897_
                                             _tl268856268899_
                                             _e268861268902_
                                             _hd268860268905_
                                             _tl268859268907_
                                             _e268864268910_
                                             _hd268863268913_
                                             _tl268862268915_
                                             _e268867268918_
                                             _hd268866268921_
                                             _tl268865268923_)))
                                        (___kont273491273492_))
                                    (___kont273491273492_))))
                            (___kont273491273492_))
                        (___kont273491273492_))
                    (___kont273491273492_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont273491273492_))))
                                            (let ()
                                              (declare (not safe))
                                              (_g268849268889_))))))))))))))))))
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
      (lambda (_self268632_ _stx268633_ _args268634_)
        (let* ((_g268636268646_
                (lambda (_g268637268643_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g268637268643_))))
               (_g268635268684_
                (lambda (_g268637268649_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g268637268649_))
                      (let ((_e268641268651_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g268637268649_))))
                        (let ((_hd268640268654_
                               (let ()
                                 (declare (not safe))
                                 (##car _e268641268651_)))
                              (_tl268639268656_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e268641268651_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl268639268656_))
                              ((lambda (_L268659_)
                                 (let* ((_klass268670_
                                         (let ((__tmp274068
                                                (##structure-ref
                                                 _self268632_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx268633_
                                            __tmp274068)))
                                        (_field268672_
                                         (let ((__tmp274069
                                                (##structure-ref
                                                 _self268632_
                                                 '2
                                                 gxc#!accessor::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _klass268670_
                                            __tmp274069)))
                                        (_object268674_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L268659_))))
                                   (if (##structure-ref
                                        _klass268670_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp274146
                                              (let ((__tmp274155
                                                     (if (##structure-ref
                                                          _self268632_
                                                          '3
                                                          gxc#!accessor::t
                                                          '#f)
                                                         '%#struct-direct-ref
                                                         '%#struct-unchecked-ref))
                                                    (__tmp274147
                                                     (let ((__tmp274152
                                                            (let ((__tmp274153
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp274154
                                  (##structure-ref
                                   _self268632_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp274154 '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp274153)))
                   (__tmp274148
                    (let ((__tmp274150
                           (let ((__tmp274151
                                  (let ()
                                    (declare (not safe))
                                    (cons _field268672_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp274151)))
                          (__tmp274149
                           (let ()
                             (declare (not safe))
                             (cons _object268674_ '()))))
                      (declare (not safe))
                      (cons __tmp274150 __tmp274149))))
               (declare (not safe))
               (cons __tmp274152 __tmp274148))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp274155
                                                      __tmp274147))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp274146
                                          _stx268633_))
                                       (if (##structure-ref
                                            _klass268670_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp274136
                                                  (let ((__tmp274145
                                                         (if (##structure-ref
                                                              _self268632_
                                                              '3
                                                              gxc#!accessor::t
                                                              '#f)
                                                             '%#struct-ref
                                                             '%#struct-unchecked-ref))
                                                        (__tmp274137
                                                         (let ((__tmp274142
                                                                (let ((__tmp274143
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp274144
                                      (##structure-ref
                                       _self268632_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp274144 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp274143)))
                       (__tmp274138
                        (let ((__tmp274140
                               (let ((__tmp274141
                                      (let ()
                                        (declare (not safe))
                                        (cons _field268672_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp274141)))
                              (__tmp274139
                               (let ()
                                 (declare (not safe))
                                 (cons _object268674_ '()))))
                          (declare (not safe))
                          (cons __tmp274140 __tmp274139))))
                   (declare (not safe))
                   (cons __tmp274142 __tmp274138))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp274145
                                                          __tmp274137))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp274136
                                              _stx268633_))
                                           (let ((_$e268677_
                                                  (let ((__tmp274070
                                                         (##structure-ref
                                                          _self268632_
                                                          '2
                                                          gxc#!accessor::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _klass268670_
                                                     __tmp274070))))
                                             (if _$e268677_
                                                 ((lambda (_klass268680_)
                                                    (let ((__tmp274126
                                                           (let ((__tmp274135
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##structure-ref
                               _self268632_
                               '3
                               gxc#!accessor::t
                               '#f)
                              '%#struct-ref
                              '%#struct-unchecked-ref))
                         (__tmp274127
                          (let ((__tmp274132
                                 (let ((__tmp274133
                                        (let ((__tmp274134
                                               (##structure-ref
                                                _self268632_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp274134 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp274133)))
                                (__tmp274128
                                 (let ((__tmp274130
                                        (let ((__tmp274131
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _field268672_ '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp274131)))
                                       (__tmp274129
                                        (let ()
                                          (declare (not safe))
                                          (cons _object268674_ '()))))
                                   (declare (not safe))
                                   (cons __tmp274130 __tmp274129))))
                            (declare (not safe))
                            (cons __tmp274132 __tmp274128))))
                     (declare (not safe))
                     (cons __tmp274135 __tmp274127))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp274126 _stx268633_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e268677_)
                                                 (if (##structure-ref
                                                      _self268632_
                                                      '3
                                                      gxc#!accessor::t
                                                      '#f)
                                                     (let ((__tmp274080
                                                            (let* ((_$obj268682_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp274081 (gensym '__obj)))
                              (declare (not safe))
                              (make-symbol__0 __tmp274081)))
                           (__tmp274082
                            (let ((__tmp274122
                                   (let ((__tmp274123
                                          (let ((__tmp274125
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _$obj268682_ '())))
                                                (__tmp274124
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _object268674_ '()))))
                                            (declare (not safe))
                                            (cons __tmp274125 __tmp274124))))
                                     (declare (not safe))
                                     (cons __tmp274123 '())))
                                  (__tmp274083
                                   (let ((__tmp274084
                                          (let ((__tmp274085
                                                 (let ((__tmp274114
                                                        (let ((__tmp274115
                                                               (let ((__tmp274119
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp274120
                                     (let ((__tmp274121
                                            (##structure-ref
                                             _klass268670_
                                             '1
                                             gxc#!type::t
                                             '#f)))
                                       (declare (not safe))
                                       (cons __tmp274121 '()))))
                                (declare (not safe))
                                (cons '%#quote __tmp274120)))
                             (__tmp274116
                              (let ((__tmp274117
                                     (let ((__tmp274118
                                            (let ()
                                              (declare (not safe))
                                              (cons _$obj268682_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp274118))))
                                (declare (not safe))
                                (cons __tmp274117 '()))))
                         (declare (not safe))
                         (cons __tmp274119 __tmp274116))))
                  (declare (not safe))
                  (cons '%#struct-direct-instance? __tmp274115)))
               (__tmp274086
                (let ((__tmp274103
                       (let ((__tmp274104
                              (let ((__tmp274111
                                     (let ((__tmp274112
                                            (let ((__tmp274113
                                                   (##structure-ref
                                                    _self268632_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp274113 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp274112)))
                                    (__tmp274105
                                     (let ((__tmp274109
                                            (let ((__tmp274110
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field268672_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp274110)))
                                           (__tmp274106
                                            (let ((__tmp274107
                                                   (let ((__tmp274108
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj268682_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp274108))))
                                              (declare (not safe))
                                              (cons __tmp274107 '()))))
                                       (declare (not safe))
                                       (cons __tmp274109 __tmp274106))))
                                (declare (not safe))
                                (cons __tmp274111 __tmp274105))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp274104)))
                      (__tmp274087
                       (let ((__tmp274088
                              (let ((__tmp274089
                                     (let ((__tmp274101
                                            (let ((__tmp274102
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'class-slot-ref
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp274102)))
                                           (__tmp274090
                                            (let ((__tmp274098
                                                   (let ((__tmp274099
                                                          (let ((__tmp274100
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref _self268632_ '1 gxc#!type::t '#f)))
                    (declare (not safe))
                    (cons __tmp274100 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp274099)))
                                                  (__tmp274091
                                                   (let ((__tmp274096
                                                          (let ((__tmp274097
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj268682_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp274097)))
                 (__tmp274092
                  (let ((__tmp274093
                         (let ((__tmp274094
                                (let ((__tmp274095
                                       (##structure-ref
                                        _self268632_
                                        '2
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (cons __tmp274095 '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp274094))))
                    (declare (not safe))
                    (cons __tmp274093 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp274096
                                                           __tmp274092))))
                                              (declare (not safe))
                                              (cons __tmp274098 __tmp274091))))
                                       (declare (not safe))
                                       (cons __tmp274101 __tmp274090))))
                                (declare (not safe))
                                (cons '%#call __tmp274089))))
                         (declare (not safe))
                         (cons __tmp274088 '()))))
                  (declare (not safe))
                  (cons __tmp274103 __tmp274087))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp274114
                                                         __tmp274086))))
                                            (declare (not safe))
                                            (cons '%#if __tmp274085))))
                                     (declare (not safe))
                                     (cons __tmp274084 '()))))
                              (declare (not safe))
                              (cons __tmp274122 __tmp274083))))
                      (declare (not safe))
                      (cons '%#let-values __tmp274082))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp274080 _stx268633_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp274071
                                                            (let ((__tmp274072
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp274078
                                  (let ((__tmp274079
                                         (let ()
                                           (declare (not safe))
                                           (cons 'unchecked-slot-ref '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp274079)))
                                 (__tmp274073
                                  (let ((__tmp274074
                                         (let ((__tmp274075
                                                (let ((__tmp274076
                                                       (let ((__tmp274077
                                                              (##structure-ref
                                                               _self268632_
                                                               '2
                                                               gxc#!accessor::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp274077
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote
                                                        __tmp274076))))
                                           (declare (not safe))
                                           (cons __tmp274075 '()))))
                                    (declare (not safe))
                                    (cons _object268674_ __tmp274074))))
                             (declare (not safe))
                             (cons __tmp274078 __tmp274073))))
                      (declare (not safe))
                      (cons '%#call __tmp274072))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp274071 _stx268633_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _hd268640268654_)
                              (let ()
                                (declare (not safe))
                                (_g268636268646_ _g268637268649_)))))
                      (let ()
                        (declare (not safe))
                        (_g268636268646_ _g268637268649_))))))
          (declare (not safe))
          (_g268635268684_ _args268634_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__t273372)
        (let ((__checked?273373
               (let ((__tmp273376
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t273372 'checked?))))
                 (if __tmp273376
                     __tmp273376
                     (error '"Unknown slot" 'checked?))))
              (__id273374
               (let ((__tmp273377
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t273372 'id))))
                 (if __tmp273377 __tmp273377 (error '"Unknown slot" 'id))))
              (__slot273375
               (let ((__tmp273378
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t273372 'slot))))
                 (if __tmp273378 __tmp273378 (error '"Unknown slot" 'slot)))))
          (lambda (_self268632_ _stx268633_ _args268634_)
            (let* ((_g268636268646_
                    (lambda (_g268637268643_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g268637268643_))))
                   (_g268635268684_
                    (lambda (_g268637268649_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g268637268649_))
                          (let ((_e268641268651_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g268637268649_))))
                            (let ((_hd268640268654_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e268641268651_)))
                                  (_tl268639268656_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e268641268651_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl268639268656_))
                                  ((lambda (_L268659_)
                                     (let* ((_klass268670_
                                             (let ((__tmp274156
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self268632_
                                                       __id273374
                                                       __t273372
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx268633_
                                                __tmp274156)))
                                            (_field268672_
                                             (let ((__tmp274157
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self268632_
                                                       __slot273375
                                                       __t273372
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _klass268670_
                                                __tmp274157)))
                                            (_object268674_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L268659_))))
                                       (if (##structure-ref
                                            _klass268670_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp274234
                                                  (let ((__tmp274243
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self268632_
                        __checked?273373
                        __t273372
                        '#f))
                     '%#struct-direct-ref
                     '%#struct-unchecked-ref))
                (__tmp274235
                 (let ((__tmp274240
                        (let ((__tmp274241
                               (let ((__tmp274242
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _self268632_
                                         __id273374
                                         __t273372
                                         '#f))))
                                 (declare (not safe))
                                 (cons __tmp274242 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp274241)))
                       (__tmp274236
                        (let ((__tmp274238
                               (let ((__tmp274239
                                      (let ()
                                        (declare (not safe))
                                        (cons _field268672_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp274239)))
                              (__tmp274237
                               (let ()
                                 (declare (not safe))
                                 (cons _object268674_ '()))))
                          (declare (not safe))
                          (cons __tmp274238 __tmp274237))))
                   (declare (not safe))
                   (cons __tmp274240 __tmp274236))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp274243
                                                          __tmp274235))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp274234
                                              _stx268633_))
                                           (if (##structure-ref
                                                _klass268670_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp274224
                                                      (let ((__tmp274233
                                                             (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self268632_
                            __checked?273373
                            __t273372
                            '#f))
                         '%#struct-ref
                         '%#struct-unchecked-ref))
                    (__tmp274225
                     (let ((__tmp274230
                            (let ((__tmp274231
                                   (let ((__tmp274232
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self268632_
                                             __id273374
                                             __t273372
                                             '#f))))
                                     (declare (not safe))
                                     (cons __tmp274232 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp274231)))
                           (__tmp274226
                            (let ((__tmp274228
                                   (let ((__tmp274229
                                          (let ()
                                            (declare (not safe))
                                            (cons _field268672_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp274229)))
                                  (__tmp274227
                                   (let ()
                                     (declare (not safe))
                                     (cons _object268674_ '()))))
                              (declare (not safe))
                              (cons __tmp274228 __tmp274227))))
                       (declare (not safe))
                       (cons __tmp274230 __tmp274226))))
                (declare (not safe))
                (cons __tmp274233 __tmp274225))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp274224
                                                  _stx268633_))
                                               (let ((_$e268677_
                                                      (let ((__tmp274158
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self268632_
                        __slot273375
                        __t273372
                        '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _klass268670_ __tmp274158))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e268677_
                                                     ((lambda (_klass268680_)
                                                        (let ((__tmp274214
                                                               (let ((__tmp274223
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self268632_
                                     __checked?273373
                                     __t273372
                                     '#f))
                                  '%#struct-ref
                                  '%#struct-unchecked-ref))
                             (__tmp274215
                              (let ((__tmp274220
                                     (let ((__tmp274221
                                            (let ((__tmp274222
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self268632_
                                                      __id273374
                                                      __t273372
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp274222 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp274221)))
                                    (__tmp274216
                                     (let ((__tmp274218
                                            (let ((__tmp274219
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field268672_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp274219)))
                                           (__tmp274217
                                            (let ()
                                              (declare (not safe))
                                              (cons _object268674_ '()))))
                                       (declare (not safe))
                                       (cons __tmp274218 __tmp274217))))
                                (declare (not safe))
                                (cons __tmp274220 __tmp274216))))
                         (declare (not safe))
                         (cons __tmp274223 __tmp274215))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp274214 _stx268633_)))
              _$e268677_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _self268632_
                                                            __checked?273373
                                                            __t273372
                                                            '#f))
                                                         (let ((__tmp274168
                                                                (let* ((_$obj268682_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp274169 (gensym '__obj)))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp274169)))
                               (__tmp274170
                                (let ((__tmp274210
                                       (let ((__tmp274211
                                              (let ((__tmp274213
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _$obj268682_
                                                             '())))
                                                    (__tmp274212
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _object268674_
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp274213
                                                      __tmp274212))))
                                         (declare (not safe))
                                         (cons __tmp274211 '())))
                                      (__tmp274171
                                       (let ((__tmp274172
                                              (let ((__tmp274173
                                                     (let ((__tmp274202
                                                            (let ((__tmp274203
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp274207
                                  (let ((__tmp274208
                                         (let ((__tmp274209
                                                (##structure-ref
                                                 _klass268670_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp274209 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp274208)))
                                 (__tmp274204
                                  (let ((__tmp274205
                                         (let ((__tmp274206
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj268682_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp274206))))
                                    (declare (not safe))
                                    (cons __tmp274205 '()))))
                             (declare (not safe))
                             (cons __tmp274207 __tmp274204))))
                      (declare (not safe))
                      (cons '%#struct-direct-instance? __tmp274203)))
                   (__tmp274174
                    (let ((__tmp274191
                           (let ((__tmp274192
                                  (let ((__tmp274199
                                         (let ((__tmp274200
                                                (let ((__tmp274201
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self268632_
                                                          __id273374
                                                          __t273372
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp274201 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp274200)))
                                        (__tmp274193
                                         (let ((__tmp274197
                                                (let ((__tmp274198
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field268672_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp274198)))
                                               (__tmp274194
                                                (let ((__tmp274195
                                                       (let ((__tmp274196
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj268682_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp274196))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp274195 '()))))
                                           (declare (not safe))
                                           (cons __tmp274197 __tmp274194))))
                                    (declare (not safe))
                                    (cons __tmp274199 __tmp274193))))
                             (declare (not safe))
                             (cons '%#struct-unchecked-ref __tmp274192)))
                          (__tmp274175
                           (let ((__tmp274176
                                  (let ((__tmp274177
                                         (let ((__tmp274189
                                                (let ((__tmp274190
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-slot-ref
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp274190)))
                                               (__tmp274178
                                                (let ((__tmp274186
                                                       (let ((__tmp274187
                                                              (let ((__tmp274188
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self268632_
                                __id273374
                                __t273372
                                '#f))))
                        (declare (not safe))
                        (cons __tmp274188 '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp274187)))
              (__tmp274179
               (let ((__tmp274184
                      (let ((__tmp274185
                             (let ()
                               (declare (not safe))
                               (cons _$obj268682_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp274185)))
                     (__tmp274180
                      (let ((__tmp274181
                             (let ((__tmp274182
                                    (let ((__tmp274183
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _self268632_
                                              __slot273375
                                              __t273372
                                              '#f))))
                                      (declare (not safe))
                                      (cons __tmp274183 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp274182))))
                        (declare (not safe))
                        (cons __tmp274181 '()))))
                 (declare (not safe))
                 (cons __tmp274184 __tmp274180))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp274186
                                                        __tmp274179))))
                                           (declare (not safe))
                                           (cons __tmp274189 __tmp274178))))
                                    (declare (not safe))
                                    (cons '%#call __tmp274177))))
                             (declare (not safe))
                             (cons __tmp274176 '()))))
                      (declare (not safe))
                      (cons __tmp274191 __tmp274175))))
               (declare (not safe))
               (cons __tmp274202 __tmp274174))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#if __tmp274173))))
                                         (declare (not safe))
                                         (cons __tmp274172 '()))))
                                  (declare (not safe))
                                  (cons __tmp274210 __tmp274171))))
                          (declare (not safe))
                          (cons '%#let-values __tmp274170))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp274168 _stx268633_))
                 (let ((__tmp274159
                        (let ((__tmp274160
                               (let ((__tmp274166
                                      (let ((__tmp274167
                                             (let ()
                                               (declare (not safe))
                                               (cons 'unchecked-slot-ref
                                                     '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp274167)))
                                     (__tmp274161
                                      (let ((__tmp274162
                                             (let ((__tmp274163
                                                    (let ((__tmp274164
                                                           (let ((__tmp274165
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _self268632_
                             __slot273375
                             __t273372
                             '#f))))
                     (declare (not safe))
                     (cons __tmp274165 '()))))
              (declare (not safe))
              (cons '%#quote __tmp274164))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp274163 '()))))
                                        (declare (not safe))
                                        (cons _object268674_ __tmp274162))))
                                 (declare (not safe))
                                 (cons __tmp274166 __tmp274161))))
                          (declare (not safe))
                          (cons '%#call __tmp274160))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp274159 _stx268633_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd268640268654_)
                                  (let ()
                                    (declare (not safe))
                                    (_g268636268646_ _g268637268649_)))))
                          (let ()
                            (declare (not safe))
                            (_g268636268646_ _g268637268649_))))))
              (declare (not safe))
              (_g268635268684_ _args268634_))))))
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
      (lambda (_self268437_ _stx268438_ _args268439_)
        (let* ((_g268441268455_
                (lambda (_g268442268452_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g268442268452_))))
               (_g268440268507_
                (lambda (_g268442268458_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g268442268458_))
                      (let ((_e268447268460_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g268442268458_))))
                        (let ((_hd268446268463_
                               (let ()
                                 (declare (not safe))
                                 (##car _e268447268460_)))
                              (_tl268445268465_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e268447268460_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl268445268465_))
                              (let ((_e268450268468_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl268445268465_))))
                                (let ((_hd268449268471_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e268450268468_)))
                                      (_tl268448268473_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e268450268468_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl268448268473_))
                                      ((lambda (_L268476_ _L268477_)
                                         (let* ((_klass268491_
                                                 (let ((__tmp274244
                                                        (##structure-ref
                                                         _self268437_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _stx268438_
                                                    __tmp274244)))
                                                (_field268493_
                                                 (let ((__tmp274245
                                                        (##structure-ref
                                                         _self268437_
                                                         '2
                                                         gxc#!mutator::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass268491_
                                                    __tmp274245)))
                                                (_object268495_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L268477_)))
                                                (_value268497_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L268476_))))
                                           (if (##structure-ref
                                                _klass268491_
                                                '8
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp274327
                                                      (let ((__tmp274337
                                                             (if (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _self268437_
                          '3
                          gxc#!mutator::t
                          '#f)
                         '%#struct-direct-set!
                         '%#struct-unchecked-set!))
                    (__tmp274328
                     (let ((__tmp274334
                            (let ((__tmp274335
                                   (let ((__tmp274336
                                          (##structure-ref
                                           _self268437_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp274336 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp274335)))
                           (__tmp274329
                            (let ((__tmp274332
                                   (let ((__tmp274333
                                          (let ()
                                            (declare (not safe))
                                            (cons _field268493_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp274333)))
                                  (__tmp274330
                                   (let ((__tmp274331
                                          (let ()
                                            (declare (not safe))
                                            (cons _value268497_ '()))))
                                     (declare (not safe))
                                     (cons _object268495_ __tmp274331))))
                              (declare (not safe))
                              (cons __tmp274332 __tmp274330))))
                       (declare (not safe))
                       (cons __tmp274334 __tmp274329))))
                (declare (not safe))
                (cons __tmp274337 __tmp274328))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp274327
                                                  _stx268438_))
                                               (if (##structure-ref
                                                    _klass268491_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp274316
                                                          (let ((__tmp274326
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##structure-ref
                              _self268437_
                              '3
                              gxc#!mutator::t
                              '#f)
                             '%#struct-set!
                             '%#struct-unchecked-set!))
                        (__tmp274317
                         (let ((__tmp274323
                                (let ((__tmp274324
                                       (let ((__tmp274325
                                              (##structure-ref
                                               _self268437_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp274325 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp274324)))
                               (__tmp274318
                                (let ((__tmp274321
                                       (let ((__tmp274322
                                              (let ()
                                                (declare (not safe))
                                                (cons _field268493_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp274322)))
                                      (__tmp274319
                                       (let ((__tmp274320
                                              (let ()
                                                (declare (not safe))
                                                (cons _value268497_ '()))))
                                         (declare (not safe))
                                         (cons _object268495_ __tmp274320))))
                                  (declare (not safe))
                                  (cons __tmp274321 __tmp274319))))
                           (declare (not safe))
                           (cons __tmp274323 __tmp274318))))
                    (declare (not safe))
                    (cons __tmp274326 __tmp274317))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp274316
                                                      _stx268438_))
                                                   (let ((_$e268500_
                                                          (let ((__tmp274246
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref
                          _self268437_
                          '2
                          gxc#!mutator::t
                          '#f)))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct _klass268491_ __tmp274246))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e268500_
                                                         ((lambda (_klass268503_)
                                                            (let ((__tmp274305
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp274315
                                  (if (##structure-ref
                                       _self268437_
                                       '3
                                       gxc#!mutator::t
                                       '#f)
                                      '%#struct-set!
                                      '%#struct-unchecked-set!))
                                 (__tmp274306
                                  (let ((__tmp274312
                                         (let ((__tmp274313
                                                (let ((__tmp274314
                                                       (##structure-ref
                                                        _self268437_
                                                        '1
                                                        gxc#!type::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp274314 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp274313)))
                                        (__tmp274307
                                         (let ((__tmp274310
                                                (let ((__tmp274311
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field268493_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp274311)))
                                               (__tmp274308
                                                (let ((__tmp274309
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _value268497_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons _object268495_
                                                        __tmp274309))))
                                           (declare (not safe))
                                           (cons __tmp274310 __tmp274308))))
                                    (declare (not safe))
                                    (cons __tmp274312 __tmp274307))))
                             (declare (not safe))
                             (cons __tmp274315 __tmp274306))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp274305 _stx268438_)))
                  _$e268500_)
                 (if (##structure-ref _self268437_ '3 gxc#!mutator::t '#f)
                     (let ((__tmp274257
                            (let* ((_$obj268505_
                                    (let ((__tmp274258 (gensym '__obj)))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp274258)))
                                   (__tmp274259
                                    (let ((__tmp274301
                                           (let ((__tmp274302
                                                  (let ((__tmp274304
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj268505_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp274303
                 (let () (declare (not safe)) (cons _object268495_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp274304
                                                          __tmp274303))))
                                             (declare (not safe))
                                             (cons __tmp274302 '())))
                                          (__tmp274260
                                           (let ((__tmp274261
                                                  (let ((__tmp274262
                                                         (let ((__tmp274293
                                                                (let ((__tmp274294
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp274298
                                      (let ((__tmp274299
                                             (let ((__tmp274300
                                                    (##structure-ref
                                                     _klass268491_
                                                     '1
                                                     gxc#!type::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp274300 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp274299)))
                                     (__tmp274295
                                      (let ((__tmp274296
                                             (let ((__tmp274297
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj268505_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp274297))))
                                        (declare (not safe))
                                        (cons __tmp274296 '()))))
                                 (declare (not safe))
                                 (cons __tmp274298 __tmp274295))))
                          (declare (not safe))
                          (cons '%#struct-direct-instance? __tmp274294)))
                       (__tmp274263
                        (let ((__tmp274281
                               (let ((__tmp274282
                                      (let ((__tmp274290
                                             (let ((__tmp274291
                                                    (let ((__tmp274292
                                                           (##structure-ref
                                                            _self268437_
                                                            '1
                                                            gxc#!type::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (cons __tmp274292 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp274291)))
                                            (__tmp274283
                                             (let ((__tmp274288
                                                    (let ((__tmp274289
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field268493_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp274289)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp274284
                                                    (let ((__tmp274286
                                                           (let ((__tmp274287
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj268505_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp274287)))
                  (__tmp274285
                   (let () (declare (not safe)) (cons _value268497_ '()))))
              (declare (not safe))
              (cons __tmp274286 __tmp274285))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp274288
                                                     __tmp274284))))
                                        (declare (not safe))
                                        (cons __tmp274290 __tmp274283))))
                                 (declare (not safe))
                                 (cons '%#struct-unchecked-set! __tmp274282)))
                              (__tmp274264
                               (let ((__tmp274265
                                      (let ((__tmp274266
                                             (let ((__tmp274279
                                                    (let ((__tmp274280
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp274280)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp274267
                                                    (let ((__tmp274276
                                                           (let ((__tmp274277
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp274278
                                 (##structure-ref
                                  _self268437_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (cons __tmp274278 '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp274277)))
                  (__tmp274268
                   (let ((__tmp274274
                          (let ((__tmp274275
                                 (let ()
                                   (declare (not safe))
                                   (cons _$obj268505_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp274275)))
                         (__tmp274269
                          (let ((__tmp274271
                                 (let ((__tmp274272
                                        (let ((__tmp274273
                                               (##structure-ref
                                                _self268437_
                                                '2
                                                gxc#!mutator::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp274273 '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp274272)))
                                (__tmp274270
                                 (let ()
                                   (declare (not safe))
                                   (cons _value268497_ '()))))
                            (declare (not safe))
                            (cons __tmp274271 __tmp274270))))
                     (declare (not safe))
                     (cons __tmp274274 __tmp274269))))
              (declare (not safe))
              (cons __tmp274276 __tmp274268))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp274279
                                                     __tmp274267))))
                                        (declare (not safe))
                                        (cons '%#call __tmp274266))))
                                 (declare (not safe))
                                 (cons __tmp274265 '()))))
                          (declare (not safe))
                          (cons __tmp274281 __tmp274264))))
                   (declare (not safe))
                   (cons __tmp274293 __tmp274263))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#if __tmp274262))))
                                             (declare (not safe))
                                             (cons __tmp274261 '()))))
                                      (declare (not safe))
                                      (cons __tmp274301 __tmp274260))))
                              (declare (not safe))
                              (cons '%#let-values __tmp274259))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp274257 _stx268438_))
                     (let ((__tmp274247
                            (let ((__tmp274248
                                   (let ((__tmp274255
                                          (let ((__tmp274256
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'unchecked-slot-set!
                                                         '()))))
                                            (declare (not safe))
                                            (cons '%#ref __tmp274256)))
                                         (__tmp274249
                                          (let ((__tmp274250
                                                 (let ((__tmp274252
                                                        (let ((__tmp274253
                                                               (let ((__tmp274254
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##structure-ref
                               _self268437_
                               '2
                               gxc#!mutator::t
                               '#f)))
                         (declare (not safe))
                         (cons __tmp274254 '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp274253)))
               (__tmp274251
                (let () (declare (not safe)) (cons _value268497_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp274252
                                                         __tmp274251))))
                                            (declare (not safe))
                                            (cons _object268495_
                                                  __tmp274250))))
                                     (declare (not safe))
                                     (cons __tmp274255 __tmp274249))))
                              (declare (not safe))
                              (cons '%#call __tmp274248))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp274247 _stx268438_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd268449268471_
                                       _hd268446268463_)
                                      (let ()
                                        (declare (not safe))
                                        (_g268441268455_ _g268442268458_)))))
                              (let ()
                                (declare (not safe))
                                (_g268441268455_ _g268442268458_)))))
                      (let ()
                        (declare (not safe))
                        (_g268441268455_ _g268442268458_))))))
          (declare (not safe))
          (_g268440268507_ _args268439_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__t273379)
        (let ((__checked?273380
               (let ((__tmp273383
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t273379 'checked?))))
                 (if __tmp273383
                     __tmp273383
                     (error '"Unknown slot" 'checked?))))
              (__id273381
               (let ((__tmp273384
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t273379 'id))))
                 (if __tmp273384 __tmp273384 (error '"Unknown slot" 'id))))
              (__slot273382
               (let ((__tmp273385
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t273379 'slot))))
                 (if __tmp273385 __tmp273385 (error '"Unknown slot" 'slot)))))
          (lambda (_self268437_ _stx268438_ _args268439_)
            (let* ((_g268441268455_
                    (lambda (_g268442268452_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g268442268452_))))
                   (_g268440268507_
                    (lambda (_g268442268458_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g268442268458_))
                          (let ((_e268447268460_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g268442268458_))))
                            (let ((_hd268446268463_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e268447268460_)))
                                  (_tl268445268465_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e268447268460_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl268445268465_))
                                  (let ((_e268450268468_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl268445268465_))))
                                    (let ((_hd268449268471_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e268450268468_)))
                                          (_tl268448268473_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e268450268468_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl268448268473_))
                                          ((lambda (_L268476_ _L268477_)
                                             (let* ((_klass268491_
                                                     (let ((__tmp274338
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self268437_
                                                               __id273381
                                                               __t273379
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _stx268438_
                                                        __tmp274338)))
                                                    (_field268493_
                                                     (let ((__tmp274339
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self268437_
                                                               __slot273382
                                                               __t273379
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass268491_
                                                        __tmp274339)))
                                                    (_object268495_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L268477_)))
                                                    (_value268497_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L268476_))))
                                               (if (##structure-ref
                                                    _klass268491_
                                                    '8
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp274421
                                                          (let ((__tmp274431
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self268437_
                                __checked?273380
                                __t273379
                                '#f))
                             '%#struct-direct-set!
                             '%#struct-unchecked-set!))
                        (__tmp274422
                         (let ((__tmp274428
                                (let ((__tmp274429
                                       (let ((__tmp274430
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _self268437_
                                                 __id273381
                                                 __t273379
                                                 '#f))))
                                         (declare (not safe))
                                         (cons __tmp274430 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp274429)))
                               (__tmp274423
                                (let ((__tmp274426
                                       (let ((__tmp274427
                                              (let ()
                                                (declare (not safe))
                                                (cons _field268493_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp274427)))
                                      (__tmp274424
                                       (let ((__tmp274425
                                              (let ()
                                                (declare (not safe))
                                                (cons _value268497_ '()))))
                                         (declare (not safe))
                                         (cons _object268495_ __tmp274425))))
                                  (declare (not safe))
                                  (cons __tmp274426 __tmp274424))))
                           (declare (not safe))
                           (cons __tmp274428 __tmp274423))))
                    (declare (not safe))
                    (cons __tmp274431 __tmp274422))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp274421
                                                      _stx268438_))
                                                   (if (##structure-ref
                                                        _klass268491_
                                                        '7
                                                        gxc#!class::t
                                                        '#f)
                                                       (let ((__tmp274410
                                                              (let ((__tmp274420
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _self268437_
                                    __checked?273380
                                    __t273379
                                    '#f))
                                 '%#struct-set!
                                 '%#struct-unchecked-set!))
                            (__tmp274411
                             (let ((__tmp274417
                                    (let ((__tmp274418
                                           (let ((__tmp274419
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self268437_
                                                     __id273381
                                                     __t273379
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp274419 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp274418)))
                                   (__tmp274412
                                    (let ((__tmp274415
                                           (let ((__tmp274416
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _field268493_ '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp274416)))
                                          (__tmp274413
                                           (let ((__tmp274414
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _value268497_ '()))))
                                             (declare (not safe))
                                             (cons _object268495_
                                                   __tmp274414))))
                                      (declare (not safe))
                                      (cons __tmp274415 __tmp274413))))
                               (declare (not safe))
                               (cons __tmp274417 __tmp274412))))
                        (declare (not safe))
                        (cons __tmp274420 __tmp274411))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp274410 _stx268438_))
               (let ((_$e268500_
                      (let ((__tmp274340
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self268437_
                                __slot273382
                                __t273379
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _klass268491_
                         __tmp274340))))
                 (if _$e268500_
                     ((lambda (_klass268503_)
                        (let ((__tmp274399
                               (let ((__tmp274409
                                      (if (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self268437_
                                             __checked?273380
                                             __t273379
                                             '#f))
                                          '%#struct-set!
                                          '%#struct-unchecked-set!))
                                     (__tmp274400
                                      (let ((__tmp274406
                                             (let ((__tmp274407
                                                    (let ((__tmp274408
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _self268437_
                                                              __id273381
                                                              __t273379
                                                              '#f))))
                                                      (declare (not safe))
                                                      (cons __tmp274408 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp274407)))
                                            (__tmp274401
                                             (let ((__tmp274404
                                                    (let ((__tmp274405
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field268493_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp274405)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp274402
                                                    (let ((__tmp274403
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _value268497_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _object268495_ __tmp274403))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp274404
                                                     __tmp274402))))
                                        (declare (not safe))
                                        (cons __tmp274406 __tmp274401))))
                                 (declare (not safe))
                                 (cons __tmp274409 __tmp274400))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp274399 _stx268438_)))
                      _$e268500_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self268437_
                            __checked?273380
                            __t273379
                            '#f))
                         (let ((__tmp274351
                                (let* ((_$obj268505_
                                        (let ((__tmp274352 (gensym '__obj)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp274352)))
                                       (__tmp274353
                                        (let ((__tmp274395
                                               (let ((__tmp274396
                                                      (let ((__tmp274398
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj268505_ '())))
                    (__tmp274397
                     (let () (declare (not safe)) (cons _object268495_ '()))))
                (declare (not safe))
                (cons __tmp274398 __tmp274397))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp274396 '())))
                                              (__tmp274354
                                               (let ((__tmp274355
                                                      (let ((__tmp274356
                                                             (let ((__tmp274387
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp274388
                                   (let ((__tmp274392
                                          (let ((__tmp274393
                                                 (let ((__tmp274394
                                                        (##structure-ref
                                                         _klass268491_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp274394 '()))))
                                            (declare (not safe))
                                            (cons '%#quote __tmp274393)))
                                         (__tmp274389
                                          (let ((__tmp274390
                                                 (let ((__tmp274391
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj268505_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp274391))))
                                            (declare (not safe))
                                            (cons __tmp274390 '()))))
                                     (declare (not safe))
                                     (cons __tmp274392 __tmp274389))))
                              (declare (not safe))
                              (cons '%#struct-direct-instance? __tmp274388)))
                           (__tmp274357
                            (let ((__tmp274375
                                   (let ((__tmp274376
                                          (let ((__tmp274384
                                                 (let ((__tmp274385
                                                        (let ((__tmp274386
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _self268437_
                          __id273381
                          __t273379
                          '#f))))
                  (declare (not safe))
                  (cons __tmp274386 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp274385)))
                                                (__tmp274377
                                                 (let ((__tmp274382
                                                        (let ((__tmp274383
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _field268493_ '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp274383)))
               (__tmp274378
                (let ((__tmp274380
                       (let ((__tmp274381
                              (let ()
                                (declare (not safe))
                                (cons _$obj268505_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp274381)))
                      (__tmp274379
                       (let () (declare (not safe)) (cons _value268497_ '()))))
                  (declare (not safe))
                  (cons __tmp274380 __tmp274379))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp274382
                                                         __tmp274378))))
                                            (declare (not safe))
                                            (cons __tmp274384 __tmp274377))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp274376)))
                                  (__tmp274358
                                   (let ((__tmp274359
                                          (let ((__tmp274360
                                                 (let ((__tmp274373
                                                        (let ((__tmp274374
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons 'class-slot-set! '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp274374)))
               (__tmp274361
                (let ((__tmp274370
                       (let ((__tmp274371
                              (let ((__tmp274372
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _self268437_
                                        __id273381
                                        __t273379
                                        '#f))))
                                (declare (not safe))
                                (cons __tmp274372 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp274371)))
                      (__tmp274362
                       (let ((__tmp274368
                              (let ((__tmp274369
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj268505_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp274369)))
                             (__tmp274363
                              (let ((__tmp274365
                                     (let ((__tmp274366
                                            (let ((__tmp274367
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self268437_
                                                      __slot273382
                                                      __t273379
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp274367 '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp274366)))
                                    (__tmp274364
                                     (let ()
                                       (declare (not safe))
                                       (cons _value268497_ '()))))
                                (declare (not safe))
                                (cons __tmp274365 __tmp274364))))
                         (declare (not safe))
                         (cons __tmp274368 __tmp274363))))
                  (declare (not safe))
                  (cons __tmp274370 __tmp274362))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp274373
                                                         __tmp274361))))
                                            (declare (not safe))
                                            (cons '%#call __tmp274360))))
                                     (declare (not safe))
                                     (cons __tmp274359 '()))))
                              (declare (not safe))
                              (cons __tmp274375 __tmp274358))))
                       (declare (not safe))
                       (cons __tmp274387 __tmp274357))))
                (declare (not safe))
                (cons '%#if __tmp274356))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp274355 '()))))
                                          (declare (not safe))
                                          (cons __tmp274395 __tmp274354))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp274353))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp274351 _stx268438_))
                         (let ((__tmp274341
                                (let ((__tmp274342
                                       (let ((__tmp274349
                                              (let ((__tmp274350
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons 'unchecked-slot-set!
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#ref __tmp274350)))
                                             (__tmp274343
                                              (let ((__tmp274344
                                                     (let ((__tmp274346
                                                            (let ((__tmp274347
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp274348
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self268437_
                                     __slot273382
                                     __t273379
                                     '#f))))
                             (declare (not safe))
                             (cons __tmp274348 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp274347)))
                   (__tmp274345
                    (let () (declare (not safe)) (cons _value268497_ '()))))
               (declare (not safe))
               (cons __tmp274346 __tmp274345))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _object268495_
                                                      __tmp274344))))
                                         (declare (not safe))
                                         (cons __tmp274349 __tmp274343))))
                                  (declare (not safe))
                                  (cons '%#call __tmp274342))))
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp274341
                            _stx268438_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _hd268449268471_
                                           _hd268446268463_)
                                          (let ()
                                            (declare (not safe))
                                            (_g268441268455_
                                             _g268442268458_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g268441268455_ _g268442268458_)))))
                          (let ()
                            (declare (not safe))
                            (_g268441268455_ _g268442268458_))))))
              (declare (not safe))
              (_g268440268507_ _args268439_))))))
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
      (lambda (_self268271_ _stx268272_ _args268273_)
        (let* ((_self268274268283_ _self268271_)
               (_E268276268287_
                (lambda () (error '"No clause matching" _self268274268283_)))
               (_K268277268294_
                (lambda (_inline268290_ _dispatch268291_ _arity268292_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self268271_ _args268273_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx268272_
                         _arity268292_)))
                  (if _inline268290_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp274437
                               (let ((__tmp274438
                                      (_inline268290_ _stx268272_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp274438
                                  _stx268272_))))
                          (declare (not safe))
                          (gxc#compile-e__0 __tmp274437)))
                      (if _dispatch268291_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch268291_))
                            (let ((__tmp274432
                                   (let ((__tmp274433
                                          (let ((__tmp274434
                                                 (let ((__tmp274435
                                                        (let ((__tmp274436
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch268291_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp274436))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp274435
                                                         _args268273_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp274434))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp274433
                                      _stx268272_))))
                              (declare (not safe))
                              (gxc#compile-e__0 __tmp274432)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _stx268272_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self268274268283_ 'gxc#!lambda::t))
              (let* ((_e268278268297_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self268274268283_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e268279268300_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self268274268283_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity268303_ _e268279268300_)
                     (_e268280268305_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self268274268283_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch268308_ _e268280268305_)
                     (_e268281268310_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self268274268283_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline268313_ _e268281268310_))
                (declare (not safe))
                (_K268277268294_
                 _inline268313_
                 _dispatch268308_
                 _arity268303_))
              (let () (declare (not safe)) (_E268276268287_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self268110_ _stx268111_ _args268112_)
        (let* ((_self268113268120_ _self268110_)
               (_E268115268124_
                (lambda () (error '"No clause matching" _self268113268120_)))
               (_K268116268138_
                (lambda (_clauses268127_)
                  (let ((_$e268133_
                         (let ((__tmp274439
                                (lambda (_g268128268130_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g268128268130_
                                     _args268112_)))))
                           (declare (not safe))
                           (find __tmp274439 _clauses268127_))))
                    (if _$e268133_
                        ((lambda (_clause268136_)
                           (let ((__method273654
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause268136_
                                     'optimize-call))))
                             (if __method273654
                                 (__method273654
                                  _clause268136_
                                  _stx268111_
                                  _args268112_)
                                 (error '"Missing method"
                                        _clause268136_
                                        'optimize-call))))
                         _$e268133_)
                        (let ((__tmp274440
                               (map gxc#!lambda-arity _clauses268127_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx268111_
                           __tmp274440)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self268113268120_
                 'gxc#!case-lambda::t))
              (let* ((_e268117268141_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self268113268120_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e268118268144_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self268113268120_
                         '2
                         gxc#!case-lambda::t
                         '#f)))
                     (_clauses268147_ _e268118268144_))
                (declare (not safe))
                (_K268116268138_ _clauses268147_))
              (let () (declare (not safe)) (_E268115268124_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self267924_ _args267925_)
        (let* ((_self267926267933_ _self267924_)
               (_E267928267937_
                (lambda () (error '"No clause matching" _self267926267933_)))
               (_K267929267977_
                (lambda (_arity267940_)
                  (let* ((_arity267941267950_ _arity267940_)
                         (_E267944267954_
                          (lambda ()
                            (error '"No clause matching"
                                   _arity267941267950_))))
                    (let ((_K267948267974_
                           (lambda ()
                             (fx= (length _args267925_) _arity267940_)))
                          (_K267945267960_
                           (lambda (_arity267958_)
                             (fx>= (length _args267925_) _arity267958_))))
                      (let ((_try-match267943267970_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity267941267950_))
                                   (let ((_tl267947267965_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity267941267950_)))
                                         (_hd267946267963_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity267941267950_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl267947267965_))
                                         (let ((_arity267968_
                                                _hd267946267963_))
                                           (declare (not safe))
                                           (_K267945267960_ _arity267968_))
                                         (let ()
                                           (declare (not safe))
                                           (_E267944267954_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E267944267954_))))))
                        (if (fixnum? _arity267941267950_)
                            (let () (declare (not safe)) (_K267948267974_))
                            (let ()
                              (declare (not safe))
                              (_try-match267943267970_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self267926267933_ 'gxc#!lambda::t))
              (let* ((_e267930267980_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self267926267933_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e267931267983_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self267926267933_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity267986_ _e267931267983_))
                (declare (not safe))
                (_K267929267977_ _arity267986_))
              (let () (declare (not safe)) (_E267928267937_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self267809_ _stx267810_ _args267811_)
        (let* ((_self267812267820_ _self267809_)
               (_E267814267824_
                (lambda () (error '"No clause matching" _self267812267820_)))
               (_K267815267908_
                (lambda (_dispatch267827_ _table267828_)
                  (let* ((_g267829267838_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch267827_)))
                         (_else267831267846_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch267827_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _stx267810_))))
                         (_K267833267892_
                          (lambda (_main267849_ _keys267850_)
                            (let ((_g274441_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx267810_
                                      _args267811_))))
                              (begin
                                (let ((_g274442_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g274441_)
                                             (##vector-length _g274441_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g274442_ 2)))
                                      (error "Context expects 2 values"
                                             _g274442_)))
                                (let ((_pargs267852_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g274441_ 0)))
                                      (_kwargs267853_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g274441_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main267849_))
                                    (if _table267828_
                                        (let ((_xargs267860_
                                               (map (lambda (_key267855_)
                                                      (let ((_$e267857_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _key267855_ _kwargs267853_))))
                (if _$e267857_ (values _$e267857_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys267850_)))
                                          (for-each
                                           (lambda (_kw267862_)
                                             (if (memq (car _kw267862_)
                                                       _keys267850_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx267810_
                                                    _keys267850_
                                                    _kw267862_))))
                                           _kwargs267853_)
                                          (let ((__tmp274493
                                                 (let ((__tmp274494
                                                        (let ((__tmp274495
                                                               (let ((__tmp274500
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp274501
                                     (let ()
                                       (declare (not safe))
                                       (cons _main267849_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp274501)))
                             (__tmp274496
                              (let ((__tmp274498
                                     (let ((__tmp274499
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp274499)))
                                    (__tmp274497
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs267852_
                                               _xargs267860_))))
                                (declare (not safe))
                                (cons __tmp274498 __tmp274497))))
                         (declare (not safe))
                         (cons __tmp274500 __tmp274496))))
                  (declare (not safe))
                  (cons '%#call __tmp274495))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp274494
                                                    _stx267810_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0 __tmp274493)))
                                        (let* ((_kwt267864_
                                                (let ((__tmp274443
                                                       (gensym '__kwt)))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp274443)))
                                               (_kwvars267867_
                                                (map (lambda (_g274444_)
                                                       (let ((__tmp274445
                                                              (gensym '__kw)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp274445)))
                                                     _kwargs267853_))
                                               (_kwbind267872_
                                                (map (lambda (_kw267869_
                                                              _kwvar267870_)
                                                       (let ((__tmp274448
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar267870_ '())))
                     (__tmp274446
                      (let ((__tmp274447 (cdr _kw267869_)))
                        (declare (not safe))
                        (cons __tmp274447 '()))))
                 (declare (not safe))
                 (cons __tmp274448 __tmp274446)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs267853_
                                                     _kwvars267867_))
                                               (_kwset267877_
                                                (map (lambda (_kw267874_
                                                              _kwvar267875_)
                                                       (let ((__tmp274449
                                                              (let ((__tmp274450
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp274458
                                    (let ((__tmp274459
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt267864_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp274459)))
                                   (__tmp274451
                                    (let ((__tmp274455
                                           (let ((__tmp274456
                                                  (let ((__tmp274457
                                                         (car _kw267874_)))
                                                    (declare (not safe))
                                                    (cons __tmp274457 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp274456)))
                                          (__tmp274452
                                           (let ((__tmp274453
                                                  (let ((__tmp274454
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar267875_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp274454))))
                                             (declare (not safe))
                                             (cons __tmp274453 '()))))
                                      (declare (not safe))
                                      (cons __tmp274455 __tmp274452))))
                               (declare (not safe))
                               (cons __tmp274458 __tmp274451))))
                        (declare (not safe))
                        (cons '(%#ref symoblic-table-set!) __tmp274450))))
                 (declare (not safe))
                 (cons '%#call __tmp274449)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs267853_
                                                     _kwvars267867_))
                                               (_xkwargs267882_
                                                (map (lambda (_kw267879_
                                                              _kwvar267880_)
                                                       (let ((__tmp274462
                                                              (car _kw267879_))
                                                             (__tmp274460
                                                              (let ((__tmp274461
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar267880_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp274461))))
                 (declare (not safe))
                 (cons __tmp274462 __tmp274460)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs267853_
                                                     _kwvars267867_))
                                               (_xargs267889_
                                                (map (lambda (_key267884_)
                                                       (let ((_$e267886_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq _key267884_ _xkwargs267882_))))
                 (if _$e267886_ (values _$e267886_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys267850_)))
                                          (let ((__tmp274463
                                                 (let ((__tmp274464
                                                        (let ((__tmp274465
                                                               (let ((__tmp274466
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp274467
                                     (let ((__tmp274468
                                            (let ((__tmp274482
                                                   (let ((__tmp274483
                                                          (let ((__tmp274492
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt267864_ '())))
                        (__tmp274484
                         (let ((__tmp274485
                                (let ((__tmp274486
                                       (let ((__tmp274487
                                              (let ((__tmp274488
                                                     (let ((__tmp274489
                                                            (let ((__tmp274490
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp274491 (length _kwargs267853_)))
                             (declare (not safe))
                             (cons __tmp274491 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp274490))))
               (declare (not safe))
               (cons __tmp274489 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-symbolic-table)
                                                      __tmp274488))))
                                         (declare (not safe))
                                         (cons '%#call __tmp274487))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp274486
                                   _stx267810_))))
                           (declare (not safe))
                           (cons __tmp274485 '()))))
                    (declare (not safe))
                    (cons __tmp274492 __tmp274484))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp274483 '())))
                                                  (__tmp274469
                                                   (let ((__tmp274470
                                                          (let ((__tmp274471
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp274472
                                (let ((__tmp274473
                                       (let ((__tmp274474
                                              (let ((__tmp274475
                                                     (let ((__tmp274480
                                                            (let ((__tmp274481
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main267849_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp274481)))
                   (__tmp274476
                    (let ((__tmp274478
                           (let ((__tmp274479
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt267864_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp274479)))
                          (__tmp274477
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs267852_ _xargs267889_))))
                      (declare (not safe))
                      (cons __tmp274478 __tmp274477))))
               (declare (not safe))
               (cons __tmp274480 __tmp274476))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp274475))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp274474
                                          _stx267810_))))
                                  (declare (not safe))
                                  (cons __tmp274473 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp274472 _kwset267877_))))
                    (declare (not safe))
                    (cons '%#begin __tmp274471))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp274470 '()))))
                                              (declare (not safe))
                                              (cons __tmp274482 __tmp274469))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp274468))))
                                (declare (not safe))
                                (cons __tmp274467 '()))))
                         (declare (not safe))
                         (cons _kwbind267872_ __tmp274466))))
                  (declare (not safe))
                  (cons '%#let-values __tmp274465))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp274464
                                                    _stx267810_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0
                                             __tmp274463)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g267829267838_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e267834267895_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g267829267838_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                               (_e267835267898_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g267829267838_
                                   '2
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_keys267901_ _e267835267898_)
                               (_e267836267903_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g267829267838_
                                   '3
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_main267906_ _e267836267903_))
                          (declare (not safe))
                          (_K267833267892_ _main267906_ _keys267901_))
                        (let () (declare (not safe)) (_else267831267846_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self267812267820_
                 'gxc#!kw-lambda::t))
              (let* ((_e267816267911_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self267812267820_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e267817267914_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self267812267820_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table267917_ _e267817267914_)
                     (_e267818267919_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self267812267820_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch267922_ _e267818267919_))
                (declare (not safe))
                (_K267815267908_ _dispatch267922_ _table267917_))
              (let () (declare (not safe)) (_E267814267824_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx267422_ _args267423_)
        (let _lp267425_ ((_rest267427_ _args267423_)
                         (_pargs267428_ '())
                         (_kwargs267429_ '()))
          (let* ((___stx273536273537_ _rest267427_)
                 (_g267435267487_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx273536273537_)))))
            (let ((___kont273538273539_
                   (lambda (_L267666_ _L267667_)
                     (let ((__tmp274502
                            (let ()
                              (declare (not safe))
                              (cons _L267667_ _pargs267428_))))
                       (declare (not safe))
                       (_lp267425_ _L267666_ __tmp274502 _kwargs267429_))))
                  (___kont273540273541_
                   (lambda (_L267612_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L267612_ _pargs267428_))
                             (reverse _kwargs267429_))))
                  (___kont273542273543_
                   (lambda (_L267559_ _L267560_ _L267561_)
                     (let ((_kw267578_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _L267561_))))
                       (if (assq _kw267578_ _kwargs267429_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx267422_
                              _kw267578_))
                           (let ((__tmp274503
                                  (let ((__tmp274504
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw267578_ _L267560_))))
                                    (declare (not safe))
                                    (cons __tmp274504 _kwargs267429_))))
                             (declare (not safe))
                             (_lp267425_
                              _L267559_
                              _pargs267428_
                              __tmp274503))))))
                  (___kont273544273545_
                   (lambda (_L267507_ _L267508_)
                     (let ((__tmp274505
                            (let ()
                              (declare (not safe))
                              (cons _L267508_ _pargs267428_))))
                       (declare (not safe))
                       (_lp267425_ _L267507_ __tmp274505 _kwargs267429_))))
                  (___kont273546273547_
                   (lambda ()
                     (values (reverse _pargs267428_)
                             (reverse _kwargs267429_)))))
              (let* ((_g267434267494_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx273536273537_))
                            (___kont273546273547_)
                            (let () (declare (not safe)) (_g267435267487_)))))
                     (___match273643273644_
                      (lambda (_e267468267527_
                               _hd267467267530_
                               _tl267466267532_
                               _e267471267535_
                               _hd267470267538_
                               _tl267469267540_
                               _e267474267543_
                               _hd267473267546_
                               _tl267472267548_
                               _e267477267551_
                               _hd267476267554_
                               _tl267475267556_)
                        (let ((_L267559_ _tl267475267556_)
                              (_L267560_ _hd267476267554_)
                              (_L267561_ _hd267473267546_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L267561_))
                              (___kont273542273543_
                               _L267559_
                               _L267560_
                               _L267561_)
                              (___kont273544273545_
                               _tl267466267532_
                               _hd267467267530_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx273536273537_))
                    (let ((_e267441267631_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx273536273537_))))
                      (let ((_tl267439267636_
                             (let ()
                               (declare (not safe))
                               (##cdr _e267441267631_)))
                            (_hd267440267634_
                             (let ()
                               (declare (not safe))
                               (##car _e267441267631_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd267440267634_))
                            (let ((_e267444267639_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd267440267634_))))
                              (let ((_tl267442267644_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e267444267639_)))
                                    (_hd267443267642_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e267444267639_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd267443267642_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd267443267642_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl267442267644_))
                                            (let ((_e267447267647_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl267442267644_))))
                                              (let ((_tl267445267652_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e267447267647_)))
                                                    (_hd267446267650_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e267447267647_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd267446267650_))
                                                    (let ((_e267448267655_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd267446267650_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e267448267655_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl267445267652_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl267439267636_))
                          (let ((_e267451267658_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl267439267636_))))
                            (let ((_tl267449267663_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e267451267658_)))
                                  (_hd267450267661_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e267451267658_))))
                              (___kont273538273539_
                               _tl267449267663_
                               _hd267450267661_)))
                          (___kont273544273545_
                           _tl267439267636_
                           _hd267440267634_))
                      (___kont273544273545_ _tl267439267636_ _hd267440267634_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e267448267655_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl267445267652_))
                          (___kont273540273541_ _tl267439267636_)
                          (___kont273544273545_
                           _tl267439267636_
                           _hd267440267634_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl267445267652_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl267439267636_))
                              (let ((_e267477267551_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl267439267636_))))
                                (let ((_tl267475267556_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e267477267551_)))
                                      (_hd267476267554_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e267477267551_))))
                                  (___match273643273644_
                                   _e267441267631_
                                   _hd267440267634_
                                   _tl267439267636_
                                   _e267444267639_
                                   _hd267443267642_
                                   _tl267442267644_
                                   _e267447267647_
                                   _hd267446267650_
                                   _tl267445267652_
                                   _e267477267551_
                                   _hd267476267554_
                                   _tl267475267556_)))
                              (___kont273544273545_
                               _tl267439267636_
                               _hd267440267634_))
                          (___kont273544273545_
                           _tl267439267636_
                           _hd267440267634_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl267445267652_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl267439267636_))
                                                            (let ((_e267477267551_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl267439267636_))))
                      (let ((_tl267475267556_
                             (let ()
                               (declare (not safe))
                               (##cdr _e267477267551_)))
                            (_hd267476267554_
                             (let ()
                               (declare (not safe))
                               (##car _e267477267551_))))
                        (___match273643273644_
                         _e267441267631_
                         _hd267440267634_
                         _tl267439267636_
                         _e267444267639_
                         _hd267443267642_
                         _tl267442267644_
                         _e267447267647_
                         _hd267446267650_
                         _tl267445267652_
                         _e267477267551_
                         _hd267476267554_
                         _tl267475267556_)))
                    (___kont273544273545_ _tl267439267636_ _hd267440267634_))
                (___kont273544273545_ _tl267439267636_ _hd267440267634_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont273544273545_
                                             _tl267439267636_
                                             _hd267440267634_))
                                        (___kont273544273545_
                                         _tl267439267636_
                                         _hd267440267634_))
                                    (___kont273544273545_
                                     _tl267439267636_
                                     _hd267440267634_))))
                            (___kont273544273545_
                             _tl267439267636_
                             _hd267440267634_))))
                    (let () (declare (not safe)) (_g267434267494_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self267418_ _stx267419_ _args267420_)
        (let () (declare (not safe)) (gxc#xform-call% _stx267419_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
