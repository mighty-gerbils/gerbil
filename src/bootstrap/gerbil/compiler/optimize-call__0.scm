(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1710699096)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp154738 (list gxc#::basic-xform::t))
            (__tmp154736
             (let ((__tmp154737
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp154737 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp154738
         '()
         __tmp154736
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _$args154439_
        (apply make-instance gxc#::optimize-call::t _$args154439_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp154739
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
        (make-promise __tmp154739)))
    (define gxc#apply-optimize-call
      (lambda (_stx154431_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_self154434_
                (let ((__obj154733
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj154733))
               (__tmp154740
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self154434_ _stx154431_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp154740
           gxc#current-compile-method
           _self154434_))))
    (define gxc#optimize-call%
      (lambda (_self154285_ _stx154286_)
        (let* ((___stx154484154485_ _stx154286_)
               (_g154289154309_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx154484154485_)))))
          (let ((___kont154486154487_
                 (lambda (_L154353_ _L154354_)
                   (let* ((_rator-id154372_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L154354_)))
                          (_rator-type154374_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id154372_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type154374_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp154741
                                  (##structure-ref
                                   _rator-type154374_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id154372_
                              '" => "
                              _rator-type154374_
                              '" "
                              __tmp154741))
                           (let ((_optimized154377_
                                  (let ((__method154734
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type154374_
                                            'optimize-call))))
                                    (if __method154734
                                        (__method154734
                                         _rator-type154374_
                                         _self154285_
                                         _stx154286_
                                         _L154353_)
                                        (let ()
                                          (declare (not safe))
                                          (error '"Missing method"
                                                 _rator-type154374_
                                                 'optimize-call))))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type154374_))
                                 _optimized154377_
                                 (let* ((___stx154466154467_ _optimized154377_)
                                        (_g154380154390_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx154466154467_)))))
                                   (let ((___kont154468154469_
                                          (lambda (_L154410_)
                                            (let ((__tmp154742
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L154410_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp154742
                                               _stx154286_))))
                                         (___kont154470154471_
                                          (lambda () _optimized154377_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx154466154467_))
                                         (let ((_e154385154402_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx154466154467_))))
                                           (let ((_tl154383154407_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e154385154402_)))
                                                 (_hd154384154405_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e154385154402_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd154384154405_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd154384154405_))
                                                     (___kont154468154469_
                                                      _tl154383154407_)
                                                     (___kont154470154471_))
                                                 (___kont154470154471_))))
                                         (___kont154470154471_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type154374_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _self154285_ _stx154286_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _stx154286_
                                _rator-type154374_)))))))
                (___kont154488154489_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _self154285_ _stx154286_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx154484154485_))
                (let ((_e154295154321_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx154484154485_))))
                  (let ((_tl154293154326_
                         (let () (declare (not safe)) (##cdr _e154295154321_)))
                        (_hd154294154324_
                         (let ()
                           (declare (not safe))
                           (##car _e154295154321_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl154293154326_))
                        (let ((_e154298154329_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl154293154326_))))
                          (let ((_tl154296154334_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e154298154329_)))
                                (_hd154297154332_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e154298154329_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd154297154332_))
                                (let ((_e154301154337_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd154297154332_))))
                                  (let ((_tl154299154342_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e154301154337_)))
                                        (_hd154300154340_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e154301154337_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd154300154340_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd154300154340_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl154299154342_))
                                                (let ((_e154304154345_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl154299154342_))))
                                                  (let ((_tl154302154350_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e154304154345_)))
                                                        (_hd154303154348_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e154304154345_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl154302154350_))
                                                        (___kont154486154487_
                                                         _tl154296154334_
                                                         _hd154303154348_)
                                                        (___kont154488154489_))))
                                                (___kont154488154489_))
                                            (___kont154488154489_))
                                        (___kont154488154489_))))
                                (___kont154488154489_))))
                        (___kont154488154489_))))
                (___kont154488154489_))))))
    (define gxc#!predicate::optimize-call
      (lambda (_self154238_ _ctx154239_ _stx154240_ _args154241_)
        (let* ((_g154243154253_
                (lambda (_g154244154250_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g154244154250_))))
               (_g154242154282_
                (lambda (_g154244154256_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g154244154256_))
                      (let ((_e154248154258_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g154244154256_))))
                        (let ((_hd154247154261_
                               (let ()
                                 (declare (not safe))
                                 (##car _e154248154258_)))
                              (_tl154246154263_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e154248154258_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl154246154263_))
                              ((lambda (_L154266_)
                                 (let* ((_klass154277_
                                         (let ((__tmp154743
                                                (##structure-ref
                                                 _self154238_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx154240_
                                            __tmp154743)))
                                        (_object154279_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _ctx154239_
                                            _L154266_))))
                                   (if (##structure-ref
                                        _klass154277_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp154759
                                              (let ((__tmp154760
                                                     (let ((__tmp154762
                                                            (let ((__tmp154763
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp154764
                                  (##structure-ref
                                   _klass154277_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp154764 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp154763)))
                   (__tmp154761
                    (let () (declare (not safe)) (cons _object154279_ '()))))
               (declare (not safe))
               (cons __tmp154762 __tmp154761))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#struct-direct-instance?
                                                      __tmp154760))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp154759
                                          _stx154240_))
                                       (if (##structure-ref
                                            _klass154277_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp154753
                                                  (let ((__tmp154754
                                                         (let ((__tmp154756
                                                                (let ((__tmp154757
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp154758
                                      (##structure-ref
                                       _klass154277_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp154758 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp154757)))
                       (__tmp154755
                        (let ()
                          (declare (not safe))
                          (cons _object154279_ '()))))
                   (declare (not safe))
                   (cons __tmp154756 __tmp154755))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-instance?
                                                          __tmp154754))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp154753
                                              _stx154240_))
                                           (let ((__tmp154744
                                                  (let ((__tmp154745
                                                         (let ((__tmp154751
                                                                (let ((__tmp154752
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'class-instance? '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp154752)))
                       (__tmp154746
                        (let ((__tmp154748
                               (let ((__tmp154749
                                      (let ((__tmp154750
                                             (##structure-ref
                                              _self154238_
                                              '1
                                              gxc#!type::t
                                              '#f)))
                                        (declare (not safe))
                                        (cons __tmp154750 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp154749)))
                              (__tmp154747
                               (let ()
                                 (declare (not safe))
                                 (cons _object154279_ '()))))
                          (declare (not safe))
                          (cons __tmp154748 __tmp154747))))
                   (declare (not safe))
                   (cons __tmp154751 __tmp154746))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#call
                                                          __tmp154745))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp154744
                                              _stx154240_))))))
                               _hd154247154261_)
                              (let ()
                                (declare (not safe))
                                (_g154243154253_ _g154244154256_)))))
                      (let ()
                        (declare (not safe))
                        (_g154243154253_ _g154244154256_))))))
          (declare (not safe))
          (_g154242154282_ _args154241_))))
    (define gxc#!predicate::optimize-call::specialize
      (lambda (__klass154441 __method-table154442)
        (let ((__id154443
               (let ((__slot154444
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154441 'id))))
                 (if __slot154444
                     __slot154444
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self154238_ _ctx154239_ _stx154240_ _args154241_)
            (let* ((_g154243154253_
                    (lambda (_g154244154250_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g154244154250_))))
                   (_g154242154282_
                    (lambda (_g154244154256_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g154244154256_))
                          (let ((_e154248154258_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g154244154256_))))
                            (let ((_hd154247154261_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e154248154258_)))
                                  (_tl154246154263_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e154248154258_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl154246154263_))
                                  ((lambda (_L154266_)
                                     (let* ((_klass154277_
                                             (let ((__tmp154765
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self154238_
                                                       __id154443
                                                       __klass154441
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx154240_
                                                __tmp154765)))
                                            (_object154279_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _ctx154239_
                                                _L154266_))))
                                       (if (##structure-ref
                                            _klass154277_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp154781
                                                  (let ((__tmp154782
                                                         (let ((__tmp154784
                                                                (let ((__tmp154785
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp154786
                                      (##structure-ref
                                       _klass154277_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp154786 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp154785)))
                       (__tmp154783
                        (let ()
                          (declare (not safe))
                          (cons _object154279_ '()))))
                   (declare (not safe))
                   (cons __tmp154784 __tmp154783))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-direct-instance?
                                                          __tmp154782))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp154781
                                              _stx154240_))
                                           (if (##structure-ref
                                                _klass154277_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp154775
                                                      (let ((__tmp154776
                                                             (let ((__tmp154778
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp154779
                                   (let ((__tmp154780
                                          (##structure-ref
                                           _klass154277_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp154780 '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp154779)))
                           (__tmp154777
                            (let ()
                              (declare (not safe))
                              (cons _object154279_ '()))))
                       (declare (not safe))
                       (cons __tmp154778 __tmp154777))))
                (declare (not safe))
                (cons '%#struct-instance? __tmp154776))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp154775
                                                  _stx154240_))
                                               (let ((__tmp154766
                                                      (let ((__tmp154767
                                                             (let ((__tmp154773
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp154774
                                   (let ()
                                     (declare (not safe))
                                     (cons 'class-instance? '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp154774)))
                           (__tmp154768
                            (let ((__tmp154770
                                   (let ((__tmp154771
                                          (let ((__tmp154772
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _self154238_
                                                    __id154443
                                                    __klass154441
                                                    '#f))))
                                            (declare (not safe))
                                            (cons __tmp154772 '()))))
                                     (declare (not safe))
                                     (cons '%#ref __tmp154771)))
                                  (__tmp154769
                                   (let ()
                                     (declare (not safe))
                                     (cons _object154279_ '()))))
                              (declare (not safe))
                              (cons __tmp154770 __tmp154769))))
                       (declare (not safe))
                       (cons __tmp154773 __tmp154768))))
                (declare (not safe))
                (cons '%#call __tmp154767))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp154766
                                                  _stx154240_))))))
                                   _hd154247154261_)
                                  (let ()
                                    (declare (not safe))
                                    (_g154243154253_ _g154244154256_)))))
                          (let ()
                            (declare (not safe))
                            (_g154243154253_ _g154244154256_))))))
              (declare (not safe))
              (_g154242154282_ _args154241_))))))
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
      (lambda (_self153953_ _ctx153954_ _stx153955_ _args153956_)
        (let* ((_klass153958_
                (let ((__tmp154787
                       (##structure-ref _self153953_ '1 gxc#!type::t '#f)))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _stx153955_ __tmp154787)))
               (_fields153960_
                (length (##structure-ref _klass153958_ '5 gxc#!class::t '#f)))
               (_args153966_
                (map (lambda (_g153961153963_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _ctx153954_ _g153961153963_)))
                     _args153956_))
               (_inline-make-object153968_
                (let ((__tmp154788
                       (let ((__tmp154794
                              (let ((__tmp154795
                                     (let ()
                                       (declare (not safe))
                                       (cons '##structure '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp154795)))
                             (__tmp154789
                              (let ((__tmp154791
                                     (let ((__tmp154792
                                            (let ((__tmp154793
                                                   (##structure-ref
                                                    _self153953_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp154793 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp154792)))
                                    (__tmp154790
                                     (make-list _fields153960_ '(%#quote #f))))
                                (declare (not safe))
                                (cons __tmp154791 __tmp154790))))
                         (declare (not safe))
                         (cons __tmp154794 __tmp154789))))
                  (declare (not safe))
                  (cons '%#call __tmp154788))))
          (let ((_$e153971_
                 (##structure-ref _klass153958_ '6 gxc#!class::t '#f)))
            (if _$e153971_
                ((lambda (_ctor153974_)
                   (let ((_$obj153976_
                          (let ((__tmp154896 (gensym '__obj)))
                            (declare (not safe))
                            (make-symbol__0 __tmp154896)))
                         (_ctor-impl153977_
                          (let ()
                            (declare (not safe))
                            (gxc#!class-lookup-method
                             _klass153958_
                             _ctor153974_))))
                     (let ((__tmp154897
                            (let ((__tmp154898
                                   (let ((__tmp154966
                                          (let ((__tmp154967
                                                 (let ((__tmp154969
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj153976_
                                                                '())))
                                                       (__tmp154968
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _inline-make-object153968_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp154969
                                                         __tmp154968))))
                                            (declare (not safe))
                                            (cons __tmp154967 '())))
                                         (__tmp154899
                                          (let ((__tmp154900
                                                 (let ((__tmp154901
                                                        (let ((__tmp154905
                                                               (if _ctor-impl153977_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp154960
                                  (let ((__tmp154964
                                         (let ((__tmp154965
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _ctor-impl153977_
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp154965)))
                                        (__tmp154961
                                         (let ((__tmp154962
                                                (let ((__tmp154963
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj153976_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp154963))))
                                           (declare (not safe))
                                           (cons __tmp154962 _args153966_))))
                                    (declare (not safe))
                                    (cons __tmp154964 __tmp154961))))
                             (declare (not safe))
                             (cons '%#call __tmp154960))
                           (let* ((_$ctor153979_
                                   (let ((__tmp154906 (gensym '__constructor)))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp154906)))
                                  (__tmp154907
                                   (let ((__tmp154942
                                          (let ((__tmp154943
                                                 (let ((__tmp154959
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$ctor153979_
                                                                '())))
                                                       (__tmp154944
                                                        (let ((__tmp154945
                                                               (let ((__tmp154946
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp154957
                                     (let ((__tmp154958
                                            (let ()
                                              (declare (not safe))
                                              (cons 'direct-method-ref '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp154958)))
                                    (__tmp154947
                                     (let ((__tmp154954
                                            (let ((__tmp154955
                                                   (let ((__tmp154956
                                                          (##structure-ref
                                                           _self153953_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp154956 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp154955)))
                                           (__tmp154948
                                            (let ((__tmp154952
                                                   (let ((__tmp154953
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj153976_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp154953)))
                                                  (__tmp154949
                                                   (let ((__tmp154950
                                                          (let ((__tmp154951
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _ctor153974_ '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp154951))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp154950 '()))))
                                              (declare (not safe))
                                              (cons __tmp154952 __tmp154949))))
                                       (declare (not safe))
                                       (cons __tmp154954 __tmp154948))))
                                (declare (not safe))
                                (cons __tmp154957 __tmp154947))))
                         (declare (not safe))
                         (cons '%#call __tmp154946))))
                  (declare (not safe))
                  (cons __tmp154945 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp154959
                                                         __tmp154944))))
                                            (declare (not safe))
                                            (cons __tmp154943 '())))
                                         (__tmp154908
                                          (let ((__tmp154909
                                                 (let ((__tmp154910
                                                        (let ((__tmp154940
                                                               (let ((__tmp154941
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$ctor153979_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp154941)))
                      (__tmp154911
                       (let ((__tmp154933
                              (let ((__tmp154934
                                     (let ((__tmp154938
                                            (let ((__tmp154939
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$ctor153979_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp154939)))
                                           (__tmp154935
                                            (let ((__tmp154936
                                                   (let ((__tmp154937
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj153976_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp154937))))
                                              (declare (not safe))
                                              (cons __tmp154936
                                                    _args153966_))))
                                       (declare (not safe))
                                       (cons __tmp154938 __tmp154935))))
                                (declare (not safe))
                                (cons '%#call __tmp154934)))
                             (__tmp154912
                              (let ((__tmp154913
                                     (let ((__tmp154914
                                            (let ((__tmp154931
                                                   (let ((__tmp154932
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp154932)))
                                                  (__tmp154915
                                                   (let ((__tmp154929
                                                          (let ((__tmp154930
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons '"missing constructor method implementation"
                                 '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp154930)))
                 (__tmp154916
                  (let ((__tmp154927
                         (let ((__tmp154928
                                (let ()
                                  (declare (not safe))
                                  (cons 'class: '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp154928)))
                        (__tmp154917
                         (let ((__tmp154924
                                (let ((__tmp154925
                                       (let ((__tmp154926
                                              (##structure-ref
                                               _self153953_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp154926 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp154925)))
                               (__tmp154918
                                (let ((__tmp154922
                                       (let ((__tmp154923
                                              (let ()
                                                (declare (not safe))
                                                (cons 'method: '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp154923)))
                                      (__tmp154919
                                       (let ((__tmp154920
                                              (let ((__tmp154921
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _ctor153974_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#quote __tmp154921))))
                                         (declare (not safe))
                                         (cons __tmp154920 '()))))
                                  (declare (not safe))
                                  (cons __tmp154922 __tmp154919))))
                           (declare (not safe))
                           (cons __tmp154924 __tmp154918))))
                    (declare (not safe))
                    (cons __tmp154927 __tmp154917))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp154929
                                                           __tmp154916))))
                                              (declare (not safe))
                                              (cons __tmp154931 __tmp154915))))
                                       (declare (not safe))
                                       (cons '%#call __tmp154914))))
                                (declare (not safe))
                                (cons __tmp154913 '()))))
                         (declare (not safe))
                         (cons __tmp154933 __tmp154912))))
                  (declare (not safe))
                  (cons __tmp154940 __tmp154911))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#if __tmp154910))))
                                            (declare (not safe))
                                            (cons __tmp154909 '()))))
                                     (declare (not safe))
                                     (cons __tmp154942 __tmp154908))))
                             (declare (not safe))
                             (cons '%#let-values __tmp154907))))
                      (__tmp154902
                       (let ((__tmp154903
                              (let ((__tmp154904
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj153976_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp154904))))
                         (declare (not safe))
                         (cons __tmp154903 '()))))
                  (declare (not safe))
                  (cons __tmp154905 __tmp154902))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#begin
                                                         __tmp154901))))
                                            (declare (not safe))
                                            (cons __tmp154900 '()))))
                                     (declare (not safe))
                                     (cons __tmp154966 __tmp154899))))
                              (declare (not safe))
                              (cons '%#let-values __tmp154898))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp154897 _stx153955_))))
                 _$e153971_)
                (let ((_$e153981_
                       (##structure-ref _klass153958_ '10 gxc#!class::t '#f)))
                  (if _$e153981_
                      ((lambda (_metaclass153984_)
                         (let* ((_$obj153986_
                                 (let ((__tmp154858 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp154858)))
                                (_metakons153988_
                                 (let ((__tmp154859
                                        (let ()
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-class
                                           _stx153955_
                                           _metaclass153984_))))
                                   (declare (not safe))
                                   (gxc#!class-lookup-method
                                    __tmp154859
                                    'instance-init!))))
                           (let ((__tmp154860
                                  (let ((__tmp154861
                                         (let ((__tmp154892
                                                (let ((__tmp154893
                                                       (let ((__tmp154895
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj153986_ '())))
                     (__tmp154894
                      (let ()
                        (declare (not safe))
                        (cons _inline-make-object153968_ '()))))
                 (declare (not safe))
                 (cons __tmp154895 __tmp154894))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp154893 '())))
                                               (__tmp154862
                                                (let ((__tmp154863
                                                       (let ((__tmp154864
                                                              (let ((__tmp154868
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if _metakons153988_
                                 (let ((__tmp154882
                                        (let ((__tmp154890
                                               (let ((__tmp154891
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _metakons153988_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp154891)))
                                              (__tmp154883
                                               (let ((__tmp154887
                                                      (let ((__tmp154888
                                                             (let ((__tmp154889
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self153953_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp154889 '()))))
                (declare (not safe))
                (cons '%#ref __tmp154888)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp154884
                                                      (let ((__tmp154885
                                                             (let ((__tmp154886
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _$obj153986_ '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp154886))))
                (declare (not safe))
                (cons __tmp154885 _args153966_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp154887
                                                       __tmp154884))))
                                          (declare (not safe))
                                          (cons __tmp154890 __tmp154883))))
                                   (declare (not safe))
                                   (cons '%#call __tmp154882))
                                 (let ((__tmp154869
                                        (let ((__tmp154880
                                               (let ((__tmp154881
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'call-method
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp154881)))
                                              (__tmp154870
                                               (let ((__tmp154877
                                                      (let ((__tmp154878
                                                             (let ((__tmp154879
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self153953_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp154879 '()))))
                (declare (not safe))
                (cons '%#ref __tmp154878)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp154871
                                                      (let ((__tmp154875
                                                             (let ((__tmp154876
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'instance-init! '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp154876)))
                    (__tmp154872
                     (let ((__tmp154873
                            (let ((__tmp154874
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj153986_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp154874))))
                       (declare (not safe))
                       (cons __tmp154873 _args153966_))))
                (declare (not safe))
                (cons __tmp154875 __tmp154872))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp154877
                                                       __tmp154871))))
                                          (declare (not safe))
                                          (cons __tmp154880 __tmp154870))))
                                   (declare (not safe))
                                   (cons '%#call __tmp154869))))
                            (__tmp154865
                             (let ((__tmp154866
                                    (let ((__tmp154867
                                           (let ()
                                             (declare (not safe))
                                             (cons _$obj153986_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp154867))))
                               (declare (not safe))
                               (cons __tmp154866 '()))))
                        (declare (not safe))
                        (cons __tmp154868 __tmp154865))))
                 (declare (not safe))
                 (cons '%#begin __tmp154864))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp154863 '()))))
                                           (declare (not safe))
                                           (cons __tmp154892 __tmp154862))))
                                    (declare (not safe))
                                    (cons '%#let-values __tmp154861))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp154860 _stx153955_))))
                       _$e153981_)
                      (if (##structure-ref _klass153958_ '7 gxc#!class::t '#f)
                          (if (fx= (length _args153966_) _fields153960_)
                              (let ((__tmp154850
                                     (let ((__tmp154851
                                            (let ((__tmp154856
                                                   (let ((__tmp154857
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp154857)))
                                                  (__tmp154852
                                                   (let ((__tmp154853
                                                          (let ((__tmp154854
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp154855
                                (##structure-ref
                                 _self153953_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (cons __tmp154855 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp154854))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp154853
                                                           _args153966_))))
                                              (declare (not safe))
                                              (cons __tmp154856 __tmp154852))))
                                       (declare (not safe))
                                       (cons '%#call __tmp154851))))
                                (declare (not safe))
                                (gxc#xform-wrap-source
                                 __tmp154850
                                 _stx153955_))
                              (let ((__tmp154849
                                     (##structure-ref
                                      _self153953_
                                      '1
                                      gxc#!type::t
                                      '#f))
                                    (__tmp154848
                                     (length (##structure-ref
                                              _klass153958_
                                              '5
                                              gxc#!class::t
                                              '#f))))
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"illegal struct constructor application; arity mismatch"
                                 _stx153955_
                                 __tmp154849
                                 __tmp154848)))
                          (let ((_$obj153991_
                                 (let ((__tmp154796 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp154796))))
                            (let _lp153993_ ((_rest153995_ _args153966_)
                                             (_initializers153996_ '()))
                              (let* ((___stx154522154523_ _rest153995_)
                                     (_g154000154021_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx154522154523_)))))
                                (let ((___kont154524154525_
                                       (lambda (_L154075_ _L154076_ _L154077_)
                                         (let* ((_slot154108_
                                                 (let ((__tmp154797
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L154077_))))
                                                   (declare (not safe))
                                                   (keyword->symbol
                                                    __tmp154797)))
                                                (_off154110_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass153958_
                                                    _slot154108_))))
                                           (if _off154110_
                                               (let ((__tmp154799
                                                      (let ((__tmp154800
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _off154110_ _L154076_))))
                (declare (not safe))
                (cons __tmp154800 _initializers153996_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp153993_
                                                  _L154075_
                                                  __tmp154799))
                                               (let ((__tmp154798
                                                      (##structure-ref
                                                       _self153953_
                                                       '1
                                                       gxc#!type::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"unknown slot"
                                                  _stx153955_
                                                  __tmp154798
                                                  _slot154108_))))))
                                      (___kont154526154527_
                                       (lambda ()
                                         (let ((__tmp154801
                                                (let ((__tmp154802
                                                       (let ((__tmp154825
                                                              (let ((__tmp154826
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp154828
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj153991_ '())))
                                   (__tmp154827
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object153968_ '()))))
                               (declare (not safe))
                               (cons __tmp154828 __tmp154827))))
                        (declare (not safe))
                        (cons __tmp154826 '())))
                     (__tmp154803
                      (let ((__tmp154804
                             (let ((__tmp154805
                                    (let ((__tmp154822
                                           (let ((__tmp154823
                                                  (let ((__tmp154824
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj153991_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp154824))))
                                             (declare (not safe))
                                             (cons __tmp154823 '())))
                                          (__tmp154806
                                           (let ((__tmp154807
                                                  (lambda (_i154035_ _r154036_)
                                                    (let ((__tmp154808
                                                           (let ((__tmp154809
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp154819
                                 (let ((__tmp154820
                                        (let ((__tmp154821
                                               (##structure-ref
                                                _self153953_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp154821 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp154820)))
                                (__tmp154810
                                 (let ((__tmp154816
                                        (let ((__tmp154817
                                               (let ((__tmp154818
                                                      (car _i154035_)))
                                                 (declare (not safe))
                                                 (cons __tmp154818 '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp154817)))
                                       (__tmp154811
                                        (let ((__tmp154814
                                               (let ((__tmp154815
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _$obj153991_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp154815)))
                                              (__tmp154812
                                               (let ((__tmp154813
                                                      (cdr _i154035_)))
                                                 (declare (not safe))
                                                 (cons __tmp154813 '()))))
                                          (declare (not safe))
                                          (cons __tmp154814 __tmp154812))))
                                   (declare (not safe))
                                   (cons __tmp154816 __tmp154811))))
                            (declare (not safe))
                            (cons __tmp154819 __tmp154810))))
                     (declare (not safe))
                     (cons '%#struct-unchecked-set! __tmp154809))))
              (declare (not safe))
              (cons __tmp154808 _r154036_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (foldl1 __tmp154807
                                                     '()
                                                     _initializers153996_))))
                                      (declare (not safe))
                                      (foldr1 cons __tmp154822 __tmp154806))))
                               (declare (not safe))
                               (cons '%#begin __tmp154805))))
                        (declare (not safe))
                        (cons __tmp154804 '()))))
                 (declare (not safe))
                 (cons __tmp154825 __tmp154803))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp154802))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp154801
                                            _stx153955_))))
                                      (___kont154528154529_
                                       (lambda ()
                                         (let ((__tmp154829
                                                (let ((__tmp154830
                                                       (let ((__tmp154844
                                                              (let ((__tmp154845
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp154847
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj153991_ '())))
                                   (__tmp154846
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object153968_ '()))))
                               (declare (not safe))
                               (cons __tmp154847 __tmp154846))))
                        (declare (not safe))
                        (cons __tmp154845 '())))
                     (__tmp154831
                      (let ((__tmp154832
                             (let ((__tmp154833
                                    (let ((__tmp154837
                                           (let ((__tmp154838
                                                  (let ((__tmp154842
                                                         (let ((__tmp154843
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons 'class-instance-init! '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp154843)))
                (__tmp154839
                 (let ((__tmp154840
                        (let ((__tmp154841
                               (let ()
                                 (declare (not safe))
                                 (cons _$obj153991_ '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp154841))))
                   (declare (not safe))
                   (cons __tmp154840 _args153966_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp154842
                                                          __tmp154839))))
                                             (declare (not safe))
                                             (cons '%#call __tmp154838)))
                                          (__tmp154834
                                           (let ((__tmp154835
                                                  (let ((__tmp154836
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj153991_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp154836))))
                                             (declare (not safe))
                                             (cons __tmp154835 '()))))
                                      (declare (not safe))
                                      (cons __tmp154837 __tmp154834))))
                               (declare (not safe))
                               (cons '%#begin __tmp154833))))
                        (declare (not safe))
                        (cons __tmp154832 '()))))
                 (declare (not safe))
                 (cons __tmp154844 __tmp154831))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp154830))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp154829
                                            _stx153955_)))))
                                  (let* ((_g153998154038_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   ___stx154522154523_))
                                                (___kont154526154527_)
                                                (___kont154528154529_))))
                                         (___match154559154560_
                                          (lambda (_e154007154043_
                                                   _hd154006154046_
                                                   _tl154005154048_
                                                   _e154010154051_
                                                   _hd154009154054_
                                                   _tl154008154056_
                                                   _e154013154059_
                                                   _hd154012154062_
                                                   _tl154011154064_
                                                   _e154016154067_
                                                   _hd154015154070_
                                                   _tl154014154072_)
                                            (let ((_L154075_ _tl154014154072_)
                                                  (_L154076_ _hd154015154070_)
                                                  (_L154077_ _hd154012154062_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-keyword?
                                                     _L154077_))
                                                  (___kont154524154525_
                                                   _L154075_
                                                   _L154076_
                                                   _L154077_)
                                                  (___kont154528154529_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx154522154523_))
                                        (let ((_e154007154043_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx154522154523_))))
                                          (let ((_tl154005154048_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e154007154043_)))
                                                (_hd154006154046_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e154007154043_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd154006154046_))
                                                (let ((_e154010154051_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd154006154046_))))
                                                  (let ((_tl154008154056_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e154010154051_)))
                                                        (_hd154009154054_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e154010154051_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd154009154054_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#quote
                                                               _hd154009154054_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl154008154056_))
                        (let ((_e154013154059_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl154008154056_))))
                          (let ((_tl154011154064_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e154013154059_)))
                                (_hd154012154062_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e154013154059_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl154011154064_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl154005154048_))
                                    (let ((_e154016154067_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl154005154048_))))
                                      (let ((_tl154014154072_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e154016154067_)))
                                            (_hd154015154070_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e154016154067_))))
                                        (___match154559154560_
                                         _e154007154043_
                                         _hd154006154046_
                                         _tl154005154048_
                                         _e154010154051_
                                         _hd154009154054_
                                         _tl154008154056_
                                         _e154013154059_
                                         _hd154012154062_
                                         _tl154011154064_
                                         _e154016154067_
                                         _hd154015154070_
                                         _tl154014154072_)))
                                    (___kont154528154529_))
                                (___kont154528154529_))))
                        (___kont154528154529_))
                    (___kont154528154529_))
                (___kont154528154529_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont154528154529_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g153998154038_))))))))))))))))
    (define gxc#!constructor::optimize-call::specialize
      (lambda (__klass154445 __method-table154446)
        (let ((__id154447
               (let ((__slot154448
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154445 'id))))
                 (if __slot154448
                     __slot154448
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self153953_ _ctx153954_ _stx153955_ _args153956_)
            (let* ((_klass153958_
                    (let ((__tmp154970
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _self153953_
                              __id154447
                              __klass154445
                              '#f))))
                      (declare (not safe))
                      (gxc#optimizer-resolve-class _stx153955_ __tmp154970)))
                   (_fields153960_
                    (length (##structure-ref
                             _klass153958_
                             '5
                             gxc#!class::t
                             '#f)))
                   (_args153966_
                    (map (lambda (_g153961153963_)
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _ctx153954_ _g153961153963_)))
                         _args153956_))
                   (_inline-make-object153968_
                    (let ((__tmp154971
                           (let ((__tmp154977
                                  (let ((__tmp154978
                                         (let ()
                                           (declare (not safe))
                                           (cons '##structure '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp154978)))
                                 (__tmp154972
                                  (let ((__tmp154974
                                         (let ((__tmp154975
                                                (let ((__tmp154976
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self153953_
                                                          __id154447
                                                          __klass154445
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp154976 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp154975)))
                                        (__tmp154973
                                         (make-list
                                          _fields153960_
                                          '(%#quote #f))))
                                    (declare (not safe))
                                    (cons __tmp154974 __tmp154973))))
                             (declare (not safe))
                             (cons __tmp154977 __tmp154972))))
                      (declare (not safe))
                      (cons '%#call __tmp154971))))
              (let ((_$e153971_
                     (##structure-ref _klass153958_ '6 gxc#!class::t '#f)))
                (if _$e153971_
                    ((lambda (_ctor153974_)
                       (let ((_$obj153976_
                              (let ((__tmp155079 (gensym '__obj)))
                                (declare (not safe))
                                (make-symbol__0 __tmp155079)))
                             (_ctor-impl153977_
                              (let ()
                                (declare (not safe))
                                (gxc#!class-lookup-method
                                 _klass153958_
                                 _ctor153974_))))
                         (let ((__tmp155080
                                (let ((__tmp155081
                                       (let ((__tmp155149
                                              (let ((__tmp155150
                                                     (let ((__tmp155152
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$obj153976_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp155151
                    (let ()
                      (declare (not safe))
                      (cons _inline-make-object153968_ '()))))
               (declare (not safe))
               (cons __tmp155152 __tmp155151))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp155150 '())))
                                             (__tmp155082
                                              (let ((__tmp155083
                                                     (let ((__tmp155084
                                                            (let ((__tmp155088
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _ctor-impl153977_
                               (let ((__tmp155143
                                      (let ((__tmp155147
                                             (let ((__tmp155148
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor-impl153977_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp155148)))
                                            (__tmp155144
                                             (let ((__tmp155145
                                                    (let ((__tmp155146
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$obj153976_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp155146))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp155145
                                                     _args153966_))))
                                        (declare (not safe))
                                        (cons __tmp155147 __tmp155144))))
                                 (declare (not safe))
                                 (cons '%#call __tmp155143))
                               (let* ((_$ctor153979_
                                       (let ((__tmp155089
                                              (gensym '__constructor)))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp155089)))
                                      (__tmp155090
                                       (let ((__tmp155125
                                              (let ((__tmp155126
                                                     (let ((__tmp155142
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$ctor153979_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp155127
                    (let ((__tmp155128
                           (let ((__tmp155129
                                  (let ((__tmp155140
                                         (let ((__tmp155141
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'direct-method-ref
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp155141)))
                                        (__tmp155130
                                         (let ((__tmp155137
                                                (let ((__tmp155138
                                                       (let ((__tmp155139
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self153953_
                         __id154447
                         __klass154445
                         '#f))))
                 (declare (not safe))
                 (cons __tmp155139 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp155138)))
                                               (__tmp155131
                                                (let ((__tmp155135
                                                       (let ((__tmp155136
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj153976_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp155136)))
              (__tmp155132
               (let ((__tmp155133
                      (let ((__tmp155134
                             (let ()
                               (declare (not safe))
                               (cons _ctor153974_ '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp155134))))
                 (declare (not safe))
                 (cons __tmp155133 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp155135
                                                        __tmp155132))))
                                           (declare (not safe))
                                           (cons __tmp155137 __tmp155131))))
                                    (declare (not safe))
                                    (cons __tmp155140 __tmp155130))))
                             (declare (not safe))
                             (cons '%#call __tmp155129))))
                      (declare (not safe))
                      (cons __tmp155128 '()))))
               (declare (not safe))
               (cons __tmp155142 __tmp155127))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp155126 '())))
                                             (__tmp155091
                                              (let ((__tmp155092
                                                     (let ((__tmp155093
                                                            (let ((__tmp155123
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155124
                                  (let ()
                                    (declare (not safe))
                                    (cons _$ctor153979_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp155124)))
                          (__tmp155094
                           (let ((__tmp155116
                                  (let ((__tmp155117
                                         (let ((__tmp155121
                                                (let ((__tmp155122
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$ctor153979_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp155122)))
                                               (__tmp155118
                                                (let ((__tmp155119
                                                       (let ((__tmp155120
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj153976_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp155120))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp155119
                                                        _args153966_))))
                                           (declare (not safe))
                                           (cons __tmp155121 __tmp155118))))
                                    (declare (not safe))
                                    (cons '%#call __tmp155117)))
                                 (__tmp155095
                                  (let ((__tmp155096
                                         (let ((__tmp155097
                                                (let ((__tmp155114
                                                       (let ((__tmp155115
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'error '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp155115)))
              (__tmp155098
               (let ((__tmp155112
                      (let ((__tmp155113
                             (let ()
                               (declare (not safe))
                               (cons '"missing constructor method implementation"
                                     '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp155113)))
                     (__tmp155099
                      (let ((__tmp155110
                             (let ((__tmp155111
                                    (let ()
                                      (declare (not safe))
                                      (cons 'class: '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp155111)))
                            (__tmp155100
                             (let ((__tmp155107
                                    (let ((__tmp155108
                                           (let ((__tmp155109
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self153953_
                                                     __id154447
                                                     __klass154445
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp155109 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp155108)))
                                   (__tmp155101
                                    (let ((__tmp155105
                                           (let ((__tmp155106
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'method: '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp155106)))
                                          (__tmp155102
                                           (let ((__tmp155103
                                                  (let ((__tmp155104
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _ctor153974_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#quote
                                                          __tmp155104))))
                                             (declare (not safe))
                                             (cons __tmp155103 '()))))
                                      (declare (not safe))
                                      (cons __tmp155105 __tmp155102))))
                               (declare (not safe))
                               (cons __tmp155107 __tmp155101))))
                        (declare (not safe))
                        (cons __tmp155110 __tmp155100))))
                 (declare (not safe))
                 (cons __tmp155112 __tmp155099))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp155114
                                                        __tmp155098))))
                                           (declare (not safe))
                                           (cons '%#call __tmp155097))))
                                    (declare (not safe))
                                    (cons __tmp155096 '()))))
                             (declare (not safe))
                             (cons __tmp155116 __tmp155095))))
                      (declare (not safe))
                      (cons __tmp155123 __tmp155094))))
               (declare (not safe))
               (cons '%#if __tmp155093))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp155092 '()))))
                                         (declare (not safe))
                                         (cons __tmp155125 __tmp155091))))
                                 (declare (not safe))
                                 (cons '%#let-values __tmp155090))))
                          (__tmp155085
                           (let ((__tmp155086
                                  (let ((__tmp155087
                                         (let ()
                                           (declare (not safe))
                                           (cons _$obj153976_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp155087))))
                             (declare (not safe))
                             (cons __tmp155086 '()))))
                      (declare (not safe))
                      (cons __tmp155088 __tmp155085))))
               (declare (not safe))
               (cons '%#begin __tmp155084))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp155083 '()))))
                                         (declare (not safe))
                                         (cons __tmp155149 __tmp155082))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp155081))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp155080 _stx153955_))))
                     _$e153971_)
                    (let ((_$e153981_
                           (##structure-ref
                            _klass153958_
                            '10
                            gxc#!class::t
                            '#f)))
                      (if _$e153981_
                          ((lambda (_metaclass153984_)
                             (let* ((_$obj153986_
                                     (let ((__tmp155041 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp155041)))
                                    (_metakons153988_
                                     (let ((__tmp155042
                                            (let ()
                                              (declare (not safe))
                                              (gxc#optimizer-resolve-class
                                               _stx153955_
                                               _metaclass153984_))))
                                       (declare (not safe))
                                       (gxc#!class-lookup-method
                                        __tmp155042
                                        'instance-init!))))
                               (let ((__tmp155043
                                      (let ((__tmp155044
                                             (let ((__tmp155075
                                                    (let ((__tmp155076
                                                           (let ((__tmp155078
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj153986_ '())))
                         (__tmp155077
                          (let ()
                            (declare (not safe))
                            (cons _inline-make-object153968_ '()))))
                     (declare (not safe))
                     (cons __tmp155078 __tmp155077))))
              (declare (not safe))
              (cons __tmp155076 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp155045
                                                    (let ((__tmp155046
                                                           (let ((__tmp155047
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp155051
                                 (if _metakons153988_
                                     (let ((__tmp155065
                                            (let ((__tmp155073
                                                   (let ((__tmp155074
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _metakons153988_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155074)))
                                                  (__tmp155066
                                                   (let ((__tmp155070
                                                          (let ((__tmp155071
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp155072
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self153953_
                                   __id154447
                                   __klass154445
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp155072 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp155071)))
                 (__tmp155067
                  (let ((__tmp155068
                         (let ((__tmp155069
                                (let ()
                                  (declare (not safe))
                                  (cons _$obj153986_ '()))))
                           (declare (not safe))
                           (cons '%#ref __tmp155069))))
                    (declare (not safe))
                    (cons __tmp155068 _args153966_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp155070
                                                           __tmp155067))))
                                              (declare (not safe))
                                              (cons __tmp155073 __tmp155066))))
                                       (declare (not safe))
                                       (cons '%#call __tmp155065))
                                     (let ((__tmp155052
                                            (let ((__tmp155063
                                                   (let ((__tmp155064
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'call-method
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155064)))
                                                  (__tmp155053
                                                   (let ((__tmp155060
                                                          (let ((__tmp155061
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp155062
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self153953_
                                   __id154447
                                   __klass154445
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp155062 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp155061)))
                 (__tmp155054
                  (let ((__tmp155058
                         (let ((__tmp155059
                                (let ()
                                  (declare (not safe))
                                  (cons 'instance-init! '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp155059)))
                        (__tmp155055
                         (let ((__tmp155056
                                (let ((__tmp155057
                                       (let ()
                                         (declare (not safe))
                                         (cons _$obj153986_ '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp155057))))
                           (declare (not safe))
                           (cons __tmp155056 _args153966_))))
                    (declare (not safe))
                    (cons __tmp155058 __tmp155055))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp155060
                                                           __tmp155054))))
                                              (declare (not safe))
                                              (cons __tmp155063 __tmp155053))))
                                       (declare (not safe))
                                       (cons '%#call __tmp155052))))
                                (__tmp155048
                                 (let ((__tmp155049
                                        (let ((__tmp155050
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$obj153986_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp155050))))
                                   (declare (not safe))
                                   (cons __tmp155049 '()))))
                            (declare (not safe))
                            (cons __tmp155051 __tmp155048))))
                     (declare (not safe))
                     (cons '%#begin __tmp155047))))
              (declare (not safe))
              (cons __tmp155046 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp155075
                                                     __tmp155045))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp155044))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp155043
                                  _stx153955_))))
                           _$e153981_)
                          (if (##structure-ref
                               _klass153958_
                               '7
                               gxc#!class::t
                               '#f)
                              (if (fx= (length _args153966_) _fields153960_)
                                  (let ((__tmp155033
                                         (let ((__tmp155034
                                                (let ((__tmp155039
                                                       (let ((__tmp155040
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '##structure '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp155040)))
              (__tmp155035
               (let ((__tmp155036
                      (let ((__tmp155037
                             (let ((__tmp155038
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _self153953_
                                       __id154447
                                       __klass154445
                                       '#f))))
                               (declare (not safe))
                               (cons __tmp155038 '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp155037))))
                 (declare (not safe))
                 (cons __tmp155036 _args153966_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp155039
                                                        __tmp155035))))
                                           (declare (not safe))
                                           (cons '%#call __tmp155034))))
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp155033
                                     _stx153955_))
                                  (let ((__tmp155032
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _self153953_
                                            __id154447
                                            __klass154445
                                            '#f)))
                                        (__tmp155031
                                         (length (##structure-ref
                                                  _klass153958_
                                                  '5
                                                  gxc#!class::t
                                                  '#f))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"illegal struct constructor application; arity mismatch"
                                     _stx153955_
                                     __tmp155032
                                     __tmp155031)))
                              (let ((_$obj153991_
                                     (let ((__tmp154979 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp154979))))
                                (let _lp153993_ ((_rest153995_ _args153966_)
                                                 (_initializers153996_ '()))
                                  (let* ((___stx154564154565_ _rest153995_)
                                         (_g154000154021_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               ___stx154564154565_)))))
                                    (let ((___kont154566154567_
                                           (lambda (_L154075_
                                                    _L154076_
                                                    _L154077_)
                                             (let* ((_slot154108_
                                                     (let ((__tmp154980
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _L154077_))))
                                                       (declare (not safe))
                                                       (keyword->symbol
                                                        __tmp154980)))
                                                    (_off154110_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass153958_
                                                        _slot154108_))))
                                               (if _off154110_
                                                   (let ((__tmp154982
                                                          (let ((__tmp154983
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _off154110_ _L154076_))))
                    (declare (not safe))
                    (cons __tmp154983 _initializers153996_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp153993_
                                                      _L154075_
                                                      __tmp154982))
                                                   (let ((__tmp154981
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _self153953_
                                                             __id154447
                                                             __klass154445
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"unknown slot"
                                                      _stx153955_
                                                      __tmp154981
                                                      _slot154108_))))))
                                          (___kont154568154569_
                                           (lambda ()
                                             (let ((__tmp154984
                                                    (let ((__tmp154985
                                                           (let ((__tmp155008
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp155009
                                 (let ((__tmp155011
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj153991_ '())))
                                       (__tmp155010
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object153968_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp155011 __tmp155010))))
                            (declare (not safe))
                            (cons __tmp155009 '())))
                         (__tmp154986
                          (let ((__tmp154987
                                 (let ((__tmp154988
                                        (let ((__tmp155005
                                               (let ((__tmp155006
                                                      (let ((__tmp155007
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj153991_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp155007))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp155006 '())))
                                              (__tmp154989
                                               (let ((__tmp154990
                                                      (lambda (_i154035_
                                                               _r154036_)
                                                        (let ((__tmp154991
                                                               (let ((__tmp154992
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp155002
                                     (let ((__tmp155003
                                            (let ((__tmp155004
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self153953_
                                                      __id154447
                                                      __klass154445
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp155004 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp155003)))
                                    (__tmp154993
                                     (let ((__tmp154999
                                            (let ((__tmp155000
                                                   (let ((__tmp155001
                                                          (car _i154035_)))
                                                     (declare (not safe))
                                                     (cons __tmp155001 '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp155000)))
                                           (__tmp154994
                                            (let ((__tmp154997
                                                   (let ((__tmp154998
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj153991_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp154998)))
                                                  (__tmp154995
                                                   (let ((__tmp154996
                                                          (cdr _i154035_)))
                                                     (declare (not safe))
                                                     (cons __tmp154996 '()))))
                                              (declare (not safe))
                                              (cons __tmp154997 __tmp154995))))
                                       (declare (not safe))
                                       (cons __tmp154999 __tmp154994))))
                                (declare (not safe))
                                (cons __tmp155002 __tmp154993))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-set! __tmp154992))))
                  (declare (not safe))
                  (cons __tmp154991 _r154036_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl1 __tmp154990
                                                         '()
                                                         _initializers153996_))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp155005
                                                  __tmp154989))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp154988))))
                            (declare (not safe))
                            (cons __tmp154987 '()))))
                     (declare (not safe))
                     (cons __tmp155008 __tmp154986))))
              (declare (not safe))
              (cons '%#let-values __tmp154985))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp154984
                                                _stx153955_))))
                                          (___kont154570154571_
                                           (lambda ()
                                             (let ((__tmp155012
                                                    (let ((__tmp155013
                                                           (let ((__tmp155027
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp155028
                                 (let ((__tmp155030
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj153991_ '())))
                                       (__tmp155029
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object153968_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp155030 __tmp155029))))
                            (declare (not safe))
                            (cons __tmp155028 '())))
                         (__tmp155014
                          (let ((__tmp155015
                                 (let ((__tmp155016
                                        (let ((__tmp155020
                                               (let ((__tmp155021
                                                      (let ((__tmp155025
                                                             (let ((__tmp155026
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'class-instance-init! '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp155026)))
                    (__tmp155022
                     (let ((__tmp155023
                            (let ((__tmp155024
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj153991_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp155024))))
                       (declare (not safe))
                       (cons __tmp155023 _args153966_))))
                (declare (not safe))
                (cons __tmp155025 __tmp155022))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp155021)))
                                              (__tmp155017
                                               (let ((__tmp155018
                                                      (let ((__tmp155019
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj153991_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp155019))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp155018 '()))))
                                          (declare (not safe))
                                          (cons __tmp155020 __tmp155017))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp155016))))
                            (declare (not safe))
                            (cons __tmp155015 '()))))
                     (declare (not safe))
                     (cons __tmp155027 __tmp155014))))
              (declare (not safe))
              (cons '%#let-values __tmp155013))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp155012
                                                _stx153955_)))))
                                      (let* ((_g153998154038_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       ___stx154564154565_))
                                                    (___kont154568154569_)
                                                    (___kont154570154571_))))
                                             (___match154601154602_
                                              (lambda (_e154007154043_
                                                       _hd154006154046_
                                                       _tl154005154048_
                                                       _e154010154051_
                                                       _hd154009154054_
                                                       _tl154008154056_
                                                       _e154013154059_
                                                       _hd154012154062_
                                                       _tl154011154064_
                                                       _e154016154067_
                                                       _hd154015154070_
                                                       _tl154014154072_)
                                                (let ((_L154075_
                                                       _tl154014154072_)
                                                      (_L154076_
                                                       _hd154015154070_)
                                                      (_L154077_
                                                       _hd154012154062_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-keyword?
                                                         _L154077_))
                                                      (___kont154566154567_
                                                       _L154075_
                                                       _L154076_
                                                       _L154077_)
                                                      (___kont154570154571_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               ___stx154564154565_))
                                            (let ((_e154007154043_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      ___stx154564154565_))))
                                              (let ((_tl154005154048_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e154007154043_)))
                                                    (_hd154006154046_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e154007154043_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd154006154046_))
                                                    (let ((_e154010154051_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd154006154046_))))
                                                      (let ((_tl154008154056_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e154010154051_)))
                    (_hd154009154054_
                     (let () (declare (not safe)) (##car _e154010154051_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd154009154054_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd154009154054_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl154008154056_))
                            (let ((_e154013154059_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl154008154056_))))
                              (let ((_tl154011154064_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e154013154059_)))
                                    (_hd154012154062_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e154013154059_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl154011154064_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl154005154048_))
                                        (let ((_e154016154067_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl154005154048_))))
                                          (let ((_tl154014154072_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e154016154067_)))
                                                (_hd154015154070_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e154016154067_))))
                                            (___match154601154602_
                                             _e154007154043_
                                             _hd154006154046_
                                             _tl154005154048_
                                             _e154010154051_
                                             _hd154009154054_
                                             _tl154008154056_
                                             _e154013154059_
                                             _hd154012154062_
                                             _tl154011154064_
                                             _e154016154067_
                                             _hd154015154070_
                                             _tl154014154072_)))
                                        (___kont154570154571_))
                                    (___kont154570154571_))))
                            (___kont154570154571_))
                        (___kont154570154571_))
                    (___kont154570154571_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont154570154571_))))
                                            (let ()
                                              (declare (not safe))
                                              (_g153998154038_))))))))))))))))))
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
      (lambda (_self153775_ _ctx153776_ _stx153777_ _args153778_)
        (let* ((_g153780153790_
                (lambda (_g153781153787_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g153781153787_))))
               (_g153779153828_
                (lambda (_g153781153793_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g153781153793_))
                      (let ((_e153785153795_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g153781153793_))))
                        (let ((_hd153784153798_
                               (let ()
                                 (declare (not safe))
                                 (##car _e153785153795_)))
                              (_tl153783153800_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e153785153795_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl153783153800_))
                              ((lambda (_L153803_)
                                 (let* ((_klass153814_
                                         (let ((__tmp155153
                                                (##structure-ref
                                                 _self153775_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx153777_
                                            __tmp155153)))
                                        (_field153816_
                                         (let ((__tmp155154
                                                (##structure-ref
                                                 _self153775_
                                                 '2
                                                 gxc#!accessor::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _klass153814_
                                            __tmp155154)))
                                        (_object153818_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _ctx153776_
                                            _L153803_))))
                                   (if (##structure-ref
                                        _klass153814_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp155231
                                              (let ((__tmp155240
                                                     (if (##structure-ref
                                                          _self153775_
                                                          '3
                                                          gxc#!accessor::t
                                                          '#f)
                                                         '%#struct-direct-ref
                                                         '%#struct-unchecked-ref))
                                                    (__tmp155232
                                                     (let ((__tmp155237
                                                            (let ((__tmp155238
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155239
                                  (##structure-ref
                                   _self153775_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp155239 '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp155238)))
                   (__tmp155233
                    (let ((__tmp155235
                           (let ((__tmp155236
                                  (let ()
                                    (declare (not safe))
                                    (cons _field153816_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp155236)))
                          (__tmp155234
                           (let ()
                             (declare (not safe))
                             (cons _object153818_ '()))))
                      (declare (not safe))
                      (cons __tmp155235 __tmp155234))))
               (declare (not safe))
               (cons __tmp155237 __tmp155233))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp155240
                                                      __tmp155232))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp155231
                                          _stx153777_))
                                       (if (##structure-ref
                                            _klass153814_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp155221
                                                  (let ((__tmp155230
                                                         (if (##structure-ref
                                                              _self153775_
                                                              '3
                                                              gxc#!accessor::t
                                                              '#f)
                                                             '%#struct-ref
                                                             '%#struct-unchecked-ref))
                                                        (__tmp155222
                                                         (let ((__tmp155227
                                                                (let ((__tmp155228
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp155229
                                      (##structure-ref
                                       _self153775_
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
                                        (cons _field153816_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp155226)))
                              (__tmp155224
                               (let ()
                                 (declare (not safe))
                                 (cons _object153818_ '()))))
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
                                              _stx153777_))
                                           (let ((_$e153821_
                                                  (let ((__tmp155155
                                                         (##structure-ref
                                                          _self153775_
                                                          '2
                                                          gxc#!accessor::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _klass153814_
                                                     __tmp155155))))
                                             (if _$e153821_
                                                 ((lambda (_klass153824_)
                                                    (let ((__tmp155211
                                                           (let ((__tmp155220
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##structure-ref
                               _self153775_
                               '3
                               gxc#!accessor::t
                               '#f)
                              '%#struct-ref
                              '%#struct-unchecked-ref))
                         (__tmp155212
                          (let ((__tmp155217
                                 (let ((__tmp155218
                                        (let ((__tmp155219
                                               (##structure-ref
                                                _self153775_
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
                                                 (cons _field153816_ '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp155216)))
                                       (__tmp155214
                                        (let ()
                                          (declare (not safe))
                                          (cons _object153818_ '()))))
                                   (declare (not safe))
                                   (cons __tmp155215 __tmp155214))))
                            (declare (not safe))
                            (cons __tmp155217 __tmp155213))))
                     (declare (not safe))
                     (cons __tmp155220 __tmp155212))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp155211 _stx153777_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e153821_)
                                                 (if (##structure-ref
                                                      _self153775_
                                                      '3
                                                      gxc#!accessor::t
                                                      '#f)
                                                     (let ((__tmp155165
                                                            (let* ((_$obj153826_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp155166 (gensym '__obj)))
                              (declare (not safe))
                              (make-symbol__0 __tmp155166)))
                           (__tmp155167
                            (let ((__tmp155207
                                   (let ((__tmp155208
                                          (let ((__tmp155210
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _$obj153826_ '())))
                                                (__tmp155209
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _object153818_ '()))))
                                            (declare (not safe))
                                            (cons __tmp155210 __tmp155209))))
                                     (declare (not safe))
                                     (cons __tmp155208 '())))
                                  (__tmp155168
                                   (let ((__tmp155169
                                          (let ((__tmp155170
                                                 (let ((__tmp155199
                                                        (let ((__tmp155200
                                                               (let ((__tmp155204
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp155205
                                     (let ((__tmp155206
                                            (##structure-ref
                                             _klass153814_
                                             '1
                                             gxc#!type::t
                                             '#f)))
                                       (declare (not safe))
                                       (cons __tmp155206 '()))))
                                (declare (not safe))
                                (cons '%#quote __tmp155205)))
                             (__tmp155201
                              (let ((__tmp155202
                                     (let ((__tmp155203
                                            (let ()
                                              (declare (not safe))
                                              (cons _$obj153826_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp155203))))
                                (declare (not safe))
                                (cons __tmp155202 '()))))
                         (declare (not safe))
                         (cons __tmp155204 __tmp155201))))
                  (declare (not safe))
                  (cons '%#struct-direct-instance? __tmp155200)))
               (__tmp155171
                (let ((__tmp155188
                       (let ((__tmp155189
                              (let ((__tmp155196
                                     (let ((__tmp155197
                                            (let ((__tmp155198
                                                   (##structure-ref
                                                    _self153775_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp155198 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp155197)))
                                    (__tmp155190
                                     (let ((__tmp155194
                                            (let ((__tmp155195
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field153816_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp155195)))
                                           (__tmp155191
                                            (let ((__tmp155192
                                                   (let ((__tmp155193
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj153826_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155193))))
                                              (declare (not safe))
                                              (cons __tmp155192 '()))))
                                       (declare (not safe))
                                       (cons __tmp155194 __tmp155191))))
                                (declare (not safe))
                                (cons __tmp155196 __tmp155190))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp155189)))
                      (__tmp155172
                       (let ((__tmp155173
                              (let ((__tmp155174
                                     (let ((__tmp155186
                                            (let ((__tmp155187
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'class-slot-ref
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp155187)))
                                           (__tmp155175
                                            (let ((__tmp155183
                                                   (let ((__tmp155184
                                                          (let ((__tmp155185
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref _self153775_ '1 gxc#!type::t '#f)))
                    (declare (not safe))
                    (cons __tmp155185 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155184)))
                                                  (__tmp155176
                                                   (let ((__tmp155181
                                                          (let ((__tmp155182
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj153826_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp155182)))
                 (__tmp155177
                  (let ((__tmp155178
                         (let ((__tmp155179
                                (let ((__tmp155180
                                       (##structure-ref
                                        _self153775_
                                        '2
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (cons __tmp155180 '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp155179))))
                    (declare (not safe))
                    (cons __tmp155178 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp155181
                                                           __tmp155177))))
                                              (declare (not safe))
                                              (cons __tmp155183 __tmp155176))))
                                       (declare (not safe))
                                       (cons __tmp155186 __tmp155175))))
                                (declare (not safe))
                                (cons '%#call __tmp155174))))
                         (declare (not safe))
                         (cons __tmp155173 '()))))
                  (declare (not safe))
                  (cons __tmp155188 __tmp155172))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp155199
                                                         __tmp155171))))
                                            (declare (not safe))
                                            (cons '%#if __tmp155170))))
                                     (declare (not safe))
                                     (cons __tmp155169 '()))))
                              (declare (not safe))
                              (cons __tmp155207 __tmp155168))))
                      (declare (not safe))
                      (cons '%#let-values __tmp155167))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp155165 _stx153777_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp155156
                                                            (let ((__tmp155157
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155163
                                  (let ((__tmp155164
                                         (let ()
                                           (declare (not safe))
                                           (cons 'unchecked-slot-ref '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp155164)))
                                 (__tmp155158
                                  (let ((__tmp155159
                                         (let ((__tmp155160
                                                (let ((__tmp155161
                                                       (let ((__tmp155162
                                                              (##structure-ref
                                                               _self153775_
                                                               '2
                                                               gxc#!accessor::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp155162
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote
                                                        __tmp155161))))
                                           (declare (not safe))
                                           (cons __tmp155160 '()))))
                                    (declare (not safe))
                                    (cons _object153818_ __tmp155159))))
                             (declare (not safe))
                             (cons __tmp155163 __tmp155158))))
                      (declare (not safe))
                      (cons '%#call __tmp155157))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp155156 _stx153777_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _hd153784153798_)
                              (let ()
                                (declare (not safe))
                                (_g153780153790_ _g153781153793_)))))
                      (let ()
                        (declare (not safe))
                        (_g153780153790_ _g153781153793_))))))
          (declare (not safe))
          (_g153779153828_ _args153778_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass154449 __method-table154450)
        (let ((__id154451
               (let ((__slot154454
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154449 'id))))
                 (if __slot154454
                     __slot154454
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__checked?154452
               (let ((__slot154455
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154449 'checked?))))
                 (if __slot154455
                     __slot154455
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__slot154453
               (let ((__slot154456
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154449 'slot))))
                 (if __slot154456
                     __slot154456
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_self153775_ _ctx153776_ _stx153777_ _args153778_)
            (let* ((_g153780153790_
                    (lambda (_g153781153787_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g153781153787_))))
                   (_g153779153828_
                    (lambda (_g153781153793_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g153781153793_))
                          (let ((_e153785153795_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g153781153793_))))
                            (let ((_hd153784153798_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e153785153795_)))
                                  (_tl153783153800_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e153785153795_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl153783153800_))
                                  ((lambda (_L153803_)
                                     (let* ((_klass153814_
                                             (let ((__tmp155241
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self153775_
                                                       __id154451
                                                       __klass154449
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx153777_
                                                __tmp155241)))
                                            (_field153816_
                                             (let ((__tmp155242
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self153775_
                                                       __slot154453
                                                       __klass154449
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _klass153814_
                                                __tmp155242)))
                                            (_object153818_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _ctx153776_
                                                _L153803_))))
                                       (if (##structure-ref
                                            _klass153814_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp155319
                                                  (let ((__tmp155328
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self153775_
                        __checked?154452
                        __klass154449
                        '#f))
                     '%#struct-direct-ref
                     '%#struct-unchecked-ref))
                (__tmp155320
                 (let ((__tmp155325
                        (let ((__tmp155326
                               (let ((__tmp155327
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _self153775_
                                         __id154451
                                         __klass154449
                                         '#f))))
                                 (declare (not safe))
                                 (cons __tmp155327 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp155326)))
                       (__tmp155321
                        (let ((__tmp155323
                               (let ((__tmp155324
                                      (let ()
                                        (declare (not safe))
                                        (cons _field153816_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp155324)))
                              (__tmp155322
                               (let ()
                                 (declare (not safe))
                                 (cons _object153818_ '()))))
                          (declare (not safe))
                          (cons __tmp155323 __tmp155322))))
                   (declare (not safe))
                   (cons __tmp155325 __tmp155321))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp155328
                                                          __tmp155320))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp155319
                                              _stx153777_))
                                           (if (##structure-ref
                                                _klass153814_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp155309
                                                      (let ((__tmp155318
                                                             (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self153775_
                            __checked?154452
                            __klass154449
                            '#f))
                         '%#struct-ref
                         '%#struct-unchecked-ref))
                    (__tmp155310
                     (let ((__tmp155315
                            (let ((__tmp155316
                                   (let ((__tmp155317
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self153775_
                                             __id154451
                                             __klass154449
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
                                            (cons _field153816_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp155314)))
                                  (__tmp155312
                                   (let ()
                                     (declare (not safe))
                                     (cons _object153818_ '()))))
                              (declare (not safe))
                              (cons __tmp155313 __tmp155312))))
                       (declare (not safe))
                       (cons __tmp155315 __tmp155311))))
                (declare (not safe))
                (cons __tmp155318 __tmp155310))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp155309
                                                  _stx153777_))
                                               (let ((_$e153821_
                                                      (let ((__tmp155243
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self153775_
                        __slot154453
                        __klass154449
                        '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _klass153814_ __tmp155243))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e153821_
                                                     ((lambda (_klass153824_)
                                                        (let ((__tmp155299
                                                               (let ((__tmp155308
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self153775_
                                     __checked?154452
                                     __klass154449
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
                                                      _self153775_
                                                      __id154451
                                                      __klass154449
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
                                                     (cons _field153816_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp155304)))
                                           (__tmp155302
                                            (let ()
                                              (declare (not safe))
                                              (cons _object153818_ '()))))
                                       (declare (not safe))
                                       (cons __tmp155303 __tmp155302))))
                                (declare (not safe))
                                (cons __tmp155305 __tmp155301))))
                         (declare (not safe))
                         (cons __tmp155308 __tmp155300))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp155299 _stx153777_)))
              _$e153821_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _self153775_
                                                            __checked?154452
                                                            __klass154449
                                                            '#f))
                                                         (let ((__tmp155253
                                                                (let* ((_$obj153826_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp155254 (gensym '__obj)))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp155254)))
                               (__tmp155255
                                (let ((__tmp155295
                                       (let ((__tmp155296
                                              (let ((__tmp155298
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _$obj153826_
                                                             '())))
                                                    (__tmp155297
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _object153818_
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp155298
                                                      __tmp155297))))
                                         (declare (not safe))
                                         (cons __tmp155296 '())))
                                      (__tmp155256
                                       (let ((__tmp155257
                                              (let ((__tmp155258
                                                     (let ((__tmp155287
                                                            (let ((__tmp155288
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155292
                                  (let ((__tmp155293
                                         (let ((__tmp155294
                                                (##structure-ref
                                                 _klass153814_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp155294 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp155293)))
                                 (__tmp155289
                                  (let ((__tmp155290
                                         (let ((__tmp155291
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj153826_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp155291))))
                                    (declare (not safe))
                                    (cons __tmp155290 '()))))
                             (declare (not safe))
                             (cons __tmp155292 __tmp155289))))
                      (declare (not safe))
                      (cons '%#struct-direct-instance? __tmp155288)))
                   (__tmp155259
                    (let ((__tmp155276
                           (let ((__tmp155277
                                  (let ((__tmp155284
                                         (let ((__tmp155285
                                                (let ((__tmp155286
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self153775_
                                                          __id154451
                                                          __klass154449
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp155286 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp155285)))
                                        (__tmp155278
                                         (let ((__tmp155282
                                                (let ((__tmp155283
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field153816_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp155283)))
                                               (__tmp155279
                                                (let ((__tmp155280
                                                       (let ((__tmp155281
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj153826_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp155281))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp155280 '()))))
                                           (declare (not safe))
                                           (cons __tmp155282 __tmp155279))))
                                    (declare (not safe))
                                    (cons __tmp155284 __tmp155278))))
                             (declare (not safe))
                             (cons '%#struct-unchecked-ref __tmp155277)))
                          (__tmp155260
                           (let ((__tmp155261
                                  (let ((__tmp155262
                                         (let ((__tmp155274
                                                (let ((__tmp155275
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-slot-ref
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp155275)))
                                               (__tmp155263
                                                (let ((__tmp155271
                                                       (let ((__tmp155272
                                                              (let ((__tmp155273
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self153775_
                                __id154451
                                __klass154449
                                '#f))))
                        (declare (not safe))
                        (cons __tmp155273 '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp155272)))
              (__tmp155264
               (let ((__tmp155269
                      (let ((__tmp155270
                             (let ()
                               (declare (not safe))
                               (cons _$obj153826_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp155270)))
                     (__tmp155265
                      (let ((__tmp155266
                             (let ((__tmp155267
                                    (let ((__tmp155268
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _self153775_
                                              __slot154453
                                              __klass154449
                                              '#f))))
                                      (declare (not safe))
                                      (cons __tmp155268 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp155267))))
                        (declare (not safe))
                        (cons __tmp155266 '()))))
                 (declare (not safe))
                 (cons __tmp155269 __tmp155265))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp155271
                                                        __tmp155264))))
                                           (declare (not safe))
                                           (cons __tmp155274 __tmp155263))))
                                    (declare (not safe))
                                    (cons '%#call __tmp155262))))
                             (declare (not safe))
                             (cons __tmp155261 '()))))
                      (declare (not safe))
                      (cons __tmp155276 __tmp155260))))
               (declare (not safe))
               (cons __tmp155287 __tmp155259))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#if __tmp155258))))
                                         (declare (not safe))
                                         (cons __tmp155257 '()))))
                                  (declare (not safe))
                                  (cons __tmp155295 __tmp155256))))
                          (declare (not safe))
                          (cons '%#let-values __tmp155255))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp155253 _stx153777_))
                 (let ((__tmp155244
                        (let ((__tmp155245
                               (let ((__tmp155251
                                      (let ((__tmp155252
                                             (let ()
                                               (declare (not safe))
                                               (cons 'unchecked-slot-ref
                                                     '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp155252)))
                                     (__tmp155246
                                      (let ((__tmp155247
                                             (let ((__tmp155248
                                                    (let ((__tmp155249
                                                           (let ((__tmp155250
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _self153775_
                             __slot154453
                             __klass154449
                             '#f))))
                     (declare (not safe))
                     (cons __tmp155250 '()))))
              (declare (not safe))
              (cons '%#quote __tmp155249))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp155248 '()))))
                                        (declare (not safe))
                                        (cons _object153818_ __tmp155247))))
                                 (declare (not safe))
                                 (cons __tmp155251 __tmp155246))))
                          (declare (not safe))
                          (cons '%#call __tmp155245))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp155244 _stx153777_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd153784153798_)
                                  (let ()
                                    (declare (not safe))
                                    (_g153780153790_ _g153781153793_)))))
                          (let ()
                            (declare (not safe))
                            (_g153780153790_ _g153781153793_))))))
              (declare (not safe))
              (_g153779153828_ _args153778_))))))
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
      (lambda (_self153579_ _ctx153580_ _stx153581_ _args153582_)
        (let* ((_g153584153598_
                (lambda (_g153585153595_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g153585153595_))))
               (_g153583153650_
                (lambda (_g153585153601_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g153585153601_))
                      (let ((_e153590153603_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g153585153601_))))
                        (let ((_hd153589153606_
                               (let ()
                                 (declare (not safe))
                                 (##car _e153590153603_)))
                              (_tl153588153608_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e153590153603_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl153588153608_))
                              (let ((_e153593153611_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl153588153608_))))
                                (let ((_hd153592153614_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e153593153611_)))
                                      (_tl153591153616_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e153593153611_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl153591153616_))
                                      ((lambda (_L153619_ _L153620_)
                                         (let* ((_klass153634_
                                                 (let ((__tmp155329
                                                        (##structure-ref
                                                         _self153579_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _stx153581_
                                                    __tmp155329)))
                                                (_field153636_
                                                 (let ((__tmp155330
                                                        (##structure-ref
                                                         _self153579_
                                                         '2
                                                         gxc#!mutator::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass153634_
                                                    __tmp155330)))
                                                (_object153638_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _ctx153580_
                                                    _L153620_)))
                                                (_value153640_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _ctx153580_
                                                    _L153619_))))
                                           (if (##structure-ref
                                                _klass153634_
                                                '8
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp155412
                                                      (let ((__tmp155422
                                                             (if (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _self153579_
                          '3
                          gxc#!mutator::t
                          '#f)
                         '%#struct-direct-set!
                         '%#struct-unchecked-set!))
                    (__tmp155413
                     (let ((__tmp155419
                            (let ((__tmp155420
                                   (let ((__tmp155421
                                          (##structure-ref
                                           _self153579_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp155421 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp155420)))
                           (__tmp155414
                            (let ((__tmp155417
                                   (let ((__tmp155418
                                          (let ()
                                            (declare (not safe))
                                            (cons _field153636_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp155418)))
                                  (__tmp155415
                                   (let ((__tmp155416
                                          (let ()
                                            (declare (not safe))
                                            (cons _value153640_ '()))))
                                     (declare (not safe))
                                     (cons _object153638_ __tmp155416))))
                              (declare (not safe))
                              (cons __tmp155417 __tmp155415))))
                       (declare (not safe))
                       (cons __tmp155419 __tmp155414))))
                (declare (not safe))
                (cons __tmp155422 __tmp155413))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp155412
                                                  _stx153581_))
                                               (if (##structure-ref
                                                    _klass153634_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp155401
                                                          (let ((__tmp155411
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##structure-ref
                              _self153579_
                              '3
                              gxc#!mutator::t
                              '#f)
                             '%#struct-set!
                             '%#struct-unchecked-set!))
                        (__tmp155402
                         (let ((__tmp155408
                                (let ((__tmp155409
                                       (let ((__tmp155410
                                              (##structure-ref
                                               _self153579_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp155410 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp155409)))
                               (__tmp155403
                                (let ((__tmp155406
                                       (let ((__tmp155407
                                              (let ()
                                                (declare (not safe))
                                                (cons _field153636_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp155407)))
                                      (__tmp155404
                                       (let ((__tmp155405
                                              (let ()
                                                (declare (not safe))
                                                (cons _value153640_ '()))))
                                         (declare (not safe))
                                         (cons _object153638_ __tmp155405))))
                                  (declare (not safe))
                                  (cons __tmp155406 __tmp155404))))
                           (declare (not safe))
                           (cons __tmp155408 __tmp155403))))
                    (declare (not safe))
                    (cons __tmp155411 __tmp155402))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp155401
                                                      _stx153581_))
                                                   (let ((_$e153643_
                                                          (let ((__tmp155331
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref
                          _self153579_
                          '2
                          gxc#!mutator::t
                          '#f)))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct _klass153634_ __tmp155331))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e153643_
                                                         ((lambda (_klass153646_)
                                                            (let ((__tmp155390
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155400
                                  (if (##structure-ref
                                       _self153579_
                                       '3
                                       gxc#!mutator::t
                                       '#f)
                                      '%#struct-set!
                                      '%#struct-unchecked-set!))
                                 (__tmp155391
                                  (let ((__tmp155397
                                         (let ((__tmp155398
                                                (let ((__tmp155399
                                                       (##structure-ref
                                                        _self153579_
                                                        '1
                                                        gxc#!type::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp155399 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp155398)))
                                        (__tmp155392
                                         (let ((__tmp155395
                                                (let ((__tmp155396
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field153636_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp155396)))
                                               (__tmp155393
                                                (let ((__tmp155394
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _value153640_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons _object153638_
                                                        __tmp155394))))
                                           (declare (not safe))
                                           (cons __tmp155395 __tmp155393))))
                                    (declare (not safe))
                                    (cons __tmp155397 __tmp155392))))
                             (declare (not safe))
                             (cons __tmp155400 __tmp155391))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp155390 _stx153581_)))
                  _$e153643_)
                 (if (##structure-ref _self153579_ '3 gxc#!mutator::t '#f)
                     (let ((__tmp155342
                            (let* ((_$obj153648_
                                    (let ((__tmp155343 (gensym '__obj)))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp155343)))
                                   (__tmp155344
                                    (let ((__tmp155386
                                           (let ((__tmp155387
                                                  (let ((__tmp155389
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj153648_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp155388
                 (let () (declare (not safe)) (cons _object153638_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp155389
                                                          __tmp155388))))
                                             (declare (not safe))
                                             (cons __tmp155387 '())))
                                          (__tmp155345
                                           (let ((__tmp155346
                                                  (let ((__tmp155347
                                                         (let ((__tmp155378
                                                                (let ((__tmp155379
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp155383
                                      (let ((__tmp155384
                                             (let ((__tmp155385
                                                    (##structure-ref
                                                     _klass153634_
                                                     '1
                                                     gxc#!type::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp155385 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp155384)))
                                     (__tmp155380
                                      (let ((__tmp155381
                                             (let ((__tmp155382
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj153648_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp155382))))
                                        (declare (not safe))
                                        (cons __tmp155381 '()))))
                                 (declare (not safe))
                                 (cons __tmp155383 __tmp155380))))
                          (declare (not safe))
                          (cons '%#struct-direct-instance? __tmp155379)))
                       (__tmp155348
                        (let ((__tmp155366
                               (let ((__tmp155367
                                      (let ((__tmp155375
                                             (let ((__tmp155376
                                                    (let ((__tmp155377
                                                           (##structure-ref
                                                            _self153579_
                                                            '1
                                                            gxc#!type::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (cons __tmp155377 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp155376)))
                                            (__tmp155368
                                             (let ((__tmp155373
                                                    (let ((__tmp155374
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field153636_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp155374)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp155369
                                                    (let ((__tmp155371
                                                           (let ((__tmp155372
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj153648_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp155372)))
                  (__tmp155370
                   (let () (declare (not safe)) (cons _value153640_ '()))))
              (declare (not safe))
              (cons __tmp155371 __tmp155370))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp155373
                                                     __tmp155369))))
                                        (declare (not safe))
                                        (cons __tmp155375 __tmp155368))))
                                 (declare (not safe))
                                 (cons '%#struct-unchecked-set! __tmp155367)))
                              (__tmp155349
                               (let ((__tmp155350
                                      (let ((__tmp155351
                                             (let ((__tmp155364
                                                    (let ((__tmp155365
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp155365)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp155352
                                                    (let ((__tmp155361
                                                           (let ((__tmp155362
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp155363
                                 (##structure-ref
                                  _self153579_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (cons __tmp155363 '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp155362)))
                  (__tmp155353
                   (let ((__tmp155359
                          (let ((__tmp155360
                                 (let ()
                                   (declare (not safe))
                                   (cons _$obj153648_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp155360)))
                         (__tmp155354
                          (let ((__tmp155356
                                 (let ((__tmp155357
                                        (let ((__tmp155358
                                               (##structure-ref
                                                _self153579_
                                                '2
                                                gxc#!mutator::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp155358 '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp155357)))
                                (__tmp155355
                                 (let ()
                                   (declare (not safe))
                                   (cons _value153640_ '()))))
                            (declare (not safe))
                            (cons __tmp155356 __tmp155355))))
                     (declare (not safe))
                     (cons __tmp155359 __tmp155354))))
              (declare (not safe))
              (cons __tmp155361 __tmp155353))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp155364
                                                     __tmp155352))))
                                        (declare (not safe))
                                        (cons '%#call __tmp155351))))
                                 (declare (not safe))
                                 (cons __tmp155350 '()))))
                          (declare (not safe))
                          (cons __tmp155366 __tmp155349))))
                   (declare (not safe))
                   (cons __tmp155378 __tmp155348))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#if __tmp155347))))
                                             (declare (not safe))
                                             (cons __tmp155346 '()))))
                                      (declare (not safe))
                                      (cons __tmp155386 __tmp155345))))
                              (declare (not safe))
                              (cons '%#let-values __tmp155344))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp155342 _stx153581_))
                     (let ((__tmp155332
                            (let ((__tmp155333
                                   (let ((__tmp155340
                                          (let ((__tmp155341
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'unchecked-slot-set!
                                                         '()))))
                                            (declare (not safe))
                                            (cons '%#ref __tmp155341)))
                                         (__tmp155334
                                          (let ((__tmp155335
                                                 (let ((__tmp155337
                                                        (let ((__tmp155338
                                                               (let ((__tmp155339
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##structure-ref
                               _self153579_
                               '2
                               gxc#!mutator::t
                               '#f)))
                         (declare (not safe))
                         (cons __tmp155339 '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp155338)))
               (__tmp155336
                (let () (declare (not safe)) (cons _value153640_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp155337
                                                         __tmp155336))))
                                            (declare (not safe))
                                            (cons _object153638_
                                                  __tmp155335))))
                                     (declare (not safe))
                                     (cons __tmp155340 __tmp155334))))
                              (declare (not safe))
                              (cons '%#call __tmp155333))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp155332 _stx153581_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd153592153614_
                                       _hd153589153606_)
                                      (let ()
                                        (declare (not safe))
                                        (_g153584153598_ _g153585153601_)))))
                              (let ()
                                (declare (not safe))
                                (_g153584153598_ _g153585153601_)))))
                      (let ()
                        (declare (not safe))
                        (_g153584153598_ _g153585153601_))))))
          (declare (not safe))
          (_g153583153650_ _args153582_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass154457 __method-table154458)
        (let ((__id154459
               (let ((__slot154462
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154457 'id))))
                 (if __slot154462
                     __slot154462
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__checked?154460
               (let ((__slot154463
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154457 'checked?))))
                 (if __slot154463
                     __slot154463
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__slot154461
               (let ((__slot154464
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154457 'slot))))
                 (if __slot154464
                     __slot154464
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_self153579_ _ctx153580_ _stx153581_ _args153582_)
            (let* ((_g153584153598_
                    (lambda (_g153585153595_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g153585153595_))))
                   (_g153583153650_
                    (lambda (_g153585153601_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g153585153601_))
                          (let ((_e153590153603_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g153585153601_))))
                            (let ((_hd153589153606_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e153590153603_)))
                                  (_tl153588153608_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e153590153603_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl153588153608_))
                                  (let ((_e153593153611_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl153588153608_))))
                                    (let ((_hd153592153614_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e153593153611_)))
                                          (_tl153591153616_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e153593153611_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl153591153616_))
                                          ((lambda (_L153619_ _L153620_)
                                             (let* ((_klass153634_
                                                     (let ((__tmp155423
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self153579_
                                                               __id154459
                                                               __klass154457
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _stx153581_
                                                        __tmp155423)))
                                                    (_field153636_
                                                     (let ((__tmp155424
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self153579_
                                                               __slot154461
                                                               __klass154457
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass153634_
                                                        __tmp155424)))
                                                    (_object153638_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _ctx153580_
                                                        _L153620_)))
                                                    (_value153640_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _ctx153580_
                                                        _L153619_))))
                                               (if (##structure-ref
                                                    _klass153634_
                                                    '8
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp155506
                                                          (let ((__tmp155516
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self153579_
                                __checked?154460
                                __klass154457
                                '#f))
                             '%#struct-direct-set!
                             '%#struct-unchecked-set!))
                        (__tmp155507
                         (let ((__tmp155513
                                (let ((__tmp155514
                                       (let ((__tmp155515
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _self153579_
                                                 __id154459
                                                 __klass154457
                                                 '#f))))
                                         (declare (not safe))
                                         (cons __tmp155515 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp155514)))
                               (__tmp155508
                                (let ((__tmp155511
                                       (let ((__tmp155512
                                              (let ()
                                                (declare (not safe))
                                                (cons _field153636_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp155512)))
                                      (__tmp155509
                                       (let ((__tmp155510
                                              (let ()
                                                (declare (not safe))
                                                (cons _value153640_ '()))))
                                         (declare (not safe))
                                         (cons _object153638_ __tmp155510))))
                                  (declare (not safe))
                                  (cons __tmp155511 __tmp155509))))
                           (declare (not safe))
                           (cons __tmp155513 __tmp155508))))
                    (declare (not safe))
                    (cons __tmp155516 __tmp155507))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp155506
                                                      _stx153581_))
                                                   (if (##structure-ref
                                                        _klass153634_
                                                        '7
                                                        gxc#!class::t
                                                        '#f)
                                                       (let ((__tmp155495
                                                              (let ((__tmp155505
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _self153579_
                                    __checked?154460
                                    __klass154457
                                    '#f))
                                 '%#struct-set!
                                 '%#struct-unchecked-set!))
                            (__tmp155496
                             (let ((__tmp155502
                                    (let ((__tmp155503
                                           (let ((__tmp155504
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self153579_
                                                     __id154459
                                                     __klass154457
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp155504 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp155503)))
                                   (__tmp155497
                                    (let ((__tmp155500
                                           (let ((__tmp155501
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _field153636_ '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp155501)))
                                          (__tmp155498
                                           (let ((__tmp155499
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _value153640_ '()))))
                                             (declare (not safe))
                                             (cons _object153638_
                                                   __tmp155499))))
                                      (declare (not safe))
                                      (cons __tmp155500 __tmp155498))))
                               (declare (not safe))
                               (cons __tmp155502 __tmp155497))))
                        (declare (not safe))
                        (cons __tmp155505 __tmp155496))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp155495 _stx153581_))
               (let ((_$e153643_
                      (let ((__tmp155425
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self153579_
                                __slot154461
                                __klass154457
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _klass153634_
                         __tmp155425))))
                 (if _$e153643_
                     ((lambda (_klass153646_)
                        (let ((__tmp155484
                               (let ((__tmp155494
                                      (if (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self153579_
                                             __checked?154460
                                             __klass154457
                                             '#f))
                                          '%#struct-set!
                                          '%#struct-unchecked-set!))
                                     (__tmp155485
                                      (let ((__tmp155491
                                             (let ((__tmp155492
                                                    (let ((__tmp155493
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _self153579_
                                                              __id154459
                                                              __klass154457
                                                              '#f))))
                                                      (declare (not safe))
                                                      (cons __tmp155493 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp155492)))
                                            (__tmp155486
                                             (let ((__tmp155489
                                                    (let ((__tmp155490
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field153636_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp155490)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp155487
                                                    (let ((__tmp155488
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _value153640_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _object153638_ __tmp155488))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp155489
                                                     __tmp155487))))
                                        (declare (not safe))
                                        (cons __tmp155491 __tmp155486))))
                                 (declare (not safe))
                                 (cons __tmp155494 __tmp155485))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp155484 _stx153581_)))
                      _$e153643_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self153579_
                            __checked?154460
                            __klass154457
                            '#f))
                         (let ((__tmp155436
                                (let* ((_$obj153648_
                                        (let ((__tmp155437 (gensym '__obj)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp155437)))
                                       (__tmp155438
                                        (let ((__tmp155480
                                               (let ((__tmp155481
                                                      (let ((__tmp155483
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj153648_ '())))
                    (__tmp155482
                     (let () (declare (not safe)) (cons _object153638_ '()))))
                (declare (not safe))
                (cons __tmp155483 __tmp155482))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp155481 '())))
                                              (__tmp155439
                                               (let ((__tmp155440
                                                      (let ((__tmp155441
                                                             (let ((__tmp155472
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp155473
                                   (let ((__tmp155477
                                          (let ((__tmp155478
                                                 (let ((__tmp155479
                                                        (##structure-ref
                                                         _klass153634_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp155479 '()))))
                                            (declare (not safe))
                                            (cons '%#quote __tmp155478)))
                                         (__tmp155474
                                          (let ((__tmp155475
                                                 (let ((__tmp155476
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj153648_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp155476))))
                                            (declare (not safe))
                                            (cons __tmp155475 '()))))
                                     (declare (not safe))
                                     (cons __tmp155477 __tmp155474))))
                              (declare (not safe))
                              (cons '%#struct-direct-instance? __tmp155473)))
                           (__tmp155442
                            (let ((__tmp155460
                                   (let ((__tmp155461
                                          (let ((__tmp155469
                                                 (let ((__tmp155470
                                                        (let ((__tmp155471
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _self153579_
                          __id154459
                          __klass154457
                          '#f))))
                  (declare (not safe))
                  (cons __tmp155471 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp155470)))
                                                (__tmp155462
                                                 (let ((__tmp155467
                                                        (let ((__tmp155468
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _field153636_ '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp155468)))
               (__tmp155463
                (let ((__tmp155465
                       (let ((__tmp155466
                              (let ()
                                (declare (not safe))
                                (cons _$obj153648_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp155466)))
                      (__tmp155464
                       (let () (declare (not safe)) (cons _value153640_ '()))))
                  (declare (not safe))
                  (cons __tmp155465 __tmp155464))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp155467
                                                         __tmp155463))))
                                            (declare (not safe))
                                            (cons __tmp155469 __tmp155462))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp155461)))
                                  (__tmp155443
                                   (let ((__tmp155444
                                          (let ((__tmp155445
                                                 (let ((__tmp155458
                                                        (let ((__tmp155459
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons 'class-slot-set! '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp155459)))
               (__tmp155446
                (let ((__tmp155455
                       (let ((__tmp155456
                              (let ((__tmp155457
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _self153579_
                                        __id154459
                                        __klass154457
                                        '#f))))
                                (declare (not safe))
                                (cons __tmp155457 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp155456)))
                      (__tmp155447
                       (let ((__tmp155453
                              (let ((__tmp155454
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj153648_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp155454)))
                             (__tmp155448
                              (let ((__tmp155450
                                     (let ((__tmp155451
                                            (let ((__tmp155452
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self153579_
                                                      __slot154461
                                                      __klass154457
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp155452 '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp155451)))
                                    (__tmp155449
                                     (let ()
                                       (declare (not safe))
                                       (cons _value153640_ '()))))
                                (declare (not safe))
                                (cons __tmp155450 __tmp155449))))
                         (declare (not safe))
                         (cons __tmp155453 __tmp155448))))
                  (declare (not safe))
                  (cons __tmp155455 __tmp155447))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp155458
                                                         __tmp155446))))
                                            (declare (not safe))
                                            (cons '%#call __tmp155445))))
                                     (declare (not safe))
                                     (cons __tmp155444 '()))))
                              (declare (not safe))
                              (cons __tmp155460 __tmp155443))))
                       (declare (not safe))
                       (cons __tmp155472 __tmp155442))))
                (declare (not safe))
                (cons '%#if __tmp155441))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp155440 '()))))
                                          (declare (not safe))
                                          (cons __tmp155480 __tmp155439))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp155438))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp155436 _stx153581_))
                         (let ((__tmp155426
                                (let ((__tmp155427
                                       (let ((__tmp155434
                                              (let ((__tmp155435
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons 'unchecked-slot-set!
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#ref __tmp155435)))
                                             (__tmp155428
                                              (let ((__tmp155429
                                                     (let ((__tmp155431
                                                            (let ((__tmp155432
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155433
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self153579_
                                     __slot154461
                                     __klass154457
                                     '#f))))
                             (declare (not safe))
                             (cons __tmp155433 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp155432)))
                   (__tmp155430
                    (let () (declare (not safe)) (cons _value153640_ '()))))
               (declare (not safe))
               (cons __tmp155431 __tmp155430))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _object153638_
                                                      __tmp155429))))
                                         (declare (not safe))
                                         (cons __tmp155434 __tmp155428))))
                                  (declare (not safe))
                                  (cons '%#call __tmp155427))))
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp155426
                            _stx153581_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _hd153592153614_
                                           _hd153589153606_)
                                          (let ()
                                            (declare (not safe))
                                            (_g153584153598_
                                             _g153585153601_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g153584153598_ _g153585153601_)))))
                          (let ()
                            (declare (not safe))
                            (_g153584153598_ _g153585153601_))))))
              (declare (not safe))
              (_g153583153650_ _args153582_))))))
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
      (lambda (_self153412_ _ctx153413_ _stx153414_ _args153415_)
        (let* ((_self153416153425_ _self153412_)
               (_E153418153429_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153416153425_))))
               (_K153419153436_
                (lambda (_inline153432_ _dispatch153433_ _arity153434_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self153412_ _args153415_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx153414_
                         _arity153434_)))
                  (if _inline153432_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp155522
                               (let ((__tmp155523
                                      (_inline153432_ _stx153414_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp155523
                                  _stx153414_))))
                          (declare (not safe))
                          (gxc#compile-e__1 _ctx153413_ __tmp155522)))
                      (if _dispatch153433_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch153433_))
                            (let ((__tmp155517
                                   (let ((__tmp155518
                                          (let ((__tmp155519
                                                 (let ((__tmp155520
                                                        (let ((__tmp155521
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch153433_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp155521))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp155520
                                                         _args153415_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp155519))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp155518
                                      _stx153414_))))
                              (declare (not safe))
                              (gxc#compile-e__1 _ctx153413_ __tmp155517)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _ctx153413_ _stx153414_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self153416153425_ 'gxc#!lambda::t))
              (let* ((_e153420153439_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153416153425_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e153421153442_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153416153425_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity153445_ _e153421153442_)
                     (_e153422153447_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153416153425_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch153450_ _e153422153447_)
                     (_e153423153452_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153416153425_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline153455_ _e153423153452_))
                (declare (not safe))
                (_K153419153436_
                 _inline153455_
                 _dispatch153450_
                 _arity153445_))
              (let () (declare (not safe)) (_E153418153429_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self153250_ _ctx153251_ _stx153252_ _args153253_)
        (let* ((_self153254153261_ _self153250_)
               (_E153256153265_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153254153261_))))
               (_K153257153279_
                (lambda (_clauses153268_)
                  (let ((_$e153274_
                         (let ((__tmp155524
                                (lambda (_g153269153271_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g153269153271_
                                     _args153253_)))))
                           (declare (not safe))
                           (find __tmp155524 _clauses153268_))))
                    (if _$e153274_
                        ((lambda (_clause153277_)
                           (let ((__method154735
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause153277_
                                     'optimize-call))))
                             (if __method154735
                                 (__method154735
                                  _clause153277_
                                  _ctx153251_
                                  _stx153252_
                                  _args153253_)
                                 (let ()
                                   (declare (not safe))
                                   (error '"Missing method"
                                          _clause153277_
                                          'optimize-call)))))
                         _$e153274_)
                        (let ((__tmp155525
                               (map gxc#!lambda-arity _clauses153268_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx153252_
                           __tmp155525)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self153254153261_
                 'gxc#!case-lambda::t))
              (let* ((_e153258153282_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153254153261_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e153259153285_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153254153261_
                         '2
                         gxc#!case-lambda::t
                         '#f)))
                     (_clauses153288_ _e153259153285_))
                (declare (not safe))
                (_K153257153279_ _clauses153288_))
              (let () (declare (not safe)) (_E153256153265_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self153064_ _args153065_)
        (let* ((_self153066153073_ _self153064_)
               (_E153068153077_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153066153073_))))
               (_K153069153117_
                (lambda (_arity153080_)
                  (let* ((_arity153081153090_ _arity153080_)
                         (_E153084153094_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (error '"No clause matching"
                                     _arity153081153090_)))))
                    (let ((_K153088153114_
                           (lambda ()
                             (fx= (length _args153065_) _arity153080_)))
                          (_K153085153100_
                           (lambda (_arity153098_)
                             (fx>= (length _args153065_) _arity153098_))))
                      (let ((_try-match153083153110_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity153081153090_))
                                   (let ((_tl153087153105_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity153081153090_)))
                                         (_hd153086153103_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity153081153090_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl153087153105_))
                                         (let ((_arity153108_
                                                _hd153086153103_))
                                           (declare (not safe))
                                           (_K153085153100_ _arity153108_))
                                         (let ()
                                           (declare (not safe))
                                           (_E153084153094_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E153084153094_))))))
                        (if (let ()
                              (declare (not safe))
                              (fixnum? _arity153081153090_))
                            (let () (declare (not safe)) (_K153088153114_))
                            (let ()
                              (declare (not safe))
                              (_try-match153083153110_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self153066153073_ 'gxc#!lambda::t))
              (let* ((_e153070153120_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153066153073_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e153071153123_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153066153073_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity153126_ _e153071153123_))
                (declare (not safe))
                (_K153069153117_ _arity153126_))
              (let () (declare (not safe)) (_E153068153077_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self152948_ _ctx152949_ _stx152950_ _args152951_)
        (let* ((_self152952152960_ _self152948_)
               (_E152954152964_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self152952152960_))))
               (_K152955153048_
                (lambda (_dispatch152967_ _table152968_)
                  (let* ((_g152969152978_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch152967_)))
                         (_else152971152986_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch152967_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _ctx152949_ _stx152950_))))
                         (_K152973153032_
                          (lambda (_main152989_ _keys152990_)
                            (let ((_g155526_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx152950_
                                      _args152951_))))
                              (begin
                                (let ((_g155527_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g155526_)
                                             (##vector-length _g155526_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g155527_ 2)))
                                      (error "Context expects 2 values"
                                             _g155527_)))
                                (let ((_pargs152992_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g155526_ 0)))
                                      (_kwargs152993_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g155526_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main152989_))
                                    (if _table152968_
                                        (let ((_xargs153000_
                                               (map (lambda (_key152995_)
                                                      (let ((_$e152997_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq__0 _key152995_ _kwargs152993_))))
                (if _$e152997_ (values _$e152997_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys152990_)))
                                          (for-each
                                           (lambda (_kw153002_)
                                             (if (memq (car _kw153002_)
                                                       _keys152990_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx152950_
                                                    _keys152990_
                                                    _kw153002_))))
                                           _kwargs152993_)
                                          (let ((__tmp155579
                                                 (let ((__tmp155580
                                                        (let ((__tmp155581
                                                               (let ((__tmp155586
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp155587
                                     (let ()
                                       (declare (not safe))
                                       (cons _main152989_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp155587)))
                             (__tmp155582
                              (let ((__tmp155584
                                     (let ((__tmp155585
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp155585)))
                                    (__tmp155583
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs152992_
                                               _xargs153000_))))
                                (declare (not safe))
                                (cons __tmp155584 __tmp155583))))
                         (declare (not safe))
                         (cons __tmp155586 __tmp155582))))
                  (declare (not safe))
                  (cons '%#call __tmp155581))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp155580
                                                    _stx152950_))))
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _ctx152949_
                                             __tmp155579)))
                                        (let* ((_kwt153004_
                                                (let ((__tmp155528
                                                       (gensym '__kwt)))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp155528)))
                                               (_kwvars153007_
                                                (map (lambda (_g155529_)
                                                       (let ((__tmp155530
                                                              (gensym '__kw)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp155530)))
                                                     _kwargs152993_))
                                               (_kwbind153012_
                                                (map (lambda (_kw153009_
                                                              _kwvar153010_)
                                                       (let ((__tmp155533
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar153010_ '())))
                     (__tmp155531
                      (let ((__tmp155532 (cdr _kw153009_)))
                        (declare (not safe))
                        (cons __tmp155532 '()))))
                 (declare (not safe))
                 (cons __tmp155533 __tmp155531)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs152993_
                                                     _kwvars153007_))
                                               (_kwset153017_
                                                (map (lambda (_kw153014_
                                                              _kwvar153015_)
                                                       (let ((__tmp155534
                                                              (let ((__tmp155535
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp155543
                                    (let ((__tmp155544
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt153004_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp155544)))
                                   (__tmp155536
                                    (let ((__tmp155540
                                           (let ((__tmp155541
                                                  (let ((__tmp155542
                                                         (car _kw153014_)))
                                                    (declare (not safe))
                                                    (cons __tmp155542 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp155541)))
                                          (__tmp155537
                                           (let ((__tmp155538
                                                  (let ((__tmp155539
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar153015_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp155539))))
                                             (declare (not safe))
                                             (cons __tmp155538 '()))))
                                      (declare (not safe))
                                      (cons __tmp155540 __tmp155537))))
                               (declare (not safe))
                               (cons __tmp155543 __tmp155536))))
                        (declare (not safe))
                        (cons '(%#ref symbolic-table-set!) __tmp155535))))
                 (declare (not safe))
                 (cons '%#call __tmp155534)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs152993_
                                                     _kwvars153007_))
                                               (_xkwargs153022_
                                                (map (lambda (_kw153019_
                                                              _kwvar153020_)
                                                       (let ((__tmp155547
                                                              (car _kw153019_))
                                                             (__tmp155545
                                                              (let ((__tmp155546
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar153020_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp155546))))
                 (declare (not safe))
                 (cons __tmp155547 __tmp155545)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs152993_
                                                     _kwvars153007_))
                                               (_xargs153029_
                                                (map (lambda (_key153024_)
                                                       (let ((_$e153026_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq__0 _key153024_ _xkwargs153022_))))
                 (if _$e153026_ (values _$e153026_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys152990_)))
                                          (let ((__tmp155548
                                                 (let ((__tmp155549
                                                        (let ((__tmp155550
                                                               (let ((__tmp155551
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp155552
                                     (let ((__tmp155553
                                            (let ((__tmp155567
                                                   (let ((__tmp155568
                                                          (let ((__tmp155578
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt153004_ '())))
                        (__tmp155569
                         (let ((__tmp155570
                                (let ((__tmp155571
                                       (let ((__tmp155572
                                              (let ((__tmp155573
                                                     (let ((__tmp155575
                                                            (let ((__tmp155576
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155577 (length _kwargs152993_)))
                             (declare (not safe))
                             (cons __tmp155577 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp155576)))
                   (__tmp155574
                    (let () (declare (not safe)) (cons '(%#quote 0) '()))))
               (declare (not safe))
               (cons __tmp155575 __tmp155574))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-symbolic-table)
                                                      __tmp155573))))
                                         (declare (not safe))
                                         (cons '%#call __tmp155572))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp155571
                                   _stx152950_))))
                           (declare (not safe))
                           (cons __tmp155570 '()))))
                    (declare (not safe))
                    (cons __tmp155578 __tmp155569))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp155568 '())))
                                                  (__tmp155554
                                                   (let ((__tmp155555
                                                          (let ((__tmp155556
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp155557
                                (let ((__tmp155558
                                       (let ((__tmp155559
                                              (let ((__tmp155560
                                                     (let ((__tmp155565
                                                            (let ((__tmp155566
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main152989_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp155566)))
                   (__tmp155561
                    (let ((__tmp155563
                           (let ((__tmp155564
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt153004_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp155564)))
                          (__tmp155562
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs152992_ _xargs153029_))))
                      (declare (not safe))
                      (cons __tmp155563 __tmp155562))))
               (declare (not safe))
               (cons __tmp155565 __tmp155561))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp155560))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp155559
                                          _stx152950_))))
                                  (declare (not safe))
                                  (cons __tmp155558 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp155557 _kwset153017_))))
                    (declare (not safe))
                    (cons '%#begin __tmp155556))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp155555 '()))))
                                              (declare (not safe))
                                              (cons __tmp155567 __tmp155554))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp155553))))
                                (declare (not safe))
                                (cons __tmp155552 '()))))
                         (declare (not safe))
                         (cons _kwbind153012_ __tmp155551))))
                  (declare (not safe))
                  (cons '%#let-values __tmp155550))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp155549
                                                    _stx152950_))))
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _ctx152949_
                                             __tmp155548)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g152969152978_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e152974153035_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g152969152978_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                               (_e152975153038_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g152969152978_
                                   '2
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_keys153041_ _e152975153038_)
                               (_e152976153043_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g152969152978_
                                   '3
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_main153046_ _e152976153043_))
                          (declare (not safe))
                          (_K152973153032_ _main153046_ _keys153041_))
                        (let () (declare (not safe)) (_else152971152986_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self152952152960_
                 'gxc#!kw-lambda::t))
              (let* ((_e152956153051_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self152952152960_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e152957153054_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self152952152960_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table153057_ _e152957153054_)
                     (_e152958153059_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self152952152960_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch153062_ _e152958153059_))
                (declare (not safe))
                (_K152955153048_ _dispatch153062_ _table153057_))
              (let () (declare (not safe)) (_E152954152964_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx152561_ _args152562_)
        (let _lp152564_ ((_rest152566_ _args152562_)
                         (_pargs152567_ '())
                         (_kwargs152568_ '()))
          (let* ((___stx154615154616_ _rest152566_)
                 (_g152574152626_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx154615154616_)))))
            (let ((___kont154617154618_
                   (lambda (_L152805_ _L152806_)
                     (let ((__tmp155588
                            (let ()
                              (declare (not safe))
                              (cons _L152806_ _pargs152567_))))
                       (declare (not safe))
                       (_lp152564_ _L152805_ __tmp155588 _kwargs152568_))))
                  (___kont154619154620_
                   (lambda (_L152751_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L152751_ _pargs152567_))
                             (reverse _kwargs152568_))))
                  (___kont154621154622_
                   (lambda (_L152698_ _L152699_ _L152700_)
                     (let ((_kw152717_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _L152700_))))
                       (if (assq _kw152717_ _kwargs152568_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx152561_
                              _kw152717_))
                           (let ((__tmp155589
                                  (let ((__tmp155590
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw152717_ _L152699_))))
                                    (declare (not safe))
                                    (cons __tmp155590 _kwargs152568_))))
                             (declare (not safe))
                             (_lp152564_
                              _L152698_
                              _pargs152567_
                              __tmp155589))))))
                  (___kont154623154624_
                   (lambda (_L152646_ _L152647_)
                     (let ((__tmp155591
                            (let ()
                              (declare (not safe))
                              (cons _L152647_ _pargs152567_))))
                       (declare (not safe))
                       (_lp152564_ _L152646_ __tmp155591 _kwargs152568_))))
                  (___kont154625154626_
                   (lambda ()
                     (values (reverse _pargs152567_)
                             (reverse _kwargs152568_)))))
              (let* ((_g152573152633_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx154615154616_))
                            (___kont154625154626_)
                            (let () (declare (not safe)) (_g152574152626_)))))
                     (___match154722154723_
                      (lambda (_e152607152666_
                               _hd152606152669_
                               _tl152605152671_
                               _e152610152674_
                               _hd152609152677_
                               _tl152608152679_
                               _e152613152682_
                               _hd152612152685_
                               _tl152611152687_
                               _e152616152690_
                               _hd152615152693_
                               _tl152614152695_)
                        (let ((_L152698_ _tl152614152695_)
                              (_L152699_ _hd152615152693_)
                              (_L152700_ _hd152612152685_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L152700_))
                              (___kont154621154622_
                               _L152698_
                               _L152699_
                               _L152700_)
                              (___kont154623154624_
                               _tl152605152671_
                               _hd152606152669_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx154615154616_))
                    (let ((_e152580152770_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx154615154616_))))
                      (let ((_tl152578152775_
                             (let ()
                               (declare (not safe))
                               (##cdr _e152580152770_)))
                            (_hd152579152773_
                             (let ()
                               (declare (not safe))
                               (##car _e152580152770_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd152579152773_))
                            (let ((_e152583152778_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd152579152773_))))
                              (let ((_tl152581152783_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e152583152778_)))
                                    (_hd152582152781_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e152583152778_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd152582152781_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd152582152781_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl152581152783_))
                                            (let ((_e152586152786_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl152581152783_))))
                                              (let ((_tl152584152791_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e152586152786_)))
                                                    (_hd152585152789_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e152586152786_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd152585152789_))
                                                    (let ((_e152587152794_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd152585152789_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e152587152794_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl152584152791_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl152578152775_))
                          (let ((_e152590152797_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl152578152775_))))
                            (let ((_tl152588152802_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e152590152797_)))
                                  (_hd152589152800_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e152590152797_))))
                              (___kont154617154618_
                               _tl152588152802_
                               _hd152589152800_)))
                          (___kont154623154624_
                           _tl152578152775_
                           _hd152579152773_))
                      (___kont154623154624_ _tl152578152775_ _hd152579152773_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e152587152794_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl152584152791_))
                          (___kont154619154620_ _tl152578152775_)
                          (___kont154623154624_
                           _tl152578152775_
                           _hd152579152773_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl152584152791_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl152578152775_))
                              (let ((_e152616152690_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl152578152775_))))
                                (let ((_tl152614152695_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e152616152690_)))
                                      (_hd152615152693_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e152616152690_))))
                                  (___match154722154723_
                                   _e152580152770_
                                   _hd152579152773_
                                   _tl152578152775_
                                   _e152583152778_
                                   _hd152582152781_
                                   _tl152581152783_
                                   _e152586152786_
                                   _hd152585152789_
                                   _tl152584152791_
                                   _e152616152690_
                                   _hd152615152693_
                                   _tl152614152695_)))
                              (___kont154623154624_
                               _tl152578152775_
                               _hd152579152773_))
                          (___kont154623154624_
                           _tl152578152775_
                           _hd152579152773_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl152584152791_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl152578152775_))
                                                            (let ((_e152616152690_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl152578152775_))))
                      (let ((_tl152614152695_
                             (let ()
                               (declare (not safe))
                               (##cdr _e152616152690_)))
                            (_hd152615152693_
                             (let ()
                               (declare (not safe))
                               (##car _e152616152690_))))
                        (___match154722154723_
                         _e152580152770_
                         _hd152579152773_
                         _tl152578152775_
                         _e152583152778_
                         _hd152582152781_
                         _tl152581152783_
                         _e152586152786_
                         _hd152585152789_
                         _tl152584152791_
                         _e152616152690_
                         _hd152615152693_
                         _tl152614152695_)))
                    (___kont154623154624_ _tl152578152775_ _hd152579152773_))
                (___kont154623154624_ _tl152578152775_ _hd152579152773_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont154623154624_
                                             _tl152578152775_
                                             _hd152579152773_))
                                        (___kont154623154624_
                                         _tl152578152775_
                                         _hd152579152773_))
                                    (___kont154623154624_
                                     _tl152578152775_
                                     _hd152579152773_))))
                            (___kont154623154624_
                             _tl152578152775_
                             _hd152579152773_))))
                    (let () (declare (not safe)) (_g152573152633_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self152556_ _ctx152557_ _stx152558_ _args152559_)
        (let ()
          (declare (not safe))
          (gxc#xform-call% _ctx152557_ _stx152558_))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
