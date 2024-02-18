(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1708289488)
  (begin
    (define gxc#&optimize-call
      (make-promise
       (lambda ()
         (let ((_tbl283592_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp287950 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-merge! _tbl283592_ __tmp287950))
           (let ()
             (declare (not safe))
             (hash-put! _tbl283592_ '%#call gxc#optimize-call%))
           _tbl283592_))))
    (define gxc#apply-optimize-call
      (lambda (_stx283575_ . _args283577_)
        (let ((__tmp287952
               (lambda ()
                 (declare (not safe))
                 (if (null? _args283577_)
                     (gxc#compile-e__0 _stx283575_)
                     (let ((_arg1283582_ (car _args283577_))
                           (_rest283584_ (cdr _args283577_)))
                       (if (null? _rest283584_)
                           (gxc#compile-e__1 _stx283575_ _arg1283582_)
                           (let ((_arg2283587_ (car _rest283584_))
                                 (_rest283589_ (cdr _rest283584_)))
                             (if (null? _rest283589_)
                                 (gxc#compile-e__2
                                  _stx283575_
                                  _arg1283582_
                                  _arg2283587_)
                                 (apply gxc#compile-e
                                        _stx283575_
                                        _arg1283582_
                                        _arg2283587_
                                        _rest283589_))))))))
              (__tmp287951 (force gxc#&optimize-call)))
          (declare (not safe))
          (call-with-parameters
           __tmp287952
           gxc#current-compile-methods
           __tmp287951))))
    (define gxc#optimize-call%
      (lambda (_stx283430_)
        (let* ((___stx287700287701_ _stx283430_)
               (_g283433283453_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx287700287701_)))))
          (let ((___kont287702287703_
                 (lambda (_L283497_ _L283498_)
                   (let* ((_rator-id283516_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L283498_)))
                          (_rator-type283518_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id283516_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type283518_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp287953
                                  (##structure-ref
                                   _rator-type283518_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id283516_
                              '" => "
                              _rator-type283518_
                              '" "
                              __tmp287953))
                           (let ((_optimized283521_
                                  (let ((__method287948
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type283518_
                                            'optimize-call))))
                                    (if __method287948
                                        (__method287948
                                         _rator-type283518_
                                         _stx283430_
                                         _L283497_)
                                        (error '"Missing method"
                                               _rator-type283518_
                                               'optimize-call)))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type283518_))
                                 _optimized283521_
                                 (let* ((___stx287682287683_ _optimized283521_)
                                        (_g283524283534_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx287682287683_)))))
                                   (let ((___kont287684287685_
                                          (lambda (_L283554_)
                                            (let ((__tmp287954
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L283554_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp287954
                                               _stx283430_))))
                                         (___kont287686287687_
                                          (lambda () _optimized283521_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx287682287683_))
                                         (let ((_e283529283546_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx287682287683_))))
                                           (let ((_tl283527283551_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e283529283546_)))
                                                 (_hd283528283549_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e283529283546_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd283528283549_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd283528283549_))
                                                     (___kont287684287685_
                                                      _tl283527283551_)
                                                     (___kont287686287687_))
                                                 (___kont287686287687_))))
                                         (___kont287686287687_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type283518_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx283430_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _stx283430_
                                _rator-type283518_)))))))
                (___kont287704287705_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _stx283430_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx287700287701_))
                (let ((_e283439283465_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx287700287701_))))
                  (let ((_tl283437283470_
                         (let () (declare (not safe)) (##cdr _e283439283465_)))
                        (_hd283438283468_
                         (let ()
                           (declare (not safe))
                           (##car _e283439283465_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl283437283470_))
                        (let ((_e283442283473_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl283437283470_))))
                          (let ((_tl283440283478_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e283442283473_)))
                                (_hd283441283476_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e283442283473_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd283441283476_))
                                (let ((_e283445283481_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd283441283476_))))
                                  (let ((_tl283443283486_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e283445283481_)))
                                        (_hd283444283484_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e283445283481_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd283444283484_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd283444283484_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl283443283486_))
                                                (let ((_e283448283489_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl283443283486_))))
                                                  (let ((_tl283446283494_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e283448283489_)))
                                                        (_hd283447283492_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e283448283489_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl283446283494_))
                                                        (___kont287702287703_
                                                         _tl283440283478_
                                                         _hd283447283492_)
                                                        (___kont287704287705_))))
                                                (___kont287704287705_))
                                            (___kont287704287705_))
                                        (___kont287704287705_))))
                                (___kont287704287705_))))
                        (___kont287704287705_))))
                (___kont287704287705_))))))
    (define gxc#!predicate::optimize-call
      (lambda (_self283384_ _stx283385_ _args283386_)
        (let* ((_g283388283398_
                (lambda (_g283389283395_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g283389283395_))))
               (_g283387283427_
                (lambda (_g283389283401_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g283389283401_))
                      (let ((_e283393283403_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g283389283401_))))
                        (let ((_hd283392283406_
                               (let ()
                                 (declare (not safe))
                                 (##car _e283393283403_)))
                              (_tl283391283408_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e283393283403_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl283391283408_))
                              ((lambda (_L283411_)
                                 (let* ((_klass283422_
                                         (let ((__tmp287955
                                                (##structure-ref
                                                 _self283384_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx283385_
                                            __tmp287955)))
                                        (_object283424_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L283411_))))
                                   (if (##structure-ref
                                        _klass283422_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp287971
                                              (let ((__tmp287972
                                                     (let ((__tmp287974
                                                            (let ((__tmp287975
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp287976
                                  (##structure-ref
                                   _klass283422_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp287976 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp287975)))
                   (__tmp287973
                    (let () (declare (not safe)) (cons _object283424_ '()))))
               (declare (not safe))
               (cons __tmp287974 __tmp287973))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#struct-direct-instance?
                                                      __tmp287972))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp287971
                                          _stx283385_))
                                       (if (##structure-ref
                                            _klass283422_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp287965
                                                  (let ((__tmp287966
                                                         (let ((__tmp287968
                                                                (let ((__tmp287969
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp287970
                                      (##structure-ref
                                       _klass283422_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp287970 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp287969)))
                       (__tmp287967
                        (let ()
                          (declare (not safe))
                          (cons _object283424_ '()))))
                   (declare (not safe))
                   (cons __tmp287968 __tmp287967))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-instance?
                                                          __tmp287966))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp287965
                                              _stx283385_))
                                           (let ((__tmp287956
                                                  (let ((__tmp287957
                                                         (let ((__tmp287963
                                                                (let ((__tmp287964
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'class-instance? '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp287964)))
                       (__tmp287958
                        (let ((__tmp287960
                               (let ((__tmp287961
                                      (let ((__tmp287962
                                             (##structure-ref
                                              _self283384_
                                              '1
                                              gxc#!type::t
                                              '#f)))
                                        (declare (not safe))
                                        (cons __tmp287962 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp287961)))
                              (__tmp287959
                               (let ()
                                 (declare (not safe))
                                 (cons _object283424_ '()))))
                          (declare (not safe))
                          (cons __tmp287960 __tmp287959))))
                   (declare (not safe))
                   (cons __tmp287963 __tmp287958))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#call
                                                          __tmp287957))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp287956
                                              _stx283385_))))))
                               _hd283392283406_)
                              (let ()
                                (declare (not safe))
                                (_g283388283398_ _g283389283401_)))))
                      (let ()
                        (declare (not safe))
                        (_g283388283398_ _g283389283401_))))))
          (declare (not safe))
          (_g283387283427_ _args283386_))))
    (define gxc#!predicate::optimize-call::specialize
      (lambda (__t287661)
        (let ((__id287662
               (let ((__tmp287663
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t287661 'id))))
                 (if __tmp287663 __tmp287663 (error '"Unknown slot" 'id)))))
          (lambda (_self283384_ _stx283385_ _args283386_)
            (let* ((_g283388283398_
                    (lambda (_g283389283395_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g283389283395_))))
                   (_g283387283427_
                    (lambda (_g283389283401_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g283389283401_))
                          (let ((_e283393283403_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g283389283401_))))
                            (let ((_hd283392283406_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e283393283403_)))
                                  (_tl283391283408_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e283393283403_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl283391283408_))
                                  ((lambda (_L283411_)
                                     (let* ((_klass283422_
                                             (let ((__tmp287977
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self283384_
                                                       __id287662
                                                       __t287661
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx283385_
                                                __tmp287977)))
                                            (_object283424_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L283411_))))
                                       (if (##structure-ref
                                            _klass283422_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp287993
                                                  (let ((__tmp287994
                                                         (let ((__tmp287996
                                                                (let ((__tmp287997
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp287998
                                      (##structure-ref
                                       _klass283422_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp287998 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp287997)))
                       (__tmp287995
                        (let ()
                          (declare (not safe))
                          (cons _object283424_ '()))))
                   (declare (not safe))
                   (cons __tmp287996 __tmp287995))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-direct-instance?
                                                          __tmp287994))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp287993
                                              _stx283385_))
                                           (if (##structure-ref
                                                _klass283422_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp287987
                                                      (let ((__tmp287988
                                                             (let ((__tmp287990
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp287991
                                   (let ((__tmp287992
                                          (##structure-ref
                                           _klass283422_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp287992 '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp287991)))
                           (__tmp287989
                            (let ()
                              (declare (not safe))
                              (cons _object283424_ '()))))
                       (declare (not safe))
                       (cons __tmp287990 __tmp287989))))
                (declare (not safe))
                (cons '%#struct-instance? __tmp287988))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp287987
                                                  _stx283385_))
                                               (let ((__tmp287978
                                                      (let ((__tmp287979
                                                             (let ((__tmp287985
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp287986
                                   (let ()
                                     (declare (not safe))
                                     (cons 'class-instance? '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp287986)))
                           (__tmp287980
                            (let ((__tmp287982
                                   (let ((__tmp287983
                                          (let ((__tmp287984
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _self283384_
                                                    __id287662
                                                    __t287661
                                                    '#f))))
                                            (declare (not safe))
                                            (cons __tmp287984 '()))))
                                     (declare (not safe))
                                     (cons '%#ref __tmp287983)))
                                  (__tmp287981
                                   (let ()
                                     (declare (not safe))
                                     (cons _object283424_ '()))))
                              (declare (not safe))
                              (cons __tmp287982 __tmp287981))))
                       (declare (not safe))
                       (cons __tmp287985 __tmp287980))))
                (declare (not safe))
                (cons '%#call __tmp287979))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp287978
                                                  _stx283385_))))))
                                   _hd283392283406_)
                                  (let ()
                                    (declare (not safe))
                                    (_g283388283398_ _g283389283401_)))))
                          (let ()
                            (declare (not safe))
                            (_g283388283398_ _g283389283401_))))))
              (declare (not safe))
              (_g283387283427_ _args283386_))))))
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
      (lambda (_self283104_ _stx283105_ _args283106_)
        (let* ((_klass283108_
                (let ((__tmp287999
                       (##structure-ref _self283104_ '1 gxc#!type::t '#f)))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _stx283105_ __tmp287999)))
               (_fields283110_
                (length (##structure-ref _klass283108_ '5 gxc#!class::t '#f)))
               (_args283112_ (map gxc#compile-e _args283106_))
               (_inline-make-object283114_
                (let ((__tmp288000
                       (let ((__tmp288006
                              (let ((__tmp288007
                                     (let ()
                                       (declare (not safe))
                                       (cons '##structure '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp288007)))
                             (__tmp288001
                              (let ((__tmp288003
                                     (let ((__tmp288004
                                            (let ((__tmp288005
                                                   (##structure-ref
                                                    _self283104_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp288005 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp288004)))
                                    (__tmp288002
                                     (make-list _fields283110_ '(%#quote #f))))
                                (declare (not safe))
                                (cons __tmp288003 __tmp288002))))
                         (declare (not safe))
                         (cons __tmp288006 __tmp288001))))
                  (declare (not safe))
                  (cons '%#call __tmp288000))))
          (let ((_$e283117_
                 (##structure-ref _klass283108_ '6 gxc#!class::t '#f)))
            (if _$e283117_
                ((lambda (_ctor283120_)
                   (let ((_$obj283122_
                          (let ((__tmp288107 (gensym '__obj)))
                            (declare (not safe))
                            (make-symbol__0 __tmp288107)))
                         (_ctor-impl283123_
                          (let ()
                            (declare (not safe))
                            (gxc#!class-lookup-method
                             _klass283108_
                             _ctor283120_))))
                     (let ((__tmp288108
                            (let ((__tmp288109
                                   (let ((__tmp288177
                                          (let ((__tmp288178
                                                 (let ((__tmp288180
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj283122_
                                                                '())))
                                                       (__tmp288179
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _inline-make-object283114_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp288180
                                                         __tmp288179))))
                                            (declare (not safe))
                                            (cons __tmp288178 '())))
                                         (__tmp288110
                                          (let ((__tmp288111
                                                 (let ((__tmp288112
                                                        (let ((__tmp288116
                                                               (if _ctor-impl283123_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp288171
                                  (let ((__tmp288175
                                         (let ((__tmp288176
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _ctor-impl283123_
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp288176)))
                                        (__tmp288172
                                         (let ((__tmp288173
                                                (let ((__tmp288174
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj283122_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp288174))))
                                           (declare (not safe))
                                           (cons __tmp288173 _args283112_))))
                                    (declare (not safe))
                                    (cons __tmp288175 __tmp288172))))
                             (declare (not safe))
                             (cons '%#call __tmp288171))
                           (let* ((_$ctor283125_
                                   (let ((__tmp288117 (gensym '__constructor)))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp288117)))
                                  (__tmp288118
                                   (let ((__tmp288153
                                          (let ((__tmp288154
                                                 (let ((__tmp288170
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$ctor283125_
                                                                '())))
                                                       (__tmp288155
                                                        (let ((__tmp288156
                                                               (let ((__tmp288157
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp288168
                                     (let ((__tmp288169
                                            (let ()
                                              (declare (not safe))
                                              (cons 'direct-method-ref '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp288169)))
                                    (__tmp288158
                                     (let ((__tmp288165
                                            (let ((__tmp288166
                                                   (let ((__tmp288167
                                                          (##structure-ref
                                                           _self283104_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp288167 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp288166)))
                                           (__tmp288159
                                            (let ((__tmp288163
                                                   (let ((__tmp288164
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj283122_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp288164)))
                                                  (__tmp288160
                                                   (let ((__tmp288161
                                                          (let ((__tmp288162
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _ctor283120_ '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp288162))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp288161 '()))))
                                              (declare (not safe))
                                              (cons __tmp288163 __tmp288160))))
                                       (declare (not safe))
                                       (cons __tmp288165 __tmp288159))))
                                (declare (not safe))
                                (cons __tmp288168 __tmp288158))))
                         (declare (not safe))
                         (cons '%#call __tmp288157))))
                  (declare (not safe))
                  (cons __tmp288156 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp288170
                                                         __tmp288155))))
                                            (declare (not safe))
                                            (cons __tmp288154 '())))
                                         (__tmp288119
                                          (let ((__tmp288120
                                                 (let ((__tmp288121
                                                        (let ((__tmp288151
                                                               (let ((__tmp288152
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$ctor283125_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp288152)))
                      (__tmp288122
                       (let ((__tmp288144
                              (let ((__tmp288145
                                     (let ((__tmp288149
                                            (let ((__tmp288150
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$ctor283125_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp288150)))
                                           (__tmp288146
                                            (let ((__tmp288147
                                                   (let ((__tmp288148
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj283122_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp288148))))
                                              (declare (not safe))
                                              (cons __tmp288147
                                                    _args283112_))))
                                       (declare (not safe))
                                       (cons __tmp288149 __tmp288146))))
                                (declare (not safe))
                                (cons '%#call __tmp288145)))
                             (__tmp288123
                              (let ((__tmp288124
                                     (let ((__tmp288125
                                            (let ((__tmp288142
                                                   (let ((__tmp288143
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp288143)))
                                                  (__tmp288126
                                                   (let ((__tmp288140
                                                          (let ((__tmp288141
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons '"missing constructor method implementation"
                                 '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp288141)))
                 (__tmp288127
                  (let ((__tmp288138
                         (let ((__tmp288139
                                (let ()
                                  (declare (not safe))
                                  (cons 'class: '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp288139)))
                        (__tmp288128
                         (let ((__tmp288135
                                (let ((__tmp288136
                                       (let ((__tmp288137
                                              (##structure-ref
                                               _self283104_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp288137 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp288136)))
                               (__tmp288129
                                (let ((__tmp288133
                                       (let ((__tmp288134
                                              (let ()
                                                (declare (not safe))
                                                (cons 'method: '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp288134)))
                                      (__tmp288130
                                       (let ((__tmp288131
                                              (let ((__tmp288132
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _ctor283120_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#quote __tmp288132))))
                                         (declare (not safe))
                                         (cons __tmp288131 '()))))
                                  (declare (not safe))
                                  (cons __tmp288133 __tmp288130))))
                           (declare (not safe))
                           (cons __tmp288135 __tmp288129))))
                    (declare (not safe))
                    (cons __tmp288138 __tmp288128))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp288140
                                                           __tmp288127))))
                                              (declare (not safe))
                                              (cons __tmp288142 __tmp288126))))
                                       (declare (not safe))
                                       (cons '%#call __tmp288125))))
                                (declare (not safe))
                                (cons __tmp288124 '()))))
                         (declare (not safe))
                         (cons __tmp288144 __tmp288123))))
                  (declare (not safe))
                  (cons __tmp288151 __tmp288122))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#if __tmp288121))))
                                            (declare (not safe))
                                            (cons __tmp288120 '()))))
                                     (declare (not safe))
                                     (cons __tmp288153 __tmp288119))))
                             (declare (not safe))
                             (cons '%#let-values __tmp288118))))
                      (__tmp288113
                       (let ((__tmp288114
                              (let ((__tmp288115
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj283122_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp288115))))
                         (declare (not safe))
                         (cons __tmp288114 '()))))
                  (declare (not safe))
                  (cons __tmp288116 __tmp288113))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#begin
                                                         __tmp288112))))
                                            (declare (not safe))
                                            (cons __tmp288111 '()))))
                                     (declare (not safe))
                                     (cons __tmp288177 __tmp288110))))
                              (declare (not safe))
                              (cons '%#let-values __tmp288109))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp288108 _stx283105_))))
                 _$e283117_)
                (let ((_$e283127_
                       (##structure-ref _klass283108_ '9 gxc#!class::t '#f)))
                  (if _$e283127_
                      ((lambda (_metaclass283130_)
                         (let* ((_$obj283132_
                                 (let ((__tmp288069 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp288069)))
                                (_metakons283134_
                                 (let ((__tmp288070
                                        (let ()
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-class
                                           _stx283105_
                                           _metaclass283130_))))
                                   (declare (not safe))
                                   (gxc#!class-lookup-method
                                    __tmp288070
                                    'instance-init!))))
                           (let ((__tmp288071
                                  (let ((__tmp288072
                                         (let ((__tmp288103
                                                (let ((__tmp288104
                                                       (let ((__tmp288106
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj283132_ '())))
                     (__tmp288105
                      (let ()
                        (declare (not safe))
                        (cons _inline-make-object283114_ '()))))
                 (declare (not safe))
                 (cons __tmp288106 __tmp288105))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp288104 '())))
                                               (__tmp288073
                                                (let ((__tmp288074
                                                       (let ((__tmp288075
                                                              (let ((__tmp288079
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if _metakons283134_
                                 (let ((__tmp288093
                                        (let ((__tmp288101
                                               (let ((__tmp288102
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _metakons283134_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp288102)))
                                              (__tmp288094
                                               (let ((__tmp288098
                                                      (let ((__tmp288099
                                                             (let ((__tmp288100
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self283104_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp288100 '()))))
                (declare (not safe))
                (cons '%#ref __tmp288099)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp288095
                                                      (let ((__tmp288096
                                                             (let ((__tmp288097
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _$obj283132_ '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp288097))))
                (declare (not safe))
                (cons __tmp288096 _args283112_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp288098
                                                       __tmp288095))))
                                          (declare (not safe))
                                          (cons __tmp288101 __tmp288094))))
                                   (declare (not safe))
                                   (cons '%#call __tmp288093))
                                 (let ((__tmp288080
                                        (let ((__tmp288091
                                               (let ((__tmp288092
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'call-method
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp288092)))
                                              (__tmp288081
                                               (let ((__tmp288088
                                                      (let ((__tmp288089
                                                             (let ((__tmp288090
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self283104_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp288090 '()))))
                (declare (not safe))
                (cons '%#ref __tmp288089)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp288082
                                                      (let ((__tmp288086
                                                             (let ((__tmp288087
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'instance-init! '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp288087)))
                    (__tmp288083
                     (let ((__tmp288084
                            (let ((__tmp288085
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj283132_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp288085))))
                       (declare (not safe))
                       (cons __tmp288084 _args283112_))))
                (declare (not safe))
                (cons __tmp288086 __tmp288083))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp288088
                                                       __tmp288082))))
                                          (declare (not safe))
                                          (cons __tmp288091 __tmp288081))))
                                   (declare (not safe))
                                   (cons '%#call __tmp288080))))
                            (__tmp288076
                             (let ((__tmp288077
                                    (let ((__tmp288078
                                           (let ()
                                             (declare (not safe))
                                             (cons _$obj283132_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp288078))))
                               (declare (not safe))
                               (cons __tmp288077 '()))))
                        (declare (not safe))
                        (cons __tmp288079 __tmp288076))))
                 (declare (not safe))
                 (cons '%#begin __tmp288075))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp288074 '()))))
                                           (declare (not safe))
                                           (cons __tmp288103 __tmp288073))))
                                    (declare (not safe))
                                    (cons '%#let-values __tmp288072))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp288071 _stx283105_))))
                       _$e283127_)
                      (if (##structure-ref _klass283108_ '7 gxc#!class::t '#f)
                          (if (fx= (length _args283112_) _fields283110_)
                              (let ((__tmp288061
                                     (let ((__tmp288062
                                            (let ((__tmp288067
                                                   (let ((__tmp288068
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp288068)))
                                                  (__tmp288063
                                                   (let ((__tmp288064
                                                          (let ((__tmp288065
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp288066
                                (##structure-ref
                                 _self283104_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (cons __tmp288066 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp288065))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp288064
                                                           _args283112_))))
                                              (declare (not safe))
                                              (cons __tmp288067 __tmp288063))))
                                       (declare (not safe))
                                       (cons '%#call __tmp288062))))
                                (declare (not safe))
                                (gxc#xform-wrap-source
                                 __tmp288061
                                 _stx283105_))
                              (let ((__tmp288060
                                     (##structure-ref
                                      _self283104_
                                      '1
                                      gxc#!type::t
                                      '#f))
                                    (__tmp288059
                                     (length (##structure-ref
                                              _klass283108_
                                              '5
                                              gxc#!class::t
                                              '#f))))
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"illegal struct constructor application; arity mismatch"
                                 _stx283105_
                                 __tmp288060
                                 __tmp288059)))
                          (let ((_$obj283137_
                                 (let ((__tmp288008 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp288008))))
                            (let _lp283139_ ((_rest283141_ _args283112_)
                                             (_initializers283142_ '()))
                              (let* ((___stx287738287739_ _rest283141_)
                                     (_g283146283167_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx287738287739_)))))
                                (let ((___kont287740287741_
                                       (lambda (_L283221_ _L283222_ _L283223_)
                                         (let* ((_slot283254_
                                                 (keyword->symbol
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e _L283223_))))
                                                (_off283256_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass283108_
                                                    _slot283254_))))
                                           (if _off283256_
                                               (let ((__tmp288010
                                                      (let ((__tmp288011
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _off283256_ _L283222_))))
                (declare (not safe))
                (cons __tmp288011 _initializers283142_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp283139_
                                                  _L283221_
                                                  __tmp288010))
                                               (let ((__tmp288009
                                                      (##structure-ref
                                                       _self283104_
                                                       '1
                                                       gxc#!type::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"unknown slot"
                                                  _stx283105_
                                                  __tmp288009
                                                  _slot283254_))))))
                                      (___kont287742287743_
                                       (lambda ()
                                         (let ((__tmp288012
                                                (let ((__tmp288013
                                                       (let ((__tmp288036
                                                              (let ((__tmp288037
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp288039
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj283137_ '())))
                                   (__tmp288038
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object283114_ '()))))
                               (declare (not safe))
                               (cons __tmp288039 __tmp288038))))
                        (declare (not safe))
                        (cons __tmp288037 '())))
                     (__tmp288014
                      (let ((__tmp288015
                             (let ((__tmp288016
                                    (let ((__tmp288033
                                           (let ((__tmp288034
                                                  (let ((__tmp288035
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj283137_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp288035))))
                                             (declare (not safe))
                                             (cons __tmp288034 '())))
                                          (__tmp288017
                                           (let ((__tmp288018
                                                  (lambda (_i283181_ _r283182_)
                                                    (let ((__tmp288019
                                                           (let ((__tmp288020
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp288030
                                 (let ((__tmp288031
                                        (let ((__tmp288032
                                               (##structure-ref
                                                _self283104_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp288032 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp288031)))
                                (__tmp288021
                                 (let ((__tmp288027
                                        (let ((__tmp288028
                                               (let ((__tmp288029
                                                      (car _i283181_)))
                                                 (declare (not safe))
                                                 (cons __tmp288029 '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp288028)))
                                       (__tmp288022
                                        (let ((__tmp288025
                                               (let ((__tmp288026
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _$obj283137_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp288026)))
                                              (__tmp288023
                                               (let ((__tmp288024
                                                      (cdr _i283181_)))
                                                 (declare (not safe))
                                                 (cons __tmp288024 '()))))
                                          (declare (not safe))
                                          (cons __tmp288025 __tmp288023))))
                                   (declare (not safe))
                                   (cons __tmp288027 __tmp288022))))
                            (declare (not safe))
                            (cons __tmp288030 __tmp288021))))
                     (declare (not safe))
                     (cons '%#struct-unchecked-set! __tmp288020))))
              (declare (not safe))
              (cons __tmp288019 _r283182_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (foldl1 __tmp288018
                                                     '()
                                                     _initializers283142_))))
                                      (declare (not safe))
                                      (foldr1 cons __tmp288033 __tmp288017))))
                               (declare (not safe))
                               (cons '%#begin __tmp288016))))
                        (declare (not safe))
                        (cons __tmp288015 '()))))
                 (declare (not safe))
                 (cons __tmp288036 __tmp288014))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp288013))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp288012
                                            _stx283105_))))
                                      (___kont287744287745_
                                       (lambda ()
                                         (let ((__tmp288040
                                                (let ((__tmp288041
                                                       (let ((__tmp288055
                                                              (let ((__tmp288056
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp288058
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj283137_ '())))
                                   (__tmp288057
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object283114_ '()))))
                               (declare (not safe))
                               (cons __tmp288058 __tmp288057))))
                        (declare (not safe))
                        (cons __tmp288056 '())))
                     (__tmp288042
                      (let ((__tmp288043
                             (let ((__tmp288044
                                    (let ((__tmp288048
                                           (let ((__tmp288049
                                                  (let ((__tmp288053
                                                         (let ((__tmp288054
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons 'class-instance-init! '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp288054)))
                (__tmp288050
                 (let ((__tmp288051
                        (let ((__tmp288052
                               (let ()
                                 (declare (not safe))
                                 (cons _$obj283137_ '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp288052))))
                   (declare (not safe))
                   (cons __tmp288051 _args283112_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp288053
                                                          __tmp288050))))
                                             (declare (not safe))
                                             (cons '%#call __tmp288049)))
                                          (__tmp288045
                                           (let ((__tmp288046
                                                  (let ((__tmp288047
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj283137_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp288047))))
                                             (declare (not safe))
                                             (cons __tmp288046 '()))))
                                      (declare (not safe))
                                      (cons __tmp288048 __tmp288045))))
                               (declare (not safe))
                               (cons '%#begin __tmp288044))))
                        (declare (not safe))
                        (cons __tmp288043 '()))))
                 (declare (not safe))
                 (cons __tmp288055 __tmp288042))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp288041))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp288040
                                            _stx283105_)))))
                                  (let* ((_g283144283184_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   ___stx287738287739_))
                                                (___kont287742287743_)
                                                (___kont287744287745_))))
                                         (___match287775287776_
                                          (lambda (_e283153283189_
                                                   _hd283152283192_
                                                   _tl283151283194_
                                                   _e283156283197_
                                                   _hd283155283200_
                                                   _tl283154283202_
                                                   _e283159283205_
                                                   _hd283158283208_
                                                   _tl283157283210_
                                                   _e283162283213_
                                                   _hd283161283216_
                                                   _tl283160283218_)
                                            (let ((_L283221_ _tl283160283218_)
                                                  (_L283222_ _hd283161283216_)
                                                  (_L283223_ _hd283158283208_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-keyword?
                                                     _L283223_))
                                                  (___kont287740287741_
                                                   _L283221_
                                                   _L283222_
                                                   _L283223_)
                                                  (___kont287744287745_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx287738287739_))
                                        (let ((_e283153283189_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx287738287739_))))
                                          (let ((_tl283151283194_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e283153283189_)))
                                                (_hd283152283192_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e283153283189_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd283152283192_))
                                                (let ((_e283156283197_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd283152283192_))))
                                                  (let ((_tl283154283202_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e283156283197_)))
                                                        (_hd283155283200_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e283156283197_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd283155283200_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#quote
                                                               _hd283155283200_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl283154283202_))
                        (let ((_e283159283205_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl283154283202_))))
                          (let ((_tl283157283210_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e283159283205_)))
                                (_hd283158283208_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e283159283205_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl283157283210_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl283151283194_))
                                    (let ((_e283162283213_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl283151283194_))))
                                      (let ((_tl283160283218_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e283162283213_)))
                                            (_hd283161283216_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e283162283213_))))
                                        (___match287775287776_
                                         _e283153283189_
                                         _hd283152283192_
                                         _tl283151283194_
                                         _e283156283197_
                                         _hd283155283200_
                                         _tl283154283202_
                                         _e283159283205_
                                         _hd283158283208_
                                         _tl283157283210_
                                         _e283162283213_
                                         _hd283161283216_
                                         _tl283160283218_)))
                                    (___kont287744287745_))
                                (___kont287744287745_))))
                        (___kont287744287745_))
                    (___kont287744287745_))
                (___kont287744287745_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont287744287745_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g283144283184_))))))))))))))))
    (define gxc#!constructor::optimize-call::specialize
      (lambda (__t287664)
        (let ((__id287665
               (let ((__tmp287666
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t287664 'id))))
                 (if __tmp287666 __tmp287666 (error '"Unknown slot" 'id)))))
          (lambda (_self283104_ _stx283105_ _args283106_)
            (let* ((_klass283108_
                    (let ((__tmp288181
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _self283104_
                              __id287665
                              __t287664
                              '#f))))
                      (declare (not safe))
                      (gxc#optimizer-resolve-class _stx283105_ __tmp288181)))
                   (_fields283110_
                    (length (##structure-ref
                             _klass283108_
                             '5
                             gxc#!class::t
                             '#f)))
                   (_args283112_ (map gxc#compile-e _args283106_))
                   (_inline-make-object283114_
                    (let ((__tmp288182
                           (let ((__tmp288188
                                  (let ((__tmp288189
                                         (let ()
                                           (declare (not safe))
                                           (cons '##structure '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp288189)))
                                 (__tmp288183
                                  (let ((__tmp288185
                                         (let ((__tmp288186
                                                (let ((__tmp288187
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self283104_
                                                          __id287665
                                                          __t287664
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp288187 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp288186)))
                                        (__tmp288184
                                         (make-list
                                          _fields283110_
                                          '(%#quote #f))))
                                    (declare (not safe))
                                    (cons __tmp288185 __tmp288184))))
                             (declare (not safe))
                             (cons __tmp288188 __tmp288183))))
                      (declare (not safe))
                      (cons '%#call __tmp288182))))
              (let ((_$e283117_
                     (##structure-ref _klass283108_ '6 gxc#!class::t '#f)))
                (if _$e283117_
                    ((lambda (_ctor283120_)
                       (let ((_$obj283122_
                              (let ((__tmp288289 (gensym '__obj)))
                                (declare (not safe))
                                (make-symbol__0 __tmp288289)))
                             (_ctor-impl283123_
                              (let ()
                                (declare (not safe))
                                (gxc#!class-lookup-method
                                 _klass283108_
                                 _ctor283120_))))
                         (let ((__tmp288290
                                (let ((__tmp288291
                                       (let ((__tmp288359
                                              (let ((__tmp288360
                                                     (let ((__tmp288362
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$obj283122_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp288361
                    (let ()
                      (declare (not safe))
                      (cons _inline-make-object283114_ '()))))
               (declare (not safe))
               (cons __tmp288362 __tmp288361))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp288360 '())))
                                             (__tmp288292
                                              (let ((__tmp288293
                                                     (let ((__tmp288294
                                                            (let ((__tmp288298
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _ctor-impl283123_
                               (let ((__tmp288353
                                      (let ((__tmp288357
                                             (let ((__tmp288358
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor-impl283123_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp288358)))
                                            (__tmp288354
                                             (let ((__tmp288355
                                                    (let ((__tmp288356
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$obj283122_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp288356))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp288355
                                                     _args283112_))))
                                        (declare (not safe))
                                        (cons __tmp288357 __tmp288354))))
                                 (declare (not safe))
                                 (cons '%#call __tmp288353))
                               (let* ((_$ctor283125_
                                       (let ((__tmp288299
                                              (gensym '__constructor)))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp288299)))
                                      (__tmp288300
                                       (let ((__tmp288335
                                              (let ((__tmp288336
                                                     (let ((__tmp288352
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$ctor283125_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp288337
                    (let ((__tmp288338
                           (let ((__tmp288339
                                  (let ((__tmp288350
                                         (let ((__tmp288351
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'direct-method-ref
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp288351)))
                                        (__tmp288340
                                         (let ((__tmp288347
                                                (let ((__tmp288348
                                                       (let ((__tmp288349
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self283104_
                         __id287665
                         __t287664
                         '#f))))
                 (declare (not safe))
                 (cons __tmp288349 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp288348)))
                                               (__tmp288341
                                                (let ((__tmp288345
                                                       (let ((__tmp288346
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj283122_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp288346)))
              (__tmp288342
               (let ((__tmp288343
                      (let ((__tmp288344
                             (let ()
                               (declare (not safe))
                               (cons _ctor283120_ '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp288344))))
                 (declare (not safe))
                 (cons __tmp288343 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp288345
                                                        __tmp288342))))
                                           (declare (not safe))
                                           (cons __tmp288347 __tmp288341))))
                                    (declare (not safe))
                                    (cons __tmp288350 __tmp288340))))
                             (declare (not safe))
                             (cons '%#call __tmp288339))))
                      (declare (not safe))
                      (cons __tmp288338 '()))))
               (declare (not safe))
               (cons __tmp288352 __tmp288337))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp288336 '())))
                                             (__tmp288301
                                              (let ((__tmp288302
                                                     (let ((__tmp288303
                                                            (let ((__tmp288333
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp288334
                                  (let ()
                                    (declare (not safe))
                                    (cons _$ctor283125_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp288334)))
                          (__tmp288304
                           (let ((__tmp288326
                                  (let ((__tmp288327
                                         (let ((__tmp288331
                                                (let ((__tmp288332
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$ctor283125_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp288332)))
                                               (__tmp288328
                                                (let ((__tmp288329
                                                       (let ((__tmp288330
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj283122_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp288330))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp288329
                                                        _args283112_))))
                                           (declare (not safe))
                                           (cons __tmp288331 __tmp288328))))
                                    (declare (not safe))
                                    (cons '%#call __tmp288327)))
                                 (__tmp288305
                                  (let ((__tmp288306
                                         (let ((__tmp288307
                                                (let ((__tmp288324
                                                       (let ((__tmp288325
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'error '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp288325)))
              (__tmp288308
               (let ((__tmp288322
                      (let ((__tmp288323
                             (let ()
                               (declare (not safe))
                               (cons '"missing constructor method implementation"
                                     '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp288323)))
                     (__tmp288309
                      (let ((__tmp288320
                             (let ((__tmp288321
                                    (let ()
                                      (declare (not safe))
                                      (cons 'class: '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp288321)))
                            (__tmp288310
                             (let ((__tmp288317
                                    (let ((__tmp288318
                                           (let ((__tmp288319
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self283104_
                                                     __id287665
                                                     __t287664
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp288319 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp288318)))
                                   (__tmp288311
                                    (let ((__tmp288315
                                           (let ((__tmp288316
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'method: '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp288316)))
                                          (__tmp288312
                                           (let ((__tmp288313
                                                  (let ((__tmp288314
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _ctor283120_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#quote
                                                          __tmp288314))))
                                             (declare (not safe))
                                             (cons __tmp288313 '()))))
                                      (declare (not safe))
                                      (cons __tmp288315 __tmp288312))))
                               (declare (not safe))
                               (cons __tmp288317 __tmp288311))))
                        (declare (not safe))
                        (cons __tmp288320 __tmp288310))))
                 (declare (not safe))
                 (cons __tmp288322 __tmp288309))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp288324
                                                        __tmp288308))))
                                           (declare (not safe))
                                           (cons '%#call __tmp288307))))
                                    (declare (not safe))
                                    (cons __tmp288306 '()))))
                             (declare (not safe))
                             (cons __tmp288326 __tmp288305))))
                      (declare (not safe))
                      (cons __tmp288333 __tmp288304))))
               (declare (not safe))
               (cons '%#if __tmp288303))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp288302 '()))))
                                         (declare (not safe))
                                         (cons __tmp288335 __tmp288301))))
                                 (declare (not safe))
                                 (cons '%#let-values __tmp288300))))
                          (__tmp288295
                           (let ((__tmp288296
                                  (let ((__tmp288297
                                         (let ()
                                           (declare (not safe))
                                           (cons _$obj283122_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp288297))))
                             (declare (not safe))
                             (cons __tmp288296 '()))))
                      (declare (not safe))
                      (cons __tmp288298 __tmp288295))))
               (declare (not safe))
               (cons '%#begin __tmp288294))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp288293 '()))))
                                         (declare (not safe))
                                         (cons __tmp288359 __tmp288292))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp288291))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp288290 _stx283105_))))
                     _$e283117_)
                    (let ((_$e283127_
                           (##structure-ref
                            _klass283108_
                            '9
                            gxc#!class::t
                            '#f)))
                      (if _$e283127_
                          ((lambda (_metaclass283130_)
                             (let* ((_$obj283132_
                                     (let ((__tmp288251 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp288251)))
                                    (_metakons283134_
                                     (let ((__tmp288252
                                            (let ()
                                              (declare (not safe))
                                              (gxc#optimizer-resolve-class
                                               _stx283105_
                                               _metaclass283130_))))
                                       (declare (not safe))
                                       (gxc#!class-lookup-method
                                        __tmp288252
                                        'instance-init!))))
                               (let ((__tmp288253
                                      (let ((__tmp288254
                                             (let ((__tmp288285
                                                    (let ((__tmp288286
                                                           (let ((__tmp288288
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj283132_ '())))
                         (__tmp288287
                          (let ()
                            (declare (not safe))
                            (cons _inline-make-object283114_ '()))))
                     (declare (not safe))
                     (cons __tmp288288 __tmp288287))))
              (declare (not safe))
              (cons __tmp288286 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp288255
                                                    (let ((__tmp288256
                                                           (let ((__tmp288257
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp288261
                                 (if _metakons283134_
                                     (let ((__tmp288275
                                            (let ((__tmp288283
                                                   (let ((__tmp288284
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _metakons283134_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp288284)))
                                                  (__tmp288276
                                                   (let ((__tmp288280
                                                          (let ((__tmp288281
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp288282
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self283104_
                                   __id287665
                                   __t287664
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp288282 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp288281)))
                 (__tmp288277
                  (let ((__tmp288278
                         (let ((__tmp288279
                                (let ()
                                  (declare (not safe))
                                  (cons _$obj283132_ '()))))
                           (declare (not safe))
                           (cons '%#ref __tmp288279))))
                    (declare (not safe))
                    (cons __tmp288278 _args283112_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp288280
                                                           __tmp288277))))
                                              (declare (not safe))
                                              (cons __tmp288283 __tmp288276))))
                                       (declare (not safe))
                                       (cons '%#call __tmp288275))
                                     (let ((__tmp288262
                                            (let ((__tmp288273
                                                   (let ((__tmp288274
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'call-method
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp288274)))
                                                  (__tmp288263
                                                   (let ((__tmp288270
                                                          (let ((__tmp288271
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp288272
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self283104_
                                   __id287665
                                   __t287664
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp288272 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp288271)))
                 (__tmp288264
                  (let ((__tmp288268
                         (let ((__tmp288269
                                (let ()
                                  (declare (not safe))
                                  (cons 'instance-init! '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp288269)))
                        (__tmp288265
                         (let ((__tmp288266
                                (let ((__tmp288267
                                       (let ()
                                         (declare (not safe))
                                         (cons _$obj283132_ '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp288267))))
                           (declare (not safe))
                           (cons __tmp288266 _args283112_))))
                    (declare (not safe))
                    (cons __tmp288268 __tmp288265))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp288270
                                                           __tmp288264))))
                                              (declare (not safe))
                                              (cons __tmp288273 __tmp288263))))
                                       (declare (not safe))
                                       (cons '%#call __tmp288262))))
                                (__tmp288258
                                 (let ((__tmp288259
                                        (let ((__tmp288260
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$obj283132_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp288260))))
                                   (declare (not safe))
                                   (cons __tmp288259 '()))))
                            (declare (not safe))
                            (cons __tmp288261 __tmp288258))))
                     (declare (not safe))
                     (cons '%#begin __tmp288257))))
              (declare (not safe))
              (cons __tmp288256 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp288285
                                                     __tmp288255))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp288254))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp288253
                                  _stx283105_))))
                           _$e283127_)
                          (if (##structure-ref
                               _klass283108_
                               '7
                               gxc#!class::t
                               '#f)
                              (if (fx= (length _args283112_) _fields283110_)
                                  (let ((__tmp288243
                                         (let ((__tmp288244
                                                (let ((__tmp288249
                                                       (let ((__tmp288250
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '##structure '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp288250)))
              (__tmp288245
               (let ((__tmp288246
                      (let ((__tmp288247
                             (let ((__tmp288248
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _self283104_
                                       __id287665
                                       __t287664
                                       '#f))))
                               (declare (not safe))
                               (cons __tmp288248 '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp288247))))
                 (declare (not safe))
                 (cons __tmp288246 _args283112_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp288249
                                                        __tmp288245))))
                                           (declare (not safe))
                                           (cons '%#call __tmp288244))))
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp288243
                                     _stx283105_))
                                  (let ((__tmp288242
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _self283104_
                                            __id287665
                                            __t287664
                                            '#f)))
                                        (__tmp288241
                                         (length (##structure-ref
                                                  _klass283108_
                                                  '5
                                                  gxc#!class::t
                                                  '#f))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"illegal struct constructor application; arity mismatch"
                                     _stx283105_
                                     __tmp288242
                                     __tmp288241)))
                              (let ((_$obj283137_
                                     (let ((__tmp288190 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp288190))))
                                (let _lp283139_ ((_rest283141_ _args283112_)
                                                 (_initializers283142_ '()))
                                  (let* ((___stx287780287781_ _rest283141_)
                                         (_g283146283167_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               ___stx287780287781_)))))
                                    (let ((___kont287782287783_
                                           (lambda (_L283221_
                                                    _L283222_
                                                    _L283223_)
                                             (let* ((_slot283254_
                                                     (keyword->symbol
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L283223_))))
                                                    (_off283256_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass283108_
                                                        _slot283254_))))
                                               (if _off283256_
                                                   (let ((__tmp288192
                                                          (let ((__tmp288193
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _off283256_ _L283222_))))
                    (declare (not safe))
                    (cons __tmp288193 _initializers283142_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp283139_
                                                      _L283221_
                                                      __tmp288192))
                                                   (let ((__tmp288191
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _self283104_
                                                             __id287665
                                                             __t287664
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"unknown slot"
                                                      _stx283105_
                                                      __tmp288191
                                                      _slot283254_))))))
                                          (___kont287784287785_
                                           (lambda ()
                                             (let ((__tmp288194
                                                    (let ((__tmp288195
                                                           (let ((__tmp288218
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp288219
                                 (let ((__tmp288221
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj283137_ '())))
                                       (__tmp288220
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object283114_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp288221 __tmp288220))))
                            (declare (not safe))
                            (cons __tmp288219 '())))
                         (__tmp288196
                          (let ((__tmp288197
                                 (let ((__tmp288198
                                        (let ((__tmp288215
                                               (let ((__tmp288216
                                                      (let ((__tmp288217
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj283137_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp288217))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp288216 '())))
                                              (__tmp288199
                                               (let ((__tmp288200
                                                      (lambda (_i283181_
                                                               _r283182_)
                                                        (let ((__tmp288201
                                                               (let ((__tmp288202
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp288212
                                     (let ((__tmp288213
                                            (let ((__tmp288214
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self283104_
                                                      __id287665
                                                      __t287664
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp288214 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp288213)))
                                    (__tmp288203
                                     (let ((__tmp288209
                                            (let ((__tmp288210
                                                   (let ((__tmp288211
                                                          (car _i283181_)))
                                                     (declare (not safe))
                                                     (cons __tmp288211 '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp288210)))
                                           (__tmp288204
                                            (let ((__tmp288207
                                                   (let ((__tmp288208
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj283137_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp288208)))
                                                  (__tmp288205
                                                   (let ((__tmp288206
                                                          (cdr _i283181_)))
                                                     (declare (not safe))
                                                     (cons __tmp288206 '()))))
                                              (declare (not safe))
                                              (cons __tmp288207 __tmp288205))))
                                       (declare (not safe))
                                       (cons __tmp288209 __tmp288204))))
                                (declare (not safe))
                                (cons __tmp288212 __tmp288203))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-set! __tmp288202))))
                  (declare (not safe))
                  (cons __tmp288201 _r283182_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl1 __tmp288200
                                                         '()
                                                         _initializers283142_))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp288215
                                                  __tmp288199))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp288198))))
                            (declare (not safe))
                            (cons __tmp288197 '()))))
                     (declare (not safe))
                     (cons __tmp288218 __tmp288196))))
              (declare (not safe))
              (cons '%#let-values __tmp288195))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp288194
                                                _stx283105_))))
                                          (___kont287786287787_
                                           (lambda ()
                                             (let ((__tmp288222
                                                    (let ((__tmp288223
                                                           (let ((__tmp288237
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp288238
                                 (let ((__tmp288240
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj283137_ '())))
                                       (__tmp288239
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object283114_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp288240 __tmp288239))))
                            (declare (not safe))
                            (cons __tmp288238 '())))
                         (__tmp288224
                          (let ((__tmp288225
                                 (let ((__tmp288226
                                        (let ((__tmp288230
                                               (let ((__tmp288231
                                                      (let ((__tmp288235
                                                             (let ((__tmp288236
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'class-instance-init! '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp288236)))
                    (__tmp288232
                     (let ((__tmp288233
                            (let ((__tmp288234
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj283137_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp288234))))
                       (declare (not safe))
                       (cons __tmp288233 _args283112_))))
                (declare (not safe))
                (cons __tmp288235 __tmp288232))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp288231)))
                                              (__tmp288227
                                               (let ((__tmp288228
                                                      (let ((__tmp288229
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj283137_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp288229))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp288228 '()))))
                                          (declare (not safe))
                                          (cons __tmp288230 __tmp288227))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp288226))))
                            (declare (not safe))
                            (cons __tmp288225 '()))))
                     (declare (not safe))
                     (cons __tmp288237 __tmp288224))))
              (declare (not safe))
              (cons '%#let-values __tmp288223))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp288222
                                                _stx283105_)))))
                                      (let* ((_g283144283184_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       ___stx287780287781_))
                                                    (___kont287784287785_)
                                                    (___kont287786287787_))))
                                             (___match287817287818_
                                              (lambda (_e283153283189_
                                                       _hd283152283192_
                                                       _tl283151283194_
                                                       _e283156283197_
                                                       _hd283155283200_
                                                       _tl283154283202_
                                                       _e283159283205_
                                                       _hd283158283208_
                                                       _tl283157283210_
                                                       _e283162283213_
                                                       _hd283161283216_
                                                       _tl283160283218_)
                                                (let ((_L283221_
                                                       _tl283160283218_)
                                                      (_L283222_
                                                       _hd283161283216_)
                                                      (_L283223_
                                                       _hd283158283208_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-keyword?
                                                         _L283223_))
                                                      (___kont287782287783_
                                                       _L283221_
                                                       _L283222_
                                                       _L283223_)
                                                      (___kont287786287787_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               ___stx287780287781_))
                                            (let ((_e283153283189_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      ___stx287780287781_))))
                                              (let ((_tl283151283194_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e283153283189_)))
                                                    (_hd283152283192_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e283153283189_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd283152283192_))
                                                    (let ((_e283156283197_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd283152283192_))))
                                                      (let ((_tl283154283202_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e283156283197_)))
                    (_hd283155283200_
                     (let () (declare (not safe)) (##car _e283156283197_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd283155283200_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd283155283200_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl283154283202_))
                            (let ((_e283159283205_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl283154283202_))))
                              (let ((_tl283157283210_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e283159283205_)))
                                    (_hd283158283208_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e283159283205_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl283157283210_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl283151283194_))
                                        (let ((_e283162283213_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl283151283194_))))
                                          (let ((_tl283160283218_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e283162283213_)))
                                                (_hd283161283216_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e283162283213_))))
                                            (___match287817287818_
                                             _e283153283189_
                                             _hd283152283192_
                                             _tl283151283194_
                                             _e283156283197_
                                             _hd283155283200_
                                             _tl283154283202_
                                             _e283159283205_
                                             _hd283158283208_
                                             _tl283157283210_
                                             _e283162283213_
                                             _hd283161283216_
                                             _tl283160283218_)))
                                        (___kont287786287787_))
                                    (___kont287786287787_))))
                            (___kont287786287787_))
                        (___kont287786287787_))
                    (___kont287786287787_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont287786287787_))))
                                            (let ()
                                              (declare (not safe))
                                              (_g283144283184_))))))))))))))))))
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
      (lambda (_self282927_ _stx282928_ _args282929_)
        (let* ((_g282931282941_
                (lambda (_g282932282938_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g282932282938_))))
               (_g282930282979_
                (lambda (_g282932282944_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g282932282944_))
                      (let ((_e282936282946_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g282932282944_))))
                        (let ((_hd282935282949_
                               (let ()
                                 (declare (not safe))
                                 (##car _e282936282946_)))
                              (_tl282934282951_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e282936282946_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl282934282951_))
                              ((lambda (_L282954_)
                                 (let* ((_klass282965_
                                         (let ((__tmp288363
                                                (##structure-ref
                                                 _self282927_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx282928_
                                            __tmp288363)))
                                        (_field282967_
                                         (let ((__tmp288364
                                                (##structure-ref
                                                 _self282927_
                                                 '2
                                                 gxc#!accessor::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _klass282965_
                                            __tmp288364)))
                                        (_object282969_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L282954_))))
                                   (if (##structure-ref
                                        _klass282965_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp288441
                                              (let ((__tmp288450
                                                     (if (##structure-ref
                                                          _self282927_
                                                          '3
                                                          gxc#!accessor::t
                                                          '#f)
                                                         '%#struct-direct-ref
                                                         '%#struct-unchecked-ref))
                                                    (__tmp288442
                                                     (let ((__tmp288447
                                                            (let ((__tmp288448
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp288449
                                  (##structure-ref
                                   _self282927_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp288449 '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp288448)))
                   (__tmp288443
                    (let ((__tmp288445
                           (let ((__tmp288446
                                  (let ()
                                    (declare (not safe))
                                    (cons _field282967_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp288446)))
                          (__tmp288444
                           (let ()
                             (declare (not safe))
                             (cons _object282969_ '()))))
                      (declare (not safe))
                      (cons __tmp288445 __tmp288444))))
               (declare (not safe))
               (cons __tmp288447 __tmp288443))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp288450
                                                      __tmp288442))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp288441
                                          _stx282928_))
                                       (if (##structure-ref
                                            _klass282965_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp288431
                                                  (let ((__tmp288440
                                                         (if (##structure-ref
                                                              _self282927_
                                                              '3
                                                              gxc#!accessor::t
                                                              '#f)
                                                             '%#struct-ref
                                                             '%#struct-unchecked-ref))
                                                        (__tmp288432
                                                         (let ((__tmp288437
                                                                (let ((__tmp288438
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp288439
                                      (##structure-ref
                                       _self282927_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp288439 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp288438)))
                       (__tmp288433
                        (let ((__tmp288435
                               (let ((__tmp288436
                                      (let ()
                                        (declare (not safe))
                                        (cons _field282967_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp288436)))
                              (__tmp288434
                               (let ()
                                 (declare (not safe))
                                 (cons _object282969_ '()))))
                          (declare (not safe))
                          (cons __tmp288435 __tmp288434))))
                   (declare (not safe))
                   (cons __tmp288437 __tmp288433))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp288440
                                                          __tmp288432))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp288431
                                              _stx282928_))
                                           (let ((_$e282972_
                                                  (let ((__tmp288365
                                                         (##structure-ref
                                                          _self282927_
                                                          '2
                                                          gxc#!accessor::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _klass282965_
                                                     __tmp288365))))
                                             (if _$e282972_
                                                 ((lambda (_klass282975_)
                                                    (let ((__tmp288421
                                                           (let ((__tmp288430
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##structure-ref
                               _self282927_
                               '3
                               gxc#!accessor::t
                               '#f)
                              '%#struct-ref
                              '%#struct-unchecked-ref))
                         (__tmp288422
                          (let ((__tmp288427
                                 (let ((__tmp288428
                                        (let ((__tmp288429
                                               (##structure-ref
                                                _self282927_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp288429 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp288428)))
                                (__tmp288423
                                 (let ((__tmp288425
                                        (let ((__tmp288426
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _field282967_ '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp288426)))
                                       (__tmp288424
                                        (let ()
                                          (declare (not safe))
                                          (cons _object282969_ '()))))
                                   (declare (not safe))
                                   (cons __tmp288425 __tmp288424))))
                            (declare (not safe))
                            (cons __tmp288427 __tmp288423))))
                     (declare (not safe))
                     (cons __tmp288430 __tmp288422))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp288421 _stx282928_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e282972_)
                                                 (if (##structure-ref
                                                      _self282927_
                                                      '3
                                                      gxc#!accessor::t
                                                      '#f)
                                                     (let ((__tmp288375
                                                            (let* ((_$obj282977_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp288376 (gensym '__obj)))
                              (declare (not safe))
                              (make-symbol__0 __tmp288376)))
                           (__tmp288377
                            (let ((__tmp288417
                                   (let ((__tmp288418
                                          (let ((__tmp288420
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _$obj282977_ '())))
                                                (__tmp288419
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _object282969_ '()))))
                                            (declare (not safe))
                                            (cons __tmp288420 __tmp288419))))
                                     (declare (not safe))
                                     (cons __tmp288418 '())))
                                  (__tmp288378
                                   (let ((__tmp288379
                                          (let ((__tmp288380
                                                 (let ((__tmp288409
                                                        (let ((__tmp288410
                                                               (let ((__tmp288414
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp288415
                                     (let ((__tmp288416
                                            (##structure-ref
                                             _klass282965_
                                             '1
                                             gxc#!type::t
                                             '#f)))
                                       (declare (not safe))
                                       (cons __tmp288416 '()))))
                                (declare (not safe))
                                (cons '%#quote __tmp288415)))
                             (__tmp288411
                              (let ((__tmp288412
                                     (let ((__tmp288413
                                            (let ()
                                              (declare (not safe))
                                              (cons _$obj282977_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp288413))))
                                (declare (not safe))
                                (cons __tmp288412 '()))))
                         (declare (not safe))
                         (cons __tmp288414 __tmp288411))))
                  (declare (not safe))
                  (cons '%#struct-direct-instance? __tmp288410)))
               (__tmp288381
                (let ((__tmp288398
                       (let ((__tmp288399
                              (let ((__tmp288406
                                     (let ((__tmp288407
                                            (let ((__tmp288408
                                                   (##structure-ref
                                                    _self282927_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp288408 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp288407)))
                                    (__tmp288400
                                     (let ((__tmp288404
                                            (let ((__tmp288405
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field282967_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp288405)))
                                           (__tmp288401
                                            (let ((__tmp288402
                                                   (let ((__tmp288403
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj282977_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp288403))))
                                              (declare (not safe))
                                              (cons __tmp288402 '()))))
                                       (declare (not safe))
                                       (cons __tmp288404 __tmp288401))))
                                (declare (not safe))
                                (cons __tmp288406 __tmp288400))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp288399)))
                      (__tmp288382
                       (let ((__tmp288383
                              (let ((__tmp288384
                                     (let ((__tmp288396
                                            (let ((__tmp288397
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'class-slot-ref
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp288397)))
                                           (__tmp288385
                                            (let ((__tmp288393
                                                   (let ((__tmp288394
                                                          (let ((__tmp288395
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref _self282927_ '1 gxc#!type::t '#f)))
                    (declare (not safe))
                    (cons __tmp288395 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp288394)))
                                                  (__tmp288386
                                                   (let ((__tmp288391
                                                          (let ((__tmp288392
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj282977_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp288392)))
                 (__tmp288387
                  (let ((__tmp288388
                         (let ((__tmp288389
                                (let ((__tmp288390
                                       (##structure-ref
                                        _self282927_
                                        '2
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (cons __tmp288390 '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp288389))))
                    (declare (not safe))
                    (cons __tmp288388 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp288391
                                                           __tmp288387))))
                                              (declare (not safe))
                                              (cons __tmp288393 __tmp288386))))
                                       (declare (not safe))
                                       (cons __tmp288396 __tmp288385))))
                                (declare (not safe))
                                (cons '%#call __tmp288384))))
                         (declare (not safe))
                         (cons __tmp288383 '()))))
                  (declare (not safe))
                  (cons __tmp288398 __tmp288382))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp288409
                                                         __tmp288381))))
                                            (declare (not safe))
                                            (cons '%#if __tmp288380))))
                                     (declare (not safe))
                                     (cons __tmp288379 '()))))
                              (declare (not safe))
                              (cons __tmp288417 __tmp288378))))
                      (declare (not safe))
                      (cons '%#let-values __tmp288377))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp288375 _stx282928_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp288366
                                                            (let ((__tmp288367
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp288373
                                  (let ((__tmp288374
                                         (let ()
                                           (declare (not safe))
                                           (cons 'unchecked-slot-ref '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp288374)))
                                 (__tmp288368
                                  (let ((__tmp288369
                                         (let ((__tmp288370
                                                (let ((__tmp288371
                                                       (let ((__tmp288372
                                                              (##structure-ref
                                                               _self282927_
                                                               '2
                                                               gxc#!accessor::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp288372
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote
                                                        __tmp288371))))
                                           (declare (not safe))
                                           (cons __tmp288370 '()))))
                                    (declare (not safe))
                                    (cons _object282969_ __tmp288369))))
                             (declare (not safe))
                             (cons __tmp288373 __tmp288368))))
                      (declare (not safe))
                      (cons '%#call __tmp288367))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp288366 _stx282928_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _hd282935282949_)
                              (let ()
                                (declare (not safe))
                                (_g282931282941_ _g282932282944_)))))
                      (let ()
                        (declare (not safe))
                        (_g282931282941_ _g282932282944_))))))
          (declare (not safe))
          (_g282930282979_ _args282929_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__t287667)
        (let ((__slot287668
               (let ((__tmp287671
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t287667 'slot))))
                 (if __tmp287671 __tmp287671 (error '"Unknown slot" 'slot))))
              (__id287669
               (let ((__tmp287672
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t287667 'id))))
                 (if __tmp287672 __tmp287672 (error '"Unknown slot" 'id))))
              (__checked?287670
               (let ((__tmp287673
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t287667 'checked?))))
                 (if __tmp287673
                     __tmp287673
                     (error '"Unknown slot" 'checked?)))))
          (lambda (_self282927_ _stx282928_ _args282929_)
            (let* ((_g282931282941_
                    (lambda (_g282932282938_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g282932282938_))))
                   (_g282930282979_
                    (lambda (_g282932282944_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g282932282944_))
                          (let ((_e282936282946_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g282932282944_))))
                            (let ((_hd282935282949_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e282936282946_)))
                                  (_tl282934282951_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e282936282946_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl282934282951_))
                                  ((lambda (_L282954_)
                                     (let* ((_klass282965_
                                             (let ((__tmp288451
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self282927_
                                                       __id287669
                                                       __t287667
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx282928_
                                                __tmp288451)))
                                            (_field282967_
                                             (let ((__tmp288452
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self282927_
                                                       __slot287668
                                                       __t287667
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _klass282965_
                                                __tmp288452)))
                                            (_object282969_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L282954_))))
                                       (if (##structure-ref
                                            _klass282965_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp288529
                                                  (let ((__tmp288538
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self282927_
                        __checked?287670
                        __t287667
                        '#f))
                     '%#struct-direct-ref
                     '%#struct-unchecked-ref))
                (__tmp288530
                 (let ((__tmp288535
                        (let ((__tmp288536
                               (let ((__tmp288537
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _self282927_
                                         __id287669
                                         __t287667
                                         '#f))))
                                 (declare (not safe))
                                 (cons __tmp288537 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp288536)))
                       (__tmp288531
                        (let ((__tmp288533
                               (let ((__tmp288534
                                      (let ()
                                        (declare (not safe))
                                        (cons _field282967_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp288534)))
                              (__tmp288532
                               (let ()
                                 (declare (not safe))
                                 (cons _object282969_ '()))))
                          (declare (not safe))
                          (cons __tmp288533 __tmp288532))))
                   (declare (not safe))
                   (cons __tmp288535 __tmp288531))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp288538
                                                          __tmp288530))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp288529
                                              _stx282928_))
                                           (if (##structure-ref
                                                _klass282965_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp288519
                                                      (let ((__tmp288528
                                                             (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self282927_
                            __checked?287670
                            __t287667
                            '#f))
                         '%#struct-ref
                         '%#struct-unchecked-ref))
                    (__tmp288520
                     (let ((__tmp288525
                            (let ((__tmp288526
                                   (let ((__tmp288527
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self282927_
                                             __id287669
                                             __t287667
                                             '#f))))
                                     (declare (not safe))
                                     (cons __tmp288527 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp288526)))
                           (__tmp288521
                            (let ((__tmp288523
                                   (let ((__tmp288524
                                          (let ()
                                            (declare (not safe))
                                            (cons _field282967_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp288524)))
                                  (__tmp288522
                                   (let ()
                                     (declare (not safe))
                                     (cons _object282969_ '()))))
                              (declare (not safe))
                              (cons __tmp288523 __tmp288522))))
                       (declare (not safe))
                       (cons __tmp288525 __tmp288521))))
                (declare (not safe))
                (cons __tmp288528 __tmp288520))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp288519
                                                  _stx282928_))
                                               (let ((_$e282972_
                                                      (let ((__tmp288453
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self282927_
                        __slot287668
                        __t287667
                        '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _klass282965_ __tmp288453))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e282972_
                                                     ((lambda (_klass282975_)
                                                        (let ((__tmp288509
                                                               (let ((__tmp288518
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self282927_
                                     __checked?287670
                                     __t287667
                                     '#f))
                                  '%#struct-ref
                                  '%#struct-unchecked-ref))
                             (__tmp288510
                              (let ((__tmp288515
                                     (let ((__tmp288516
                                            (let ((__tmp288517
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self282927_
                                                      __id287669
                                                      __t287667
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp288517 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp288516)))
                                    (__tmp288511
                                     (let ((__tmp288513
                                            (let ((__tmp288514
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field282967_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp288514)))
                                           (__tmp288512
                                            (let ()
                                              (declare (not safe))
                                              (cons _object282969_ '()))))
                                       (declare (not safe))
                                       (cons __tmp288513 __tmp288512))))
                                (declare (not safe))
                                (cons __tmp288515 __tmp288511))))
                         (declare (not safe))
                         (cons __tmp288518 __tmp288510))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp288509 _stx282928_)))
              _$e282972_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _self282927_
                                                            __checked?287670
                                                            __t287667
                                                            '#f))
                                                         (let ((__tmp288463
                                                                (let* ((_$obj282977_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp288464 (gensym '__obj)))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp288464)))
                               (__tmp288465
                                (let ((__tmp288505
                                       (let ((__tmp288506
                                              (let ((__tmp288508
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _$obj282977_
                                                             '())))
                                                    (__tmp288507
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _object282969_
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp288508
                                                      __tmp288507))))
                                         (declare (not safe))
                                         (cons __tmp288506 '())))
                                      (__tmp288466
                                       (let ((__tmp288467
                                              (let ((__tmp288468
                                                     (let ((__tmp288497
                                                            (let ((__tmp288498
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp288502
                                  (let ((__tmp288503
                                         (let ((__tmp288504
                                                (##structure-ref
                                                 _klass282965_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp288504 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp288503)))
                                 (__tmp288499
                                  (let ((__tmp288500
                                         (let ((__tmp288501
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj282977_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp288501))))
                                    (declare (not safe))
                                    (cons __tmp288500 '()))))
                             (declare (not safe))
                             (cons __tmp288502 __tmp288499))))
                      (declare (not safe))
                      (cons '%#struct-direct-instance? __tmp288498)))
                   (__tmp288469
                    (let ((__tmp288486
                           (let ((__tmp288487
                                  (let ((__tmp288494
                                         (let ((__tmp288495
                                                (let ((__tmp288496
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self282927_
                                                          __id287669
                                                          __t287667
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp288496 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp288495)))
                                        (__tmp288488
                                         (let ((__tmp288492
                                                (let ((__tmp288493
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field282967_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp288493)))
                                               (__tmp288489
                                                (let ((__tmp288490
                                                       (let ((__tmp288491
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj282977_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp288491))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp288490 '()))))
                                           (declare (not safe))
                                           (cons __tmp288492 __tmp288489))))
                                    (declare (not safe))
                                    (cons __tmp288494 __tmp288488))))
                             (declare (not safe))
                             (cons '%#struct-unchecked-ref __tmp288487)))
                          (__tmp288470
                           (let ((__tmp288471
                                  (let ((__tmp288472
                                         (let ((__tmp288484
                                                (let ((__tmp288485
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-slot-ref
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp288485)))
                                               (__tmp288473
                                                (let ((__tmp288481
                                                       (let ((__tmp288482
                                                              (let ((__tmp288483
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self282927_
                                __id287669
                                __t287667
                                '#f))))
                        (declare (not safe))
                        (cons __tmp288483 '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp288482)))
              (__tmp288474
               (let ((__tmp288479
                      (let ((__tmp288480
                             (let ()
                               (declare (not safe))
                               (cons _$obj282977_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp288480)))
                     (__tmp288475
                      (let ((__tmp288476
                             (let ((__tmp288477
                                    (let ((__tmp288478
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _self282927_
                                              __slot287668
                                              __t287667
                                              '#f))))
                                      (declare (not safe))
                                      (cons __tmp288478 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp288477))))
                        (declare (not safe))
                        (cons __tmp288476 '()))))
                 (declare (not safe))
                 (cons __tmp288479 __tmp288475))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp288481
                                                        __tmp288474))))
                                           (declare (not safe))
                                           (cons __tmp288484 __tmp288473))))
                                    (declare (not safe))
                                    (cons '%#call __tmp288472))))
                             (declare (not safe))
                             (cons __tmp288471 '()))))
                      (declare (not safe))
                      (cons __tmp288486 __tmp288470))))
               (declare (not safe))
               (cons __tmp288497 __tmp288469))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#if __tmp288468))))
                                         (declare (not safe))
                                         (cons __tmp288467 '()))))
                                  (declare (not safe))
                                  (cons __tmp288505 __tmp288466))))
                          (declare (not safe))
                          (cons '%#let-values __tmp288465))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp288463 _stx282928_))
                 (let ((__tmp288454
                        (let ((__tmp288455
                               (let ((__tmp288461
                                      (let ((__tmp288462
                                             (let ()
                                               (declare (not safe))
                                               (cons 'unchecked-slot-ref
                                                     '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp288462)))
                                     (__tmp288456
                                      (let ((__tmp288457
                                             (let ((__tmp288458
                                                    (let ((__tmp288459
                                                           (let ((__tmp288460
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _self282927_
                             __slot287668
                             __t287667
                             '#f))))
                     (declare (not safe))
                     (cons __tmp288460 '()))))
              (declare (not safe))
              (cons '%#quote __tmp288459))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp288458 '()))))
                                        (declare (not safe))
                                        (cons _object282969_ __tmp288457))))
                                 (declare (not safe))
                                 (cons __tmp288461 __tmp288456))))
                          (declare (not safe))
                          (cons '%#call __tmp288455))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp288454 _stx282928_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd282935282949_)
                                  (let ()
                                    (declare (not safe))
                                    (_g282931282941_ _g282932282944_)))))
                          (let ()
                            (declare (not safe))
                            (_g282931282941_ _g282932282944_))))))
              (declare (not safe))
              (_g282930282979_ _args282929_))))))
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
      (lambda (_self282732_ _stx282733_ _args282734_)
        (let* ((_g282736282750_
                (lambda (_g282737282747_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g282737282747_))))
               (_g282735282802_
                (lambda (_g282737282753_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g282737282753_))
                      (let ((_e282742282755_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g282737282753_))))
                        (let ((_hd282741282758_
                               (let ()
                                 (declare (not safe))
                                 (##car _e282742282755_)))
                              (_tl282740282760_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e282742282755_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl282740282760_))
                              (let ((_e282745282763_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl282740282760_))))
                                (let ((_hd282744282766_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e282745282763_)))
                                      (_tl282743282768_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e282745282763_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl282743282768_))
                                      ((lambda (_L282771_ _L282772_)
                                         (let* ((_klass282786_
                                                 (let ((__tmp288539
                                                        (##structure-ref
                                                         _self282732_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _stx282733_
                                                    __tmp288539)))
                                                (_field282788_
                                                 (let ((__tmp288540
                                                        (##structure-ref
                                                         _self282732_
                                                         '2
                                                         gxc#!mutator::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass282786_
                                                    __tmp288540)))
                                                (_object282790_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L282772_)))
                                                (_value282792_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L282771_))))
                                           (if (##structure-ref
                                                _klass282786_
                                                '8
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp288622
                                                      (let ((__tmp288632
                                                             (if (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _self282732_
                          '3
                          gxc#!mutator::t
                          '#f)
                         '%#struct-direct-set!
                         '%#struct-unchecked-set!))
                    (__tmp288623
                     (let ((__tmp288629
                            (let ((__tmp288630
                                   (let ((__tmp288631
                                          (##structure-ref
                                           _self282732_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp288631 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp288630)))
                           (__tmp288624
                            (let ((__tmp288627
                                   (let ((__tmp288628
                                          (let ()
                                            (declare (not safe))
                                            (cons _field282788_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp288628)))
                                  (__tmp288625
                                   (let ((__tmp288626
                                          (let ()
                                            (declare (not safe))
                                            (cons _value282792_ '()))))
                                     (declare (not safe))
                                     (cons _object282790_ __tmp288626))))
                              (declare (not safe))
                              (cons __tmp288627 __tmp288625))))
                       (declare (not safe))
                       (cons __tmp288629 __tmp288624))))
                (declare (not safe))
                (cons __tmp288632 __tmp288623))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp288622
                                                  _stx282733_))
                                               (if (##structure-ref
                                                    _klass282786_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp288611
                                                          (let ((__tmp288621
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##structure-ref
                              _self282732_
                              '3
                              gxc#!mutator::t
                              '#f)
                             '%#struct-set!
                             '%#struct-unchecked-set!))
                        (__tmp288612
                         (let ((__tmp288618
                                (let ((__tmp288619
                                       (let ((__tmp288620
                                              (##structure-ref
                                               _self282732_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp288620 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp288619)))
                               (__tmp288613
                                (let ((__tmp288616
                                       (let ((__tmp288617
                                              (let ()
                                                (declare (not safe))
                                                (cons _field282788_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp288617)))
                                      (__tmp288614
                                       (let ((__tmp288615
                                              (let ()
                                                (declare (not safe))
                                                (cons _value282792_ '()))))
                                         (declare (not safe))
                                         (cons _object282790_ __tmp288615))))
                                  (declare (not safe))
                                  (cons __tmp288616 __tmp288614))))
                           (declare (not safe))
                           (cons __tmp288618 __tmp288613))))
                    (declare (not safe))
                    (cons __tmp288621 __tmp288612))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp288611
                                                      _stx282733_))
                                                   (let ((_$e282795_
                                                          (let ((__tmp288541
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref
                          _self282732_
                          '2
                          gxc#!mutator::t
                          '#f)))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct _klass282786_ __tmp288541))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e282795_
                                                         ((lambda (_klass282798_)
                                                            (let ((__tmp288600
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp288610
                                  (if (##structure-ref
                                       _self282732_
                                       '3
                                       gxc#!mutator::t
                                       '#f)
                                      '%#struct-set!
                                      '%#struct-unchecked-set!))
                                 (__tmp288601
                                  (let ((__tmp288607
                                         (let ((__tmp288608
                                                (let ((__tmp288609
                                                       (##structure-ref
                                                        _self282732_
                                                        '1
                                                        gxc#!type::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp288609 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp288608)))
                                        (__tmp288602
                                         (let ((__tmp288605
                                                (let ((__tmp288606
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field282788_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp288606)))
                                               (__tmp288603
                                                (let ((__tmp288604
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _value282792_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons _object282790_
                                                        __tmp288604))))
                                           (declare (not safe))
                                           (cons __tmp288605 __tmp288603))))
                                    (declare (not safe))
                                    (cons __tmp288607 __tmp288602))))
                             (declare (not safe))
                             (cons __tmp288610 __tmp288601))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp288600 _stx282733_)))
                  _$e282795_)
                 (if (##structure-ref _self282732_ '3 gxc#!mutator::t '#f)
                     (let ((__tmp288552
                            (let* ((_$obj282800_
                                    (let ((__tmp288553 (gensym '__obj)))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp288553)))
                                   (__tmp288554
                                    (let ((__tmp288596
                                           (let ((__tmp288597
                                                  (let ((__tmp288599
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj282800_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp288598
                 (let () (declare (not safe)) (cons _object282790_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp288599
                                                          __tmp288598))))
                                             (declare (not safe))
                                             (cons __tmp288597 '())))
                                          (__tmp288555
                                           (let ((__tmp288556
                                                  (let ((__tmp288557
                                                         (let ((__tmp288588
                                                                (let ((__tmp288589
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp288593
                                      (let ((__tmp288594
                                             (let ((__tmp288595
                                                    (##structure-ref
                                                     _klass282786_
                                                     '1
                                                     gxc#!type::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp288595 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp288594)))
                                     (__tmp288590
                                      (let ((__tmp288591
                                             (let ((__tmp288592
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj282800_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp288592))))
                                        (declare (not safe))
                                        (cons __tmp288591 '()))))
                                 (declare (not safe))
                                 (cons __tmp288593 __tmp288590))))
                          (declare (not safe))
                          (cons '%#struct-direct-instance? __tmp288589)))
                       (__tmp288558
                        (let ((__tmp288576
                               (let ((__tmp288577
                                      (let ((__tmp288585
                                             (let ((__tmp288586
                                                    (let ((__tmp288587
                                                           (##structure-ref
                                                            _self282732_
                                                            '1
                                                            gxc#!type::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (cons __tmp288587 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp288586)))
                                            (__tmp288578
                                             (let ((__tmp288583
                                                    (let ((__tmp288584
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field282788_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp288584)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp288579
                                                    (let ((__tmp288581
                                                           (let ((__tmp288582
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj282800_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp288582)))
                  (__tmp288580
                   (let () (declare (not safe)) (cons _value282792_ '()))))
              (declare (not safe))
              (cons __tmp288581 __tmp288580))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp288583
                                                     __tmp288579))))
                                        (declare (not safe))
                                        (cons __tmp288585 __tmp288578))))
                                 (declare (not safe))
                                 (cons '%#struct-unchecked-set! __tmp288577)))
                              (__tmp288559
                               (let ((__tmp288560
                                      (let ((__tmp288561
                                             (let ((__tmp288574
                                                    (let ((__tmp288575
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp288575)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp288562
                                                    (let ((__tmp288571
                                                           (let ((__tmp288572
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp288573
                                 (##structure-ref
                                  _self282732_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (cons __tmp288573 '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp288572)))
                  (__tmp288563
                   (let ((__tmp288569
                          (let ((__tmp288570
                                 (let ()
                                   (declare (not safe))
                                   (cons _$obj282800_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp288570)))
                         (__tmp288564
                          (let ((__tmp288566
                                 (let ((__tmp288567
                                        (let ((__tmp288568
                                               (##structure-ref
                                                _self282732_
                                                '2
                                                gxc#!mutator::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp288568 '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp288567)))
                                (__tmp288565
                                 (let ()
                                   (declare (not safe))
                                   (cons _value282792_ '()))))
                            (declare (not safe))
                            (cons __tmp288566 __tmp288565))))
                     (declare (not safe))
                     (cons __tmp288569 __tmp288564))))
              (declare (not safe))
              (cons __tmp288571 __tmp288563))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp288574
                                                     __tmp288562))))
                                        (declare (not safe))
                                        (cons '%#call __tmp288561))))
                                 (declare (not safe))
                                 (cons __tmp288560 '()))))
                          (declare (not safe))
                          (cons __tmp288576 __tmp288559))))
                   (declare (not safe))
                   (cons __tmp288588 __tmp288558))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#if __tmp288557))))
                                             (declare (not safe))
                                             (cons __tmp288556 '()))))
                                      (declare (not safe))
                                      (cons __tmp288596 __tmp288555))))
                              (declare (not safe))
                              (cons '%#let-values __tmp288554))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp288552 _stx282733_))
                     (let ((__tmp288542
                            (let ((__tmp288543
                                   (let ((__tmp288550
                                          (let ((__tmp288551
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'unchecked-slot-set!
                                                         '()))))
                                            (declare (not safe))
                                            (cons '%#ref __tmp288551)))
                                         (__tmp288544
                                          (let ((__tmp288545
                                                 (let ((__tmp288547
                                                        (let ((__tmp288548
                                                               (let ((__tmp288549
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##structure-ref
                               _self282732_
                               '2
                               gxc#!mutator::t
                               '#f)))
                         (declare (not safe))
                         (cons __tmp288549 '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp288548)))
               (__tmp288546
                (let () (declare (not safe)) (cons _value282792_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp288547
                                                         __tmp288546))))
                                            (declare (not safe))
                                            (cons _object282790_
                                                  __tmp288545))))
                                     (declare (not safe))
                                     (cons __tmp288550 __tmp288544))))
                              (declare (not safe))
                              (cons '%#call __tmp288543))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp288542 _stx282733_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd282744282766_
                                       _hd282741282758_)
                                      (let ()
                                        (declare (not safe))
                                        (_g282736282750_ _g282737282753_)))))
                              (let ()
                                (declare (not safe))
                                (_g282736282750_ _g282737282753_)))))
                      (let ()
                        (declare (not safe))
                        (_g282736282750_ _g282737282753_))))))
          (declare (not safe))
          (_g282735282802_ _args282734_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__t287674)
        (let ((__id287675
               (let ((__tmp287678
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t287674 'id))))
                 (if __tmp287678 __tmp287678 (error '"Unknown slot" 'id))))
              (__slot287676
               (let ((__tmp287679
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t287674 'slot))))
                 (if __tmp287679 __tmp287679 (error '"Unknown slot" 'slot))))
              (__checked?287677
               (let ((__tmp287680
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t287674 'checked?))))
                 (if __tmp287680
                     __tmp287680
                     (error '"Unknown slot" 'checked?)))))
          (lambda (_self282732_ _stx282733_ _args282734_)
            (let* ((_g282736282750_
                    (lambda (_g282737282747_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g282737282747_))))
                   (_g282735282802_
                    (lambda (_g282737282753_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g282737282753_))
                          (let ((_e282742282755_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g282737282753_))))
                            (let ((_hd282741282758_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e282742282755_)))
                                  (_tl282740282760_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e282742282755_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl282740282760_))
                                  (let ((_e282745282763_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl282740282760_))))
                                    (let ((_hd282744282766_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e282745282763_)))
                                          (_tl282743282768_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e282745282763_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl282743282768_))
                                          ((lambda (_L282771_ _L282772_)
                                             (let* ((_klass282786_
                                                     (let ((__tmp288633
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self282732_
                                                               __id287675
                                                               __t287674
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _stx282733_
                                                        __tmp288633)))
                                                    (_field282788_
                                                     (let ((__tmp288634
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self282732_
                                                               __slot287676
                                                               __t287674
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass282786_
                                                        __tmp288634)))
                                                    (_object282790_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L282772_)))
                                                    (_value282792_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L282771_))))
                                               (if (##structure-ref
                                                    _klass282786_
                                                    '8
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp288716
                                                          (let ((__tmp288726
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self282732_
                                __checked?287677
                                __t287674
                                '#f))
                             '%#struct-direct-set!
                             '%#struct-unchecked-set!))
                        (__tmp288717
                         (let ((__tmp288723
                                (let ((__tmp288724
                                       (let ((__tmp288725
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _self282732_
                                                 __id287675
                                                 __t287674
                                                 '#f))))
                                         (declare (not safe))
                                         (cons __tmp288725 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp288724)))
                               (__tmp288718
                                (let ((__tmp288721
                                       (let ((__tmp288722
                                              (let ()
                                                (declare (not safe))
                                                (cons _field282788_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp288722)))
                                      (__tmp288719
                                       (let ((__tmp288720
                                              (let ()
                                                (declare (not safe))
                                                (cons _value282792_ '()))))
                                         (declare (not safe))
                                         (cons _object282790_ __tmp288720))))
                                  (declare (not safe))
                                  (cons __tmp288721 __tmp288719))))
                           (declare (not safe))
                           (cons __tmp288723 __tmp288718))))
                    (declare (not safe))
                    (cons __tmp288726 __tmp288717))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp288716
                                                      _stx282733_))
                                                   (if (##structure-ref
                                                        _klass282786_
                                                        '7
                                                        gxc#!class::t
                                                        '#f)
                                                       (let ((__tmp288705
                                                              (let ((__tmp288715
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _self282732_
                                    __checked?287677
                                    __t287674
                                    '#f))
                                 '%#struct-set!
                                 '%#struct-unchecked-set!))
                            (__tmp288706
                             (let ((__tmp288712
                                    (let ((__tmp288713
                                           (let ((__tmp288714
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self282732_
                                                     __id287675
                                                     __t287674
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp288714 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp288713)))
                                   (__tmp288707
                                    (let ((__tmp288710
                                           (let ((__tmp288711
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _field282788_ '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp288711)))
                                          (__tmp288708
                                           (let ((__tmp288709
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _value282792_ '()))))
                                             (declare (not safe))
                                             (cons _object282790_
                                                   __tmp288709))))
                                      (declare (not safe))
                                      (cons __tmp288710 __tmp288708))))
                               (declare (not safe))
                               (cons __tmp288712 __tmp288707))))
                        (declare (not safe))
                        (cons __tmp288715 __tmp288706))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp288705 _stx282733_))
               (let ((_$e282795_
                      (let ((__tmp288635
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self282732_
                                __slot287676
                                __t287674
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _klass282786_
                         __tmp288635))))
                 (if _$e282795_
                     ((lambda (_klass282798_)
                        (let ((__tmp288694
                               (let ((__tmp288704
                                      (if (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self282732_
                                             __checked?287677
                                             __t287674
                                             '#f))
                                          '%#struct-set!
                                          '%#struct-unchecked-set!))
                                     (__tmp288695
                                      (let ((__tmp288701
                                             (let ((__tmp288702
                                                    (let ((__tmp288703
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _self282732_
                                                              __id287675
                                                              __t287674
                                                              '#f))))
                                                      (declare (not safe))
                                                      (cons __tmp288703 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp288702)))
                                            (__tmp288696
                                             (let ((__tmp288699
                                                    (let ((__tmp288700
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field282788_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp288700)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp288697
                                                    (let ((__tmp288698
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _value282792_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _object282790_ __tmp288698))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp288699
                                                     __tmp288697))))
                                        (declare (not safe))
                                        (cons __tmp288701 __tmp288696))))
                                 (declare (not safe))
                                 (cons __tmp288704 __tmp288695))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp288694 _stx282733_)))
                      _$e282795_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self282732_
                            __checked?287677
                            __t287674
                            '#f))
                         (let ((__tmp288646
                                (let* ((_$obj282800_
                                        (let ((__tmp288647 (gensym '__obj)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp288647)))
                                       (__tmp288648
                                        (let ((__tmp288690
                                               (let ((__tmp288691
                                                      (let ((__tmp288693
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj282800_ '())))
                    (__tmp288692
                     (let () (declare (not safe)) (cons _object282790_ '()))))
                (declare (not safe))
                (cons __tmp288693 __tmp288692))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp288691 '())))
                                              (__tmp288649
                                               (let ((__tmp288650
                                                      (let ((__tmp288651
                                                             (let ((__tmp288682
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp288683
                                   (let ((__tmp288687
                                          (let ((__tmp288688
                                                 (let ((__tmp288689
                                                        (##structure-ref
                                                         _klass282786_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp288689 '()))))
                                            (declare (not safe))
                                            (cons '%#quote __tmp288688)))
                                         (__tmp288684
                                          (let ((__tmp288685
                                                 (let ((__tmp288686
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj282800_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp288686))))
                                            (declare (not safe))
                                            (cons __tmp288685 '()))))
                                     (declare (not safe))
                                     (cons __tmp288687 __tmp288684))))
                              (declare (not safe))
                              (cons '%#struct-direct-instance? __tmp288683)))
                           (__tmp288652
                            (let ((__tmp288670
                                   (let ((__tmp288671
                                          (let ((__tmp288679
                                                 (let ((__tmp288680
                                                        (let ((__tmp288681
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _self282732_
                          __id287675
                          __t287674
                          '#f))))
                  (declare (not safe))
                  (cons __tmp288681 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp288680)))
                                                (__tmp288672
                                                 (let ((__tmp288677
                                                        (let ((__tmp288678
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _field282788_ '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp288678)))
               (__tmp288673
                (let ((__tmp288675
                       (let ((__tmp288676
                              (let ()
                                (declare (not safe))
                                (cons _$obj282800_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp288676)))
                      (__tmp288674
                       (let () (declare (not safe)) (cons _value282792_ '()))))
                  (declare (not safe))
                  (cons __tmp288675 __tmp288674))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp288677
                                                         __tmp288673))))
                                            (declare (not safe))
                                            (cons __tmp288679 __tmp288672))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp288671)))
                                  (__tmp288653
                                   (let ((__tmp288654
                                          (let ((__tmp288655
                                                 (let ((__tmp288668
                                                        (let ((__tmp288669
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons 'class-slot-set! '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp288669)))
               (__tmp288656
                (let ((__tmp288665
                       (let ((__tmp288666
                              (let ((__tmp288667
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _self282732_
                                        __id287675
                                        __t287674
                                        '#f))))
                                (declare (not safe))
                                (cons __tmp288667 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp288666)))
                      (__tmp288657
                       (let ((__tmp288663
                              (let ((__tmp288664
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj282800_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp288664)))
                             (__tmp288658
                              (let ((__tmp288660
                                     (let ((__tmp288661
                                            (let ((__tmp288662
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self282732_
                                                      __slot287676
                                                      __t287674
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp288662 '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp288661)))
                                    (__tmp288659
                                     (let ()
                                       (declare (not safe))
                                       (cons _value282792_ '()))))
                                (declare (not safe))
                                (cons __tmp288660 __tmp288659))))
                         (declare (not safe))
                         (cons __tmp288663 __tmp288658))))
                  (declare (not safe))
                  (cons __tmp288665 __tmp288657))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp288668
                                                         __tmp288656))))
                                            (declare (not safe))
                                            (cons '%#call __tmp288655))))
                                     (declare (not safe))
                                     (cons __tmp288654 '()))))
                              (declare (not safe))
                              (cons __tmp288670 __tmp288653))))
                       (declare (not safe))
                       (cons __tmp288682 __tmp288652))))
                (declare (not safe))
                (cons '%#if __tmp288651))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp288650 '()))))
                                          (declare (not safe))
                                          (cons __tmp288690 __tmp288649))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp288648))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp288646 _stx282733_))
                         (let ((__tmp288636
                                (let ((__tmp288637
                                       (let ((__tmp288644
                                              (let ((__tmp288645
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons 'unchecked-slot-set!
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#ref __tmp288645)))
                                             (__tmp288638
                                              (let ((__tmp288639
                                                     (let ((__tmp288641
                                                            (let ((__tmp288642
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp288643
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self282732_
                                     __slot287676
                                     __t287674
                                     '#f))))
                             (declare (not safe))
                             (cons __tmp288643 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp288642)))
                   (__tmp288640
                    (let () (declare (not safe)) (cons _value282792_ '()))))
               (declare (not safe))
               (cons __tmp288641 __tmp288640))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _object282790_
                                                      __tmp288639))))
                                         (declare (not safe))
                                         (cons __tmp288644 __tmp288638))))
                                  (declare (not safe))
                                  (cons '%#call __tmp288637))))
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp288636
                            _stx282733_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _hd282744282766_
                                           _hd282741282758_)
                                          (let ()
                                            (declare (not safe))
                                            (_g282736282750_
                                             _g282737282753_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g282736282750_ _g282737282753_)))))
                          (let ()
                            (declare (not safe))
                            (_g282736282750_ _g282737282753_))))))
              (declare (not safe))
              (_g282735282802_ _args282734_))))))
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
      (lambda (_self282566_ _stx282567_ _args282568_)
        (let* ((_self282569282578_ _self282566_)
               (_E282571282582_
                (lambda () (error '"No clause matching" _self282569282578_)))
               (_K282572282589_
                (lambda (_inline282585_ _dispatch282586_ _arity282587_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self282566_ _args282568_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx282567_
                         _arity282587_)))
                  (if _inline282585_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp288732
                               (let ((__tmp288733
                                      (_inline282585_ _stx282567_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp288733
                                  _stx282567_))))
                          (declare (not safe))
                          (gxc#compile-e__0 __tmp288732)))
                      (if _dispatch282586_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch282586_))
                            (let ((__tmp288727
                                   (let ((__tmp288728
                                          (let ((__tmp288729
                                                 (let ((__tmp288730
                                                        (let ((__tmp288731
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch282586_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp288731))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp288730
                                                         _args282568_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp288729))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp288728
                                      _stx282567_))))
                              (declare (not safe))
                              (gxc#compile-e__0 __tmp288727)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _stx282567_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self282569282578_ 'gxc#!lambda::t))
              (let* ((_e282573282592_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self282569282578_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e282574282595_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self282569282578_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity282598_ _e282574282595_)
                     (_e282575282600_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self282569282578_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch282603_ _e282575282600_)
                     (_e282576282605_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self282569282578_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline282608_ _e282576282605_))
                (declare (not safe))
                (_K282572282589_
                 _inline282608_
                 _dispatch282603_
                 _arity282598_))
              (let () (declare (not safe)) (_E282571282582_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self282405_ _stx282406_ _args282407_)
        (let* ((_self282408282415_ _self282405_)
               (_E282410282419_
                (lambda () (error '"No clause matching" _self282408282415_)))
               (_K282411282433_
                (lambda (_clauses282422_)
                  (let ((_$e282428_
                         (let ((__tmp288734
                                (lambda (_g282423282425_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g282423282425_
                                     _args282407_)))))
                           (declare (not safe))
                           (find __tmp288734 _clauses282422_))))
                    (if _$e282428_
                        ((lambda (_clause282431_)
                           (let ((__method287949
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause282431_
                                     'optimize-call))))
                             (if __method287949
                                 (__method287949
                                  _clause282431_
                                  _stx282406_
                                  _args282407_)
                                 (error '"Missing method"
                                        _clause282431_
                                        'optimize-call))))
                         _$e282428_)
                        (let ((__tmp288735
                               (map gxc#!lambda-arity _clauses282422_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx282406_
                           __tmp288735)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self282408282415_
                 'gxc#!case-lambda::t))
              (let* ((_e282412282436_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self282408282415_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e282413282439_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self282408282415_
                         '2
                         gxc#!case-lambda::t
                         '#f)))
                     (_clauses282442_ _e282413282439_))
                (declare (not safe))
                (_K282411282433_ _clauses282442_))
              (let () (declare (not safe)) (_E282410282419_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self282219_ _args282220_)
        (let* ((_self282221282228_ _self282219_)
               (_E282223282232_
                (lambda () (error '"No clause matching" _self282221282228_)))
               (_K282224282272_
                (lambda (_arity282235_)
                  (let* ((_arity282236282245_ _arity282235_)
                         (_E282239282249_
                          (lambda ()
                            (error '"No clause matching"
                                   _arity282236282245_))))
                    (let ((_K282243282269_
                           (lambda ()
                             (fx= (length _args282220_) _arity282235_)))
                          (_K282240282255_
                           (lambda (_arity282253_)
                             (fx>= (length _args282220_) _arity282253_))))
                      (let ((_try-match282238282265_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity282236282245_))
                                   (let ((_tl282242282260_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity282236282245_)))
                                         (_hd282241282258_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity282236282245_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl282242282260_))
                                         (let ((_arity282263_
                                                _hd282241282258_))
                                           (declare (not safe))
                                           (_K282240282255_ _arity282263_))
                                         (let ()
                                           (declare (not safe))
                                           (_E282239282249_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E282239282249_))))))
                        (if (fixnum? _arity282236282245_)
                            (let () (declare (not safe)) (_K282243282269_))
                            (let ()
                              (declare (not safe))
                              (_try-match282238282265_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self282221282228_ 'gxc#!lambda::t))
              (let* ((_e282225282275_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self282221282228_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e282226282278_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self282221282228_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity282281_ _e282226282278_))
                (declare (not safe))
                (_K282224282272_ _arity282281_))
              (let () (declare (not safe)) (_E282223282232_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self282104_ _stx282105_ _args282106_)
        (let* ((_self282107282115_ _self282104_)
               (_E282109282119_
                (lambda () (error '"No clause matching" _self282107282115_)))
               (_K282110282203_
                (lambda (_dispatch282122_ _table282123_)
                  (let* ((_g282124282133_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch282122_)))
                         (_else282126282141_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch282122_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _stx282105_))))
                         (_K282128282187_
                          (lambda (_main282144_ _keys282145_)
                            (let ((_g288736_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx282105_
                                      _args282106_))))
                              (begin
                                (let ((_g288737_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g288736_)
                                             (##vector-length _g288736_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g288737_ 2)))
                                      (error "Context expects 2 values"
                                             _g288737_)))
                                (let ((_pargs282147_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g288736_ 0)))
                                      (_kwargs282148_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g288736_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main282144_))
                                    (if _table282123_
                                        (let ((_xargs282155_
                                               (map (lambda (_key282150_)
                                                      (let ((_$e282152_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _key282150_ _kwargs282148_))))
                (if _$e282152_ (values _$e282152_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys282145_)))
                                          (for-each
                                           (lambda (_kw282157_)
                                             (if (memq (car _kw282157_)
                                                       _keys282145_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx282105_
                                                    _keys282145_
                                                    _kw282157_))))
                                           _kwargs282148_)
                                          (let ((__tmp288789
                                                 (let ((__tmp288790
                                                        (let ((__tmp288791
                                                               (let ((__tmp288796
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp288797
                                     (let ()
                                       (declare (not safe))
                                       (cons _main282144_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp288797)))
                             (__tmp288792
                              (let ((__tmp288794
                                     (let ((__tmp288795
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp288795)))
                                    (__tmp288793
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs282147_
                                               _xargs282155_))))
                                (declare (not safe))
                                (cons __tmp288794 __tmp288793))))
                         (declare (not safe))
                         (cons __tmp288796 __tmp288792))))
                  (declare (not safe))
                  (cons '%#call __tmp288791))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp288790
                                                    _stx282105_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0 __tmp288789)))
                                        (let* ((_kwt282159_
                                                (let ((__tmp288738
                                                       (gensym '__kwt)))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp288738)))
                                               (_kwvars282162_
                                                (map (lambda (_g288739_)
                                                       (let ((__tmp288740
                                                              (gensym '__kw)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp288740)))
                                                     _kwargs282148_))
                                               (_kwbind282167_
                                                (map (lambda (_kw282164_
                                                              _kwvar282165_)
                                                       (let ((__tmp288743
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar282165_ '())))
                     (__tmp288741
                      (let ((__tmp288742 (cdr _kw282164_)))
                        (declare (not safe))
                        (cons __tmp288742 '()))))
                 (declare (not safe))
                 (cons __tmp288743 __tmp288741)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs282148_
                                                     _kwvars282162_))
                                               (_kwset282172_
                                                (map (lambda (_kw282169_
                                                              _kwvar282170_)
                                                       (let ((__tmp288744
                                                              (let ((__tmp288745
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp288753
                                    (let ((__tmp288754
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt282159_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp288754)))
                                   (__tmp288746
                                    (let ((__tmp288750
                                           (let ((__tmp288751
                                                  (let ((__tmp288752
                                                         (car _kw282169_)))
                                                    (declare (not safe))
                                                    (cons __tmp288752 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp288751)))
                                          (__tmp288747
                                           (let ((__tmp288748
                                                  (let ((__tmp288749
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar282170_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp288749))))
                                             (declare (not safe))
                                             (cons __tmp288748 '()))))
                                      (declare (not safe))
                                      (cons __tmp288750 __tmp288747))))
                               (declare (not safe))
                               (cons __tmp288753 __tmp288746))))
                        (declare (not safe))
                        (cons '(%#ref symoblic-table-set!) __tmp288745))))
                 (declare (not safe))
                 (cons '%#call __tmp288744)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs282148_
                                                     _kwvars282162_))
                                               (_xkwargs282177_
                                                (map (lambda (_kw282174_
                                                              _kwvar282175_)
                                                       (let ((__tmp288757
                                                              (car _kw282174_))
                                                             (__tmp288755
                                                              (let ((__tmp288756
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar282175_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp288756))))
                 (declare (not safe))
                 (cons __tmp288757 __tmp288755)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs282148_
                                                     _kwvars282162_))
                                               (_xargs282184_
                                                (map (lambda (_key282179_)
                                                       (let ((_$e282181_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq _key282179_ _xkwargs282177_))))
                 (if _$e282181_ (values _$e282181_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys282145_)))
                                          (let ((__tmp288758
                                                 (let ((__tmp288759
                                                        (let ((__tmp288760
                                                               (let ((__tmp288761
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp288762
                                     (let ((__tmp288763
                                            (let ((__tmp288777
                                                   (let ((__tmp288778
                                                          (let ((__tmp288788
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt282159_ '())))
                        (__tmp288779
                         (let ((__tmp288780
                                (let ((__tmp288781
                                       (let ((__tmp288782
                                              (let ((__tmp288783
                                                     (let ((__tmp288785
                                                            (let ((__tmp288786
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp288787 (length _kwargs282148_)))
                             (declare (not safe))
                             (cons __tmp288787 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp288786)))
                   (__tmp288784
                    (let () (declare (not safe)) (cons '(%#quote 0) '()))))
               (declare (not safe))
               (cons __tmp288785 __tmp288784))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-symbolic-table)
                                                      __tmp288783))))
                                         (declare (not safe))
                                         (cons '%#call __tmp288782))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp288781
                                   _stx282105_))))
                           (declare (not safe))
                           (cons __tmp288780 '()))))
                    (declare (not safe))
                    (cons __tmp288788 __tmp288779))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp288778 '())))
                                                  (__tmp288764
                                                   (let ((__tmp288765
                                                          (let ((__tmp288766
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp288767
                                (let ((__tmp288768
                                       (let ((__tmp288769
                                              (let ((__tmp288770
                                                     (let ((__tmp288775
                                                            (let ((__tmp288776
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main282144_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp288776)))
                   (__tmp288771
                    (let ((__tmp288773
                           (let ((__tmp288774
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt282159_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp288774)))
                          (__tmp288772
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs282147_ _xargs282184_))))
                      (declare (not safe))
                      (cons __tmp288773 __tmp288772))))
               (declare (not safe))
               (cons __tmp288775 __tmp288771))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp288770))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp288769
                                          _stx282105_))))
                                  (declare (not safe))
                                  (cons __tmp288768 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp288767 _kwset282172_))))
                    (declare (not safe))
                    (cons '%#begin __tmp288766))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp288765 '()))))
                                              (declare (not safe))
                                              (cons __tmp288777 __tmp288764))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp288763))))
                                (declare (not safe))
                                (cons __tmp288762 '()))))
                         (declare (not safe))
                         (cons _kwbind282167_ __tmp288761))))
                  (declare (not safe))
                  (cons '%#let-values __tmp288760))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp288759
                                                    _stx282105_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0
                                             __tmp288758)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g282124282133_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e282129282190_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g282124282133_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                               (_e282130282193_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g282124282133_
                                   '2
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_keys282196_ _e282130282193_)
                               (_e282131282198_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g282124282133_
                                   '3
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_main282201_ _e282131282198_))
                          (declare (not safe))
                          (_K282128282187_ _main282201_ _keys282196_))
                        (let () (declare (not safe)) (_else282126282141_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self282107282115_
                 'gxc#!kw-lambda::t))
              (let* ((_e282111282206_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self282107282115_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e282112282209_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self282107282115_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table282212_ _e282112282209_)
                     (_e282113282214_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self282107282115_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch282217_ _e282113282214_))
                (declare (not safe))
                (_K282110282203_ _dispatch282217_ _table282212_))
              (let () (declare (not safe)) (_E282109282119_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx281717_ _args281718_)
        (let _lp281720_ ((_rest281722_ _args281718_)
                         (_pargs281723_ '())
                         (_kwargs281724_ '()))
          (let* ((___stx287831287832_ _rest281722_)
                 (_g281730281782_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx287831287832_)))))
            (let ((___kont287833287834_
                   (lambda (_L281961_ _L281962_)
                     (let ((__tmp288798
                            (let ()
                              (declare (not safe))
                              (cons _L281962_ _pargs281723_))))
                       (declare (not safe))
                       (_lp281720_ _L281961_ __tmp288798 _kwargs281724_))))
                  (___kont287835287836_
                   (lambda (_L281907_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L281907_ _pargs281723_))
                             (reverse _kwargs281724_))))
                  (___kont287837287838_
                   (lambda (_L281854_ _L281855_ _L281856_)
                     (let ((_kw281873_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _L281856_))))
                       (if (assq _kw281873_ _kwargs281724_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx281717_
                              _kw281873_))
                           (let ((__tmp288799
                                  (let ((__tmp288800
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw281873_ _L281855_))))
                                    (declare (not safe))
                                    (cons __tmp288800 _kwargs281724_))))
                             (declare (not safe))
                             (_lp281720_
                              _L281854_
                              _pargs281723_
                              __tmp288799))))))
                  (___kont287839287840_
                   (lambda (_L281802_ _L281803_)
                     (let ((__tmp288801
                            (let ()
                              (declare (not safe))
                              (cons _L281803_ _pargs281723_))))
                       (declare (not safe))
                       (_lp281720_ _L281802_ __tmp288801 _kwargs281724_))))
                  (___kont287841287842_
                   (lambda ()
                     (values (reverse _pargs281723_)
                             (reverse _kwargs281724_)))))
              (let* ((_g281729281789_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx287831287832_))
                            (___kont287841287842_)
                            (let () (declare (not safe)) (_g281730281782_)))))
                     (___match287938287939_
                      (lambda (_e281763281822_
                               _hd281762281825_
                               _tl281761281827_
                               _e281766281830_
                               _hd281765281833_
                               _tl281764281835_
                               _e281769281838_
                               _hd281768281841_
                               _tl281767281843_
                               _e281772281846_
                               _hd281771281849_
                               _tl281770281851_)
                        (let ((_L281854_ _tl281770281851_)
                              (_L281855_ _hd281771281849_)
                              (_L281856_ _hd281768281841_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L281856_))
                              (___kont287837287838_
                               _L281854_
                               _L281855_
                               _L281856_)
                              (___kont287839287840_
                               _tl281761281827_
                               _hd281762281825_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx287831287832_))
                    (let ((_e281736281926_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx287831287832_))))
                      (let ((_tl281734281931_
                             (let ()
                               (declare (not safe))
                               (##cdr _e281736281926_)))
                            (_hd281735281929_
                             (let ()
                               (declare (not safe))
                               (##car _e281736281926_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd281735281929_))
                            (let ((_e281739281934_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd281735281929_))))
                              (let ((_tl281737281939_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e281739281934_)))
                                    (_hd281738281937_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e281739281934_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd281738281937_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd281738281937_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl281737281939_))
                                            (let ((_e281742281942_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl281737281939_))))
                                              (let ((_tl281740281947_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e281742281942_)))
                                                    (_hd281741281945_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e281742281942_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd281741281945_))
                                                    (let ((_e281743281950_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd281741281945_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e281743281950_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl281740281947_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl281734281931_))
                          (let ((_e281746281953_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl281734281931_))))
                            (let ((_tl281744281958_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e281746281953_)))
                                  (_hd281745281956_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e281746281953_))))
                              (___kont287833287834_
                               _tl281744281958_
                               _hd281745281956_)))
                          (___kont287839287840_
                           _tl281734281931_
                           _hd281735281929_))
                      (___kont287839287840_ _tl281734281931_ _hd281735281929_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e281743281950_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl281740281947_))
                          (___kont287835287836_ _tl281734281931_)
                          (___kont287839287840_
                           _tl281734281931_
                           _hd281735281929_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl281740281947_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl281734281931_))
                              (let ((_e281772281846_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl281734281931_))))
                                (let ((_tl281770281851_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e281772281846_)))
                                      (_hd281771281849_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e281772281846_))))
                                  (___match287938287939_
                                   _e281736281926_
                                   _hd281735281929_
                                   _tl281734281931_
                                   _e281739281934_
                                   _hd281738281937_
                                   _tl281737281939_
                                   _e281742281942_
                                   _hd281741281945_
                                   _tl281740281947_
                                   _e281772281846_
                                   _hd281771281849_
                                   _tl281770281851_)))
                              (___kont287839287840_
                               _tl281734281931_
                               _hd281735281929_))
                          (___kont287839287840_
                           _tl281734281931_
                           _hd281735281929_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl281740281947_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl281734281931_))
                                                            (let ((_e281772281846_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl281734281931_))))
                      (let ((_tl281770281851_
                             (let ()
                               (declare (not safe))
                               (##cdr _e281772281846_)))
                            (_hd281771281849_
                             (let ()
                               (declare (not safe))
                               (##car _e281772281846_))))
                        (___match287938287939_
                         _e281736281926_
                         _hd281735281929_
                         _tl281734281931_
                         _e281739281934_
                         _hd281738281937_
                         _tl281737281939_
                         _e281742281942_
                         _hd281741281945_
                         _tl281740281947_
                         _e281772281846_
                         _hd281771281849_
                         _tl281770281851_)))
                    (___kont287839287840_ _tl281734281931_ _hd281735281929_))
                (___kont287839287840_ _tl281734281931_ _hd281735281929_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont287839287840_
                                             _tl281734281931_
                                             _hd281735281929_))
                                        (___kont287839287840_
                                         _tl281734281931_
                                         _hd281735281929_))
                                    (___kont287839287840_
                                     _tl281734281931_
                                     _hd281735281929_))))
                            (___kont287839287840_
                             _tl281734281931_
                             _hd281735281929_))))
                    (let () (declare (not safe)) (_g281729281789_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self281713_ _stx281714_ _args281715_)
        (let () (declare (not safe)) (gxc#xform-call% _stx281714_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
