(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1708210947)
  (begin
    (define gxc#&optimize-call
      (make-promise
       (lambda ()
         (let ((_tbl269300_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp273658 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-copy! _tbl269300_ __tmp273658))
           (let ()
             (declare (not safe))
             (table-set! _tbl269300_ '%#call gxc#optimize-call%))
           _tbl269300_))))
    (define gxc#apply-optimize-call
      (lambda (_stx269283_ . _args269285_)
        (let ((__tmp273660
               (lambda ()
                 (declare (not safe))
                 (if (null? _args269285_)
                     (gxc#compile-e__0 _stx269283_)
                     (let ((_arg1269290_ (car _args269285_))
                           (_rest269292_ (cdr _args269285_)))
                       (if (null? _rest269292_)
                           (gxc#compile-e__1 _stx269283_ _arg1269290_)
                           (let ((_arg2269295_ (car _rest269292_))
                                 (_rest269297_ (cdr _rest269292_)))
                             (if (null? _rest269297_)
                                 (gxc#compile-e__2
                                  _stx269283_
                                  _arg1269290_
                                  _arg2269295_)
                                 (apply gxc#compile-e
                                        _stx269283_
                                        _arg1269290_
                                        _arg2269295_
                                        _rest269297_))))))))
              (__tmp273659 (force gxc#&optimize-call)))
          (declare (not safe))
          (call-with-parameters
           __tmp273660
           gxc#current-compile-methods
           __tmp273659))))
    (define gxc#optimize-call%
      (lambda (_stx269138_)
        (let* ((___stx273408273409_ _stx269138_)
               (_g269141269161_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx273408273409_)))))
          (let ((___kont273410273411_
                 (lambda (_L269205_ _L269206_)
                   (let* ((_rator-id269224_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L269206_)))
                          (_rator-type269226_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id269224_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type269226_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp273661
                                  (##structure-ref
                                   _rator-type269226_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id269224_
                              '" => "
                              _rator-type269226_
                              '" "
                              __tmp273661))
                           (let ((_optimized269229_
                                  (let ((__method273656
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type269226_
                                            'optimize-call))))
                                    (if __method273656
                                        (__method273656
                                         _rator-type269226_
                                         _stx269138_
                                         _L269205_)
                                        (error '"Missing method"
                                               _rator-type269226_
                                               'optimize-call)))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type269226_))
                                 _optimized269229_
                                 (let* ((___stx273390273391_ _optimized269229_)
                                        (_g269232269242_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx273390273391_)))))
                                   (let ((___kont273392273393_
                                          (lambda (_L269262_)
                                            (let ((__tmp273662
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L269262_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp273662
                                               _stx269138_))))
                                         (___kont273394273395_
                                          (lambda () _optimized269229_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx273390273391_))
                                         (let ((_e269237269254_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx273390273391_))))
                                           (let ((_tl269235269259_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e269237269254_)))
                                                 (_hd269236269257_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e269237269254_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd269236269257_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd269236269257_))
                                                     (___kont273392273393_
                                                      _tl269235269259_)
                                                     (___kont273394273395_))
                                                 (___kont273394273395_))))
                                         (___kont273394273395_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type269226_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx269138_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _stx269138_
                                _rator-type269226_)))))))
                (___kont273412273413_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _stx269138_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx273408273409_))
                (let ((_e269147269173_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx273408273409_))))
                  (let ((_tl269145269178_
                         (let () (declare (not safe)) (##cdr _e269147269173_)))
                        (_hd269146269176_
                         (let ()
                           (declare (not safe))
                           (##car _e269147269173_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl269145269178_))
                        (let ((_e269150269181_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl269145269178_))))
                          (let ((_tl269148269186_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e269150269181_)))
                                (_hd269149269184_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e269150269181_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd269149269184_))
                                (let ((_e269153269189_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd269149269184_))))
                                  (let ((_tl269151269194_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e269153269189_)))
                                        (_hd269152269192_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e269153269189_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd269152269192_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd269152269192_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl269151269194_))
                                                (let ((_e269156269197_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl269151269194_))))
                                                  (let ((_tl269154269202_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e269156269197_)))
                                                        (_hd269155269200_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e269156269197_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl269154269202_))
                                                        (___kont273410273411_
                                                         _tl269148269186_
                                                         _hd269155269200_)
                                                        (___kont273412273413_))))
                                                (___kont273412273413_))
                                            (___kont273412273413_))
                                        (___kont273412273413_))))
                                (___kont273412273413_))))
                        (___kont273412273413_))))
                (___kont273412273413_))))))
    (define gxc#!predicate::optimize-call
      (lambda (_self269092_ _stx269093_ _args269094_)
        (let* ((_g269096269106_
                (lambda (_g269097269103_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g269097269103_))))
               (_g269095269135_
                (lambda (_g269097269109_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g269097269109_))
                      (let ((_e269101269111_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g269097269109_))))
                        (let ((_hd269100269114_
                               (let ()
                                 (declare (not safe))
                                 (##car _e269101269111_)))
                              (_tl269099269116_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e269101269111_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl269099269116_))
                              ((lambda (_L269119_)
                                 (let* ((_klass269130_
                                         (let ((__tmp273663
                                                (##structure-ref
                                                 _self269092_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx269093_
                                            __tmp273663)))
                                        (_object269132_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L269119_))))
                                   (if (##structure-ref
                                        _klass269130_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp273679
                                              (let ((__tmp273680
                                                     (let ((__tmp273682
                                                            (let ((__tmp273683
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp273684
                                  (##structure-ref
                                   _klass269130_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp273684 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp273683)))
                   (__tmp273681
                    (let () (declare (not safe)) (cons _object269132_ '()))))
               (declare (not safe))
               (cons __tmp273682 __tmp273681))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#struct-direct-instance?
                                                      __tmp273680))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp273679
                                          _stx269093_))
                                       (if (##structure-ref
                                            _klass269130_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp273673
                                                  (let ((__tmp273674
                                                         (let ((__tmp273676
                                                                (let ((__tmp273677
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp273678
                                      (##structure-ref
                                       _klass269130_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp273678 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp273677)))
                       (__tmp273675
                        (let ()
                          (declare (not safe))
                          (cons _object269132_ '()))))
                   (declare (not safe))
                   (cons __tmp273676 __tmp273675))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-instance?
                                                          __tmp273674))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp273673
                                              _stx269093_))
                                           (let ((__tmp273664
                                                  (let ((__tmp273665
                                                         (let ((__tmp273671
                                                                (let ((__tmp273672
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'class-instance? '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp273672)))
                       (__tmp273666
                        (let ((__tmp273668
                               (let ((__tmp273669
                                      (let ((__tmp273670
                                             (##structure-ref
                                              _self269092_
                                              '1
                                              gxc#!type::t
                                              '#f)))
                                        (declare (not safe))
                                        (cons __tmp273670 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp273669)))
                              (__tmp273667
                               (let ()
                                 (declare (not safe))
                                 (cons _object269132_ '()))))
                          (declare (not safe))
                          (cons __tmp273668 __tmp273667))))
                   (declare (not safe))
                   (cons __tmp273671 __tmp273666))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#call
                                                          __tmp273665))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp273664
                                              _stx269093_))))))
                               _hd269100269114_)
                              (let ()
                                (declare (not safe))
                                (_g269096269106_ _g269097269109_)))))
                      (let ()
                        (declare (not safe))
                        (_g269096269106_ _g269097269109_))))))
          (declare (not safe))
          (_g269095269135_ _args269094_))))
    (define gxc#!predicate::optimize-call::specialize
      (lambda (__t273369)
        (let ((__id273370
               (let ((__tmp273371
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t273369 'id))))
                 (if __tmp273371 __tmp273371 (error '"Unknown slot" 'id)))))
          (lambda (_self269092_ _stx269093_ _args269094_)
            (let* ((_g269096269106_
                    (lambda (_g269097269103_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g269097269103_))))
                   (_g269095269135_
                    (lambda (_g269097269109_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g269097269109_))
                          (let ((_e269101269111_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g269097269109_))))
                            (let ((_hd269100269114_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e269101269111_)))
                                  (_tl269099269116_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e269101269111_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl269099269116_))
                                  ((lambda (_L269119_)
                                     (let* ((_klass269130_
                                             (let ((__tmp273685
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self269092_
                                                       __id273370
                                                       __t273369
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx269093_
                                                __tmp273685)))
                                            (_object269132_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L269119_))))
                                       (if (##structure-ref
                                            _klass269130_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp273701
                                                  (let ((__tmp273702
                                                         (let ((__tmp273704
                                                                (let ((__tmp273705
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp273706
                                      (##structure-ref
                                       _klass269130_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp273706 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp273705)))
                       (__tmp273703
                        (let ()
                          (declare (not safe))
                          (cons _object269132_ '()))))
                   (declare (not safe))
                   (cons __tmp273704 __tmp273703))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-direct-instance?
                                                          __tmp273702))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp273701
                                              _stx269093_))
                                           (if (##structure-ref
                                                _klass269130_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp273695
                                                      (let ((__tmp273696
                                                             (let ((__tmp273698
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp273699
                                   (let ((__tmp273700
                                          (##structure-ref
                                           _klass269130_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp273700 '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp273699)))
                           (__tmp273697
                            (let ()
                              (declare (not safe))
                              (cons _object269132_ '()))))
                       (declare (not safe))
                       (cons __tmp273698 __tmp273697))))
                (declare (not safe))
                (cons '%#struct-instance? __tmp273696))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp273695
                                                  _stx269093_))
                                               (let ((__tmp273686
                                                      (let ((__tmp273687
                                                             (let ((__tmp273693
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp273694
                                   (let ()
                                     (declare (not safe))
                                     (cons 'class-instance? '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp273694)))
                           (__tmp273688
                            (let ((__tmp273690
                                   (let ((__tmp273691
                                          (let ((__tmp273692
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _self269092_
                                                    __id273370
                                                    __t273369
                                                    '#f))))
                                            (declare (not safe))
                                            (cons __tmp273692 '()))))
                                     (declare (not safe))
                                     (cons '%#ref __tmp273691)))
                                  (__tmp273689
                                   (let ()
                                     (declare (not safe))
                                     (cons _object269132_ '()))))
                              (declare (not safe))
                              (cons __tmp273690 __tmp273689))))
                       (declare (not safe))
                       (cons __tmp273693 __tmp273688))))
                (declare (not safe))
                (cons '%#call __tmp273687))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp273686
                                                  _stx269093_))))))
                                   _hd269100269114_)
                                  (let ()
                                    (declare (not safe))
                                    (_g269096269106_ _g269097269109_)))))
                          (let ()
                            (declare (not safe))
                            (_g269096269106_ _g269097269109_))))))
              (declare (not safe))
              (_g269095269135_ _args269094_))))))
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
      (lambda (_self268812_ _stx268813_ _args268814_)
        (let* ((_klass268816_
                (let ((__tmp273707
                       (##structure-ref _self268812_ '1 gxc#!type::t '#f)))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _stx268813_ __tmp273707)))
               (_fields268818_
                (length (##structure-ref _klass268816_ '5 gxc#!class::t '#f)))
               (_args268820_ (map gxc#compile-e _args268814_))
               (_inline-make-object268822_
                (let ((__tmp273708
                       (let ((__tmp273714
                              (let ((__tmp273715
                                     (let ()
                                       (declare (not safe))
                                       (cons '##structure '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp273715)))
                             (__tmp273709
                              (let ((__tmp273711
                                     (let ((__tmp273712
                                            (let ((__tmp273713
                                                   (##structure-ref
                                                    _self268812_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp273713 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp273712)))
                                    (__tmp273710
                                     (make-list _fields268818_ '(%#quote #f))))
                                (declare (not safe))
                                (cons __tmp273711 __tmp273710))))
                         (declare (not safe))
                         (cons __tmp273714 __tmp273709))))
                  (declare (not safe))
                  (cons '%#call __tmp273708))))
          (let ((_$e268825_
                 (##structure-ref _klass268816_ '6 gxc#!class::t '#f)))
            (if _$e268825_
                ((lambda (_ctor268828_)
                   (let ((_$obj268830_
                          (let ((__tmp273815 (gensym '__obj)))
                            (declare (not safe))
                            (make-symbol__0 __tmp273815)))
                         (_ctor-impl268831_
                          (let ()
                            (declare (not safe))
                            (gxc#!class-lookup-method
                             _klass268816_
                             _ctor268828_))))
                     (let ((__tmp273816
                            (let ((__tmp273817
                                   (let ((__tmp273885
                                          (let ((__tmp273886
                                                 (let ((__tmp273888
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj268830_
                                                                '())))
                                                       (__tmp273887
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _inline-make-object268822_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp273888
                                                         __tmp273887))))
                                            (declare (not safe))
                                            (cons __tmp273886 '())))
                                         (__tmp273818
                                          (let ((__tmp273819
                                                 (let ((__tmp273820
                                                        (let ((__tmp273824
                                                               (if _ctor-impl268831_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp273879
                                  (let ((__tmp273883
                                         (let ((__tmp273884
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _ctor-impl268831_
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp273884)))
                                        (__tmp273880
                                         (let ((__tmp273881
                                                (let ((__tmp273882
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj268830_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp273882))))
                                           (declare (not safe))
                                           (cons __tmp273881 _args268820_))))
                                    (declare (not safe))
                                    (cons __tmp273883 __tmp273880))))
                             (declare (not safe))
                             (cons '%#call __tmp273879))
                           (let* ((_$ctor268833_
                                   (let ((__tmp273825 (gensym '__constructor)))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp273825)))
                                  (__tmp273826
                                   (let ((__tmp273861
                                          (let ((__tmp273862
                                                 (let ((__tmp273878
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$ctor268833_
                                                                '())))
                                                       (__tmp273863
                                                        (let ((__tmp273864
                                                               (let ((__tmp273865
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp273876
                                     (let ((__tmp273877
                                            (let ()
                                              (declare (not safe))
                                              (cons 'direct-method-ref '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp273877)))
                                    (__tmp273866
                                     (let ((__tmp273873
                                            (let ((__tmp273874
                                                   (let ((__tmp273875
                                                          (##structure-ref
                                                           _self268812_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp273875 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp273874)))
                                           (__tmp273867
                                            (let ((__tmp273871
                                                   (let ((__tmp273872
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj268830_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp273872)))
                                                  (__tmp273868
                                                   (let ((__tmp273869
                                                          (let ((__tmp273870
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _ctor268828_ '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp273870))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp273869 '()))))
                                              (declare (not safe))
                                              (cons __tmp273871 __tmp273868))))
                                       (declare (not safe))
                                       (cons __tmp273873 __tmp273867))))
                                (declare (not safe))
                                (cons __tmp273876 __tmp273866))))
                         (declare (not safe))
                         (cons '%#call __tmp273865))))
                  (declare (not safe))
                  (cons __tmp273864 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp273878
                                                         __tmp273863))))
                                            (declare (not safe))
                                            (cons __tmp273862 '())))
                                         (__tmp273827
                                          (let ((__tmp273828
                                                 (let ((__tmp273829
                                                        (let ((__tmp273859
                                                               (let ((__tmp273860
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$ctor268833_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp273860)))
                      (__tmp273830
                       (let ((__tmp273852
                              (let ((__tmp273853
                                     (let ((__tmp273857
                                            (let ((__tmp273858
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$ctor268833_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp273858)))
                                           (__tmp273854
                                            (let ((__tmp273855
                                                   (let ((__tmp273856
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj268830_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp273856))))
                                              (declare (not safe))
                                              (cons __tmp273855
                                                    _args268820_))))
                                       (declare (not safe))
                                       (cons __tmp273857 __tmp273854))))
                                (declare (not safe))
                                (cons '%#call __tmp273853)))
                             (__tmp273831
                              (let ((__tmp273832
                                     (let ((__tmp273833
                                            (let ((__tmp273850
                                                   (let ((__tmp273851
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp273851)))
                                                  (__tmp273834
                                                   (let ((__tmp273848
                                                          (let ((__tmp273849
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons '"missing constructor method implementation"
                                 '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp273849)))
                 (__tmp273835
                  (let ((__tmp273846
                         (let ((__tmp273847
                                (let ()
                                  (declare (not safe))
                                  (cons 'class: '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp273847)))
                        (__tmp273836
                         (let ((__tmp273843
                                (let ((__tmp273844
                                       (let ((__tmp273845
                                              (##structure-ref
                                               _self268812_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp273845 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp273844)))
                               (__tmp273837
                                (let ((__tmp273841
                                       (let ((__tmp273842
                                              (let ()
                                                (declare (not safe))
                                                (cons 'method: '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp273842)))
                                      (__tmp273838
                                       (let ((__tmp273839
                                              (let ((__tmp273840
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _ctor268828_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#quote __tmp273840))))
                                         (declare (not safe))
                                         (cons __tmp273839 '()))))
                                  (declare (not safe))
                                  (cons __tmp273841 __tmp273838))))
                           (declare (not safe))
                           (cons __tmp273843 __tmp273837))))
                    (declare (not safe))
                    (cons __tmp273846 __tmp273836))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp273848
                                                           __tmp273835))))
                                              (declare (not safe))
                                              (cons __tmp273850 __tmp273834))))
                                       (declare (not safe))
                                       (cons '%#call __tmp273833))))
                                (declare (not safe))
                                (cons __tmp273832 '()))))
                         (declare (not safe))
                         (cons __tmp273852 __tmp273831))))
                  (declare (not safe))
                  (cons __tmp273859 __tmp273830))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#if __tmp273829))))
                                            (declare (not safe))
                                            (cons __tmp273828 '()))))
                                     (declare (not safe))
                                     (cons __tmp273861 __tmp273827))))
                             (declare (not safe))
                             (cons '%#let-values __tmp273826))))
                      (__tmp273821
                       (let ((__tmp273822
                              (let ((__tmp273823
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj268830_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp273823))))
                         (declare (not safe))
                         (cons __tmp273822 '()))))
                  (declare (not safe))
                  (cons __tmp273824 __tmp273821))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#begin
                                                         __tmp273820))))
                                            (declare (not safe))
                                            (cons __tmp273819 '()))))
                                     (declare (not safe))
                                     (cons __tmp273885 __tmp273818))))
                              (declare (not safe))
                              (cons '%#let-values __tmp273817))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp273816 _stx268813_))))
                 _$e268825_)
                (let ((_$e268835_
                       (##structure-ref _klass268816_ '9 gxc#!class::t '#f)))
                  (if _$e268835_
                      ((lambda (_metaclass268838_)
                         (let* ((_$obj268840_
                                 (let ((__tmp273777 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp273777)))
                                (_metakons268842_
                                 (let ((__tmp273778
                                        (let ()
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-class
                                           _stx268813_
                                           _metaclass268838_))))
                                   (declare (not safe))
                                   (gxc#!class-lookup-method
                                    __tmp273778
                                    'instance-init!))))
                           (let ((__tmp273779
                                  (let ((__tmp273780
                                         (let ((__tmp273811
                                                (let ((__tmp273812
                                                       (let ((__tmp273814
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj268840_ '())))
                     (__tmp273813
                      (let ()
                        (declare (not safe))
                        (cons _inline-make-object268822_ '()))))
                 (declare (not safe))
                 (cons __tmp273814 __tmp273813))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp273812 '())))
                                               (__tmp273781
                                                (let ((__tmp273782
                                                       (let ((__tmp273783
                                                              (let ((__tmp273787
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if _metakons268842_
                                 (let ((__tmp273801
                                        (let ((__tmp273809
                                               (let ((__tmp273810
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _metakons268842_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp273810)))
                                              (__tmp273802
                                               (let ((__tmp273806
                                                      (let ((__tmp273807
                                                             (let ((__tmp273808
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self268812_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp273808 '()))))
                (declare (not safe))
                (cons '%#ref __tmp273807)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp273803
                                                      (let ((__tmp273804
                                                             (let ((__tmp273805
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _$obj268840_ '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp273805))))
                (declare (not safe))
                (cons __tmp273804 _args268820_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp273806
                                                       __tmp273803))))
                                          (declare (not safe))
                                          (cons __tmp273809 __tmp273802))))
                                   (declare (not safe))
                                   (cons '%#call __tmp273801))
                                 (let ((__tmp273788
                                        (let ((__tmp273799
                                               (let ((__tmp273800
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'call-method
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp273800)))
                                              (__tmp273789
                                               (let ((__tmp273796
                                                      (let ((__tmp273797
                                                             (let ((__tmp273798
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self268812_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp273798 '()))))
                (declare (not safe))
                (cons '%#ref __tmp273797)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp273790
                                                      (let ((__tmp273794
                                                             (let ((__tmp273795
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'instance-init! '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp273795)))
                    (__tmp273791
                     (let ((__tmp273792
                            (let ((__tmp273793
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj268840_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp273793))))
                       (declare (not safe))
                       (cons __tmp273792 _args268820_))))
                (declare (not safe))
                (cons __tmp273794 __tmp273791))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp273796
                                                       __tmp273790))))
                                          (declare (not safe))
                                          (cons __tmp273799 __tmp273789))))
                                   (declare (not safe))
                                   (cons '%#call __tmp273788))))
                            (__tmp273784
                             (let ((__tmp273785
                                    (let ((__tmp273786
                                           (let ()
                                             (declare (not safe))
                                             (cons _$obj268840_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp273786))))
                               (declare (not safe))
                               (cons __tmp273785 '()))))
                        (declare (not safe))
                        (cons __tmp273787 __tmp273784))))
                 (declare (not safe))
                 (cons '%#begin __tmp273783))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp273782 '()))))
                                           (declare (not safe))
                                           (cons __tmp273811 __tmp273781))))
                                    (declare (not safe))
                                    (cons '%#let-values __tmp273780))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp273779 _stx268813_))))
                       _$e268835_)
                      (if (##structure-ref _klass268816_ '7 gxc#!class::t '#f)
                          (if (fx= (length _args268820_) _fields268818_)
                              (let ((__tmp273769
                                     (let ((__tmp273770
                                            (let ((__tmp273775
                                                   (let ((__tmp273776
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp273776)))
                                                  (__tmp273771
                                                   (let ((__tmp273772
                                                          (let ((__tmp273773
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp273774
                                (##structure-ref
                                 _self268812_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (cons __tmp273774 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp273773))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp273772
                                                           _args268820_))))
                                              (declare (not safe))
                                              (cons __tmp273775 __tmp273771))))
                                       (declare (not safe))
                                       (cons '%#call __tmp273770))))
                                (declare (not safe))
                                (gxc#xform-wrap-source
                                 __tmp273769
                                 _stx268813_))
                              (let ((__tmp273768
                                     (##structure-ref
                                      _self268812_
                                      '1
                                      gxc#!type::t
                                      '#f))
                                    (__tmp273767
                                     (length (##structure-ref
                                              _klass268816_
                                              '5
                                              gxc#!class::t
                                              '#f))))
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"illegal struct constructor application; arity mismatch"
                                 _stx268813_
                                 __tmp273768
                                 __tmp273767)))
                          (let ((_$obj268845_
                                 (let ((__tmp273716 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp273716))))
                            (let _lp268847_ ((_rest268849_ _args268820_)
                                             (_initializers268850_ '()))
                              (let* ((___stx273446273447_ _rest268849_)
                                     (_g268854268875_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx273446273447_)))))
                                (let ((___kont273448273449_
                                       (lambda (_L268929_ _L268930_ _L268931_)
                                         (let* ((_slot268962_
                                                 (keyword->symbol
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e _L268931_))))
                                                (_off268964_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass268816_
                                                    _slot268962_))))
                                           (if _off268964_
                                               (let ((__tmp273718
                                                      (let ((__tmp273719
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _off268964_ _L268930_))))
                (declare (not safe))
                (cons __tmp273719 _initializers268850_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp268847_
                                                  _L268929_
                                                  __tmp273718))
                                               (let ((__tmp273717
                                                      (##structure-ref
                                                       _self268812_
                                                       '1
                                                       gxc#!type::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"unknown slot"
                                                  _stx268813_
                                                  __tmp273717
                                                  _slot268962_))))))
                                      (___kont273450273451_
                                       (lambda ()
                                         (let ((__tmp273720
                                                (let ((__tmp273721
                                                       (let ((__tmp273744
                                                              (let ((__tmp273745
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp273747
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj268845_ '())))
                                   (__tmp273746
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object268822_ '()))))
                               (declare (not safe))
                               (cons __tmp273747 __tmp273746))))
                        (declare (not safe))
                        (cons __tmp273745 '())))
                     (__tmp273722
                      (let ((__tmp273723
                             (let ((__tmp273724
                                    (let ((__tmp273741
                                           (let ((__tmp273742
                                                  (let ((__tmp273743
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj268845_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp273743))))
                                             (declare (not safe))
                                             (cons __tmp273742 '())))
                                          (__tmp273725
                                           (let ((__tmp273726
                                                  (lambda (_i268889_ _r268890_)
                                                    (let ((__tmp273727
                                                           (let ((__tmp273728
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp273738
                                 (let ((__tmp273739
                                        (let ((__tmp273740
                                               (##structure-ref
                                                _self268812_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp273740 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp273739)))
                                (__tmp273729
                                 (let ((__tmp273735
                                        (let ((__tmp273736
                                               (let ((__tmp273737
                                                      (car _i268889_)))
                                                 (declare (not safe))
                                                 (cons __tmp273737 '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp273736)))
                                       (__tmp273730
                                        (let ((__tmp273733
                                               (let ((__tmp273734
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _$obj268845_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp273734)))
                                              (__tmp273731
                                               (let ((__tmp273732
                                                      (cdr _i268889_)))
                                                 (declare (not safe))
                                                 (cons __tmp273732 '()))))
                                          (declare (not safe))
                                          (cons __tmp273733 __tmp273731))))
                                   (declare (not safe))
                                   (cons __tmp273735 __tmp273730))))
                            (declare (not safe))
                            (cons __tmp273738 __tmp273729))))
                     (declare (not safe))
                     (cons '%#struct-unchecked-set! __tmp273728))))
              (declare (not safe))
              (cons __tmp273727 _r268890_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (foldl1 __tmp273726
                                                     '()
                                                     _initializers268850_))))
                                      (declare (not safe))
                                      (foldr1 cons __tmp273741 __tmp273725))))
                               (declare (not safe))
                               (cons '%#begin __tmp273724))))
                        (declare (not safe))
                        (cons __tmp273723 '()))))
                 (declare (not safe))
                 (cons __tmp273744 __tmp273722))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp273721))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp273720
                                            _stx268813_))))
                                      (___kont273452273453_
                                       (lambda ()
                                         (let ((__tmp273748
                                                (let ((__tmp273749
                                                       (let ((__tmp273763
                                                              (let ((__tmp273764
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp273766
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj268845_ '())))
                                   (__tmp273765
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object268822_ '()))))
                               (declare (not safe))
                               (cons __tmp273766 __tmp273765))))
                        (declare (not safe))
                        (cons __tmp273764 '())))
                     (__tmp273750
                      (let ((__tmp273751
                             (let ((__tmp273752
                                    (let ((__tmp273756
                                           (let ((__tmp273757
                                                  (let ((__tmp273761
                                                         (let ((__tmp273762
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons 'class-instance-init! '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp273762)))
                (__tmp273758
                 (let ((__tmp273759
                        (let ((__tmp273760
                               (let ()
                                 (declare (not safe))
                                 (cons _$obj268845_ '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp273760))))
                   (declare (not safe))
                   (cons __tmp273759 _args268820_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp273761
                                                          __tmp273758))))
                                             (declare (not safe))
                                             (cons '%#call __tmp273757)))
                                          (__tmp273753
                                           (let ((__tmp273754
                                                  (let ((__tmp273755
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj268845_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp273755))))
                                             (declare (not safe))
                                             (cons __tmp273754 '()))))
                                      (declare (not safe))
                                      (cons __tmp273756 __tmp273753))))
                               (declare (not safe))
                               (cons '%#begin __tmp273752))))
                        (declare (not safe))
                        (cons __tmp273751 '()))))
                 (declare (not safe))
                 (cons __tmp273763 __tmp273750))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp273749))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp273748
                                            _stx268813_)))))
                                  (let* ((_g268852268892_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   ___stx273446273447_))
                                                (___kont273450273451_)
                                                (___kont273452273453_))))
                                         (___match273483273484_
                                          (lambda (_e268861268897_
                                                   _hd268860268900_
                                                   _tl268859268902_
                                                   _e268864268905_
                                                   _hd268863268908_
                                                   _tl268862268910_
                                                   _e268867268913_
                                                   _hd268866268916_
                                                   _tl268865268918_
                                                   _e268870268921_
                                                   _hd268869268924_
                                                   _tl268868268926_)
                                            (let ((_L268929_ _tl268868268926_)
                                                  (_L268930_ _hd268869268924_)
                                                  (_L268931_ _hd268866268916_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-keyword?
                                                     _L268931_))
                                                  (___kont273448273449_
                                                   _L268929_
                                                   _L268930_
                                                   _L268931_)
                                                  (___kont273452273453_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx273446273447_))
                                        (let ((_e268861268897_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx273446273447_))))
                                          (let ((_tl268859268902_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e268861268897_)))
                                                (_hd268860268900_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e268861268897_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd268860268900_))
                                                (let ((_e268864268905_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd268860268900_))))
                                                  (let ((_tl268862268910_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e268864268905_)))
                                                        (_hd268863268908_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e268864268905_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd268863268908_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#quote
                                                               _hd268863268908_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl268862268910_))
                        (let ((_e268867268913_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl268862268910_))))
                          (let ((_tl268865268918_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e268867268913_)))
                                (_hd268866268916_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e268867268913_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl268865268918_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl268859268902_))
                                    (let ((_e268870268921_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl268859268902_))))
                                      (let ((_tl268868268926_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e268870268921_)))
                                            (_hd268869268924_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e268870268921_))))
                                        (___match273483273484_
                                         _e268861268897_
                                         _hd268860268900_
                                         _tl268859268902_
                                         _e268864268905_
                                         _hd268863268908_
                                         _tl268862268910_
                                         _e268867268913_
                                         _hd268866268916_
                                         _tl268865268918_
                                         _e268870268921_
                                         _hd268869268924_
                                         _tl268868268926_)))
                                    (___kont273452273453_))
                                (___kont273452273453_))))
                        (___kont273452273453_))
                    (___kont273452273453_))
                (___kont273452273453_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont273452273453_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g268852268892_))))))))))))))))
    (define gxc#!constructor::optimize-call::specialize
      (lambda (__t273372)
        (let ((__id273373
               (let ((__tmp273374
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t273372 'id))))
                 (if __tmp273374 __tmp273374 (error '"Unknown slot" 'id)))))
          (lambda (_self268812_ _stx268813_ _args268814_)
            (let* ((_klass268816_
                    (let ((__tmp273889
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _self268812_
                              __id273373
                              __t273372
                              '#f))))
                      (declare (not safe))
                      (gxc#optimizer-resolve-class _stx268813_ __tmp273889)))
                   (_fields268818_
                    (length (##structure-ref
                             _klass268816_
                             '5
                             gxc#!class::t
                             '#f)))
                   (_args268820_ (map gxc#compile-e _args268814_))
                   (_inline-make-object268822_
                    (let ((__tmp273890
                           (let ((__tmp273896
                                  (let ((__tmp273897
                                         (let ()
                                           (declare (not safe))
                                           (cons '##structure '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp273897)))
                                 (__tmp273891
                                  (let ((__tmp273893
                                         (let ((__tmp273894
                                                (let ((__tmp273895
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self268812_
                                                          __id273373
                                                          __t273372
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp273895 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp273894)))
                                        (__tmp273892
                                         (make-list
                                          _fields268818_
                                          '(%#quote #f))))
                                    (declare (not safe))
                                    (cons __tmp273893 __tmp273892))))
                             (declare (not safe))
                             (cons __tmp273896 __tmp273891))))
                      (declare (not safe))
                      (cons '%#call __tmp273890))))
              (let ((_$e268825_
                     (##structure-ref _klass268816_ '6 gxc#!class::t '#f)))
                (if _$e268825_
                    ((lambda (_ctor268828_)
                       (let ((_$obj268830_
                              (let ((__tmp273997 (gensym '__obj)))
                                (declare (not safe))
                                (make-symbol__0 __tmp273997)))
                             (_ctor-impl268831_
                              (let ()
                                (declare (not safe))
                                (gxc#!class-lookup-method
                                 _klass268816_
                                 _ctor268828_))))
                         (let ((__tmp273998
                                (let ((__tmp273999
                                       (let ((__tmp274067
                                              (let ((__tmp274068
                                                     (let ((__tmp274070
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$obj268830_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp274069
                    (let ()
                      (declare (not safe))
                      (cons _inline-make-object268822_ '()))))
               (declare (not safe))
               (cons __tmp274070 __tmp274069))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp274068 '())))
                                             (__tmp274000
                                              (let ((__tmp274001
                                                     (let ((__tmp274002
                                                            (let ((__tmp274006
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _ctor-impl268831_
                               (let ((__tmp274061
                                      (let ((__tmp274065
                                             (let ((__tmp274066
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor-impl268831_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp274066)))
                                            (__tmp274062
                                             (let ((__tmp274063
                                                    (let ((__tmp274064
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$obj268830_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp274064))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp274063
                                                     _args268820_))))
                                        (declare (not safe))
                                        (cons __tmp274065 __tmp274062))))
                                 (declare (not safe))
                                 (cons '%#call __tmp274061))
                               (let* ((_$ctor268833_
                                       (let ((__tmp274007
                                              (gensym '__constructor)))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp274007)))
                                      (__tmp274008
                                       (let ((__tmp274043
                                              (let ((__tmp274044
                                                     (let ((__tmp274060
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$ctor268833_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp274045
                    (let ((__tmp274046
                           (let ((__tmp274047
                                  (let ((__tmp274058
                                         (let ((__tmp274059
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'direct-method-ref
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp274059)))
                                        (__tmp274048
                                         (let ((__tmp274055
                                                (let ((__tmp274056
                                                       (let ((__tmp274057
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self268812_
                         __id273373
                         __t273372
                         '#f))))
                 (declare (not safe))
                 (cons __tmp274057 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp274056)))
                                               (__tmp274049
                                                (let ((__tmp274053
                                                       (let ((__tmp274054
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj268830_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp274054)))
              (__tmp274050
               (let ((__tmp274051
                      (let ((__tmp274052
                             (let ()
                               (declare (not safe))
                               (cons _ctor268828_ '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp274052))))
                 (declare (not safe))
                 (cons __tmp274051 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp274053
                                                        __tmp274050))))
                                           (declare (not safe))
                                           (cons __tmp274055 __tmp274049))))
                                    (declare (not safe))
                                    (cons __tmp274058 __tmp274048))))
                             (declare (not safe))
                             (cons '%#call __tmp274047))))
                      (declare (not safe))
                      (cons __tmp274046 '()))))
               (declare (not safe))
               (cons __tmp274060 __tmp274045))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp274044 '())))
                                             (__tmp274009
                                              (let ((__tmp274010
                                                     (let ((__tmp274011
                                                            (let ((__tmp274041
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp274042
                                  (let ()
                                    (declare (not safe))
                                    (cons _$ctor268833_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp274042)))
                          (__tmp274012
                           (let ((__tmp274034
                                  (let ((__tmp274035
                                         (let ((__tmp274039
                                                (let ((__tmp274040
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$ctor268833_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp274040)))
                                               (__tmp274036
                                                (let ((__tmp274037
                                                       (let ((__tmp274038
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj268830_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp274038))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp274037
                                                        _args268820_))))
                                           (declare (not safe))
                                           (cons __tmp274039 __tmp274036))))
                                    (declare (not safe))
                                    (cons '%#call __tmp274035)))
                                 (__tmp274013
                                  (let ((__tmp274014
                                         (let ((__tmp274015
                                                (let ((__tmp274032
                                                       (let ((__tmp274033
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'error '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp274033)))
              (__tmp274016
               (let ((__tmp274030
                      (let ((__tmp274031
                             (let ()
                               (declare (not safe))
                               (cons '"missing constructor method implementation"
                                     '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp274031)))
                     (__tmp274017
                      (let ((__tmp274028
                             (let ((__tmp274029
                                    (let ()
                                      (declare (not safe))
                                      (cons 'class: '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp274029)))
                            (__tmp274018
                             (let ((__tmp274025
                                    (let ((__tmp274026
                                           (let ((__tmp274027
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self268812_
                                                     __id273373
                                                     __t273372
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp274027 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp274026)))
                                   (__tmp274019
                                    (let ((__tmp274023
                                           (let ((__tmp274024
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'method: '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp274024)))
                                          (__tmp274020
                                           (let ((__tmp274021
                                                  (let ((__tmp274022
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _ctor268828_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#quote
                                                          __tmp274022))))
                                             (declare (not safe))
                                             (cons __tmp274021 '()))))
                                      (declare (not safe))
                                      (cons __tmp274023 __tmp274020))))
                               (declare (not safe))
                               (cons __tmp274025 __tmp274019))))
                        (declare (not safe))
                        (cons __tmp274028 __tmp274018))))
                 (declare (not safe))
                 (cons __tmp274030 __tmp274017))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp274032
                                                        __tmp274016))))
                                           (declare (not safe))
                                           (cons '%#call __tmp274015))))
                                    (declare (not safe))
                                    (cons __tmp274014 '()))))
                             (declare (not safe))
                             (cons __tmp274034 __tmp274013))))
                      (declare (not safe))
                      (cons __tmp274041 __tmp274012))))
               (declare (not safe))
               (cons '%#if __tmp274011))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp274010 '()))))
                                         (declare (not safe))
                                         (cons __tmp274043 __tmp274009))))
                                 (declare (not safe))
                                 (cons '%#let-values __tmp274008))))
                          (__tmp274003
                           (let ((__tmp274004
                                  (let ((__tmp274005
                                         (let ()
                                           (declare (not safe))
                                           (cons _$obj268830_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp274005))))
                             (declare (not safe))
                             (cons __tmp274004 '()))))
                      (declare (not safe))
                      (cons __tmp274006 __tmp274003))))
               (declare (not safe))
               (cons '%#begin __tmp274002))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp274001 '()))))
                                         (declare (not safe))
                                         (cons __tmp274067 __tmp274000))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp273999))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp273998 _stx268813_))))
                     _$e268825_)
                    (let ((_$e268835_
                           (##structure-ref
                            _klass268816_
                            '9
                            gxc#!class::t
                            '#f)))
                      (if _$e268835_
                          ((lambda (_metaclass268838_)
                             (let* ((_$obj268840_
                                     (let ((__tmp273959 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp273959)))
                                    (_metakons268842_
                                     (let ((__tmp273960
                                            (let ()
                                              (declare (not safe))
                                              (gxc#optimizer-resolve-class
                                               _stx268813_
                                               _metaclass268838_))))
                                       (declare (not safe))
                                       (gxc#!class-lookup-method
                                        __tmp273960
                                        'instance-init!))))
                               (let ((__tmp273961
                                      (let ((__tmp273962
                                             (let ((__tmp273993
                                                    (let ((__tmp273994
                                                           (let ((__tmp273996
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj268840_ '())))
                         (__tmp273995
                          (let ()
                            (declare (not safe))
                            (cons _inline-make-object268822_ '()))))
                     (declare (not safe))
                     (cons __tmp273996 __tmp273995))))
              (declare (not safe))
              (cons __tmp273994 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp273963
                                                    (let ((__tmp273964
                                                           (let ((__tmp273965
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp273969
                                 (if _metakons268842_
                                     (let ((__tmp273983
                                            (let ((__tmp273991
                                                   (let ((__tmp273992
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _metakons268842_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp273992)))
                                                  (__tmp273984
                                                   (let ((__tmp273988
                                                          (let ((__tmp273989
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp273990
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self268812_
                                   __id273373
                                   __t273372
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp273990 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp273989)))
                 (__tmp273985
                  (let ((__tmp273986
                         (let ((__tmp273987
                                (let ()
                                  (declare (not safe))
                                  (cons _$obj268840_ '()))))
                           (declare (not safe))
                           (cons '%#ref __tmp273987))))
                    (declare (not safe))
                    (cons __tmp273986 _args268820_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp273988
                                                           __tmp273985))))
                                              (declare (not safe))
                                              (cons __tmp273991 __tmp273984))))
                                       (declare (not safe))
                                       (cons '%#call __tmp273983))
                                     (let ((__tmp273970
                                            (let ((__tmp273981
                                                   (let ((__tmp273982
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'call-method
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp273982)))
                                                  (__tmp273971
                                                   (let ((__tmp273978
                                                          (let ((__tmp273979
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp273980
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self268812_
                                   __id273373
                                   __t273372
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp273980 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp273979)))
                 (__tmp273972
                  (let ((__tmp273976
                         (let ((__tmp273977
                                (let ()
                                  (declare (not safe))
                                  (cons 'instance-init! '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp273977)))
                        (__tmp273973
                         (let ((__tmp273974
                                (let ((__tmp273975
                                       (let ()
                                         (declare (not safe))
                                         (cons _$obj268840_ '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp273975))))
                           (declare (not safe))
                           (cons __tmp273974 _args268820_))))
                    (declare (not safe))
                    (cons __tmp273976 __tmp273973))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp273978
                                                           __tmp273972))))
                                              (declare (not safe))
                                              (cons __tmp273981 __tmp273971))))
                                       (declare (not safe))
                                       (cons '%#call __tmp273970))))
                                (__tmp273966
                                 (let ((__tmp273967
                                        (let ((__tmp273968
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$obj268840_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp273968))))
                                   (declare (not safe))
                                   (cons __tmp273967 '()))))
                            (declare (not safe))
                            (cons __tmp273969 __tmp273966))))
                     (declare (not safe))
                     (cons '%#begin __tmp273965))))
              (declare (not safe))
              (cons __tmp273964 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp273993
                                                     __tmp273963))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp273962))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp273961
                                  _stx268813_))))
                           _$e268835_)
                          (if (##structure-ref
                               _klass268816_
                               '7
                               gxc#!class::t
                               '#f)
                              (if (fx= (length _args268820_) _fields268818_)
                                  (let ((__tmp273951
                                         (let ((__tmp273952
                                                (let ((__tmp273957
                                                       (let ((__tmp273958
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '##structure '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp273958)))
              (__tmp273953
               (let ((__tmp273954
                      (let ((__tmp273955
                             (let ((__tmp273956
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _self268812_
                                       __id273373
                                       __t273372
                                       '#f))))
                               (declare (not safe))
                               (cons __tmp273956 '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp273955))))
                 (declare (not safe))
                 (cons __tmp273954 _args268820_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp273957
                                                        __tmp273953))))
                                           (declare (not safe))
                                           (cons '%#call __tmp273952))))
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp273951
                                     _stx268813_))
                                  (let ((__tmp273950
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _self268812_
                                            __id273373
                                            __t273372
                                            '#f)))
                                        (__tmp273949
                                         (length (##structure-ref
                                                  _klass268816_
                                                  '5
                                                  gxc#!class::t
                                                  '#f))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"illegal struct constructor application; arity mismatch"
                                     _stx268813_
                                     __tmp273950
                                     __tmp273949)))
                              (let ((_$obj268845_
                                     (let ((__tmp273898 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp273898))))
                                (let _lp268847_ ((_rest268849_ _args268820_)
                                                 (_initializers268850_ '()))
                                  (let* ((___stx273488273489_ _rest268849_)
                                         (_g268854268875_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               ___stx273488273489_)))))
                                    (let ((___kont273490273491_
                                           (lambda (_L268929_
                                                    _L268930_
                                                    _L268931_)
                                             (let* ((_slot268962_
                                                     (keyword->symbol
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L268931_))))
                                                    (_off268964_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass268816_
                                                        _slot268962_))))
                                               (if _off268964_
                                                   (let ((__tmp273900
                                                          (let ((__tmp273901
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _off268964_ _L268930_))))
                    (declare (not safe))
                    (cons __tmp273901 _initializers268850_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp268847_
                                                      _L268929_
                                                      __tmp273900))
                                                   (let ((__tmp273899
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _self268812_
                                                             __id273373
                                                             __t273372
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"unknown slot"
                                                      _stx268813_
                                                      __tmp273899
                                                      _slot268962_))))))
                                          (___kont273492273493_
                                           (lambda ()
                                             (let ((__tmp273902
                                                    (let ((__tmp273903
                                                           (let ((__tmp273926
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp273927
                                 (let ((__tmp273929
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj268845_ '())))
                                       (__tmp273928
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object268822_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp273929 __tmp273928))))
                            (declare (not safe))
                            (cons __tmp273927 '())))
                         (__tmp273904
                          (let ((__tmp273905
                                 (let ((__tmp273906
                                        (let ((__tmp273923
                                               (let ((__tmp273924
                                                      (let ((__tmp273925
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj268845_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp273925))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp273924 '())))
                                              (__tmp273907
                                               (let ((__tmp273908
                                                      (lambda (_i268889_
                                                               _r268890_)
                                                        (let ((__tmp273909
                                                               (let ((__tmp273910
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp273920
                                     (let ((__tmp273921
                                            (let ((__tmp273922
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self268812_
                                                      __id273373
                                                      __t273372
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp273922 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp273921)))
                                    (__tmp273911
                                     (let ((__tmp273917
                                            (let ((__tmp273918
                                                   (let ((__tmp273919
                                                          (car _i268889_)))
                                                     (declare (not safe))
                                                     (cons __tmp273919 '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp273918)))
                                           (__tmp273912
                                            (let ((__tmp273915
                                                   (let ((__tmp273916
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj268845_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp273916)))
                                                  (__tmp273913
                                                   (let ((__tmp273914
                                                          (cdr _i268889_)))
                                                     (declare (not safe))
                                                     (cons __tmp273914 '()))))
                                              (declare (not safe))
                                              (cons __tmp273915 __tmp273913))))
                                       (declare (not safe))
                                       (cons __tmp273917 __tmp273912))))
                                (declare (not safe))
                                (cons __tmp273920 __tmp273911))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-set! __tmp273910))))
                  (declare (not safe))
                  (cons __tmp273909 _r268890_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl1 __tmp273908
                                                         '()
                                                         _initializers268850_))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp273923
                                                  __tmp273907))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp273906))))
                            (declare (not safe))
                            (cons __tmp273905 '()))))
                     (declare (not safe))
                     (cons __tmp273926 __tmp273904))))
              (declare (not safe))
              (cons '%#let-values __tmp273903))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp273902
                                                _stx268813_))))
                                          (___kont273494273495_
                                           (lambda ()
                                             (let ((__tmp273930
                                                    (let ((__tmp273931
                                                           (let ((__tmp273945
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp273946
                                 (let ((__tmp273948
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj268845_ '())))
                                       (__tmp273947
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object268822_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp273948 __tmp273947))))
                            (declare (not safe))
                            (cons __tmp273946 '())))
                         (__tmp273932
                          (let ((__tmp273933
                                 (let ((__tmp273934
                                        (let ((__tmp273938
                                               (let ((__tmp273939
                                                      (let ((__tmp273943
                                                             (let ((__tmp273944
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'class-instance-init! '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp273944)))
                    (__tmp273940
                     (let ((__tmp273941
                            (let ((__tmp273942
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj268845_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp273942))))
                       (declare (not safe))
                       (cons __tmp273941 _args268820_))))
                (declare (not safe))
                (cons __tmp273943 __tmp273940))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp273939)))
                                              (__tmp273935
                                               (let ((__tmp273936
                                                      (let ((__tmp273937
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj268845_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp273937))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp273936 '()))))
                                          (declare (not safe))
                                          (cons __tmp273938 __tmp273935))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp273934))))
                            (declare (not safe))
                            (cons __tmp273933 '()))))
                     (declare (not safe))
                     (cons __tmp273945 __tmp273932))))
              (declare (not safe))
              (cons '%#let-values __tmp273931))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp273930
                                                _stx268813_)))))
                                      (let* ((_g268852268892_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       ___stx273488273489_))
                                                    (___kont273492273493_)
                                                    (___kont273494273495_))))
                                             (___match273525273526_
                                              (lambda (_e268861268897_
                                                       _hd268860268900_
                                                       _tl268859268902_
                                                       _e268864268905_
                                                       _hd268863268908_
                                                       _tl268862268910_
                                                       _e268867268913_
                                                       _hd268866268916_
                                                       _tl268865268918_
                                                       _e268870268921_
                                                       _hd268869268924_
                                                       _tl268868268926_)
                                                (let ((_L268929_
                                                       _tl268868268926_)
                                                      (_L268930_
                                                       _hd268869268924_)
                                                      (_L268931_
                                                       _hd268866268916_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-keyword?
                                                         _L268931_))
                                                      (___kont273490273491_
                                                       _L268929_
                                                       _L268930_
                                                       _L268931_)
                                                      (___kont273494273495_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               ___stx273488273489_))
                                            (let ((_e268861268897_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      ___stx273488273489_))))
                                              (let ((_tl268859268902_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e268861268897_)))
                                                    (_hd268860268900_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e268861268897_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd268860268900_))
                                                    (let ((_e268864268905_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd268860268900_))))
                                                      (let ((_tl268862268910_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e268864268905_)))
                    (_hd268863268908_
                     (let () (declare (not safe)) (##car _e268864268905_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd268863268908_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd268863268908_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl268862268910_))
                            (let ((_e268867268913_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl268862268910_))))
                              (let ((_tl268865268918_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e268867268913_)))
                                    (_hd268866268916_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e268867268913_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl268865268918_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl268859268902_))
                                        (let ((_e268870268921_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl268859268902_))))
                                          (let ((_tl268868268926_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e268870268921_)))
                                                (_hd268869268924_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e268870268921_))))
                                            (___match273525273526_
                                             _e268861268897_
                                             _hd268860268900_
                                             _tl268859268902_
                                             _e268864268905_
                                             _hd268863268908_
                                             _tl268862268910_
                                             _e268867268913_
                                             _hd268866268916_
                                             _tl268865268918_
                                             _e268870268921_
                                             _hd268869268924_
                                             _tl268868268926_)))
                                        (___kont273494273495_))
                                    (___kont273494273495_))))
                            (___kont273494273495_))
                        (___kont273494273495_))
                    (___kont273494273495_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont273494273495_))))
                                            (let ()
                                              (declare (not safe))
                                              (_g268852268892_))))))))))))))))))
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
      (lambda (_self268635_ _stx268636_ _args268637_)
        (let* ((_g268639268649_
                (lambda (_g268640268646_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g268640268646_))))
               (_g268638268687_
                (lambda (_g268640268652_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g268640268652_))
                      (let ((_e268644268654_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g268640268652_))))
                        (let ((_hd268643268657_
                               (let ()
                                 (declare (not safe))
                                 (##car _e268644268654_)))
                              (_tl268642268659_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e268644268654_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl268642268659_))
                              ((lambda (_L268662_)
                                 (let* ((_klass268673_
                                         (let ((__tmp274071
                                                (##structure-ref
                                                 _self268635_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx268636_
                                            __tmp274071)))
                                        (_field268675_
                                         (let ((__tmp274072
                                                (##structure-ref
                                                 _self268635_
                                                 '2
                                                 gxc#!accessor::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _klass268673_
                                            __tmp274072)))
                                        (_object268677_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L268662_))))
                                   (if (##structure-ref
                                        _klass268673_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp274149
                                              (let ((__tmp274158
                                                     (if (##structure-ref
                                                          _self268635_
                                                          '3
                                                          gxc#!accessor::t
                                                          '#f)
                                                         '%#struct-direct-ref
                                                         '%#struct-unchecked-ref))
                                                    (__tmp274150
                                                     (let ((__tmp274155
                                                            (let ((__tmp274156
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp274157
                                  (##structure-ref
                                   _self268635_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp274157 '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp274156)))
                   (__tmp274151
                    (let ((__tmp274153
                           (let ((__tmp274154
                                  (let ()
                                    (declare (not safe))
                                    (cons _field268675_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp274154)))
                          (__tmp274152
                           (let ()
                             (declare (not safe))
                             (cons _object268677_ '()))))
                      (declare (not safe))
                      (cons __tmp274153 __tmp274152))))
               (declare (not safe))
               (cons __tmp274155 __tmp274151))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp274158
                                                      __tmp274150))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp274149
                                          _stx268636_))
                                       (if (##structure-ref
                                            _klass268673_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp274139
                                                  (let ((__tmp274148
                                                         (if (##structure-ref
                                                              _self268635_
                                                              '3
                                                              gxc#!accessor::t
                                                              '#f)
                                                             '%#struct-ref
                                                             '%#struct-unchecked-ref))
                                                        (__tmp274140
                                                         (let ((__tmp274145
                                                                (let ((__tmp274146
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp274147
                                      (##structure-ref
                                       _self268635_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp274147 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp274146)))
                       (__tmp274141
                        (let ((__tmp274143
                               (let ((__tmp274144
                                      (let ()
                                        (declare (not safe))
                                        (cons _field268675_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp274144)))
                              (__tmp274142
                               (let ()
                                 (declare (not safe))
                                 (cons _object268677_ '()))))
                          (declare (not safe))
                          (cons __tmp274143 __tmp274142))))
                   (declare (not safe))
                   (cons __tmp274145 __tmp274141))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp274148
                                                          __tmp274140))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp274139
                                              _stx268636_))
                                           (let ((_$e268680_
                                                  (let ((__tmp274073
                                                         (##structure-ref
                                                          _self268635_
                                                          '2
                                                          gxc#!accessor::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _klass268673_
                                                     __tmp274073))))
                                             (if _$e268680_
                                                 ((lambda (_klass268683_)
                                                    (let ((__tmp274129
                                                           (let ((__tmp274138
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##structure-ref
                               _self268635_
                               '3
                               gxc#!accessor::t
                               '#f)
                              '%#struct-ref
                              '%#struct-unchecked-ref))
                         (__tmp274130
                          (let ((__tmp274135
                                 (let ((__tmp274136
                                        (let ((__tmp274137
                                               (##structure-ref
                                                _self268635_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp274137 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp274136)))
                                (__tmp274131
                                 (let ((__tmp274133
                                        (let ((__tmp274134
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _field268675_ '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp274134)))
                                       (__tmp274132
                                        (let ()
                                          (declare (not safe))
                                          (cons _object268677_ '()))))
                                   (declare (not safe))
                                   (cons __tmp274133 __tmp274132))))
                            (declare (not safe))
                            (cons __tmp274135 __tmp274131))))
                     (declare (not safe))
                     (cons __tmp274138 __tmp274130))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp274129 _stx268636_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e268680_)
                                                 (if (##structure-ref
                                                      _self268635_
                                                      '3
                                                      gxc#!accessor::t
                                                      '#f)
                                                     (let ((__tmp274083
                                                            (let* ((_$obj268685_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp274084 (gensym '__obj)))
                              (declare (not safe))
                              (make-symbol__0 __tmp274084)))
                           (__tmp274085
                            (let ((__tmp274125
                                   (let ((__tmp274126
                                          (let ((__tmp274128
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _$obj268685_ '())))
                                                (__tmp274127
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _object268677_ '()))))
                                            (declare (not safe))
                                            (cons __tmp274128 __tmp274127))))
                                     (declare (not safe))
                                     (cons __tmp274126 '())))
                                  (__tmp274086
                                   (let ((__tmp274087
                                          (let ((__tmp274088
                                                 (let ((__tmp274117
                                                        (let ((__tmp274118
                                                               (let ((__tmp274122
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp274123
                                     (let ((__tmp274124
                                            (##structure-ref
                                             _klass268673_
                                             '1
                                             gxc#!type::t
                                             '#f)))
                                       (declare (not safe))
                                       (cons __tmp274124 '()))))
                                (declare (not safe))
                                (cons '%#quote __tmp274123)))
                             (__tmp274119
                              (let ((__tmp274120
                                     (let ((__tmp274121
                                            (let ()
                                              (declare (not safe))
                                              (cons _$obj268685_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp274121))))
                                (declare (not safe))
                                (cons __tmp274120 '()))))
                         (declare (not safe))
                         (cons __tmp274122 __tmp274119))))
                  (declare (not safe))
                  (cons '%#struct-direct-instance? __tmp274118)))
               (__tmp274089
                (let ((__tmp274106
                       (let ((__tmp274107
                              (let ((__tmp274114
                                     (let ((__tmp274115
                                            (let ((__tmp274116
                                                   (##structure-ref
                                                    _self268635_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp274116 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp274115)))
                                    (__tmp274108
                                     (let ((__tmp274112
                                            (let ((__tmp274113
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field268675_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp274113)))
                                           (__tmp274109
                                            (let ((__tmp274110
                                                   (let ((__tmp274111
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj268685_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp274111))))
                                              (declare (not safe))
                                              (cons __tmp274110 '()))))
                                       (declare (not safe))
                                       (cons __tmp274112 __tmp274109))))
                                (declare (not safe))
                                (cons __tmp274114 __tmp274108))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp274107)))
                      (__tmp274090
                       (let ((__tmp274091
                              (let ((__tmp274092
                                     (let ((__tmp274104
                                            (let ((__tmp274105
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'class-slot-ref
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp274105)))
                                           (__tmp274093
                                            (let ((__tmp274101
                                                   (let ((__tmp274102
                                                          (let ((__tmp274103
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref _self268635_ '1 gxc#!type::t '#f)))
                    (declare (not safe))
                    (cons __tmp274103 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp274102)))
                                                  (__tmp274094
                                                   (let ((__tmp274099
                                                          (let ((__tmp274100
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj268685_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp274100)))
                 (__tmp274095
                  (let ((__tmp274096
                         (let ((__tmp274097
                                (let ((__tmp274098
                                       (##structure-ref
                                        _self268635_
                                        '2
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (cons __tmp274098 '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp274097))))
                    (declare (not safe))
                    (cons __tmp274096 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp274099
                                                           __tmp274095))))
                                              (declare (not safe))
                                              (cons __tmp274101 __tmp274094))))
                                       (declare (not safe))
                                       (cons __tmp274104 __tmp274093))))
                                (declare (not safe))
                                (cons '%#call __tmp274092))))
                         (declare (not safe))
                         (cons __tmp274091 '()))))
                  (declare (not safe))
                  (cons __tmp274106 __tmp274090))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp274117
                                                         __tmp274089))))
                                            (declare (not safe))
                                            (cons '%#if __tmp274088))))
                                     (declare (not safe))
                                     (cons __tmp274087 '()))))
                              (declare (not safe))
                              (cons __tmp274125 __tmp274086))))
                      (declare (not safe))
                      (cons '%#let-values __tmp274085))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp274083 _stx268636_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp274074
                                                            (let ((__tmp274075
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp274081
                                  (let ((__tmp274082
                                         (let ()
                                           (declare (not safe))
                                           (cons 'unchecked-slot-ref '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp274082)))
                                 (__tmp274076
                                  (let ((__tmp274077
                                         (let ((__tmp274078
                                                (let ((__tmp274079
                                                       (let ((__tmp274080
                                                              (##structure-ref
                                                               _self268635_
                                                               '2
                                                               gxc#!accessor::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp274080
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote
                                                        __tmp274079))))
                                           (declare (not safe))
                                           (cons __tmp274078 '()))))
                                    (declare (not safe))
                                    (cons _object268677_ __tmp274077))))
                             (declare (not safe))
                             (cons __tmp274081 __tmp274076))))
                      (declare (not safe))
                      (cons '%#call __tmp274075))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp274074 _stx268636_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _hd268643268657_)
                              (let ()
                                (declare (not safe))
                                (_g268639268649_ _g268640268652_)))))
                      (let ()
                        (declare (not safe))
                        (_g268639268649_ _g268640268652_))))))
          (declare (not safe))
          (_g268638268687_ _args268637_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__t273375)
        (let ((__checked?273376
               (let ((__tmp273379
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t273375 'checked?))))
                 (if __tmp273379
                     __tmp273379
                     (error '"Unknown slot" 'checked?))))
              (__slot273377
               (let ((__tmp273380
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t273375 'slot))))
                 (if __tmp273380 __tmp273380 (error '"Unknown slot" 'slot))))
              (__id273378
               (let ((__tmp273381
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t273375 'id))))
                 (if __tmp273381 __tmp273381 (error '"Unknown slot" 'id)))))
          (lambda (_self268635_ _stx268636_ _args268637_)
            (let* ((_g268639268649_
                    (lambda (_g268640268646_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g268640268646_))))
                   (_g268638268687_
                    (lambda (_g268640268652_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g268640268652_))
                          (let ((_e268644268654_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g268640268652_))))
                            (let ((_hd268643268657_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e268644268654_)))
                                  (_tl268642268659_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e268644268654_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl268642268659_))
                                  ((lambda (_L268662_)
                                     (let* ((_klass268673_
                                             (let ((__tmp274159
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self268635_
                                                       __id273378
                                                       __t273375
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx268636_
                                                __tmp274159)))
                                            (_field268675_
                                             (let ((__tmp274160
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self268635_
                                                       __slot273377
                                                       __t273375
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _klass268673_
                                                __tmp274160)))
                                            (_object268677_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L268662_))))
                                       (if (##structure-ref
                                            _klass268673_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp274237
                                                  (let ((__tmp274246
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self268635_
                        __checked?273376
                        __t273375
                        '#f))
                     '%#struct-direct-ref
                     '%#struct-unchecked-ref))
                (__tmp274238
                 (let ((__tmp274243
                        (let ((__tmp274244
                               (let ((__tmp274245
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _self268635_
                                         __id273378
                                         __t273375
                                         '#f))))
                                 (declare (not safe))
                                 (cons __tmp274245 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp274244)))
                       (__tmp274239
                        (let ((__tmp274241
                               (let ((__tmp274242
                                      (let ()
                                        (declare (not safe))
                                        (cons _field268675_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp274242)))
                              (__tmp274240
                               (let ()
                                 (declare (not safe))
                                 (cons _object268677_ '()))))
                          (declare (not safe))
                          (cons __tmp274241 __tmp274240))))
                   (declare (not safe))
                   (cons __tmp274243 __tmp274239))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp274246
                                                          __tmp274238))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp274237
                                              _stx268636_))
                                           (if (##structure-ref
                                                _klass268673_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp274227
                                                      (let ((__tmp274236
                                                             (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self268635_
                            __checked?273376
                            __t273375
                            '#f))
                         '%#struct-ref
                         '%#struct-unchecked-ref))
                    (__tmp274228
                     (let ((__tmp274233
                            (let ((__tmp274234
                                   (let ((__tmp274235
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self268635_
                                             __id273378
                                             __t273375
                                             '#f))))
                                     (declare (not safe))
                                     (cons __tmp274235 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp274234)))
                           (__tmp274229
                            (let ((__tmp274231
                                   (let ((__tmp274232
                                          (let ()
                                            (declare (not safe))
                                            (cons _field268675_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp274232)))
                                  (__tmp274230
                                   (let ()
                                     (declare (not safe))
                                     (cons _object268677_ '()))))
                              (declare (not safe))
                              (cons __tmp274231 __tmp274230))))
                       (declare (not safe))
                       (cons __tmp274233 __tmp274229))))
                (declare (not safe))
                (cons __tmp274236 __tmp274228))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp274227
                                                  _stx268636_))
                                               (let ((_$e268680_
                                                      (let ((__tmp274161
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self268635_
                        __slot273377
                        __t273375
                        '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _klass268673_ __tmp274161))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e268680_
                                                     ((lambda (_klass268683_)
                                                        (let ((__tmp274217
                                                               (let ((__tmp274226
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self268635_
                                     __checked?273376
                                     __t273375
                                     '#f))
                                  '%#struct-ref
                                  '%#struct-unchecked-ref))
                             (__tmp274218
                              (let ((__tmp274223
                                     (let ((__tmp274224
                                            (let ((__tmp274225
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self268635_
                                                      __id273378
                                                      __t273375
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp274225 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp274224)))
                                    (__tmp274219
                                     (let ((__tmp274221
                                            (let ((__tmp274222
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field268675_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp274222)))
                                           (__tmp274220
                                            (let ()
                                              (declare (not safe))
                                              (cons _object268677_ '()))))
                                       (declare (not safe))
                                       (cons __tmp274221 __tmp274220))))
                                (declare (not safe))
                                (cons __tmp274223 __tmp274219))))
                         (declare (not safe))
                         (cons __tmp274226 __tmp274218))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp274217 _stx268636_)))
              _$e268680_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _self268635_
                                                            __checked?273376
                                                            __t273375
                                                            '#f))
                                                         (let ((__tmp274171
                                                                (let* ((_$obj268685_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp274172 (gensym '__obj)))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp274172)))
                               (__tmp274173
                                (let ((__tmp274213
                                       (let ((__tmp274214
                                              (let ((__tmp274216
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _$obj268685_
                                                             '())))
                                                    (__tmp274215
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _object268677_
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp274216
                                                      __tmp274215))))
                                         (declare (not safe))
                                         (cons __tmp274214 '())))
                                      (__tmp274174
                                       (let ((__tmp274175
                                              (let ((__tmp274176
                                                     (let ((__tmp274205
                                                            (let ((__tmp274206
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp274210
                                  (let ((__tmp274211
                                         (let ((__tmp274212
                                                (##structure-ref
                                                 _klass268673_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp274212 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp274211)))
                                 (__tmp274207
                                  (let ((__tmp274208
                                         (let ((__tmp274209
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj268685_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp274209))))
                                    (declare (not safe))
                                    (cons __tmp274208 '()))))
                             (declare (not safe))
                             (cons __tmp274210 __tmp274207))))
                      (declare (not safe))
                      (cons '%#struct-direct-instance? __tmp274206)))
                   (__tmp274177
                    (let ((__tmp274194
                           (let ((__tmp274195
                                  (let ((__tmp274202
                                         (let ((__tmp274203
                                                (let ((__tmp274204
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self268635_
                                                          __id273378
                                                          __t273375
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp274204 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp274203)))
                                        (__tmp274196
                                         (let ((__tmp274200
                                                (let ((__tmp274201
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field268675_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp274201)))
                                               (__tmp274197
                                                (let ((__tmp274198
                                                       (let ((__tmp274199
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj268685_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp274199))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp274198 '()))))
                                           (declare (not safe))
                                           (cons __tmp274200 __tmp274197))))
                                    (declare (not safe))
                                    (cons __tmp274202 __tmp274196))))
                             (declare (not safe))
                             (cons '%#struct-unchecked-ref __tmp274195)))
                          (__tmp274178
                           (let ((__tmp274179
                                  (let ((__tmp274180
                                         (let ((__tmp274192
                                                (let ((__tmp274193
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-slot-ref
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp274193)))
                                               (__tmp274181
                                                (let ((__tmp274189
                                                       (let ((__tmp274190
                                                              (let ((__tmp274191
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self268635_
                                __id273378
                                __t273375
                                '#f))))
                        (declare (not safe))
                        (cons __tmp274191 '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp274190)))
              (__tmp274182
               (let ((__tmp274187
                      (let ((__tmp274188
                             (let ()
                               (declare (not safe))
                               (cons _$obj268685_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp274188)))
                     (__tmp274183
                      (let ((__tmp274184
                             (let ((__tmp274185
                                    (let ((__tmp274186
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _self268635_
                                              __slot273377
                                              __t273375
                                              '#f))))
                                      (declare (not safe))
                                      (cons __tmp274186 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp274185))))
                        (declare (not safe))
                        (cons __tmp274184 '()))))
                 (declare (not safe))
                 (cons __tmp274187 __tmp274183))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp274189
                                                        __tmp274182))))
                                           (declare (not safe))
                                           (cons __tmp274192 __tmp274181))))
                                    (declare (not safe))
                                    (cons '%#call __tmp274180))))
                             (declare (not safe))
                             (cons __tmp274179 '()))))
                      (declare (not safe))
                      (cons __tmp274194 __tmp274178))))
               (declare (not safe))
               (cons __tmp274205 __tmp274177))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#if __tmp274176))))
                                         (declare (not safe))
                                         (cons __tmp274175 '()))))
                                  (declare (not safe))
                                  (cons __tmp274213 __tmp274174))))
                          (declare (not safe))
                          (cons '%#let-values __tmp274173))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp274171 _stx268636_))
                 (let ((__tmp274162
                        (let ((__tmp274163
                               (let ((__tmp274169
                                      (let ((__tmp274170
                                             (let ()
                                               (declare (not safe))
                                               (cons 'unchecked-slot-ref
                                                     '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp274170)))
                                     (__tmp274164
                                      (let ((__tmp274165
                                             (let ((__tmp274166
                                                    (let ((__tmp274167
                                                           (let ((__tmp274168
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _self268635_
                             __slot273377
                             __t273375
                             '#f))))
                     (declare (not safe))
                     (cons __tmp274168 '()))))
              (declare (not safe))
              (cons '%#quote __tmp274167))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp274166 '()))))
                                        (declare (not safe))
                                        (cons _object268677_ __tmp274165))))
                                 (declare (not safe))
                                 (cons __tmp274169 __tmp274164))))
                          (declare (not safe))
                          (cons '%#call __tmp274163))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp274162 _stx268636_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd268643268657_)
                                  (let ()
                                    (declare (not safe))
                                    (_g268639268649_ _g268640268652_)))))
                          (let ()
                            (declare (not safe))
                            (_g268639268649_ _g268640268652_))))))
              (declare (not safe))
              (_g268638268687_ _args268637_))))))
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
      (lambda (_self268440_ _stx268441_ _args268442_)
        (let* ((_g268444268458_
                (lambda (_g268445268455_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g268445268455_))))
               (_g268443268510_
                (lambda (_g268445268461_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g268445268461_))
                      (let ((_e268450268463_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g268445268461_))))
                        (let ((_hd268449268466_
                               (let ()
                                 (declare (not safe))
                                 (##car _e268450268463_)))
                              (_tl268448268468_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e268450268463_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl268448268468_))
                              (let ((_e268453268471_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl268448268468_))))
                                (let ((_hd268452268474_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e268453268471_)))
                                      (_tl268451268476_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e268453268471_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl268451268476_))
                                      ((lambda (_L268479_ _L268480_)
                                         (let* ((_klass268494_
                                                 (let ((__tmp274247
                                                        (##structure-ref
                                                         _self268440_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _stx268441_
                                                    __tmp274247)))
                                                (_field268496_
                                                 (let ((__tmp274248
                                                        (##structure-ref
                                                         _self268440_
                                                         '2
                                                         gxc#!mutator::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass268494_
                                                    __tmp274248)))
                                                (_object268498_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L268480_)))
                                                (_value268500_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L268479_))))
                                           (if (##structure-ref
                                                _klass268494_
                                                '8
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp274330
                                                      (let ((__tmp274340
                                                             (if (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _self268440_
                          '3
                          gxc#!mutator::t
                          '#f)
                         '%#struct-direct-set!
                         '%#struct-unchecked-set!))
                    (__tmp274331
                     (let ((__tmp274337
                            (let ((__tmp274338
                                   (let ((__tmp274339
                                          (##structure-ref
                                           _self268440_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp274339 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp274338)))
                           (__tmp274332
                            (let ((__tmp274335
                                   (let ((__tmp274336
                                          (let ()
                                            (declare (not safe))
                                            (cons _field268496_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp274336)))
                                  (__tmp274333
                                   (let ((__tmp274334
                                          (let ()
                                            (declare (not safe))
                                            (cons _value268500_ '()))))
                                     (declare (not safe))
                                     (cons _object268498_ __tmp274334))))
                              (declare (not safe))
                              (cons __tmp274335 __tmp274333))))
                       (declare (not safe))
                       (cons __tmp274337 __tmp274332))))
                (declare (not safe))
                (cons __tmp274340 __tmp274331))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp274330
                                                  _stx268441_))
                                               (if (##structure-ref
                                                    _klass268494_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp274319
                                                          (let ((__tmp274329
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##structure-ref
                              _self268440_
                              '3
                              gxc#!mutator::t
                              '#f)
                             '%#struct-set!
                             '%#struct-unchecked-set!))
                        (__tmp274320
                         (let ((__tmp274326
                                (let ((__tmp274327
                                       (let ((__tmp274328
                                              (##structure-ref
                                               _self268440_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp274328 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp274327)))
                               (__tmp274321
                                (let ((__tmp274324
                                       (let ((__tmp274325
                                              (let ()
                                                (declare (not safe))
                                                (cons _field268496_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp274325)))
                                      (__tmp274322
                                       (let ((__tmp274323
                                              (let ()
                                                (declare (not safe))
                                                (cons _value268500_ '()))))
                                         (declare (not safe))
                                         (cons _object268498_ __tmp274323))))
                                  (declare (not safe))
                                  (cons __tmp274324 __tmp274322))))
                           (declare (not safe))
                           (cons __tmp274326 __tmp274321))))
                    (declare (not safe))
                    (cons __tmp274329 __tmp274320))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp274319
                                                      _stx268441_))
                                                   (let ((_$e268503_
                                                          (let ((__tmp274249
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref
                          _self268440_
                          '2
                          gxc#!mutator::t
                          '#f)))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct _klass268494_ __tmp274249))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e268503_
                                                         ((lambda (_klass268506_)
                                                            (let ((__tmp274308
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp274318
                                  (if (##structure-ref
                                       _self268440_
                                       '3
                                       gxc#!mutator::t
                                       '#f)
                                      '%#struct-set!
                                      '%#struct-unchecked-set!))
                                 (__tmp274309
                                  (let ((__tmp274315
                                         (let ((__tmp274316
                                                (let ((__tmp274317
                                                       (##structure-ref
                                                        _self268440_
                                                        '1
                                                        gxc#!type::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp274317 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp274316)))
                                        (__tmp274310
                                         (let ((__tmp274313
                                                (let ((__tmp274314
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field268496_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp274314)))
                                               (__tmp274311
                                                (let ((__tmp274312
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _value268500_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons _object268498_
                                                        __tmp274312))))
                                           (declare (not safe))
                                           (cons __tmp274313 __tmp274311))))
                                    (declare (not safe))
                                    (cons __tmp274315 __tmp274310))))
                             (declare (not safe))
                             (cons __tmp274318 __tmp274309))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp274308 _stx268441_)))
                  _$e268503_)
                 (if (##structure-ref _self268440_ '3 gxc#!mutator::t '#f)
                     (let ((__tmp274260
                            (let* ((_$obj268508_
                                    (let ((__tmp274261 (gensym '__obj)))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp274261)))
                                   (__tmp274262
                                    (let ((__tmp274304
                                           (let ((__tmp274305
                                                  (let ((__tmp274307
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj268508_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp274306
                 (let () (declare (not safe)) (cons _object268498_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp274307
                                                          __tmp274306))))
                                             (declare (not safe))
                                             (cons __tmp274305 '())))
                                          (__tmp274263
                                           (let ((__tmp274264
                                                  (let ((__tmp274265
                                                         (let ((__tmp274296
                                                                (let ((__tmp274297
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp274301
                                      (let ((__tmp274302
                                             (let ((__tmp274303
                                                    (##structure-ref
                                                     _klass268494_
                                                     '1
                                                     gxc#!type::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp274303 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp274302)))
                                     (__tmp274298
                                      (let ((__tmp274299
                                             (let ((__tmp274300
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj268508_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp274300))))
                                        (declare (not safe))
                                        (cons __tmp274299 '()))))
                                 (declare (not safe))
                                 (cons __tmp274301 __tmp274298))))
                          (declare (not safe))
                          (cons '%#struct-direct-instance? __tmp274297)))
                       (__tmp274266
                        (let ((__tmp274284
                               (let ((__tmp274285
                                      (let ((__tmp274293
                                             (let ((__tmp274294
                                                    (let ((__tmp274295
                                                           (##structure-ref
                                                            _self268440_
                                                            '1
                                                            gxc#!type::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (cons __tmp274295 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp274294)))
                                            (__tmp274286
                                             (let ((__tmp274291
                                                    (let ((__tmp274292
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field268496_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp274292)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp274287
                                                    (let ((__tmp274289
                                                           (let ((__tmp274290
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj268508_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp274290)))
                  (__tmp274288
                   (let () (declare (not safe)) (cons _value268500_ '()))))
              (declare (not safe))
              (cons __tmp274289 __tmp274288))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp274291
                                                     __tmp274287))))
                                        (declare (not safe))
                                        (cons __tmp274293 __tmp274286))))
                                 (declare (not safe))
                                 (cons '%#struct-unchecked-set! __tmp274285)))
                              (__tmp274267
                               (let ((__tmp274268
                                      (let ((__tmp274269
                                             (let ((__tmp274282
                                                    (let ((__tmp274283
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp274283)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp274270
                                                    (let ((__tmp274279
                                                           (let ((__tmp274280
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp274281
                                 (##structure-ref
                                  _self268440_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (cons __tmp274281 '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp274280)))
                  (__tmp274271
                   (let ((__tmp274277
                          (let ((__tmp274278
                                 (let ()
                                   (declare (not safe))
                                   (cons _$obj268508_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp274278)))
                         (__tmp274272
                          (let ((__tmp274274
                                 (let ((__tmp274275
                                        (let ((__tmp274276
                                               (##structure-ref
                                                _self268440_
                                                '2
                                                gxc#!mutator::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp274276 '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp274275)))
                                (__tmp274273
                                 (let ()
                                   (declare (not safe))
                                   (cons _value268500_ '()))))
                            (declare (not safe))
                            (cons __tmp274274 __tmp274273))))
                     (declare (not safe))
                     (cons __tmp274277 __tmp274272))))
              (declare (not safe))
              (cons __tmp274279 __tmp274271))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp274282
                                                     __tmp274270))))
                                        (declare (not safe))
                                        (cons '%#call __tmp274269))))
                                 (declare (not safe))
                                 (cons __tmp274268 '()))))
                          (declare (not safe))
                          (cons __tmp274284 __tmp274267))))
                   (declare (not safe))
                   (cons __tmp274296 __tmp274266))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#if __tmp274265))))
                                             (declare (not safe))
                                             (cons __tmp274264 '()))))
                                      (declare (not safe))
                                      (cons __tmp274304 __tmp274263))))
                              (declare (not safe))
                              (cons '%#let-values __tmp274262))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp274260 _stx268441_))
                     (let ((__tmp274250
                            (let ((__tmp274251
                                   (let ((__tmp274258
                                          (let ((__tmp274259
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'unchecked-slot-set!
                                                         '()))))
                                            (declare (not safe))
                                            (cons '%#ref __tmp274259)))
                                         (__tmp274252
                                          (let ((__tmp274253
                                                 (let ((__tmp274255
                                                        (let ((__tmp274256
                                                               (let ((__tmp274257
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##structure-ref
                               _self268440_
                               '2
                               gxc#!mutator::t
                               '#f)))
                         (declare (not safe))
                         (cons __tmp274257 '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp274256)))
               (__tmp274254
                (let () (declare (not safe)) (cons _value268500_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp274255
                                                         __tmp274254))))
                                            (declare (not safe))
                                            (cons _object268498_
                                                  __tmp274253))))
                                     (declare (not safe))
                                     (cons __tmp274258 __tmp274252))))
                              (declare (not safe))
                              (cons '%#call __tmp274251))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp274250 _stx268441_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd268452268474_
                                       _hd268449268466_)
                                      (let ()
                                        (declare (not safe))
                                        (_g268444268458_ _g268445268461_)))))
                              (let ()
                                (declare (not safe))
                                (_g268444268458_ _g268445268461_)))))
                      (let ()
                        (declare (not safe))
                        (_g268444268458_ _g268445268461_))))))
          (declare (not safe))
          (_g268443268510_ _args268442_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__t273382)
        (let ((__checked?273383
               (let ((__tmp273386
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t273382 'checked?))))
                 (if __tmp273386
                     __tmp273386
                     (error '"Unknown slot" 'checked?))))
              (__slot273384
               (let ((__tmp273387
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t273382 'slot))))
                 (if __tmp273387 __tmp273387 (error '"Unknown slot" 'slot))))
              (__id273385
               (let ((__tmp273388
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t273382 'id))))
                 (if __tmp273388 __tmp273388 (error '"Unknown slot" 'id)))))
          (lambda (_self268440_ _stx268441_ _args268442_)
            (let* ((_g268444268458_
                    (lambda (_g268445268455_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g268445268455_))))
                   (_g268443268510_
                    (lambda (_g268445268461_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g268445268461_))
                          (let ((_e268450268463_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g268445268461_))))
                            (let ((_hd268449268466_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e268450268463_)))
                                  (_tl268448268468_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e268450268463_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl268448268468_))
                                  (let ((_e268453268471_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl268448268468_))))
                                    (let ((_hd268452268474_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e268453268471_)))
                                          (_tl268451268476_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e268453268471_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl268451268476_))
                                          ((lambda (_L268479_ _L268480_)
                                             (let* ((_klass268494_
                                                     (let ((__tmp274341
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self268440_
                                                               __id273385
                                                               __t273382
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _stx268441_
                                                        __tmp274341)))
                                                    (_field268496_
                                                     (let ((__tmp274342
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self268440_
                                                               __slot273384
                                                               __t273382
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass268494_
                                                        __tmp274342)))
                                                    (_object268498_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L268480_)))
                                                    (_value268500_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L268479_))))
                                               (if (##structure-ref
                                                    _klass268494_
                                                    '8
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp274424
                                                          (let ((__tmp274434
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self268440_
                                __checked?273383
                                __t273382
                                '#f))
                             '%#struct-direct-set!
                             '%#struct-unchecked-set!))
                        (__tmp274425
                         (let ((__tmp274431
                                (let ((__tmp274432
                                       (let ((__tmp274433
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _self268440_
                                                 __id273385
                                                 __t273382
                                                 '#f))))
                                         (declare (not safe))
                                         (cons __tmp274433 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp274432)))
                               (__tmp274426
                                (let ((__tmp274429
                                       (let ((__tmp274430
                                              (let ()
                                                (declare (not safe))
                                                (cons _field268496_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp274430)))
                                      (__tmp274427
                                       (let ((__tmp274428
                                              (let ()
                                                (declare (not safe))
                                                (cons _value268500_ '()))))
                                         (declare (not safe))
                                         (cons _object268498_ __tmp274428))))
                                  (declare (not safe))
                                  (cons __tmp274429 __tmp274427))))
                           (declare (not safe))
                           (cons __tmp274431 __tmp274426))))
                    (declare (not safe))
                    (cons __tmp274434 __tmp274425))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp274424
                                                      _stx268441_))
                                                   (if (##structure-ref
                                                        _klass268494_
                                                        '7
                                                        gxc#!class::t
                                                        '#f)
                                                       (let ((__tmp274413
                                                              (let ((__tmp274423
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _self268440_
                                    __checked?273383
                                    __t273382
                                    '#f))
                                 '%#struct-set!
                                 '%#struct-unchecked-set!))
                            (__tmp274414
                             (let ((__tmp274420
                                    (let ((__tmp274421
                                           (let ((__tmp274422
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self268440_
                                                     __id273385
                                                     __t273382
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp274422 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp274421)))
                                   (__tmp274415
                                    (let ((__tmp274418
                                           (let ((__tmp274419
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _field268496_ '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp274419)))
                                          (__tmp274416
                                           (let ((__tmp274417
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _value268500_ '()))))
                                             (declare (not safe))
                                             (cons _object268498_
                                                   __tmp274417))))
                                      (declare (not safe))
                                      (cons __tmp274418 __tmp274416))))
                               (declare (not safe))
                               (cons __tmp274420 __tmp274415))))
                        (declare (not safe))
                        (cons __tmp274423 __tmp274414))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp274413 _stx268441_))
               (let ((_$e268503_
                      (let ((__tmp274343
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self268440_
                                __slot273384
                                __t273382
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _klass268494_
                         __tmp274343))))
                 (if _$e268503_
                     ((lambda (_klass268506_)
                        (let ((__tmp274402
                               (let ((__tmp274412
                                      (if (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self268440_
                                             __checked?273383
                                             __t273382
                                             '#f))
                                          '%#struct-set!
                                          '%#struct-unchecked-set!))
                                     (__tmp274403
                                      (let ((__tmp274409
                                             (let ((__tmp274410
                                                    (let ((__tmp274411
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _self268440_
                                                              __id273385
                                                              __t273382
                                                              '#f))))
                                                      (declare (not safe))
                                                      (cons __tmp274411 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp274410)))
                                            (__tmp274404
                                             (let ((__tmp274407
                                                    (let ((__tmp274408
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field268496_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp274408)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp274405
                                                    (let ((__tmp274406
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _value268500_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _object268498_ __tmp274406))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp274407
                                                     __tmp274405))))
                                        (declare (not safe))
                                        (cons __tmp274409 __tmp274404))))
                                 (declare (not safe))
                                 (cons __tmp274412 __tmp274403))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp274402 _stx268441_)))
                      _$e268503_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self268440_
                            __checked?273383
                            __t273382
                            '#f))
                         (let ((__tmp274354
                                (let* ((_$obj268508_
                                        (let ((__tmp274355 (gensym '__obj)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp274355)))
                                       (__tmp274356
                                        (let ((__tmp274398
                                               (let ((__tmp274399
                                                      (let ((__tmp274401
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj268508_ '())))
                    (__tmp274400
                     (let () (declare (not safe)) (cons _object268498_ '()))))
                (declare (not safe))
                (cons __tmp274401 __tmp274400))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp274399 '())))
                                              (__tmp274357
                                               (let ((__tmp274358
                                                      (let ((__tmp274359
                                                             (let ((__tmp274390
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp274391
                                   (let ((__tmp274395
                                          (let ((__tmp274396
                                                 (let ((__tmp274397
                                                        (##structure-ref
                                                         _klass268494_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp274397 '()))))
                                            (declare (not safe))
                                            (cons '%#quote __tmp274396)))
                                         (__tmp274392
                                          (let ((__tmp274393
                                                 (let ((__tmp274394
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj268508_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp274394))))
                                            (declare (not safe))
                                            (cons __tmp274393 '()))))
                                     (declare (not safe))
                                     (cons __tmp274395 __tmp274392))))
                              (declare (not safe))
                              (cons '%#struct-direct-instance? __tmp274391)))
                           (__tmp274360
                            (let ((__tmp274378
                                   (let ((__tmp274379
                                          (let ((__tmp274387
                                                 (let ((__tmp274388
                                                        (let ((__tmp274389
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _self268440_
                          __id273385
                          __t273382
                          '#f))))
                  (declare (not safe))
                  (cons __tmp274389 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp274388)))
                                                (__tmp274380
                                                 (let ((__tmp274385
                                                        (let ((__tmp274386
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _field268496_ '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp274386)))
               (__tmp274381
                (let ((__tmp274383
                       (let ((__tmp274384
                              (let ()
                                (declare (not safe))
                                (cons _$obj268508_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp274384)))
                      (__tmp274382
                       (let () (declare (not safe)) (cons _value268500_ '()))))
                  (declare (not safe))
                  (cons __tmp274383 __tmp274382))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp274385
                                                         __tmp274381))))
                                            (declare (not safe))
                                            (cons __tmp274387 __tmp274380))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp274379)))
                                  (__tmp274361
                                   (let ((__tmp274362
                                          (let ((__tmp274363
                                                 (let ((__tmp274376
                                                        (let ((__tmp274377
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons 'class-slot-set! '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp274377)))
               (__tmp274364
                (let ((__tmp274373
                       (let ((__tmp274374
                              (let ((__tmp274375
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _self268440_
                                        __id273385
                                        __t273382
                                        '#f))))
                                (declare (not safe))
                                (cons __tmp274375 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp274374)))
                      (__tmp274365
                       (let ((__tmp274371
                              (let ((__tmp274372
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj268508_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp274372)))
                             (__tmp274366
                              (let ((__tmp274368
                                     (let ((__tmp274369
                                            (let ((__tmp274370
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self268440_
                                                      __slot273384
                                                      __t273382
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp274370 '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp274369)))
                                    (__tmp274367
                                     (let ()
                                       (declare (not safe))
                                       (cons _value268500_ '()))))
                                (declare (not safe))
                                (cons __tmp274368 __tmp274367))))
                         (declare (not safe))
                         (cons __tmp274371 __tmp274366))))
                  (declare (not safe))
                  (cons __tmp274373 __tmp274365))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp274376
                                                         __tmp274364))))
                                            (declare (not safe))
                                            (cons '%#call __tmp274363))))
                                     (declare (not safe))
                                     (cons __tmp274362 '()))))
                              (declare (not safe))
                              (cons __tmp274378 __tmp274361))))
                       (declare (not safe))
                       (cons __tmp274390 __tmp274360))))
                (declare (not safe))
                (cons '%#if __tmp274359))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp274358 '()))))
                                          (declare (not safe))
                                          (cons __tmp274398 __tmp274357))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp274356))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp274354 _stx268441_))
                         (let ((__tmp274344
                                (let ((__tmp274345
                                       (let ((__tmp274352
                                              (let ((__tmp274353
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons 'unchecked-slot-set!
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#ref __tmp274353)))
                                             (__tmp274346
                                              (let ((__tmp274347
                                                     (let ((__tmp274349
                                                            (let ((__tmp274350
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp274351
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self268440_
                                     __slot273384
                                     __t273382
                                     '#f))))
                             (declare (not safe))
                             (cons __tmp274351 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp274350)))
                   (__tmp274348
                    (let () (declare (not safe)) (cons _value268500_ '()))))
               (declare (not safe))
               (cons __tmp274349 __tmp274348))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _object268498_
                                                      __tmp274347))))
                                         (declare (not safe))
                                         (cons __tmp274352 __tmp274346))))
                                  (declare (not safe))
                                  (cons '%#call __tmp274345))))
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp274344
                            _stx268441_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _hd268452268474_
                                           _hd268449268466_)
                                          (let ()
                                            (declare (not safe))
                                            (_g268444268458_
                                             _g268445268461_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g268444268458_ _g268445268461_)))))
                          (let ()
                            (declare (not safe))
                            (_g268444268458_ _g268445268461_))))))
              (declare (not safe))
              (_g268443268510_ _args268442_))))))
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
      (lambda (_self268274_ _stx268275_ _args268276_)
        (let* ((_self268277268286_ _self268274_)
               (_E268279268290_
                (lambda () (error '"No clause matching" _self268277268286_)))
               (_K268280268297_
                (lambda (_inline268293_ _dispatch268294_ _arity268295_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self268274_ _args268276_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx268275_
                         _arity268295_)))
                  (if _inline268293_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp274440
                               (let ((__tmp274441
                                      (_inline268293_ _stx268275_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp274441
                                  _stx268275_))))
                          (declare (not safe))
                          (gxc#compile-e__0 __tmp274440)))
                      (if _dispatch268294_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch268294_))
                            (let ((__tmp274435
                                   (let ((__tmp274436
                                          (let ((__tmp274437
                                                 (let ((__tmp274438
                                                        (let ((__tmp274439
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch268294_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp274439))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp274438
                                                         _args268276_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp274437))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp274436
                                      _stx268275_))))
                              (declare (not safe))
                              (gxc#compile-e__0 __tmp274435)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _stx268275_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self268277268286_ 'gxc#!lambda::t))
              (let* ((_e268281268300_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self268277268286_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e268282268303_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self268277268286_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity268306_ _e268282268303_)
                     (_e268283268308_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self268277268286_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch268311_ _e268283268308_)
                     (_e268284268313_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self268277268286_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline268316_ _e268284268313_))
                (declare (not safe))
                (_K268280268297_
                 _inline268316_
                 _dispatch268311_
                 _arity268306_))
              (let () (declare (not safe)) (_E268279268290_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self268113_ _stx268114_ _args268115_)
        (let* ((_self268116268123_ _self268113_)
               (_E268118268127_
                (lambda () (error '"No clause matching" _self268116268123_)))
               (_K268119268141_
                (lambda (_clauses268130_)
                  (let ((_$e268136_
                         (let ((__tmp274442
                                (lambda (_g268131268133_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g268131268133_
                                     _args268115_)))))
                           (declare (not safe))
                           (find __tmp274442 _clauses268130_))))
                    (if _$e268136_
                        ((lambda (_clause268139_)
                           (let ((__method273657
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause268139_
                                     'optimize-call))))
                             (if __method273657
                                 (__method273657
                                  _clause268139_
                                  _stx268114_
                                  _args268115_)
                                 (error '"Missing method"
                                        _clause268139_
                                        'optimize-call))))
                         _$e268136_)
                        (let ((__tmp274443
                               (map gxc#!lambda-arity _clauses268130_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx268114_
                           __tmp274443)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self268116268123_
                 'gxc#!case-lambda::t))
              (let* ((_e268120268144_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self268116268123_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e268121268147_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self268116268123_
                         '2
                         gxc#!case-lambda::t
                         '#f)))
                     (_clauses268150_ _e268121268147_))
                (declare (not safe))
                (_K268119268141_ _clauses268150_))
              (let () (declare (not safe)) (_E268118268127_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self267927_ _args267928_)
        (let* ((_self267929267936_ _self267927_)
               (_E267931267940_
                (lambda () (error '"No clause matching" _self267929267936_)))
               (_K267932267980_
                (lambda (_arity267943_)
                  (let* ((_arity267944267953_ _arity267943_)
                         (_E267947267957_
                          (lambda ()
                            (error '"No clause matching"
                                   _arity267944267953_))))
                    (let ((_K267951267977_
                           (lambda ()
                             (fx= (length _args267928_) _arity267943_)))
                          (_K267948267963_
                           (lambda (_arity267961_)
                             (fx>= (length _args267928_) _arity267961_))))
                      (let ((_try-match267946267973_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity267944267953_))
                                   (let ((_tl267950267968_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity267944267953_)))
                                         (_hd267949267966_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity267944267953_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl267950267968_))
                                         (let ((_arity267971_
                                                _hd267949267966_))
                                           (declare (not safe))
                                           (_K267948267963_ _arity267971_))
                                         (let ()
                                           (declare (not safe))
                                           (_E267947267957_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E267947267957_))))))
                        (if (fixnum? _arity267944267953_)
                            (let () (declare (not safe)) (_K267951267977_))
                            (let ()
                              (declare (not safe))
                              (_try-match267946267973_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self267929267936_ 'gxc#!lambda::t))
              (let* ((_e267933267983_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self267929267936_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e267934267986_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self267929267936_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity267989_ _e267934267986_))
                (declare (not safe))
                (_K267932267980_ _arity267989_))
              (let () (declare (not safe)) (_E267931267940_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self267812_ _stx267813_ _args267814_)
        (let* ((_self267815267823_ _self267812_)
               (_E267817267827_
                (lambda () (error '"No clause matching" _self267815267823_)))
               (_K267818267911_
                (lambda (_dispatch267830_ _table267831_)
                  (let* ((_g267832267841_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch267830_)))
                         (_else267834267849_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch267830_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _stx267813_))))
                         (_K267836267895_
                          (lambda (_main267852_ _keys267853_)
                            (let ((_g274444_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx267813_
                                      _args267814_))))
                              (begin
                                (let ((_g274445_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g274444_)
                                             (##vector-length _g274444_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g274445_ 2)))
                                      (error "Context expects 2 values"
                                             _g274445_)))
                                (let ((_pargs267855_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g274444_ 0)))
                                      (_kwargs267856_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g274444_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main267852_))
                                    (if _table267831_
                                        (let ((_xargs267863_
                                               (map (lambda (_key267858_)
                                                      (let ((_$e267860_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _key267858_ _kwargs267856_))))
                (if _$e267860_ (values _$e267860_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys267853_)))
                                          (for-each
                                           (lambda (_kw267865_)
                                             (if (memq (car _kw267865_)
                                                       _keys267853_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx267813_
                                                    _keys267853_
                                                    _kw267865_))))
                                           _kwargs267856_)
                                          (let ((__tmp274497
                                                 (let ((__tmp274498
                                                        (let ((__tmp274499
                                                               (let ((__tmp274504
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp274505
                                     (let ()
                                       (declare (not safe))
                                       (cons _main267852_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp274505)))
                             (__tmp274500
                              (let ((__tmp274502
                                     (let ((__tmp274503
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp274503)))
                                    (__tmp274501
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs267855_
                                               _xargs267863_))))
                                (declare (not safe))
                                (cons __tmp274502 __tmp274501))))
                         (declare (not safe))
                         (cons __tmp274504 __tmp274500))))
                  (declare (not safe))
                  (cons '%#call __tmp274499))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp274498
                                                    _stx267813_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0 __tmp274497)))
                                        (let* ((_kwt267867_
                                                (let ((__tmp274446
                                                       (gensym '__kwt)))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp274446)))
                                               (_kwvars267870_
                                                (map (lambda (_g274447_)
                                                       (let ((__tmp274448
                                                              (gensym '__kw)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp274448)))
                                                     _kwargs267856_))
                                               (_kwbind267875_
                                                (map (lambda (_kw267872_
                                                              _kwvar267873_)
                                                       (let ((__tmp274451
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar267873_ '())))
                     (__tmp274449
                      (let ((__tmp274450 (cdr _kw267872_)))
                        (declare (not safe))
                        (cons __tmp274450 '()))))
                 (declare (not safe))
                 (cons __tmp274451 __tmp274449)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs267856_
                                                     _kwvars267870_))
                                               (_kwset267880_
                                                (map (lambda (_kw267877_
                                                              _kwvar267878_)
                                                       (let ((__tmp274452
                                                              (let ((__tmp274453
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp274461
                                    (let ((__tmp274462
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt267867_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp274462)))
                                   (__tmp274454
                                    (let ((__tmp274458
                                           (let ((__tmp274459
                                                  (let ((__tmp274460
                                                         (car _kw267877_)))
                                                    (declare (not safe))
                                                    (cons __tmp274460 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp274459)))
                                          (__tmp274455
                                           (let ((__tmp274456
                                                  (let ((__tmp274457
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar267878_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp274457))))
                                             (declare (not safe))
                                             (cons __tmp274456 '()))))
                                      (declare (not safe))
                                      (cons __tmp274458 __tmp274455))))
                               (declare (not safe))
                               (cons __tmp274461 __tmp274454))))
                        (declare (not safe))
                        (cons '(%#ref symoblic-table-set!) __tmp274453))))
                 (declare (not safe))
                 (cons '%#call __tmp274452)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs267856_
                                                     _kwvars267870_))
                                               (_xkwargs267885_
                                                (map (lambda (_kw267882_
                                                              _kwvar267883_)
                                                       (let ((__tmp274465
                                                              (car _kw267882_))
                                                             (__tmp274463
                                                              (let ((__tmp274464
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar267883_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp274464))))
                 (declare (not safe))
                 (cons __tmp274465 __tmp274463)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs267856_
                                                     _kwvars267870_))
                                               (_xargs267892_
                                                (map (lambda (_key267887_)
                                                       (let ((_$e267889_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq _key267887_ _xkwargs267885_))))
                 (if _$e267889_ (values _$e267889_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys267853_)))
                                          (let ((__tmp274466
                                                 (let ((__tmp274467
                                                        (let ((__tmp274468
                                                               (let ((__tmp274469
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp274470
                                     (let ((__tmp274471
                                            (let ((__tmp274485
                                                   (let ((__tmp274486
                                                          (let ((__tmp274496
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt267867_ '())))
                        (__tmp274487
                         (let ((__tmp274488
                                (let ((__tmp274489
                                       (let ((__tmp274490
                                              (let ((__tmp274491
                                                     (let ((__tmp274493
                                                            (let ((__tmp274494
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp274495 (length _kwargs267856_)))
                             (declare (not safe))
                             (cons __tmp274495 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp274494)))
                   (__tmp274492
                    (let () (declare (not safe)) (cons '(%#quote 0) '()))))
               (declare (not safe))
               (cons __tmp274493 __tmp274492))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-symbolic-table)
                                                      __tmp274491))))
                                         (declare (not safe))
                                         (cons '%#call __tmp274490))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp274489
                                   _stx267813_))))
                           (declare (not safe))
                           (cons __tmp274488 '()))))
                    (declare (not safe))
                    (cons __tmp274496 __tmp274487))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp274486 '())))
                                                  (__tmp274472
                                                   (let ((__tmp274473
                                                          (let ((__tmp274474
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp274475
                                (let ((__tmp274476
                                       (let ((__tmp274477
                                              (let ((__tmp274478
                                                     (let ((__tmp274483
                                                            (let ((__tmp274484
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main267852_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp274484)))
                   (__tmp274479
                    (let ((__tmp274481
                           (let ((__tmp274482
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt267867_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp274482)))
                          (__tmp274480
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs267855_ _xargs267892_))))
                      (declare (not safe))
                      (cons __tmp274481 __tmp274480))))
               (declare (not safe))
               (cons __tmp274483 __tmp274479))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp274478))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp274477
                                          _stx267813_))))
                                  (declare (not safe))
                                  (cons __tmp274476 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp274475 _kwset267880_))))
                    (declare (not safe))
                    (cons '%#begin __tmp274474))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp274473 '()))))
                                              (declare (not safe))
                                              (cons __tmp274485 __tmp274472))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp274471))))
                                (declare (not safe))
                                (cons __tmp274470 '()))))
                         (declare (not safe))
                         (cons _kwbind267875_ __tmp274469))))
                  (declare (not safe))
                  (cons '%#let-values __tmp274468))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp274467
                                                    _stx267813_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0
                                             __tmp274466)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g267832267841_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e267837267898_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g267832267841_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                               (_e267838267901_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g267832267841_
                                   '2
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_keys267904_ _e267838267901_)
                               (_e267839267906_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g267832267841_
                                   '3
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_main267909_ _e267839267906_))
                          (declare (not safe))
                          (_K267836267895_ _main267909_ _keys267904_))
                        (let () (declare (not safe)) (_else267834267849_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self267815267823_
                 'gxc#!kw-lambda::t))
              (let* ((_e267819267914_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self267815267823_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e267820267917_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self267815267823_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table267920_ _e267820267917_)
                     (_e267821267922_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self267815267823_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch267925_ _e267821267922_))
                (declare (not safe))
                (_K267818267911_ _dispatch267925_ _table267920_))
              (let () (declare (not safe)) (_E267817267827_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx267425_ _args267426_)
        (let _lp267428_ ((_rest267430_ _args267426_)
                         (_pargs267431_ '())
                         (_kwargs267432_ '()))
          (let* ((___stx273539273540_ _rest267430_)
                 (_g267438267490_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx273539273540_)))))
            (let ((___kont273541273542_
                   (lambda (_L267669_ _L267670_)
                     (let ((__tmp274506
                            (let ()
                              (declare (not safe))
                              (cons _L267670_ _pargs267431_))))
                       (declare (not safe))
                       (_lp267428_ _L267669_ __tmp274506 _kwargs267432_))))
                  (___kont273543273544_
                   (lambda (_L267615_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L267615_ _pargs267431_))
                             (reverse _kwargs267432_))))
                  (___kont273545273546_
                   (lambda (_L267562_ _L267563_ _L267564_)
                     (let ((_kw267581_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _L267564_))))
                       (if (assq _kw267581_ _kwargs267432_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx267425_
                              _kw267581_))
                           (let ((__tmp274507
                                  (let ((__tmp274508
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw267581_ _L267563_))))
                                    (declare (not safe))
                                    (cons __tmp274508 _kwargs267432_))))
                             (declare (not safe))
                             (_lp267428_
                              _L267562_
                              _pargs267431_
                              __tmp274507))))))
                  (___kont273547273548_
                   (lambda (_L267510_ _L267511_)
                     (let ((__tmp274509
                            (let ()
                              (declare (not safe))
                              (cons _L267511_ _pargs267431_))))
                       (declare (not safe))
                       (_lp267428_ _L267510_ __tmp274509 _kwargs267432_))))
                  (___kont273549273550_
                   (lambda ()
                     (values (reverse _pargs267431_)
                             (reverse _kwargs267432_)))))
              (let* ((_g267437267497_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx273539273540_))
                            (___kont273549273550_)
                            (let () (declare (not safe)) (_g267438267490_)))))
                     (___match273646273647_
                      (lambda (_e267471267530_
                               _hd267470267533_
                               _tl267469267535_
                               _e267474267538_
                               _hd267473267541_
                               _tl267472267543_
                               _e267477267546_
                               _hd267476267549_
                               _tl267475267551_
                               _e267480267554_
                               _hd267479267557_
                               _tl267478267559_)
                        (let ((_L267562_ _tl267478267559_)
                              (_L267563_ _hd267479267557_)
                              (_L267564_ _hd267476267549_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L267564_))
                              (___kont273545273546_
                               _L267562_
                               _L267563_
                               _L267564_)
                              (___kont273547273548_
                               _tl267469267535_
                               _hd267470267533_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx273539273540_))
                    (let ((_e267444267634_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx273539273540_))))
                      (let ((_tl267442267639_
                             (let ()
                               (declare (not safe))
                               (##cdr _e267444267634_)))
                            (_hd267443267637_
                             (let ()
                               (declare (not safe))
                               (##car _e267444267634_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd267443267637_))
                            (let ((_e267447267642_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd267443267637_))))
                              (let ((_tl267445267647_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e267447267642_)))
                                    (_hd267446267645_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e267447267642_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd267446267645_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd267446267645_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl267445267647_))
                                            (let ((_e267450267650_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl267445267647_))))
                                              (let ((_tl267448267655_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e267450267650_)))
                                                    (_hd267449267653_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e267450267650_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd267449267653_))
                                                    (let ((_e267451267658_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd267449267653_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e267451267658_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl267448267655_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl267442267639_))
                          (let ((_e267454267661_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl267442267639_))))
                            (let ((_tl267452267666_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e267454267661_)))
                                  (_hd267453267664_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e267454267661_))))
                              (___kont273541273542_
                               _tl267452267666_
                               _hd267453267664_)))
                          (___kont273547273548_
                           _tl267442267639_
                           _hd267443267637_))
                      (___kont273547273548_ _tl267442267639_ _hd267443267637_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e267451267658_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl267448267655_))
                          (___kont273543273544_ _tl267442267639_)
                          (___kont273547273548_
                           _tl267442267639_
                           _hd267443267637_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl267448267655_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl267442267639_))
                              (let ((_e267480267554_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl267442267639_))))
                                (let ((_tl267478267559_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e267480267554_)))
                                      (_hd267479267557_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e267480267554_))))
                                  (___match273646273647_
                                   _e267444267634_
                                   _hd267443267637_
                                   _tl267442267639_
                                   _e267447267642_
                                   _hd267446267645_
                                   _tl267445267647_
                                   _e267450267650_
                                   _hd267449267653_
                                   _tl267448267655_
                                   _e267480267554_
                                   _hd267479267557_
                                   _tl267478267559_)))
                              (___kont273547273548_
                               _tl267442267639_
                               _hd267443267637_))
                          (___kont273547273548_
                           _tl267442267639_
                           _hd267443267637_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl267448267655_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl267442267639_))
                                                            (let ((_e267480267554_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl267442267639_))))
                      (let ((_tl267478267559_
                             (let ()
                               (declare (not safe))
                               (##cdr _e267480267554_)))
                            (_hd267479267557_
                             (let ()
                               (declare (not safe))
                               (##car _e267480267554_))))
                        (___match273646273647_
                         _e267444267634_
                         _hd267443267637_
                         _tl267442267639_
                         _e267447267642_
                         _hd267446267645_
                         _tl267445267647_
                         _e267450267650_
                         _hd267449267653_
                         _tl267448267655_
                         _e267480267554_
                         _hd267479267557_
                         _tl267478267559_)))
                    (___kont273547273548_ _tl267442267639_ _hd267443267637_))
                (___kont273547273548_ _tl267442267639_ _hd267443267637_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont273547273548_
                                             _tl267442267639_
                                             _hd267443267637_))
                                        (___kont273547273548_
                                         _tl267442267639_
                                         _hd267443267637_))
                                    (___kont273547273548_
                                     _tl267442267639_
                                     _hd267443267637_))))
                            (___kont273547273548_
                             _tl267442267639_
                             _hd267443267637_))))
                    (let () (declare (not safe)) (_g267437267497_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self267421_ _stx267422_ _args267423_)
        (let () (declare (not safe)) (gxc#xform-call% _stx267422_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
