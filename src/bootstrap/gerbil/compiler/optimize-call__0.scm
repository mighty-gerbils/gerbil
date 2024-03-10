(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1710106266)
  (begin
    (define gxc#&optimize-call::t
      (let ((__tmp153923 (list gxc#&basic-xform::t))
            (__tmp153921
             (let ((__tmp153922
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp153922 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#&optimize-call::t
         '&optimize-call
         __tmp153923
         '()
         __tmp153921
         '#f)))
    (define gxc#&optimize-call?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#&optimize-call::t)))
    (define gxc#make-&optimize-call
      (lambda _$args153624_
        (apply make-instance gxc#&optimize-call::t _$args153624_)))
    (define gxc#&optimize-call-bind-methods!
      (let ((__tmp153924
             (lambda ()
               (force gxc#&basic-xform-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&optimize-call::t
                  '%#call
                  gxc#optimize-call%))
               (let ()
                 (declare (not safe))
                 (seal-class! gxc#&optimize-call::t)))))
        (declare (not safe))
        (make-promise __tmp153924)))
    (define gxc#apply-optimize-call
      (lambda (_stx153616_)
        (force gxc#&optimize-call-bind-methods!)
        (let* ((_self153619_
                (let ((__obj153918
                       (let ()
                         (declare (not safe))
                         (##structure gxc#&optimize-call::t))))
                  __obj153918))
               (__tmp153925
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self153619_ _stx153616_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp153925
           gxc#current-compile-method
           _self153619_))))
    (define gxc#optimize-call%
      (lambda (_self153470_ _stx153471_)
        (let* ((___stx153669153670_ _stx153471_)
               (_g153474153494_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx153669153670_)))))
          (let ((___kont153671153672_
                 (lambda (_L153538_ _L153539_)
                   (let* ((_rator-id153557_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L153539_)))
                          (_rator-type153559_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id153557_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type153559_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp153926
                                  (##structure-ref
                                   _rator-type153559_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id153557_
                              '" => "
                              _rator-type153559_
                              '" "
                              __tmp153926))
                           (let ((_optimized153562_
                                  (let ((__method153919
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type153559_
                                            'optimize-call))))
                                    (if __method153919
                                        (__method153919
                                         _rator-type153559_
                                         _self153470_
                                         _stx153471_
                                         _L153538_)
                                        (let ()
                                          (declare (not safe))
                                          (error '"Missing method"
                                                 _rator-type153559_
                                                 'optimize-call))))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type153559_))
                                 _optimized153562_
                                 (let* ((___stx153651153652_ _optimized153562_)
                                        (_g153565153575_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx153651153652_)))))
                                   (let ((___kont153653153654_
                                          (lambda (_L153595_)
                                            (let ((__tmp153927
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L153595_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp153927
                                               _stx153471_))))
                                         (___kont153655153656_
                                          (lambda () _optimized153562_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx153651153652_))
                                         (let ((_e153570153587_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx153651153652_))))
                                           (let ((_tl153568153592_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e153570153587_)))
                                                 (_hd153569153590_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e153570153587_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd153569153590_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd153569153590_))
                                                     (___kont153653153654_
                                                      _tl153568153592_)
                                                     (___kont153655153656_))
                                                 (___kont153655153656_))))
                                         (___kont153655153656_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type153559_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _self153470_ _stx153471_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _stx153471_
                                _rator-type153559_)))))))
                (___kont153673153674_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _self153470_ _stx153471_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx153669153670_))
                (let ((_e153480153506_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx153669153670_))))
                  (let ((_tl153478153511_
                         (let () (declare (not safe)) (##cdr _e153480153506_)))
                        (_hd153479153509_
                         (let ()
                           (declare (not safe))
                           (##car _e153480153506_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl153478153511_))
                        (let ((_e153483153514_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl153478153511_))))
                          (let ((_tl153481153519_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e153483153514_)))
                                (_hd153482153517_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e153483153514_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd153482153517_))
                                (let ((_e153486153522_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd153482153517_))))
                                  (let ((_tl153484153527_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e153486153522_)))
                                        (_hd153485153525_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e153486153522_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd153485153525_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd153485153525_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl153484153527_))
                                                (let ((_e153489153530_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl153484153527_))))
                                                  (let ((_tl153487153535_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e153489153530_)))
                                                        (_hd153488153533_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e153489153530_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl153487153535_))
                                                        (___kont153671153672_
                                                         _tl153481153519_
                                                         _hd153488153533_)
                                                        (___kont153673153674_))))
                                                (___kont153673153674_))
                                            (___kont153673153674_))
                                        (___kont153673153674_))))
                                (___kont153673153674_))))
                        (___kont153673153674_))))
                (___kont153673153674_))))))
    (define gxc#!predicate::optimize-call
      (lambda (_self153423_ _ctx153424_ _stx153425_ _args153426_)
        (let* ((_g153428153438_
                (lambda (_g153429153435_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g153429153435_))))
               (_g153427153467_
                (lambda (_g153429153441_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g153429153441_))
                      (let ((_e153433153443_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g153429153441_))))
                        (let ((_hd153432153446_
                               (let ()
                                 (declare (not safe))
                                 (##car _e153433153443_)))
                              (_tl153431153448_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e153433153443_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl153431153448_))
                              ((lambda (_L153451_)
                                 (let* ((_klass153462_
                                         (let ((__tmp153928
                                                (##structure-ref
                                                 _self153423_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx153425_
                                            __tmp153928)))
                                        (_object153464_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _ctx153424_
                                            _L153451_))))
                                   (if (##structure-ref
                                        _klass153462_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp153944
                                              (let ((__tmp153945
                                                     (let ((__tmp153947
                                                            (let ((__tmp153948
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153949
                                  (##structure-ref
                                   _klass153462_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp153949 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp153948)))
                   (__tmp153946
                    (let () (declare (not safe)) (cons _object153464_ '()))))
               (declare (not safe))
               (cons __tmp153947 __tmp153946))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#struct-direct-instance?
                                                      __tmp153945))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp153944
                                          _stx153425_))
                                       (if (##structure-ref
                                            _klass153462_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp153938
                                                  (let ((__tmp153939
                                                         (let ((__tmp153941
                                                                (let ((__tmp153942
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp153943
                                      (##structure-ref
                                       _klass153462_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp153943 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp153942)))
                       (__tmp153940
                        (let ()
                          (declare (not safe))
                          (cons _object153464_ '()))))
                   (declare (not safe))
                   (cons __tmp153941 __tmp153940))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-instance?
                                                          __tmp153939))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp153938
                                              _stx153425_))
                                           (let ((__tmp153929
                                                  (let ((__tmp153930
                                                         (let ((__tmp153936
                                                                (let ((__tmp153937
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'class-instance? '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp153937)))
                       (__tmp153931
                        (let ((__tmp153933
                               (let ((__tmp153934
                                      (let ((__tmp153935
                                             (##structure-ref
                                              _self153423_
                                              '1
                                              gxc#!type::t
                                              '#f)))
                                        (declare (not safe))
                                        (cons __tmp153935 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp153934)))
                              (__tmp153932
                               (let ()
                                 (declare (not safe))
                                 (cons _object153464_ '()))))
                          (declare (not safe))
                          (cons __tmp153933 __tmp153932))))
                   (declare (not safe))
                   (cons __tmp153936 __tmp153931))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#call
                                                          __tmp153930))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp153929
                                              _stx153425_))))))
                               _hd153432153446_)
                              (let ()
                                (declare (not safe))
                                (_g153428153438_ _g153429153441_)))))
                      (let ()
                        (declare (not safe))
                        (_g153428153438_ _g153429153441_))))))
          (declare (not safe))
          (_g153427153467_ _args153426_))))
    (define gxc#!predicate::optimize-call::specialize
      (lambda (__klass153626 __method-table153627)
        (let ((__id153628
               (let ((__slot153629
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass153626 'id))))
                 (if __slot153629
                     __slot153629
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self153423_ _ctx153424_ _stx153425_ _args153426_)
            (let* ((_g153428153438_
                    (lambda (_g153429153435_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g153429153435_))))
                   (_g153427153467_
                    (lambda (_g153429153441_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g153429153441_))
                          (let ((_e153433153443_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g153429153441_))))
                            (let ((_hd153432153446_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e153433153443_)))
                                  (_tl153431153448_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e153433153443_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl153431153448_))
                                  ((lambda (_L153451_)
                                     (let* ((_klass153462_
                                             (let ((__tmp153950
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self153423_
                                                       __id153628
                                                       __klass153626
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx153425_
                                                __tmp153950)))
                                            (_object153464_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _ctx153424_
                                                _L153451_))))
                                       (if (##structure-ref
                                            _klass153462_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp153966
                                                  (let ((__tmp153967
                                                         (let ((__tmp153969
                                                                (let ((__tmp153970
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp153971
                                      (##structure-ref
                                       _klass153462_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp153971 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp153970)))
                       (__tmp153968
                        (let ()
                          (declare (not safe))
                          (cons _object153464_ '()))))
                   (declare (not safe))
                   (cons __tmp153969 __tmp153968))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-direct-instance?
                                                          __tmp153967))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp153966
                                              _stx153425_))
                                           (if (##structure-ref
                                                _klass153462_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp153960
                                                      (let ((__tmp153961
                                                             (let ((__tmp153963
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp153964
                                   (let ((__tmp153965
                                          (##structure-ref
                                           _klass153462_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp153965 '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp153964)))
                           (__tmp153962
                            (let ()
                              (declare (not safe))
                              (cons _object153464_ '()))))
                       (declare (not safe))
                       (cons __tmp153963 __tmp153962))))
                (declare (not safe))
                (cons '%#struct-instance? __tmp153961))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp153960
                                                  _stx153425_))
                                               (let ((__tmp153951
                                                      (let ((__tmp153952
                                                             (let ((__tmp153958
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp153959
                                   (let ()
                                     (declare (not safe))
                                     (cons 'class-instance? '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp153959)))
                           (__tmp153953
                            (let ((__tmp153955
                                   (let ((__tmp153956
                                          (let ((__tmp153957
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _self153423_
                                                    __id153628
                                                    __klass153626
                                                    '#f))))
                                            (declare (not safe))
                                            (cons __tmp153957 '()))))
                                     (declare (not safe))
                                     (cons '%#ref __tmp153956)))
                                  (__tmp153954
                                   (let ()
                                     (declare (not safe))
                                     (cons _object153464_ '()))))
                              (declare (not safe))
                              (cons __tmp153955 __tmp153954))))
                       (declare (not safe))
                       (cons __tmp153958 __tmp153953))))
                (declare (not safe))
                (cons '%#call __tmp153952))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp153951
                                                  _stx153425_))))))
                                   _hd153432153446_)
                                  (let ()
                                    (declare (not safe))
                                    (_g153428153438_ _g153429153441_)))))
                          (let ()
                            (declare (not safe))
                            (_g153428153438_ _g153429153441_))))))
              (declare (not safe))
              (_g153427153467_ _args153426_))))))
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
      (lambda (_self153138_ _ctx153139_ _stx153140_ _args153141_)
        (let* ((_klass153143_
                (let ((__tmp153972
                       (##structure-ref _self153138_ '1 gxc#!type::t '#f)))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _stx153140_ __tmp153972)))
               (_fields153145_
                (length (##structure-ref _klass153143_ '5 gxc#!class::t '#f)))
               (_args153151_
                (map (lambda (_g153146153148_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _ctx153139_ _g153146153148_)))
                     _args153141_))
               (_inline-make-object153153_
                (let ((__tmp153973
                       (let ((__tmp153979
                              (let ((__tmp153980
                                     (let ()
                                       (declare (not safe))
                                       (cons '##structure '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp153980)))
                             (__tmp153974
                              (let ((__tmp153976
                                     (let ((__tmp153977
                                            (let ((__tmp153978
                                                   (##structure-ref
                                                    _self153138_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp153978 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp153977)))
                                    (__tmp153975
                                     (make-list _fields153145_ '(%#quote #f))))
                                (declare (not safe))
                                (cons __tmp153976 __tmp153975))))
                         (declare (not safe))
                         (cons __tmp153979 __tmp153974))))
                  (declare (not safe))
                  (cons '%#call __tmp153973))))
          (let ((_$e153156_
                 (##structure-ref _klass153143_ '6 gxc#!class::t '#f)))
            (if _$e153156_
                ((lambda (_ctor153159_)
                   (let ((_$obj153161_
                          (let ((__tmp154081 (gensym '__obj)))
                            (declare (not safe))
                            (make-symbol__0 __tmp154081)))
                         (_ctor-impl153162_
                          (let ()
                            (declare (not safe))
                            (gxc#!class-lookup-method
                             _klass153143_
                             _ctor153159_))))
                     (let ((__tmp154082
                            (let ((__tmp154083
                                   (let ((__tmp154151
                                          (let ((__tmp154152
                                                 (let ((__tmp154154
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj153161_
                                                                '())))
                                                       (__tmp154153
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _inline-make-object153153_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp154154
                                                         __tmp154153))))
                                            (declare (not safe))
                                            (cons __tmp154152 '())))
                                         (__tmp154084
                                          (let ((__tmp154085
                                                 (let ((__tmp154086
                                                        (let ((__tmp154090
                                                               (if _ctor-impl153162_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp154145
                                  (let ((__tmp154149
                                         (let ((__tmp154150
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _ctor-impl153162_
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp154150)))
                                        (__tmp154146
                                         (let ((__tmp154147
                                                (let ((__tmp154148
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj153161_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp154148))))
                                           (declare (not safe))
                                           (cons __tmp154147 _args153151_))))
                                    (declare (not safe))
                                    (cons __tmp154149 __tmp154146))))
                             (declare (not safe))
                             (cons '%#call __tmp154145))
                           (let* ((_$ctor153164_
                                   (let ((__tmp154091 (gensym '__constructor)))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp154091)))
                                  (__tmp154092
                                   (let ((__tmp154127
                                          (let ((__tmp154128
                                                 (let ((__tmp154144
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$ctor153164_
                                                                '())))
                                                       (__tmp154129
                                                        (let ((__tmp154130
                                                               (let ((__tmp154131
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp154142
                                     (let ((__tmp154143
                                            (let ()
                                              (declare (not safe))
                                              (cons 'direct-method-ref '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp154143)))
                                    (__tmp154132
                                     (let ((__tmp154139
                                            (let ((__tmp154140
                                                   (let ((__tmp154141
                                                          (##structure-ref
                                                           _self153138_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp154141 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp154140)))
                                           (__tmp154133
                                            (let ((__tmp154137
                                                   (let ((__tmp154138
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj153161_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp154138)))
                                                  (__tmp154134
                                                   (let ((__tmp154135
                                                          (let ((__tmp154136
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _ctor153159_ '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp154136))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp154135 '()))))
                                              (declare (not safe))
                                              (cons __tmp154137 __tmp154134))))
                                       (declare (not safe))
                                       (cons __tmp154139 __tmp154133))))
                                (declare (not safe))
                                (cons __tmp154142 __tmp154132))))
                         (declare (not safe))
                         (cons '%#call __tmp154131))))
                  (declare (not safe))
                  (cons __tmp154130 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp154144
                                                         __tmp154129))))
                                            (declare (not safe))
                                            (cons __tmp154128 '())))
                                         (__tmp154093
                                          (let ((__tmp154094
                                                 (let ((__tmp154095
                                                        (let ((__tmp154125
                                                               (let ((__tmp154126
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$ctor153164_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp154126)))
                      (__tmp154096
                       (let ((__tmp154118
                              (let ((__tmp154119
                                     (let ((__tmp154123
                                            (let ((__tmp154124
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$ctor153164_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp154124)))
                                           (__tmp154120
                                            (let ((__tmp154121
                                                   (let ((__tmp154122
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj153161_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp154122))))
                                              (declare (not safe))
                                              (cons __tmp154121
                                                    _args153151_))))
                                       (declare (not safe))
                                       (cons __tmp154123 __tmp154120))))
                                (declare (not safe))
                                (cons '%#call __tmp154119)))
                             (__tmp154097
                              (let ((__tmp154098
                                     (let ((__tmp154099
                                            (let ((__tmp154116
                                                   (let ((__tmp154117
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp154117)))
                                                  (__tmp154100
                                                   (let ((__tmp154114
                                                          (let ((__tmp154115
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons '"missing constructor method implementation"
                                 '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp154115)))
                 (__tmp154101
                  (let ((__tmp154112
                         (let ((__tmp154113
                                (let ()
                                  (declare (not safe))
                                  (cons 'class: '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp154113)))
                        (__tmp154102
                         (let ((__tmp154109
                                (let ((__tmp154110
                                       (let ((__tmp154111
                                              (##structure-ref
                                               _self153138_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp154111 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp154110)))
                               (__tmp154103
                                (let ((__tmp154107
                                       (let ((__tmp154108
                                              (let ()
                                                (declare (not safe))
                                                (cons 'method: '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp154108)))
                                      (__tmp154104
                                       (let ((__tmp154105
                                              (let ((__tmp154106
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _ctor153159_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#quote __tmp154106))))
                                         (declare (not safe))
                                         (cons __tmp154105 '()))))
                                  (declare (not safe))
                                  (cons __tmp154107 __tmp154104))))
                           (declare (not safe))
                           (cons __tmp154109 __tmp154103))))
                    (declare (not safe))
                    (cons __tmp154112 __tmp154102))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp154114
                                                           __tmp154101))))
                                              (declare (not safe))
                                              (cons __tmp154116 __tmp154100))))
                                       (declare (not safe))
                                       (cons '%#call __tmp154099))))
                                (declare (not safe))
                                (cons __tmp154098 '()))))
                         (declare (not safe))
                         (cons __tmp154118 __tmp154097))))
                  (declare (not safe))
                  (cons __tmp154125 __tmp154096))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#if __tmp154095))))
                                            (declare (not safe))
                                            (cons __tmp154094 '()))))
                                     (declare (not safe))
                                     (cons __tmp154127 __tmp154093))))
                             (declare (not safe))
                             (cons '%#let-values __tmp154092))))
                      (__tmp154087
                       (let ((__tmp154088
                              (let ((__tmp154089
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj153161_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp154089))))
                         (declare (not safe))
                         (cons __tmp154088 '()))))
                  (declare (not safe))
                  (cons __tmp154090 __tmp154087))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#begin
                                                         __tmp154086))))
                                            (declare (not safe))
                                            (cons __tmp154085 '()))))
                                     (declare (not safe))
                                     (cons __tmp154151 __tmp154084))))
                              (declare (not safe))
                              (cons '%#let-values __tmp154083))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp154082 _stx153140_))))
                 _$e153156_)
                (let ((_$e153166_
                       (##structure-ref _klass153143_ '9 gxc#!class::t '#f)))
                  (if _$e153166_
                      ((lambda (_metaclass153169_)
                         (let* ((_$obj153171_
                                 (let ((__tmp154043 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp154043)))
                                (_metakons153173_
                                 (let ((__tmp154044
                                        (let ()
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-class
                                           _stx153140_
                                           _metaclass153169_))))
                                   (declare (not safe))
                                   (gxc#!class-lookup-method
                                    __tmp154044
                                    'instance-init!))))
                           (let ((__tmp154045
                                  (let ((__tmp154046
                                         (let ((__tmp154077
                                                (let ((__tmp154078
                                                       (let ((__tmp154080
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj153171_ '())))
                     (__tmp154079
                      (let ()
                        (declare (not safe))
                        (cons _inline-make-object153153_ '()))))
                 (declare (not safe))
                 (cons __tmp154080 __tmp154079))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp154078 '())))
                                               (__tmp154047
                                                (let ((__tmp154048
                                                       (let ((__tmp154049
                                                              (let ((__tmp154053
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if _metakons153173_
                                 (let ((__tmp154067
                                        (let ((__tmp154075
                                               (let ((__tmp154076
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _metakons153173_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp154076)))
                                              (__tmp154068
                                               (let ((__tmp154072
                                                      (let ((__tmp154073
                                                             (let ((__tmp154074
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self153138_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp154074 '()))))
                (declare (not safe))
                (cons '%#ref __tmp154073)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp154069
                                                      (let ((__tmp154070
                                                             (let ((__tmp154071
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _$obj153171_ '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp154071))))
                (declare (not safe))
                (cons __tmp154070 _args153151_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp154072
                                                       __tmp154069))))
                                          (declare (not safe))
                                          (cons __tmp154075 __tmp154068))))
                                   (declare (not safe))
                                   (cons '%#call __tmp154067))
                                 (let ((__tmp154054
                                        (let ((__tmp154065
                                               (let ((__tmp154066
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'call-method
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp154066)))
                                              (__tmp154055
                                               (let ((__tmp154062
                                                      (let ((__tmp154063
                                                             (let ((__tmp154064
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self153138_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp154064 '()))))
                (declare (not safe))
                (cons '%#ref __tmp154063)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp154056
                                                      (let ((__tmp154060
                                                             (let ((__tmp154061
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'instance-init! '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp154061)))
                    (__tmp154057
                     (let ((__tmp154058
                            (let ((__tmp154059
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj153171_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp154059))))
                       (declare (not safe))
                       (cons __tmp154058 _args153151_))))
                (declare (not safe))
                (cons __tmp154060 __tmp154057))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp154062
                                                       __tmp154056))))
                                          (declare (not safe))
                                          (cons __tmp154065 __tmp154055))))
                                   (declare (not safe))
                                   (cons '%#call __tmp154054))))
                            (__tmp154050
                             (let ((__tmp154051
                                    (let ((__tmp154052
                                           (let ()
                                             (declare (not safe))
                                             (cons _$obj153171_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp154052))))
                               (declare (not safe))
                               (cons __tmp154051 '()))))
                        (declare (not safe))
                        (cons __tmp154053 __tmp154050))))
                 (declare (not safe))
                 (cons '%#begin __tmp154049))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp154048 '()))))
                                           (declare (not safe))
                                           (cons __tmp154077 __tmp154047))))
                                    (declare (not safe))
                                    (cons '%#let-values __tmp154046))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp154045 _stx153140_))))
                       _$e153166_)
                      (if (##structure-ref _klass153143_ '7 gxc#!class::t '#f)
                          (if (fx= (length _args153151_) _fields153145_)
                              (let ((__tmp154035
                                     (let ((__tmp154036
                                            (let ((__tmp154041
                                                   (let ((__tmp154042
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp154042)))
                                                  (__tmp154037
                                                   (let ((__tmp154038
                                                          (let ((__tmp154039
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp154040
                                (##structure-ref
                                 _self153138_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (cons __tmp154040 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp154039))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp154038
                                                           _args153151_))))
                                              (declare (not safe))
                                              (cons __tmp154041 __tmp154037))))
                                       (declare (not safe))
                                       (cons '%#call __tmp154036))))
                                (declare (not safe))
                                (gxc#xform-wrap-source
                                 __tmp154035
                                 _stx153140_))
                              (let ((__tmp154034
                                     (##structure-ref
                                      _self153138_
                                      '1
                                      gxc#!type::t
                                      '#f))
                                    (__tmp154033
                                     (length (##structure-ref
                                              _klass153143_
                                              '5
                                              gxc#!class::t
                                              '#f))))
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"illegal struct constructor application; arity mismatch"
                                 _stx153140_
                                 __tmp154034
                                 __tmp154033)))
                          (let ((_$obj153176_
                                 (let ((__tmp153981 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp153981))))
                            (let _lp153178_ ((_rest153180_ _args153151_)
                                             (_initializers153181_ '()))
                              (let* ((___stx153707153708_ _rest153180_)
                                     (_g153185153206_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx153707153708_)))))
                                (let ((___kont153709153710_
                                       (lambda (_L153260_ _L153261_ _L153262_)
                                         (let* ((_slot153293_
                                                 (let ((__tmp153982
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L153262_))))
                                                   (declare (not safe))
                                                   (keyword->symbol
                                                    __tmp153982)))
                                                (_off153295_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass153143_
                                                    _slot153293_))))
                                           (if _off153295_
                                               (let ((__tmp153984
                                                      (let ((__tmp153985
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _off153295_ _L153261_))))
                (declare (not safe))
                (cons __tmp153985 _initializers153181_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp153178_
                                                  _L153260_
                                                  __tmp153984))
                                               (let ((__tmp153983
                                                      (##structure-ref
                                                       _self153138_
                                                       '1
                                                       gxc#!type::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"unknown slot"
                                                  _stx153140_
                                                  __tmp153983
                                                  _slot153293_))))))
                                      (___kont153711153712_
                                       (lambda ()
                                         (let ((__tmp153986
                                                (let ((__tmp153987
                                                       (let ((__tmp154010
                                                              (let ((__tmp154011
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp154013
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj153176_ '())))
                                   (__tmp154012
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object153153_ '()))))
                               (declare (not safe))
                               (cons __tmp154013 __tmp154012))))
                        (declare (not safe))
                        (cons __tmp154011 '())))
                     (__tmp153988
                      (let ((__tmp153989
                             (let ((__tmp153990
                                    (let ((__tmp154007
                                           (let ((__tmp154008
                                                  (let ((__tmp154009
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj153176_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp154009))))
                                             (declare (not safe))
                                             (cons __tmp154008 '())))
                                          (__tmp153991
                                           (let ((__tmp153992
                                                  (lambda (_i153220_ _r153221_)
                                                    (let ((__tmp153993
                                                           (let ((__tmp153994
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp154004
                                 (let ((__tmp154005
                                        (let ((__tmp154006
                                               (##structure-ref
                                                _self153138_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp154006 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp154005)))
                                (__tmp153995
                                 (let ((__tmp154001
                                        (let ((__tmp154002
                                               (let ((__tmp154003
                                                      (car _i153220_)))
                                                 (declare (not safe))
                                                 (cons __tmp154003 '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp154002)))
                                       (__tmp153996
                                        (let ((__tmp153999
                                               (let ((__tmp154000
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _$obj153176_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp154000)))
                                              (__tmp153997
                                               (let ((__tmp153998
                                                      (cdr _i153220_)))
                                                 (declare (not safe))
                                                 (cons __tmp153998 '()))))
                                          (declare (not safe))
                                          (cons __tmp153999 __tmp153997))))
                                   (declare (not safe))
                                   (cons __tmp154001 __tmp153996))))
                            (declare (not safe))
                            (cons __tmp154004 __tmp153995))))
                     (declare (not safe))
                     (cons '%#struct-unchecked-set! __tmp153994))))
              (declare (not safe))
              (cons __tmp153993 _r153221_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (foldl1 __tmp153992
                                                     '()
                                                     _initializers153181_))))
                                      (declare (not safe))
                                      (foldr1 cons __tmp154007 __tmp153991))))
                               (declare (not safe))
                               (cons '%#begin __tmp153990))))
                        (declare (not safe))
                        (cons __tmp153989 '()))))
                 (declare (not safe))
                 (cons __tmp154010 __tmp153988))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp153987))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp153986
                                            _stx153140_))))
                                      (___kont153713153714_
                                       (lambda ()
                                         (let ((__tmp154014
                                                (let ((__tmp154015
                                                       (let ((__tmp154029
                                                              (let ((__tmp154030
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp154032
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj153176_ '())))
                                   (__tmp154031
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object153153_ '()))))
                               (declare (not safe))
                               (cons __tmp154032 __tmp154031))))
                        (declare (not safe))
                        (cons __tmp154030 '())))
                     (__tmp154016
                      (let ((__tmp154017
                             (let ((__tmp154018
                                    (let ((__tmp154022
                                           (let ((__tmp154023
                                                  (let ((__tmp154027
                                                         (let ((__tmp154028
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons 'class-instance-init! '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp154028)))
                (__tmp154024
                 (let ((__tmp154025
                        (let ((__tmp154026
                               (let ()
                                 (declare (not safe))
                                 (cons _$obj153176_ '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp154026))))
                   (declare (not safe))
                   (cons __tmp154025 _args153151_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp154027
                                                          __tmp154024))))
                                             (declare (not safe))
                                             (cons '%#call __tmp154023)))
                                          (__tmp154019
                                           (let ((__tmp154020
                                                  (let ((__tmp154021
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj153176_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp154021))))
                                             (declare (not safe))
                                             (cons __tmp154020 '()))))
                                      (declare (not safe))
                                      (cons __tmp154022 __tmp154019))))
                               (declare (not safe))
                               (cons '%#begin __tmp154018))))
                        (declare (not safe))
                        (cons __tmp154017 '()))))
                 (declare (not safe))
                 (cons __tmp154029 __tmp154016))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp154015))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp154014
                                            _stx153140_)))))
                                  (let* ((_g153183153223_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   ___stx153707153708_))
                                                (___kont153711153712_)
                                                (___kont153713153714_))))
                                         (___match153744153745_
                                          (lambda (_e153192153228_
                                                   _hd153191153231_
                                                   _tl153190153233_
                                                   _e153195153236_
                                                   _hd153194153239_
                                                   _tl153193153241_
                                                   _e153198153244_
                                                   _hd153197153247_
                                                   _tl153196153249_
                                                   _e153201153252_
                                                   _hd153200153255_
                                                   _tl153199153257_)
                                            (let ((_L153260_ _tl153199153257_)
                                                  (_L153261_ _hd153200153255_)
                                                  (_L153262_ _hd153197153247_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-keyword?
                                                     _L153262_))
                                                  (___kont153709153710_
                                                   _L153260_
                                                   _L153261_
                                                   _L153262_)
                                                  (___kont153713153714_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx153707153708_))
                                        (let ((_e153192153228_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx153707153708_))))
                                          (let ((_tl153190153233_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e153192153228_)))
                                                (_hd153191153231_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e153192153228_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd153191153231_))
                                                (let ((_e153195153236_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd153191153231_))))
                                                  (let ((_tl153193153241_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e153195153236_)))
                                                        (_hd153194153239_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e153195153236_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd153194153239_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#quote
                                                               _hd153194153239_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl153193153241_))
                        (let ((_e153198153244_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl153193153241_))))
                          (let ((_tl153196153249_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e153198153244_)))
                                (_hd153197153247_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e153198153244_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl153196153249_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl153190153233_))
                                    (let ((_e153201153252_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl153190153233_))))
                                      (let ((_tl153199153257_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e153201153252_)))
                                            (_hd153200153255_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e153201153252_))))
                                        (___match153744153745_
                                         _e153192153228_
                                         _hd153191153231_
                                         _tl153190153233_
                                         _e153195153236_
                                         _hd153194153239_
                                         _tl153193153241_
                                         _e153198153244_
                                         _hd153197153247_
                                         _tl153196153249_
                                         _e153201153252_
                                         _hd153200153255_
                                         _tl153199153257_)))
                                    (___kont153713153714_))
                                (___kont153713153714_))))
                        (___kont153713153714_))
                    (___kont153713153714_))
                (___kont153713153714_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont153713153714_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g153183153223_))))))))))))))))
    (define gxc#!constructor::optimize-call::specialize
      (lambda (__klass153630 __method-table153631)
        (let ((__id153632
               (let ((__slot153633
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass153630 'id))))
                 (if __slot153633
                     __slot153633
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self153138_ _ctx153139_ _stx153140_ _args153141_)
            (let* ((_klass153143_
                    (let ((__tmp154155
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _self153138_
                              __id153632
                              __klass153630
                              '#f))))
                      (declare (not safe))
                      (gxc#optimizer-resolve-class _stx153140_ __tmp154155)))
                   (_fields153145_
                    (length (##structure-ref
                             _klass153143_
                             '5
                             gxc#!class::t
                             '#f)))
                   (_args153151_
                    (map (lambda (_g153146153148_)
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _ctx153139_ _g153146153148_)))
                         _args153141_))
                   (_inline-make-object153153_
                    (let ((__tmp154156
                           (let ((__tmp154162
                                  (let ((__tmp154163
                                         (let ()
                                           (declare (not safe))
                                           (cons '##structure '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp154163)))
                                 (__tmp154157
                                  (let ((__tmp154159
                                         (let ((__tmp154160
                                                (let ((__tmp154161
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self153138_
                                                          __id153632
                                                          __klass153630
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp154161 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp154160)))
                                        (__tmp154158
                                         (make-list
                                          _fields153145_
                                          '(%#quote #f))))
                                    (declare (not safe))
                                    (cons __tmp154159 __tmp154158))))
                             (declare (not safe))
                             (cons __tmp154162 __tmp154157))))
                      (declare (not safe))
                      (cons '%#call __tmp154156))))
              (let ((_$e153156_
                     (##structure-ref _klass153143_ '6 gxc#!class::t '#f)))
                (if _$e153156_
                    ((lambda (_ctor153159_)
                       (let ((_$obj153161_
                              (let ((__tmp154264 (gensym '__obj)))
                                (declare (not safe))
                                (make-symbol__0 __tmp154264)))
                             (_ctor-impl153162_
                              (let ()
                                (declare (not safe))
                                (gxc#!class-lookup-method
                                 _klass153143_
                                 _ctor153159_))))
                         (let ((__tmp154265
                                (let ((__tmp154266
                                       (let ((__tmp154334
                                              (let ((__tmp154335
                                                     (let ((__tmp154337
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$obj153161_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp154336
                    (let ()
                      (declare (not safe))
                      (cons _inline-make-object153153_ '()))))
               (declare (not safe))
               (cons __tmp154337 __tmp154336))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp154335 '())))
                                             (__tmp154267
                                              (let ((__tmp154268
                                                     (let ((__tmp154269
                                                            (let ((__tmp154273
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _ctor-impl153162_
                               (let ((__tmp154328
                                      (let ((__tmp154332
                                             (let ((__tmp154333
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor-impl153162_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp154333)))
                                            (__tmp154329
                                             (let ((__tmp154330
                                                    (let ((__tmp154331
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$obj153161_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp154331))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp154330
                                                     _args153151_))))
                                        (declare (not safe))
                                        (cons __tmp154332 __tmp154329))))
                                 (declare (not safe))
                                 (cons '%#call __tmp154328))
                               (let* ((_$ctor153164_
                                       (let ((__tmp154274
                                              (gensym '__constructor)))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp154274)))
                                      (__tmp154275
                                       (let ((__tmp154310
                                              (let ((__tmp154311
                                                     (let ((__tmp154327
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$ctor153164_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp154312
                    (let ((__tmp154313
                           (let ((__tmp154314
                                  (let ((__tmp154325
                                         (let ((__tmp154326
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'direct-method-ref
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp154326)))
                                        (__tmp154315
                                         (let ((__tmp154322
                                                (let ((__tmp154323
                                                       (let ((__tmp154324
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self153138_
                         __id153632
                         __klass153630
                         '#f))))
                 (declare (not safe))
                 (cons __tmp154324 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp154323)))
                                               (__tmp154316
                                                (let ((__tmp154320
                                                       (let ((__tmp154321
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj153161_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp154321)))
              (__tmp154317
               (let ((__tmp154318
                      (let ((__tmp154319
                             (let ()
                               (declare (not safe))
                               (cons _ctor153159_ '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp154319))))
                 (declare (not safe))
                 (cons __tmp154318 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp154320
                                                        __tmp154317))))
                                           (declare (not safe))
                                           (cons __tmp154322 __tmp154316))))
                                    (declare (not safe))
                                    (cons __tmp154325 __tmp154315))))
                             (declare (not safe))
                             (cons '%#call __tmp154314))))
                      (declare (not safe))
                      (cons __tmp154313 '()))))
               (declare (not safe))
               (cons __tmp154327 __tmp154312))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp154311 '())))
                                             (__tmp154276
                                              (let ((__tmp154277
                                                     (let ((__tmp154278
                                                            (let ((__tmp154308
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp154309
                                  (let ()
                                    (declare (not safe))
                                    (cons _$ctor153164_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp154309)))
                          (__tmp154279
                           (let ((__tmp154301
                                  (let ((__tmp154302
                                         (let ((__tmp154306
                                                (let ((__tmp154307
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$ctor153164_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp154307)))
                                               (__tmp154303
                                                (let ((__tmp154304
                                                       (let ((__tmp154305
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj153161_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp154305))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp154304
                                                        _args153151_))))
                                           (declare (not safe))
                                           (cons __tmp154306 __tmp154303))))
                                    (declare (not safe))
                                    (cons '%#call __tmp154302)))
                                 (__tmp154280
                                  (let ((__tmp154281
                                         (let ((__tmp154282
                                                (let ((__tmp154299
                                                       (let ((__tmp154300
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'error '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp154300)))
              (__tmp154283
               (let ((__tmp154297
                      (let ((__tmp154298
                             (let ()
                               (declare (not safe))
                               (cons '"missing constructor method implementation"
                                     '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp154298)))
                     (__tmp154284
                      (let ((__tmp154295
                             (let ((__tmp154296
                                    (let ()
                                      (declare (not safe))
                                      (cons 'class: '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp154296)))
                            (__tmp154285
                             (let ((__tmp154292
                                    (let ((__tmp154293
                                           (let ((__tmp154294
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self153138_
                                                     __id153632
                                                     __klass153630
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp154294 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp154293)))
                                   (__tmp154286
                                    (let ((__tmp154290
                                           (let ((__tmp154291
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'method: '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp154291)))
                                          (__tmp154287
                                           (let ((__tmp154288
                                                  (let ((__tmp154289
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _ctor153159_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#quote
                                                          __tmp154289))))
                                             (declare (not safe))
                                             (cons __tmp154288 '()))))
                                      (declare (not safe))
                                      (cons __tmp154290 __tmp154287))))
                               (declare (not safe))
                               (cons __tmp154292 __tmp154286))))
                        (declare (not safe))
                        (cons __tmp154295 __tmp154285))))
                 (declare (not safe))
                 (cons __tmp154297 __tmp154284))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp154299
                                                        __tmp154283))))
                                           (declare (not safe))
                                           (cons '%#call __tmp154282))))
                                    (declare (not safe))
                                    (cons __tmp154281 '()))))
                             (declare (not safe))
                             (cons __tmp154301 __tmp154280))))
                      (declare (not safe))
                      (cons __tmp154308 __tmp154279))))
               (declare (not safe))
               (cons '%#if __tmp154278))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp154277 '()))))
                                         (declare (not safe))
                                         (cons __tmp154310 __tmp154276))))
                                 (declare (not safe))
                                 (cons '%#let-values __tmp154275))))
                          (__tmp154270
                           (let ((__tmp154271
                                  (let ((__tmp154272
                                         (let ()
                                           (declare (not safe))
                                           (cons _$obj153161_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp154272))))
                             (declare (not safe))
                             (cons __tmp154271 '()))))
                      (declare (not safe))
                      (cons __tmp154273 __tmp154270))))
               (declare (not safe))
               (cons '%#begin __tmp154269))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp154268 '()))))
                                         (declare (not safe))
                                         (cons __tmp154334 __tmp154267))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp154266))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp154265 _stx153140_))))
                     _$e153156_)
                    (let ((_$e153166_
                           (##structure-ref
                            _klass153143_
                            '9
                            gxc#!class::t
                            '#f)))
                      (if _$e153166_
                          ((lambda (_metaclass153169_)
                             (let* ((_$obj153171_
                                     (let ((__tmp154226 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp154226)))
                                    (_metakons153173_
                                     (let ((__tmp154227
                                            (let ()
                                              (declare (not safe))
                                              (gxc#optimizer-resolve-class
                                               _stx153140_
                                               _metaclass153169_))))
                                       (declare (not safe))
                                       (gxc#!class-lookup-method
                                        __tmp154227
                                        'instance-init!))))
                               (let ((__tmp154228
                                      (let ((__tmp154229
                                             (let ((__tmp154260
                                                    (let ((__tmp154261
                                                           (let ((__tmp154263
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj153171_ '())))
                         (__tmp154262
                          (let ()
                            (declare (not safe))
                            (cons _inline-make-object153153_ '()))))
                     (declare (not safe))
                     (cons __tmp154263 __tmp154262))))
              (declare (not safe))
              (cons __tmp154261 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp154230
                                                    (let ((__tmp154231
                                                           (let ((__tmp154232
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp154236
                                 (if _metakons153173_
                                     (let ((__tmp154250
                                            (let ((__tmp154258
                                                   (let ((__tmp154259
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _metakons153173_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp154259)))
                                                  (__tmp154251
                                                   (let ((__tmp154255
                                                          (let ((__tmp154256
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp154257
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self153138_
                                   __id153632
                                   __klass153630
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp154257 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp154256)))
                 (__tmp154252
                  (let ((__tmp154253
                         (let ((__tmp154254
                                (let ()
                                  (declare (not safe))
                                  (cons _$obj153171_ '()))))
                           (declare (not safe))
                           (cons '%#ref __tmp154254))))
                    (declare (not safe))
                    (cons __tmp154253 _args153151_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp154255
                                                           __tmp154252))))
                                              (declare (not safe))
                                              (cons __tmp154258 __tmp154251))))
                                       (declare (not safe))
                                       (cons '%#call __tmp154250))
                                     (let ((__tmp154237
                                            (let ((__tmp154248
                                                   (let ((__tmp154249
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'call-method
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp154249)))
                                                  (__tmp154238
                                                   (let ((__tmp154245
                                                          (let ((__tmp154246
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp154247
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self153138_
                                   __id153632
                                   __klass153630
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp154247 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp154246)))
                 (__tmp154239
                  (let ((__tmp154243
                         (let ((__tmp154244
                                (let ()
                                  (declare (not safe))
                                  (cons 'instance-init! '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp154244)))
                        (__tmp154240
                         (let ((__tmp154241
                                (let ((__tmp154242
                                       (let ()
                                         (declare (not safe))
                                         (cons _$obj153171_ '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp154242))))
                           (declare (not safe))
                           (cons __tmp154241 _args153151_))))
                    (declare (not safe))
                    (cons __tmp154243 __tmp154240))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp154245
                                                           __tmp154239))))
                                              (declare (not safe))
                                              (cons __tmp154248 __tmp154238))))
                                       (declare (not safe))
                                       (cons '%#call __tmp154237))))
                                (__tmp154233
                                 (let ((__tmp154234
                                        (let ((__tmp154235
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$obj153171_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp154235))))
                                   (declare (not safe))
                                   (cons __tmp154234 '()))))
                            (declare (not safe))
                            (cons __tmp154236 __tmp154233))))
                     (declare (not safe))
                     (cons '%#begin __tmp154232))))
              (declare (not safe))
              (cons __tmp154231 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp154260
                                                     __tmp154230))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp154229))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp154228
                                  _stx153140_))))
                           _$e153166_)
                          (if (##structure-ref
                               _klass153143_
                               '7
                               gxc#!class::t
                               '#f)
                              (if (fx= (length _args153151_) _fields153145_)
                                  (let ((__tmp154218
                                         (let ((__tmp154219
                                                (let ((__tmp154224
                                                       (let ((__tmp154225
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '##structure '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp154225)))
              (__tmp154220
               (let ((__tmp154221
                      (let ((__tmp154222
                             (let ((__tmp154223
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _self153138_
                                       __id153632
                                       __klass153630
                                       '#f))))
                               (declare (not safe))
                               (cons __tmp154223 '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp154222))))
                 (declare (not safe))
                 (cons __tmp154221 _args153151_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp154224
                                                        __tmp154220))))
                                           (declare (not safe))
                                           (cons '%#call __tmp154219))))
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp154218
                                     _stx153140_))
                                  (let ((__tmp154217
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _self153138_
                                            __id153632
                                            __klass153630
                                            '#f)))
                                        (__tmp154216
                                         (length (##structure-ref
                                                  _klass153143_
                                                  '5
                                                  gxc#!class::t
                                                  '#f))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"illegal struct constructor application; arity mismatch"
                                     _stx153140_
                                     __tmp154217
                                     __tmp154216)))
                              (let ((_$obj153176_
                                     (let ((__tmp154164 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp154164))))
                                (let _lp153178_ ((_rest153180_ _args153151_)
                                                 (_initializers153181_ '()))
                                  (let* ((___stx153749153750_ _rest153180_)
                                         (_g153185153206_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               ___stx153749153750_)))))
                                    (let ((___kont153751153752_
                                           (lambda (_L153260_
                                                    _L153261_
                                                    _L153262_)
                                             (let* ((_slot153293_
                                                     (let ((__tmp154165
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _L153262_))))
                                                       (declare (not safe))
                                                       (keyword->symbol
                                                        __tmp154165)))
                                                    (_off153295_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass153143_
                                                        _slot153293_))))
                                               (if _off153295_
                                                   (let ((__tmp154167
                                                          (let ((__tmp154168
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _off153295_ _L153261_))))
                    (declare (not safe))
                    (cons __tmp154168 _initializers153181_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp153178_
                                                      _L153260_
                                                      __tmp154167))
                                                   (let ((__tmp154166
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _self153138_
                                                             __id153632
                                                             __klass153630
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"unknown slot"
                                                      _stx153140_
                                                      __tmp154166
                                                      _slot153293_))))))
                                          (___kont153753153754_
                                           (lambda ()
                                             (let ((__tmp154169
                                                    (let ((__tmp154170
                                                           (let ((__tmp154193
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp154194
                                 (let ((__tmp154196
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj153176_ '())))
                                       (__tmp154195
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object153153_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp154196 __tmp154195))))
                            (declare (not safe))
                            (cons __tmp154194 '())))
                         (__tmp154171
                          (let ((__tmp154172
                                 (let ((__tmp154173
                                        (let ((__tmp154190
                                               (let ((__tmp154191
                                                      (let ((__tmp154192
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj153176_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp154192))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp154191 '())))
                                              (__tmp154174
                                               (let ((__tmp154175
                                                      (lambda (_i153220_
                                                               _r153221_)
                                                        (let ((__tmp154176
                                                               (let ((__tmp154177
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp154187
                                     (let ((__tmp154188
                                            (let ((__tmp154189
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self153138_
                                                      __id153632
                                                      __klass153630
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp154189 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp154188)))
                                    (__tmp154178
                                     (let ((__tmp154184
                                            (let ((__tmp154185
                                                   (let ((__tmp154186
                                                          (car _i153220_)))
                                                     (declare (not safe))
                                                     (cons __tmp154186 '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp154185)))
                                           (__tmp154179
                                            (let ((__tmp154182
                                                   (let ((__tmp154183
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj153176_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp154183)))
                                                  (__tmp154180
                                                   (let ((__tmp154181
                                                          (cdr _i153220_)))
                                                     (declare (not safe))
                                                     (cons __tmp154181 '()))))
                                              (declare (not safe))
                                              (cons __tmp154182 __tmp154180))))
                                       (declare (not safe))
                                       (cons __tmp154184 __tmp154179))))
                                (declare (not safe))
                                (cons __tmp154187 __tmp154178))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-set! __tmp154177))))
                  (declare (not safe))
                  (cons __tmp154176 _r153221_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl1 __tmp154175
                                                         '()
                                                         _initializers153181_))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp154190
                                                  __tmp154174))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp154173))))
                            (declare (not safe))
                            (cons __tmp154172 '()))))
                     (declare (not safe))
                     (cons __tmp154193 __tmp154171))))
              (declare (not safe))
              (cons '%#let-values __tmp154170))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp154169
                                                _stx153140_))))
                                          (___kont153755153756_
                                           (lambda ()
                                             (let ((__tmp154197
                                                    (let ((__tmp154198
                                                           (let ((__tmp154212
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp154213
                                 (let ((__tmp154215
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj153176_ '())))
                                       (__tmp154214
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object153153_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp154215 __tmp154214))))
                            (declare (not safe))
                            (cons __tmp154213 '())))
                         (__tmp154199
                          (let ((__tmp154200
                                 (let ((__tmp154201
                                        (let ((__tmp154205
                                               (let ((__tmp154206
                                                      (let ((__tmp154210
                                                             (let ((__tmp154211
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'class-instance-init! '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp154211)))
                    (__tmp154207
                     (let ((__tmp154208
                            (let ((__tmp154209
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj153176_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp154209))))
                       (declare (not safe))
                       (cons __tmp154208 _args153151_))))
                (declare (not safe))
                (cons __tmp154210 __tmp154207))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp154206)))
                                              (__tmp154202
                                               (let ((__tmp154203
                                                      (let ((__tmp154204
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj153176_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp154204))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp154203 '()))))
                                          (declare (not safe))
                                          (cons __tmp154205 __tmp154202))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp154201))))
                            (declare (not safe))
                            (cons __tmp154200 '()))))
                     (declare (not safe))
                     (cons __tmp154212 __tmp154199))))
              (declare (not safe))
              (cons '%#let-values __tmp154198))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp154197
                                                _stx153140_)))))
                                      (let* ((_g153183153223_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       ___stx153749153750_))
                                                    (___kont153753153754_)
                                                    (___kont153755153756_))))
                                             (___match153786153787_
                                              (lambda (_e153192153228_
                                                       _hd153191153231_
                                                       _tl153190153233_
                                                       _e153195153236_
                                                       _hd153194153239_
                                                       _tl153193153241_
                                                       _e153198153244_
                                                       _hd153197153247_
                                                       _tl153196153249_
                                                       _e153201153252_
                                                       _hd153200153255_
                                                       _tl153199153257_)
                                                (let ((_L153260_
                                                       _tl153199153257_)
                                                      (_L153261_
                                                       _hd153200153255_)
                                                      (_L153262_
                                                       _hd153197153247_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-keyword?
                                                         _L153262_))
                                                      (___kont153751153752_
                                                       _L153260_
                                                       _L153261_
                                                       _L153262_)
                                                      (___kont153755153756_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               ___stx153749153750_))
                                            (let ((_e153192153228_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      ___stx153749153750_))))
                                              (let ((_tl153190153233_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e153192153228_)))
                                                    (_hd153191153231_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e153192153228_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd153191153231_))
                                                    (let ((_e153195153236_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd153191153231_))))
                                                      (let ((_tl153193153241_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e153195153236_)))
                    (_hd153194153239_
                     (let () (declare (not safe)) (##car _e153195153236_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd153194153239_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd153194153239_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl153193153241_))
                            (let ((_e153198153244_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl153193153241_))))
                              (let ((_tl153196153249_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e153198153244_)))
                                    (_hd153197153247_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e153198153244_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl153196153249_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl153190153233_))
                                        (let ((_e153201153252_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl153190153233_))))
                                          (let ((_tl153199153257_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e153201153252_)))
                                                (_hd153200153255_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e153201153252_))))
                                            (___match153786153787_
                                             _e153192153228_
                                             _hd153191153231_
                                             _tl153190153233_
                                             _e153195153236_
                                             _hd153194153239_
                                             _tl153193153241_
                                             _e153198153244_
                                             _hd153197153247_
                                             _tl153196153249_
                                             _e153201153252_
                                             _hd153200153255_
                                             _tl153199153257_)))
                                        (___kont153755153756_))
                                    (___kont153755153756_))))
                            (___kont153755153756_))
                        (___kont153755153756_))
                    (___kont153755153756_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont153755153756_))))
                                            (let ()
                                              (declare (not safe))
                                              (_g153183153223_))))))))))))))))))
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
      (lambda (_self152960_ _ctx152961_ _stx152962_ _args152963_)
        (let* ((_g152965152975_
                (lambda (_g152966152972_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g152966152972_))))
               (_g152964153013_
                (lambda (_g152966152978_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g152966152978_))
                      (let ((_e152970152980_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g152966152978_))))
                        (let ((_hd152969152983_
                               (let ()
                                 (declare (not safe))
                                 (##car _e152970152980_)))
                              (_tl152968152985_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e152970152980_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl152968152985_))
                              ((lambda (_L152988_)
                                 (let* ((_klass152999_
                                         (let ((__tmp154338
                                                (##structure-ref
                                                 _self152960_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx152962_
                                            __tmp154338)))
                                        (_field153001_
                                         (let ((__tmp154339
                                                (##structure-ref
                                                 _self152960_
                                                 '2
                                                 gxc#!accessor::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _klass152999_
                                            __tmp154339)))
                                        (_object153003_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _ctx152961_
                                            _L152988_))))
                                   (if (##structure-ref
                                        _klass152999_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp154416
                                              (let ((__tmp154425
                                                     (if (##structure-ref
                                                          _self152960_
                                                          '3
                                                          gxc#!accessor::t
                                                          '#f)
                                                         '%#struct-direct-ref
                                                         '%#struct-unchecked-ref))
                                                    (__tmp154417
                                                     (let ((__tmp154422
                                                            (let ((__tmp154423
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp154424
                                  (##structure-ref
                                   _self152960_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp154424 '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp154423)))
                   (__tmp154418
                    (let ((__tmp154420
                           (let ((__tmp154421
                                  (let ()
                                    (declare (not safe))
                                    (cons _field153001_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp154421)))
                          (__tmp154419
                           (let ()
                             (declare (not safe))
                             (cons _object153003_ '()))))
                      (declare (not safe))
                      (cons __tmp154420 __tmp154419))))
               (declare (not safe))
               (cons __tmp154422 __tmp154418))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp154425
                                                      __tmp154417))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp154416
                                          _stx152962_))
                                       (if (##structure-ref
                                            _klass152999_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp154406
                                                  (let ((__tmp154415
                                                         (if (##structure-ref
                                                              _self152960_
                                                              '3
                                                              gxc#!accessor::t
                                                              '#f)
                                                             '%#struct-ref
                                                             '%#struct-unchecked-ref))
                                                        (__tmp154407
                                                         (let ((__tmp154412
                                                                (let ((__tmp154413
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp154414
                                      (##structure-ref
                                       _self152960_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp154414 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp154413)))
                       (__tmp154408
                        (let ((__tmp154410
                               (let ((__tmp154411
                                      (let ()
                                        (declare (not safe))
                                        (cons _field153001_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp154411)))
                              (__tmp154409
                               (let ()
                                 (declare (not safe))
                                 (cons _object153003_ '()))))
                          (declare (not safe))
                          (cons __tmp154410 __tmp154409))))
                   (declare (not safe))
                   (cons __tmp154412 __tmp154408))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp154415
                                                          __tmp154407))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp154406
                                              _stx152962_))
                                           (let ((_$e153006_
                                                  (let ((__tmp154340
                                                         (##structure-ref
                                                          _self152960_
                                                          '2
                                                          gxc#!accessor::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _klass152999_
                                                     __tmp154340))))
                                             (if _$e153006_
                                                 ((lambda (_klass153009_)
                                                    (let ((__tmp154396
                                                           (let ((__tmp154405
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##structure-ref
                               _self152960_
                               '3
                               gxc#!accessor::t
                               '#f)
                              '%#struct-ref
                              '%#struct-unchecked-ref))
                         (__tmp154397
                          (let ((__tmp154402
                                 (let ((__tmp154403
                                        (let ((__tmp154404
                                               (##structure-ref
                                                _self152960_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp154404 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp154403)))
                                (__tmp154398
                                 (let ((__tmp154400
                                        (let ((__tmp154401
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _field153001_ '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp154401)))
                                       (__tmp154399
                                        (let ()
                                          (declare (not safe))
                                          (cons _object153003_ '()))))
                                   (declare (not safe))
                                   (cons __tmp154400 __tmp154399))))
                            (declare (not safe))
                            (cons __tmp154402 __tmp154398))))
                     (declare (not safe))
                     (cons __tmp154405 __tmp154397))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp154396 _stx152962_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e153006_)
                                                 (if (##structure-ref
                                                      _self152960_
                                                      '3
                                                      gxc#!accessor::t
                                                      '#f)
                                                     (let ((__tmp154350
                                                            (let* ((_$obj153011_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp154351 (gensym '__obj)))
                              (declare (not safe))
                              (make-symbol__0 __tmp154351)))
                           (__tmp154352
                            (let ((__tmp154392
                                   (let ((__tmp154393
                                          (let ((__tmp154395
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _$obj153011_ '())))
                                                (__tmp154394
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _object153003_ '()))))
                                            (declare (not safe))
                                            (cons __tmp154395 __tmp154394))))
                                     (declare (not safe))
                                     (cons __tmp154393 '())))
                                  (__tmp154353
                                   (let ((__tmp154354
                                          (let ((__tmp154355
                                                 (let ((__tmp154384
                                                        (let ((__tmp154385
                                                               (let ((__tmp154389
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp154390
                                     (let ((__tmp154391
                                            (##structure-ref
                                             _klass152999_
                                             '1
                                             gxc#!type::t
                                             '#f)))
                                       (declare (not safe))
                                       (cons __tmp154391 '()))))
                                (declare (not safe))
                                (cons '%#quote __tmp154390)))
                             (__tmp154386
                              (let ((__tmp154387
                                     (let ((__tmp154388
                                            (let ()
                                              (declare (not safe))
                                              (cons _$obj153011_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp154388))))
                                (declare (not safe))
                                (cons __tmp154387 '()))))
                         (declare (not safe))
                         (cons __tmp154389 __tmp154386))))
                  (declare (not safe))
                  (cons '%#struct-direct-instance? __tmp154385)))
               (__tmp154356
                (let ((__tmp154373
                       (let ((__tmp154374
                              (let ((__tmp154381
                                     (let ((__tmp154382
                                            (let ((__tmp154383
                                                   (##structure-ref
                                                    _self152960_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp154383 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp154382)))
                                    (__tmp154375
                                     (let ((__tmp154379
                                            (let ((__tmp154380
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field153001_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp154380)))
                                           (__tmp154376
                                            (let ((__tmp154377
                                                   (let ((__tmp154378
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj153011_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp154378))))
                                              (declare (not safe))
                                              (cons __tmp154377 '()))))
                                       (declare (not safe))
                                       (cons __tmp154379 __tmp154376))))
                                (declare (not safe))
                                (cons __tmp154381 __tmp154375))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp154374)))
                      (__tmp154357
                       (let ((__tmp154358
                              (let ((__tmp154359
                                     (let ((__tmp154371
                                            (let ((__tmp154372
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'class-slot-ref
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp154372)))
                                           (__tmp154360
                                            (let ((__tmp154368
                                                   (let ((__tmp154369
                                                          (let ((__tmp154370
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref _self152960_ '1 gxc#!type::t '#f)))
                    (declare (not safe))
                    (cons __tmp154370 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp154369)))
                                                  (__tmp154361
                                                   (let ((__tmp154366
                                                          (let ((__tmp154367
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj153011_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp154367)))
                 (__tmp154362
                  (let ((__tmp154363
                         (let ((__tmp154364
                                (let ((__tmp154365
                                       (##structure-ref
                                        _self152960_
                                        '2
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (cons __tmp154365 '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp154364))))
                    (declare (not safe))
                    (cons __tmp154363 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp154366
                                                           __tmp154362))))
                                              (declare (not safe))
                                              (cons __tmp154368 __tmp154361))))
                                       (declare (not safe))
                                       (cons __tmp154371 __tmp154360))))
                                (declare (not safe))
                                (cons '%#call __tmp154359))))
                         (declare (not safe))
                         (cons __tmp154358 '()))))
                  (declare (not safe))
                  (cons __tmp154373 __tmp154357))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp154384
                                                         __tmp154356))))
                                            (declare (not safe))
                                            (cons '%#if __tmp154355))))
                                     (declare (not safe))
                                     (cons __tmp154354 '()))))
                              (declare (not safe))
                              (cons __tmp154392 __tmp154353))))
                      (declare (not safe))
                      (cons '%#let-values __tmp154352))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp154350 _stx152962_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp154341
                                                            (let ((__tmp154342
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp154348
                                  (let ((__tmp154349
                                         (let ()
                                           (declare (not safe))
                                           (cons 'unchecked-slot-ref '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp154349)))
                                 (__tmp154343
                                  (let ((__tmp154344
                                         (let ((__tmp154345
                                                (let ((__tmp154346
                                                       (let ((__tmp154347
                                                              (##structure-ref
                                                               _self152960_
                                                               '2
                                                               gxc#!accessor::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp154347
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote
                                                        __tmp154346))))
                                           (declare (not safe))
                                           (cons __tmp154345 '()))))
                                    (declare (not safe))
                                    (cons _object153003_ __tmp154344))))
                             (declare (not safe))
                             (cons __tmp154348 __tmp154343))))
                      (declare (not safe))
                      (cons '%#call __tmp154342))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp154341 _stx152962_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _hd152969152983_)
                              (let ()
                                (declare (not safe))
                                (_g152965152975_ _g152966152978_)))))
                      (let ()
                        (declare (not safe))
                        (_g152965152975_ _g152966152978_))))))
          (declare (not safe))
          (_g152964153013_ _args152963_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass153634 __method-table153635)
        (let ((__slot153636
               (let ((__slot153639
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass153634 'slot))))
                 (if __slot153639
                     __slot153639
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__id153637
               (let ((__slot153640
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass153634 'id))))
                 (if __slot153640
                     __slot153640
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__checked?153638
               (let ((__slot153641
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass153634 'checked?))))
                 (if __slot153641
                     __slot153641
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?))))))
          (lambda (_self152960_ _ctx152961_ _stx152962_ _args152963_)
            (let* ((_g152965152975_
                    (lambda (_g152966152972_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g152966152972_))))
                   (_g152964153013_
                    (lambda (_g152966152978_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g152966152978_))
                          (let ((_e152970152980_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g152966152978_))))
                            (let ((_hd152969152983_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e152970152980_)))
                                  (_tl152968152985_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e152970152980_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl152968152985_))
                                  ((lambda (_L152988_)
                                     (let* ((_klass152999_
                                             (let ((__tmp154426
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self152960_
                                                       __id153637
                                                       __klass153634
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx152962_
                                                __tmp154426)))
                                            (_field153001_
                                             (let ((__tmp154427
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self152960_
                                                       __slot153636
                                                       __klass153634
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _klass152999_
                                                __tmp154427)))
                                            (_object153003_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _ctx152961_
                                                _L152988_))))
                                       (if (##structure-ref
                                            _klass152999_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp154504
                                                  (let ((__tmp154513
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self152960_
                        __checked?153638
                        __klass153634
                        '#f))
                     '%#struct-direct-ref
                     '%#struct-unchecked-ref))
                (__tmp154505
                 (let ((__tmp154510
                        (let ((__tmp154511
                               (let ((__tmp154512
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _self152960_
                                         __id153637
                                         __klass153634
                                         '#f))))
                                 (declare (not safe))
                                 (cons __tmp154512 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp154511)))
                       (__tmp154506
                        (let ((__tmp154508
                               (let ((__tmp154509
                                      (let ()
                                        (declare (not safe))
                                        (cons _field153001_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp154509)))
                              (__tmp154507
                               (let ()
                                 (declare (not safe))
                                 (cons _object153003_ '()))))
                          (declare (not safe))
                          (cons __tmp154508 __tmp154507))))
                   (declare (not safe))
                   (cons __tmp154510 __tmp154506))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp154513
                                                          __tmp154505))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp154504
                                              _stx152962_))
                                           (if (##structure-ref
                                                _klass152999_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp154494
                                                      (let ((__tmp154503
                                                             (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self152960_
                            __checked?153638
                            __klass153634
                            '#f))
                         '%#struct-ref
                         '%#struct-unchecked-ref))
                    (__tmp154495
                     (let ((__tmp154500
                            (let ((__tmp154501
                                   (let ((__tmp154502
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self152960_
                                             __id153637
                                             __klass153634
                                             '#f))))
                                     (declare (not safe))
                                     (cons __tmp154502 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp154501)))
                           (__tmp154496
                            (let ((__tmp154498
                                   (let ((__tmp154499
                                          (let ()
                                            (declare (not safe))
                                            (cons _field153001_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp154499)))
                                  (__tmp154497
                                   (let ()
                                     (declare (not safe))
                                     (cons _object153003_ '()))))
                              (declare (not safe))
                              (cons __tmp154498 __tmp154497))))
                       (declare (not safe))
                       (cons __tmp154500 __tmp154496))))
                (declare (not safe))
                (cons __tmp154503 __tmp154495))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp154494
                                                  _stx152962_))
                                               (let ((_$e153006_
                                                      (let ((__tmp154428
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self152960_
                        __slot153636
                        __klass153634
                        '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _klass152999_ __tmp154428))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e153006_
                                                     ((lambda (_klass153009_)
                                                        (let ((__tmp154484
                                                               (let ((__tmp154493
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self152960_
                                     __checked?153638
                                     __klass153634
                                     '#f))
                                  '%#struct-ref
                                  '%#struct-unchecked-ref))
                             (__tmp154485
                              (let ((__tmp154490
                                     (let ((__tmp154491
                                            (let ((__tmp154492
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self152960_
                                                      __id153637
                                                      __klass153634
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp154492 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp154491)))
                                    (__tmp154486
                                     (let ((__tmp154488
                                            (let ((__tmp154489
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field153001_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp154489)))
                                           (__tmp154487
                                            (let ()
                                              (declare (not safe))
                                              (cons _object153003_ '()))))
                                       (declare (not safe))
                                       (cons __tmp154488 __tmp154487))))
                                (declare (not safe))
                                (cons __tmp154490 __tmp154486))))
                         (declare (not safe))
                         (cons __tmp154493 __tmp154485))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp154484 _stx152962_)))
              _$e153006_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _self152960_
                                                            __checked?153638
                                                            __klass153634
                                                            '#f))
                                                         (let ((__tmp154438
                                                                (let* ((_$obj153011_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp154439 (gensym '__obj)))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp154439)))
                               (__tmp154440
                                (let ((__tmp154480
                                       (let ((__tmp154481
                                              (let ((__tmp154483
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _$obj153011_
                                                             '())))
                                                    (__tmp154482
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _object153003_
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp154483
                                                      __tmp154482))))
                                         (declare (not safe))
                                         (cons __tmp154481 '())))
                                      (__tmp154441
                                       (let ((__tmp154442
                                              (let ((__tmp154443
                                                     (let ((__tmp154472
                                                            (let ((__tmp154473
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp154477
                                  (let ((__tmp154478
                                         (let ((__tmp154479
                                                (##structure-ref
                                                 _klass152999_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp154479 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp154478)))
                                 (__tmp154474
                                  (let ((__tmp154475
                                         (let ((__tmp154476
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj153011_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp154476))))
                                    (declare (not safe))
                                    (cons __tmp154475 '()))))
                             (declare (not safe))
                             (cons __tmp154477 __tmp154474))))
                      (declare (not safe))
                      (cons '%#struct-direct-instance? __tmp154473)))
                   (__tmp154444
                    (let ((__tmp154461
                           (let ((__tmp154462
                                  (let ((__tmp154469
                                         (let ((__tmp154470
                                                (let ((__tmp154471
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self152960_
                                                          __id153637
                                                          __klass153634
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp154471 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp154470)))
                                        (__tmp154463
                                         (let ((__tmp154467
                                                (let ((__tmp154468
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field153001_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp154468)))
                                               (__tmp154464
                                                (let ((__tmp154465
                                                       (let ((__tmp154466
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj153011_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp154466))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp154465 '()))))
                                           (declare (not safe))
                                           (cons __tmp154467 __tmp154464))))
                                    (declare (not safe))
                                    (cons __tmp154469 __tmp154463))))
                             (declare (not safe))
                             (cons '%#struct-unchecked-ref __tmp154462)))
                          (__tmp154445
                           (let ((__tmp154446
                                  (let ((__tmp154447
                                         (let ((__tmp154459
                                                (let ((__tmp154460
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-slot-ref
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp154460)))
                                               (__tmp154448
                                                (let ((__tmp154456
                                                       (let ((__tmp154457
                                                              (let ((__tmp154458
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self152960_
                                __id153637
                                __klass153634
                                '#f))))
                        (declare (not safe))
                        (cons __tmp154458 '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp154457)))
              (__tmp154449
               (let ((__tmp154454
                      (let ((__tmp154455
                             (let ()
                               (declare (not safe))
                               (cons _$obj153011_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp154455)))
                     (__tmp154450
                      (let ((__tmp154451
                             (let ((__tmp154452
                                    (let ((__tmp154453
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _self152960_
                                              __slot153636
                                              __klass153634
                                              '#f))))
                                      (declare (not safe))
                                      (cons __tmp154453 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp154452))))
                        (declare (not safe))
                        (cons __tmp154451 '()))))
                 (declare (not safe))
                 (cons __tmp154454 __tmp154450))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp154456
                                                        __tmp154449))))
                                           (declare (not safe))
                                           (cons __tmp154459 __tmp154448))))
                                    (declare (not safe))
                                    (cons '%#call __tmp154447))))
                             (declare (not safe))
                             (cons __tmp154446 '()))))
                      (declare (not safe))
                      (cons __tmp154461 __tmp154445))))
               (declare (not safe))
               (cons __tmp154472 __tmp154444))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#if __tmp154443))))
                                         (declare (not safe))
                                         (cons __tmp154442 '()))))
                                  (declare (not safe))
                                  (cons __tmp154480 __tmp154441))))
                          (declare (not safe))
                          (cons '%#let-values __tmp154440))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp154438 _stx152962_))
                 (let ((__tmp154429
                        (let ((__tmp154430
                               (let ((__tmp154436
                                      (let ((__tmp154437
                                             (let ()
                                               (declare (not safe))
                                               (cons 'unchecked-slot-ref
                                                     '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp154437)))
                                     (__tmp154431
                                      (let ((__tmp154432
                                             (let ((__tmp154433
                                                    (let ((__tmp154434
                                                           (let ((__tmp154435
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _self152960_
                             __slot153636
                             __klass153634
                             '#f))))
                     (declare (not safe))
                     (cons __tmp154435 '()))))
              (declare (not safe))
              (cons '%#quote __tmp154434))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp154433 '()))))
                                        (declare (not safe))
                                        (cons _object153003_ __tmp154432))))
                                 (declare (not safe))
                                 (cons __tmp154436 __tmp154431))))
                          (declare (not safe))
                          (cons '%#call __tmp154430))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp154429 _stx152962_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd152969152983_)
                                  (let ()
                                    (declare (not safe))
                                    (_g152965152975_ _g152966152978_)))))
                          (let ()
                            (declare (not safe))
                            (_g152965152975_ _g152966152978_))))))
              (declare (not safe))
              (_g152964153013_ _args152963_))))))
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
      (lambda (_self152764_ _ctx152765_ _stx152766_ _args152767_)
        (let* ((_g152769152783_
                (lambda (_g152770152780_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g152770152780_))))
               (_g152768152835_
                (lambda (_g152770152786_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g152770152786_))
                      (let ((_e152775152788_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g152770152786_))))
                        (let ((_hd152774152791_
                               (let ()
                                 (declare (not safe))
                                 (##car _e152775152788_)))
                              (_tl152773152793_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e152775152788_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl152773152793_))
                              (let ((_e152778152796_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl152773152793_))))
                                (let ((_hd152777152799_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e152778152796_)))
                                      (_tl152776152801_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e152778152796_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl152776152801_))
                                      ((lambda (_L152804_ _L152805_)
                                         (let* ((_klass152819_
                                                 (let ((__tmp154514
                                                        (##structure-ref
                                                         _self152764_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _stx152766_
                                                    __tmp154514)))
                                                (_field152821_
                                                 (let ((__tmp154515
                                                        (##structure-ref
                                                         _self152764_
                                                         '2
                                                         gxc#!mutator::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass152819_
                                                    __tmp154515)))
                                                (_object152823_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _ctx152765_
                                                    _L152805_)))
                                                (_value152825_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _ctx152765_
                                                    _L152804_))))
                                           (if (##structure-ref
                                                _klass152819_
                                                '8
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp154597
                                                      (let ((__tmp154607
                                                             (if (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _self152764_
                          '3
                          gxc#!mutator::t
                          '#f)
                         '%#struct-direct-set!
                         '%#struct-unchecked-set!))
                    (__tmp154598
                     (let ((__tmp154604
                            (let ((__tmp154605
                                   (let ((__tmp154606
                                          (##structure-ref
                                           _self152764_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp154606 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp154605)))
                           (__tmp154599
                            (let ((__tmp154602
                                   (let ((__tmp154603
                                          (let ()
                                            (declare (not safe))
                                            (cons _field152821_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp154603)))
                                  (__tmp154600
                                   (let ((__tmp154601
                                          (let ()
                                            (declare (not safe))
                                            (cons _value152825_ '()))))
                                     (declare (not safe))
                                     (cons _object152823_ __tmp154601))))
                              (declare (not safe))
                              (cons __tmp154602 __tmp154600))))
                       (declare (not safe))
                       (cons __tmp154604 __tmp154599))))
                (declare (not safe))
                (cons __tmp154607 __tmp154598))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp154597
                                                  _stx152766_))
                                               (if (##structure-ref
                                                    _klass152819_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp154586
                                                          (let ((__tmp154596
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##structure-ref
                              _self152764_
                              '3
                              gxc#!mutator::t
                              '#f)
                             '%#struct-set!
                             '%#struct-unchecked-set!))
                        (__tmp154587
                         (let ((__tmp154593
                                (let ((__tmp154594
                                       (let ((__tmp154595
                                              (##structure-ref
                                               _self152764_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp154595 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp154594)))
                               (__tmp154588
                                (let ((__tmp154591
                                       (let ((__tmp154592
                                              (let ()
                                                (declare (not safe))
                                                (cons _field152821_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp154592)))
                                      (__tmp154589
                                       (let ((__tmp154590
                                              (let ()
                                                (declare (not safe))
                                                (cons _value152825_ '()))))
                                         (declare (not safe))
                                         (cons _object152823_ __tmp154590))))
                                  (declare (not safe))
                                  (cons __tmp154591 __tmp154589))))
                           (declare (not safe))
                           (cons __tmp154593 __tmp154588))))
                    (declare (not safe))
                    (cons __tmp154596 __tmp154587))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp154586
                                                      _stx152766_))
                                                   (let ((_$e152828_
                                                          (let ((__tmp154516
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref
                          _self152764_
                          '2
                          gxc#!mutator::t
                          '#f)))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct _klass152819_ __tmp154516))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e152828_
                                                         ((lambda (_klass152831_)
                                                            (let ((__tmp154575
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp154585
                                  (if (##structure-ref
                                       _self152764_
                                       '3
                                       gxc#!mutator::t
                                       '#f)
                                      '%#struct-set!
                                      '%#struct-unchecked-set!))
                                 (__tmp154576
                                  (let ((__tmp154582
                                         (let ((__tmp154583
                                                (let ((__tmp154584
                                                       (##structure-ref
                                                        _self152764_
                                                        '1
                                                        gxc#!type::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp154584 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp154583)))
                                        (__tmp154577
                                         (let ((__tmp154580
                                                (let ((__tmp154581
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field152821_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp154581)))
                                               (__tmp154578
                                                (let ((__tmp154579
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _value152825_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons _object152823_
                                                        __tmp154579))))
                                           (declare (not safe))
                                           (cons __tmp154580 __tmp154578))))
                                    (declare (not safe))
                                    (cons __tmp154582 __tmp154577))))
                             (declare (not safe))
                             (cons __tmp154585 __tmp154576))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp154575 _stx152766_)))
                  _$e152828_)
                 (if (##structure-ref _self152764_ '3 gxc#!mutator::t '#f)
                     (let ((__tmp154527
                            (let* ((_$obj152833_
                                    (let ((__tmp154528 (gensym '__obj)))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp154528)))
                                   (__tmp154529
                                    (let ((__tmp154571
                                           (let ((__tmp154572
                                                  (let ((__tmp154574
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj152833_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp154573
                 (let () (declare (not safe)) (cons _object152823_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp154574
                                                          __tmp154573))))
                                             (declare (not safe))
                                             (cons __tmp154572 '())))
                                          (__tmp154530
                                           (let ((__tmp154531
                                                  (let ((__tmp154532
                                                         (let ((__tmp154563
                                                                (let ((__tmp154564
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp154568
                                      (let ((__tmp154569
                                             (let ((__tmp154570
                                                    (##structure-ref
                                                     _klass152819_
                                                     '1
                                                     gxc#!type::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp154570 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp154569)))
                                     (__tmp154565
                                      (let ((__tmp154566
                                             (let ((__tmp154567
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj152833_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp154567))))
                                        (declare (not safe))
                                        (cons __tmp154566 '()))))
                                 (declare (not safe))
                                 (cons __tmp154568 __tmp154565))))
                          (declare (not safe))
                          (cons '%#struct-direct-instance? __tmp154564)))
                       (__tmp154533
                        (let ((__tmp154551
                               (let ((__tmp154552
                                      (let ((__tmp154560
                                             (let ((__tmp154561
                                                    (let ((__tmp154562
                                                           (##structure-ref
                                                            _self152764_
                                                            '1
                                                            gxc#!type::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (cons __tmp154562 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp154561)))
                                            (__tmp154553
                                             (let ((__tmp154558
                                                    (let ((__tmp154559
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field152821_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp154559)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp154554
                                                    (let ((__tmp154556
                                                           (let ((__tmp154557
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj152833_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp154557)))
                  (__tmp154555
                   (let () (declare (not safe)) (cons _value152825_ '()))))
              (declare (not safe))
              (cons __tmp154556 __tmp154555))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp154558
                                                     __tmp154554))))
                                        (declare (not safe))
                                        (cons __tmp154560 __tmp154553))))
                                 (declare (not safe))
                                 (cons '%#struct-unchecked-set! __tmp154552)))
                              (__tmp154534
                               (let ((__tmp154535
                                      (let ((__tmp154536
                                             (let ((__tmp154549
                                                    (let ((__tmp154550
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp154550)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp154537
                                                    (let ((__tmp154546
                                                           (let ((__tmp154547
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp154548
                                 (##structure-ref
                                  _self152764_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (cons __tmp154548 '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp154547)))
                  (__tmp154538
                   (let ((__tmp154544
                          (let ((__tmp154545
                                 (let ()
                                   (declare (not safe))
                                   (cons _$obj152833_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp154545)))
                         (__tmp154539
                          (let ((__tmp154541
                                 (let ((__tmp154542
                                        (let ((__tmp154543
                                               (##structure-ref
                                                _self152764_
                                                '2
                                                gxc#!mutator::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp154543 '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp154542)))
                                (__tmp154540
                                 (let ()
                                   (declare (not safe))
                                   (cons _value152825_ '()))))
                            (declare (not safe))
                            (cons __tmp154541 __tmp154540))))
                     (declare (not safe))
                     (cons __tmp154544 __tmp154539))))
              (declare (not safe))
              (cons __tmp154546 __tmp154538))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp154549
                                                     __tmp154537))))
                                        (declare (not safe))
                                        (cons '%#call __tmp154536))))
                                 (declare (not safe))
                                 (cons __tmp154535 '()))))
                          (declare (not safe))
                          (cons __tmp154551 __tmp154534))))
                   (declare (not safe))
                   (cons __tmp154563 __tmp154533))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#if __tmp154532))))
                                             (declare (not safe))
                                             (cons __tmp154531 '()))))
                                      (declare (not safe))
                                      (cons __tmp154571 __tmp154530))))
                              (declare (not safe))
                              (cons '%#let-values __tmp154529))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp154527 _stx152766_))
                     (let ((__tmp154517
                            (let ((__tmp154518
                                   (let ((__tmp154525
                                          (let ((__tmp154526
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'unchecked-slot-set!
                                                         '()))))
                                            (declare (not safe))
                                            (cons '%#ref __tmp154526)))
                                         (__tmp154519
                                          (let ((__tmp154520
                                                 (let ((__tmp154522
                                                        (let ((__tmp154523
                                                               (let ((__tmp154524
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##structure-ref
                               _self152764_
                               '2
                               gxc#!mutator::t
                               '#f)))
                         (declare (not safe))
                         (cons __tmp154524 '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp154523)))
               (__tmp154521
                (let () (declare (not safe)) (cons _value152825_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp154522
                                                         __tmp154521))))
                                            (declare (not safe))
                                            (cons _object152823_
                                                  __tmp154520))))
                                     (declare (not safe))
                                     (cons __tmp154525 __tmp154519))))
                              (declare (not safe))
                              (cons '%#call __tmp154518))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp154517 _stx152766_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd152777152799_
                                       _hd152774152791_)
                                      (let ()
                                        (declare (not safe))
                                        (_g152769152783_ _g152770152786_)))))
                              (let ()
                                (declare (not safe))
                                (_g152769152783_ _g152770152786_)))))
                      (let ()
                        (declare (not safe))
                        (_g152769152783_ _g152770152786_))))))
          (declare (not safe))
          (_g152768152835_ _args152767_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass153642 __method-table153643)
        (let ((__slot153644
               (let ((__slot153647
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass153642 'slot))))
                 (if __slot153647
                     __slot153647
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__id153645
               (let ((__slot153648
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass153642 'id))))
                 (if __slot153648
                     __slot153648
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__checked?153646
               (let ((__slot153649
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass153642 'checked?))))
                 (if __slot153649
                     __slot153649
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?))))))
          (lambda (_self152764_ _ctx152765_ _stx152766_ _args152767_)
            (let* ((_g152769152783_
                    (lambda (_g152770152780_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g152770152780_))))
                   (_g152768152835_
                    (lambda (_g152770152786_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g152770152786_))
                          (let ((_e152775152788_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g152770152786_))))
                            (let ((_hd152774152791_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e152775152788_)))
                                  (_tl152773152793_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e152775152788_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl152773152793_))
                                  (let ((_e152778152796_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl152773152793_))))
                                    (let ((_hd152777152799_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e152778152796_)))
                                          (_tl152776152801_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e152778152796_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl152776152801_))
                                          ((lambda (_L152804_ _L152805_)
                                             (let* ((_klass152819_
                                                     (let ((__tmp154608
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self152764_
                                                               __id153645
                                                               __klass153642
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _stx152766_
                                                        __tmp154608)))
                                                    (_field152821_
                                                     (let ((__tmp154609
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self152764_
                                                               __slot153644
                                                               __klass153642
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass152819_
                                                        __tmp154609)))
                                                    (_object152823_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _ctx152765_
                                                        _L152805_)))
                                                    (_value152825_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _ctx152765_
                                                        _L152804_))))
                                               (if (##structure-ref
                                                    _klass152819_
                                                    '8
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp154691
                                                          (let ((__tmp154701
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self152764_
                                __checked?153646
                                __klass153642
                                '#f))
                             '%#struct-direct-set!
                             '%#struct-unchecked-set!))
                        (__tmp154692
                         (let ((__tmp154698
                                (let ((__tmp154699
                                       (let ((__tmp154700
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _self152764_
                                                 __id153645
                                                 __klass153642
                                                 '#f))))
                                         (declare (not safe))
                                         (cons __tmp154700 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp154699)))
                               (__tmp154693
                                (let ((__tmp154696
                                       (let ((__tmp154697
                                              (let ()
                                                (declare (not safe))
                                                (cons _field152821_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp154697)))
                                      (__tmp154694
                                       (let ((__tmp154695
                                              (let ()
                                                (declare (not safe))
                                                (cons _value152825_ '()))))
                                         (declare (not safe))
                                         (cons _object152823_ __tmp154695))))
                                  (declare (not safe))
                                  (cons __tmp154696 __tmp154694))))
                           (declare (not safe))
                           (cons __tmp154698 __tmp154693))))
                    (declare (not safe))
                    (cons __tmp154701 __tmp154692))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp154691
                                                      _stx152766_))
                                                   (if (##structure-ref
                                                        _klass152819_
                                                        '7
                                                        gxc#!class::t
                                                        '#f)
                                                       (let ((__tmp154680
                                                              (let ((__tmp154690
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _self152764_
                                    __checked?153646
                                    __klass153642
                                    '#f))
                                 '%#struct-set!
                                 '%#struct-unchecked-set!))
                            (__tmp154681
                             (let ((__tmp154687
                                    (let ((__tmp154688
                                           (let ((__tmp154689
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self152764_
                                                     __id153645
                                                     __klass153642
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp154689 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp154688)))
                                   (__tmp154682
                                    (let ((__tmp154685
                                           (let ((__tmp154686
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _field152821_ '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp154686)))
                                          (__tmp154683
                                           (let ((__tmp154684
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _value152825_ '()))))
                                             (declare (not safe))
                                             (cons _object152823_
                                                   __tmp154684))))
                                      (declare (not safe))
                                      (cons __tmp154685 __tmp154683))))
                               (declare (not safe))
                               (cons __tmp154687 __tmp154682))))
                        (declare (not safe))
                        (cons __tmp154690 __tmp154681))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp154680 _stx152766_))
               (let ((_$e152828_
                      (let ((__tmp154610
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self152764_
                                __slot153644
                                __klass153642
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _klass152819_
                         __tmp154610))))
                 (if _$e152828_
                     ((lambda (_klass152831_)
                        (let ((__tmp154669
                               (let ((__tmp154679
                                      (if (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self152764_
                                             __checked?153646
                                             __klass153642
                                             '#f))
                                          '%#struct-set!
                                          '%#struct-unchecked-set!))
                                     (__tmp154670
                                      (let ((__tmp154676
                                             (let ((__tmp154677
                                                    (let ((__tmp154678
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _self152764_
                                                              __id153645
                                                              __klass153642
                                                              '#f))))
                                                      (declare (not safe))
                                                      (cons __tmp154678 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp154677)))
                                            (__tmp154671
                                             (let ((__tmp154674
                                                    (let ((__tmp154675
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field152821_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp154675)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp154672
                                                    (let ((__tmp154673
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _value152825_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _object152823_ __tmp154673))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp154674
                                                     __tmp154672))))
                                        (declare (not safe))
                                        (cons __tmp154676 __tmp154671))))
                                 (declare (not safe))
                                 (cons __tmp154679 __tmp154670))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp154669 _stx152766_)))
                      _$e152828_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self152764_
                            __checked?153646
                            __klass153642
                            '#f))
                         (let ((__tmp154621
                                (let* ((_$obj152833_
                                        (let ((__tmp154622 (gensym '__obj)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp154622)))
                                       (__tmp154623
                                        (let ((__tmp154665
                                               (let ((__tmp154666
                                                      (let ((__tmp154668
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj152833_ '())))
                    (__tmp154667
                     (let () (declare (not safe)) (cons _object152823_ '()))))
                (declare (not safe))
                (cons __tmp154668 __tmp154667))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp154666 '())))
                                              (__tmp154624
                                               (let ((__tmp154625
                                                      (let ((__tmp154626
                                                             (let ((__tmp154657
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp154658
                                   (let ((__tmp154662
                                          (let ((__tmp154663
                                                 (let ((__tmp154664
                                                        (##structure-ref
                                                         _klass152819_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp154664 '()))))
                                            (declare (not safe))
                                            (cons '%#quote __tmp154663)))
                                         (__tmp154659
                                          (let ((__tmp154660
                                                 (let ((__tmp154661
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj152833_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp154661))))
                                            (declare (not safe))
                                            (cons __tmp154660 '()))))
                                     (declare (not safe))
                                     (cons __tmp154662 __tmp154659))))
                              (declare (not safe))
                              (cons '%#struct-direct-instance? __tmp154658)))
                           (__tmp154627
                            (let ((__tmp154645
                                   (let ((__tmp154646
                                          (let ((__tmp154654
                                                 (let ((__tmp154655
                                                        (let ((__tmp154656
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _self152764_
                          __id153645
                          __klass153642
                          '#f))))
                  (declare (not safe))
                  (cons __tmp154656 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp154655)))
                                                (__tmp154647
                                                 (let ((__tmp154652
                                                        (let ((__tmp154653
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _field152821_ '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp154653)))
               (__tmp154648
                (let ((__tmp154650
                       (let ((__tmp154651
                              (let ()
                                (declare (not safe))
                                (cons _$obj152833_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp154651)))
                      (__tmp154649
                       (let () (declare (not safe)) (cons _value152825_ '()))))
                  (declare (not safe))
                  (cons __tmp154650 __tmp154649))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp154652
                                                         __tmp154648))))
                                            (declare (not safe))
                                            (cons __tmp154654 __tmp154647))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp154646)))
                                  (__tmp154628
                                   (let ((__tmp154629
                                          (let ((__tmp154630
                                                 (let ((__tmp154643
                                                        (let ((__tmp154644
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons 'class-slot-set! '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp154644)))
               (__tmp154631
                (let ((__tmp154640
                       (let ((__tmp154641
                              (let ((__tmp154642
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _self152764_
                                        __id153645
                                        __klass153642
                                        '#f))))
                                (declare (not safe))
                                (cons __tmp154642 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp154641)))
                      (__tmp154632
                       (let ((__tmp154638
                              (let ((__tmp154639
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj152833_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp154639)))
                             (__tmp154633
                              (let ((__tmp154635
                                     (let ((__tmp154636
                                            (let ((__tmp154637
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self152764_
                                                      __slot153644
                                                      __klass153642
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp154637 '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp154636)))
                                    (__tmp154634
                                     (let ()
                                       (declare (not safe))
                                       (cons _value152825_ '()))))
                                (declare (not safe))
                                (cons __tmp154635 __tmp154634))))
                         (declare (not safe))
                         (cons __tmp154638 __tmp154633))))
                  (declare (not safe))
                  (cons __tmp154640 __tmp154632))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp154643
                                                         __tmp154631))))
                                            (declare (not safe))
                                            (cons '%#call __tmp154630))))
                                     (declare (not safe))
                                     (cons __tmp154629 '()))))
                              (declare (not safe))
                              (cons __tmp154645 __tmp154628))))
                       (declare (not safe))
                       (cons __tmp154657 __tmp154627))))
                (declare (not safe))
                (cons '%#if __tmp154626))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp154625 '()))))
                                          (declare (not safe))
                                          (cons __tmp154665 __tmp154624))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp154623))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp154621 _stx152766_))
                         (let ((__tmp154611
                                (let ((__tmp154612
                                       (let ((__tmp154619
                                              (let ((__tmp154620
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons 'unchecked-slot-set!
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#ref __tmp154620)))
                                             (__tmp154613
                                              (let ((__tmp154614
                                                     (let ((__tmp154616
                                                            (let ((__tmp154617
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp154618
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self152764_
                                     __slot153644
                                     __klass153642
                                     '#f))))
                             (declare (not safe))
                             (cons __tmp154618 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp154617)))
                   (__tmp154615
                    (let () (declare (not safe)) (cons _value152825_ '()))))
               (declare (not safe))
               (cons __tmp154616 __tmp154615))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _object152823_
                                                      __tmp154614))))
                                         (declare (not safe))
                                         (cons __tmp154619 __tmp154613))))
                                  (declare (not safe))
                                  (cons '%#call __tmp154612))))
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp154611
                            _stx152766_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _hd152777152799_
                                           _hd152774152791_)
                                          (let ()
                                            (declare (not safe))
                                            (_g152769152783_
                                             _g152770152786_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g152769152783_ _g152770152786_)))))
                          (let ()
                            (declare (not safe))
                            (_g152769152783_ _g152770152786_))))))
              (declare (not safe))
              (_g152768152835_ _args152767_))))))
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
      (lambda (_self152597_ _ctx152598_ _stx152599_ _args152600_)
        (let* ((_self152601152610_ _self152597_)
               (_E152603152614_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self152601152610_))))
               (_K152604152621_
                (lambda (_inline152617_ _dispatch152618_ _arity152619_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self152597_ _args152600_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx152599_
                         _arity152619_)))
                  (if _inline152617_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp154707
                               (let ((__tmp154708
                                      (_inline152617_ _stx152599_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp154708
                                  _stx152599_))))
                          (declare (not safe))
                          (gxc#compile-e__1 _ctx152598_ __tmp154707)))
                      (if _dispatch152618_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch152618_))
                            (let ((__tmp154702
                                   (let ((__tmp154703
                                          (let ((__tmp154704
                                                 (let ((__tmp154705
                                                        (let ((__tmp154706
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch152618_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp154706))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp154705
                                                         _args152600_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp154704))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp154703
                                      _stx152599_))))
                              (declare (not safe))
                              (gxc#compile-e__1 _ctx152598_ __tmp154702)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _ctx152598_ _stx152599_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self152601152610_ 'gxc#!lambda::t))
              (let* ((_e152605152624_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self152601152610_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e152606152627_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self152601152610_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity152630_ _e152606152627_)
                     (_e152607152632_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self152601152610_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch152635_ _e152607152632_)
                     (_e152608152637_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self152601152610_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline152640_ _e152608152637_))
                (declare (not safe))
                (_K152604152621_
                 _inline152640_
                 _dispatch152635_
                 _arity152630_))
              (let () (declare (not safe)) (_E152603152614_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self152435_ _ctx152436_ _stx152437_ _args152438_)
        (let* ((_self152439152446_ _self152435_)
               (_E152441152450_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self152439152446_))))
               (_K152442152464_
                (lambda (_clauses152453_)
                  (let ((_$e152459_
                         (let ((__tmp154709
                                (lambda (_g152454152456_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g152454152456_
                                     _args152438_)))))
                           (declare (not safe))
                           (find __tmp154709 _clauses152453_))))
                    (if _$e152459_
                        ((lambda (_clause152462_)
                           (let ((__method153920
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause152462_
                                     'optimize-call))))
                             (if __method153920
                                 (__method153920
                                  _clause152462_
                                  _ctx152436_
                                  _stx152437_
                                  _args152438_)
                                 (let ()
                                   (declare (not safe))
                                   (error '"Missing method"
                                          _clause152462_
                                          'optimize-call)))))
                         _$e152459_)
                        (let ((__tmp154710
                               (map gxc#!lambda-arity _clauses152453_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx152437_
                           __tmp154710)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self152439152446_
                 'gxc#!case-lambda::t))
              (let* ((_e152443152467_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self152439152446_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e152444152470_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self152439152446_
                         '2
                         gxc#!case-lambda::t
                         '#f)))
                     (_clauses152473_ _e152444152470_))
                (declare (not safe))
                (_K152442152464_ _clauses152473_))
              (let () (declare (not safe)) (_E152441152450_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self152249_ _args152250_)
        (let* ((_self152251152258_ _self152249_)
               (_E152253152262_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self152251152258_))))
               (_K152254152302_
                (lambda (_arity152265_)
                  (let* ((_arity152266152275_ _arity152265_)
                         (_E152269152279_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (error '"No clause matching"
                                     _arity152266152275_)))))
                    (let ((_K152273152299_
                           (lambda ()
                             (fx= (length _args152250_) _arity152265_)))
                          (_K152270152285_
                           (lambda (_arity152283_)
                             (fx>= (length _args152250_) _arity152283_))))
                      (let ((_try-match152268152295_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity152266152275_))
                                   (let ((_tl152272152290_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity152266152275_)))
                                         (_hd152271152288_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity152266152275_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl152272152290_))
                                         (let ((_arity152293_
                                                _hd152271152288_))
                                           (declare (not safe))
                                           (_K152270152285_ _arity152293_))
                                         (let ()
                                           (declare (not safe))
                                           (_E152269152279_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E152269152279_))))))
                        (if (let ()
                              (declare (not safe))
                              (fixnum? _arity152266152275_))
                            (let () (declare (not safe)) (_K152273152299_))
                            (let ()
                              (declare (not safe))
                              (_try-match152268152295_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self152251152258_ 'gxc#!lambda::t))
              (let* ((_e152255152305_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self152251152258_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e152256152308_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self152251152258_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity152311_ _e152256152308_))
                (declare (not safe))
                (_K152254152302_ _arity152311_))
              (let () (declare (not safe)) (_E152253152262_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self152133_ _ctx152134_ _stx152135_ _args152136_)
        (let* ((_self152137152145_ _self152133_)
               (_E152139152149_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self152137152145_))))
               (_K152140152233_
                (lambda (_dispatch152152_ _table152153_)
                  (let* ((_g152154152163_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch152152_)))
                         (_else152156152171_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch152152_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _ctx152134_ _stx152135_))))
                         (_K152158152217_
                          (lambda (_main152174_ _keys152175_)
                            (let ((_g154711_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx152135_
                                      _args152136_))))
                              (begin
                                (let ((_g154712_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g154711_)
                                             (##vector-length _g154711_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g154712_ 2)))
                                      (error "Context expects 2 values"
                                             _g154712_)))
                                (let ((_pargs152177_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g154711_ 0)))
                                      (_kwargs152178_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g154711_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main152174_))
                                    (if _table152153_
                                        (let ((_xargs152185_
                                               (map (lambda (_key152180_)
                                                      (let ((_$e152182_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq__0 _key152180_ _kwargs152178_))))
                (if _$e152182_ (values _$e152182_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys152175_)))
                                          (for-each
                                           (lambda (_kw152187_)
                                             (if (memq (car _kw152187_)
                                                       _keys152175_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx152135_
                                                    _keys152175_
                                                    _kw152187_))))
                                           _kwargs152178_)
                                          (let ((__tmp154764
                                                 (let ((__tmp154765
                                                        (let ((__tmp154766
                                                               (let ((__tmp154771
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp154772
                                     (let ()
                                       (declare (not safe))
                                       (cons _main152174_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp154772)))
                             (__tmp154767
                              (let ((__tmp154769
                                     (let ((__tmp154770
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp154770)))
                                    (__tmp154768
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs152177_
                                               _xargs152185_))))
                                (declare (not safe))
                                (cons __tmp154769 __tmp154768))))
                         (declare (not safe))
                         (cons __tmp154771 __tmp154767))))
                  (declare (not safe))
                  (cons '%#call __tmp154766))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp154765
                                                    _stx152135_))))
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _ctx152134_
                                             __tmp154764)))
                                        (let* ((_kwt152189_
                                                (let ((__tmp154713
                                                       (gensym '__kwt)))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp154713)))
                                               (_kwvars152192_
                                                (map (lambda (_g154714_)
                                                       (let ((__tmp154715
                                                              (gensym '__kw)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp154715)))
                                                     _kwargs152178_))
                                               (_kwbind152197_
                                                (map (lambda (_kw152194_
                                                              _kwvar152195_)
                                                       (let ((__tmp154718
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar152195_ '())))
                     (__tmp154716
                      (let ((__tmp154717 (cdr _kw152194_)))
                        (declare (not safe))
                        (cons __tmp154717 '()))))
                 (declare (not safe))
                 (cons __tmp154718 __tmp154716)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs152178_
                                                     _kwvars152192_))
                                               (_kwset152202_
                                                (map (lambda (_kw152199_
                                                              _kwvar152200_)
                                                       (let ((__tmp154719
                                                              (let ((__tmp154720
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp154728
                                    (let ((__tmp154729
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt152189_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp154729)))
                                   (__tmp154721
                                    (let ((__tmp154725
                                           (let ((__tmp154726
                                                  (let ((__tmp154727
                                                         (car _kw152199_)))
                                                    (declare (not safe))
                                                    (cons __tmp154727 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp154726)))
                                          (__tmp154722
                                           (let ((__tmp154723
                                                  (let ((__tmp154724
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar152200_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp154724))))
                                             (declare (not safe))
                                             (cons __tmp154723 '()))))
                                      (declare (not safe))
                                      (cons __tmp154725 __tmp154722))))
                               (declare (not safe))
                               (cons __tmp154728 __tmp154721))))
                        (declare (not safe))
                        (cons '(%#ref symbolic-table-set!) __tmp154720))))
                 (declare (not safe))
                 (cons '%#call __tmp154719)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs152178_
                                                     _kwvars152192_))
                                               (_xkwargs152207_
                                                (map (lambda (_kw152204_
                                                              _kwvar152205_)
                                                       (let ((__tmp154732
                                                              (car _kw152204_))
                                                             (__tmp154730
                                                              (let ((__tmp154731
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar152205_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp154731))))
                 (declare (not safe))
                 (cons __tmp154732 __tmp154730)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs152178_
                                                     _kwvars152192_))
                                               (_xargs152214_
                                                (map (lambda (_key152209_)
                                                       (let ((_$e152211_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq__0 _key152209_ _xkwargs152207_))))
                 (if _$e152211_ (values _$e152211_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys152175_)))
                                          (let ((__tmp154733
                                                 (let ((__tmp154734
                                                        (let ((__tmp154735
                                                               (let ((__tmp154736
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp154737
                                     (let ((__tmp154738
                                            (let ((__tmp154752
                                                   (let ((__tmp154753
                                                          (let ((__tmp154763
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt152189_ '())))
                        (__tmp154754
                         (let ((__tmp154755
                                (let ((__tmp154756
                                       (let ((__tmp154757
                                              (let ((__tmp154758
                                                     (let ((__tmp154760
                                                            (let ((__tmp154761
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp154762 (length _kwargs152178_)))
                             (declare (not safe))
                             (cons __tmp154762 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp154761)))
                   (__tmp154759
                    (let () (declare (not safe)) (cons '(%#quote 0) '()))))
               (declare (not safe))
               (cons __tmp154760 __tmp154759))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-symbolic-table)
                                                      __tmp154758))))
                                         (declare (not safe))
                                         (cons '%#call __tmp154757))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp154756
                                   _stx152135_))))
                           (declare (not safe))
                           (cons __tmp154755 '()))))
                    (declare (not safe))
                    (cons __tmp154763 __tmp154754))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp154753 '())))
                                                  (__tmp154739
                                                   (let ((__tmp154740
                                                          (let ((__tmp154741
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp154742
                                (let ((__tmp154743
                                       (let ((__tmp154744
                                              (let ((__tmp154745
                                                     (let ((__tmp154750
                                                            (let ((__tmp154751
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main152174_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp154751)))
                   (__tmp154746
                    (let ((__tmp154748
                           (let ((__tmp154749
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt152189_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp154749)))
                          (__tmp154747
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs152177_ _xargs152214_))))
                      (declare (not safe))
                      (cons __tmp154748 __tmp154747))))
               (declare (not safe))
               (cons __tmp154750 __tmp154746))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp154745))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp154744
                                          _stx152135_))))
                                  (declare (not safe))
                                  (cons __tmp154743 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp154742 _kwset152202_))))
                    (declare (not safe))
                    (cons '%#begin __tmp154741))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp154740 '()))))
                                              (declare (not safe))
                                              (cons __tmp154752 __tmp154739))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp154738))))
                                (declare (not safe))
                                (cons __tmp154737 '()))))
                         (declare (not safe))
                         (cons _kwbind152197_ __tmp154736))))
                  (declare (not safe))
                  (cons '%#let-values __tmp154735))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp154734
                                                    _stx152135_))))
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _ctx152134_
                                             __tmp154733)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g152154152163_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e152159152220_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g152154152163_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                               (_e152160152223_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g152154152163_
                                   '2
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_keys152226_ _e152160152223_)
                               (_e152161152228_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g152154152163_
                                   '3
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_main152231_ _e152161152228_))
                          (declare (not safe))
                          (_K152158152217_ _main152231_ _keys152226_))
                        (let () (declare (not safe)) (_else152156152171_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self152137152145_
                 'gxc#!kw-lambda::t))
              (let* ((_e152141152236_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self152137152145_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e152142152239_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self152137152145_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table152242_ _e152142152239_)
                     (_e152143152244_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self152137152145_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch152247_ _e152143152244_))
                (declare (not safe))
                (_K152140152233_ _dispatch152247_ _table152242_))
              (let () (declare (not safe)) (_E152139152149_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx151746_ _args151747_)
        (let _lp151749_ ((_rest151751_ _args151747_)
                         (_pargs151752_ '())
                         (_kwargs151753_ '()))
          (let* ((___stx153800153801_ _rest151751_)
                 (_g151759151811_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx153800153801_)))))
            (let ((___kont153802153803_
                   (lambda (_L151990_ _L151991_)
                     (let ((__tmp154773
                            (let ()
                              (declare (not safe))
                              (cons _L151991_ _pargs151752_))))
                       (declare (not safe))
                       (_lp151749_ _L151990_ __tmp154773 _kwargs151753_))))
                  (___kont153804153805_
                   (lambda (_L151936_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L151936_ _pargs151752_))
                             (reverse _kwargs151753_))))
                  (___kont153806153807_
                   (lambda (_L151883_ _L151884_ _L151885_)
                     (let ((_kw151902_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _L151885_))))
                       (if (assq _kw151902_ _kwargs151753_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx151746_
                              _kw151902_))
                           (let ((__tmp154774
                                  (let ((__tmp154775
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw151902_ _L151884_))))
                                    (declare (not safe))
                                    (cons __tmp154775 _kwargs151753_))))
                             (declare (not safe))
                             (_lp151749_
                              _L151883_
                              _pargs151752_
                              __tmp154774))))))
                  (___kont153808153809_
                   (lambda (_L151831_ _L151832_)
                     (let ((__tmp154776
                            (let ()
                              (declare (not safe))
                              (cons _L151832_ _pargs151752_))))
                       (declare (not safe))
                       (_lp151749_ _L151831_ __tmp154776 _kwargs151753_))))
                  (___kont153810153811_
                   (lambda ()
                     (values (reverse _pargs151752_)
                             (reverse _kwargs151753_)))))
              (let* ((_g151758151818_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx153800153801_))
                            (___kont153810153811_)
                            (let () (declare (not safe)) (_g151759151811_)))))
                     (___match153907153908_
                      (lambda (_e151792151851_
                               _hd151791151854_
                               _tl151790151856_
                               _e151795151859_
                               _hd151794151862_
                               _tl151793151864_
                               _e151798151867_
                               _hd151797151870_
                               _tl151796151872_
                               _e151801151875_
                               _hd151800151878_
                               _tl151799151880_)
                        (let ((_L151883_ _tl151799151880_)
                              (_L151884_ _hd151800151878_)
                              (_L151885_ _hd151797151870_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L151885_))
                              (___kont153806153807_
                               _L151883_
                               _L151884_
                               _L151885_)
                              (___kont153808153809_
                               _tl151790151856_
                               _hd151791151854_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx153800153801_))
                    (let ((_e151765151955_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx153800153801_))))
                      (let ((_tl151763151960_
                             (let ()
                               (declare (not safe))
                               (##cdr _e151765151955_)))
                            (_hd151764151958_
                             (let ()
                               (declare (not safe))
                               (##car _e151765151955_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd151764151958_))
                            (let ((_e151768151963_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd151764151958_))))
                              (let ((_tl151766151968_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e151768151963_)))
                                    (_hd151767151966_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e151768151963_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd151767151966_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd151767151966_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl151766151968_))
                                            (let ((_e151771151971_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl151766151968_))))
                                              (let ((_tl151769151976_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e151771151971_)))
                                                    (_hd151770151974_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e151771151971_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd151770151974_))
                                                    (let ((_e151772151979_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd151770151974_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e151772151979_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl151769151976_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl151763151960_))
                          (let ((_e151775151982_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl151763151960_))))
                            (let ((_tl151773151987_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e151775151982_)))
                                  (_hd151774151985_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e151775151982_))))
                              (___kont153802153803_
                               _tl151773151987_
                               _hd151774151985_)))
                          (___kont153808153809_
                           _tl151763151960_
                           _hd151764151958_))
                      (___kont153808153809_ _tl151763151960_ _hd151764151958_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e151772151979_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl151769151976_))
                          (___kont153804153805_ _tl151763151960_)
                          (___kont153808153809_
                           _tl151763151960_
                           _hd151764151958_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl151769151976_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl151763151960_))
                              (let ((_e151801151875_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl151763151960_))))
                                (let ((_tl151799151880_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e151801151875_)))
                                      (_hd151800151878_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e151801151875_))))
                                  (___match153907153908_
                                   _e151765151955_
                                   _hd151764151958_
                                   _tl151763151960_
                                   _e151768151963_
                                   _hd151767151966_
                                   _tl151766151968_
                                   _e151771151971_
                                   _hd151770151974_
                                   _tl151769151976_
                                   _e151801151875_
                                   _hd151800151878_
                                   _tl151799151880_)))
                              (___kont153808153809_
                               _tl151763151960_
                               _hd151764151958_))
                          (___kont153808153809_
                           _tl151763151960_
                           _hd151764151958_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl151769151976_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl151763151960_))
                                                            (let ((_e151801151875_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl151763151960_))))
                      (let ((_tl151799151880_
                             (let ()
                               (declare (not safe))
                               (##cdr _e151801151875_)))
                            (_hd151800151878_
                             (let ()
                               (declare (not safe))
                               (##car _e151801151875_))))
                        (___match153907153908_
                         _e151765151955_
                         _hd151764151958_
                         _tl151763151960_
                         _e151768151963_
                         _hd151767151966_
                         _tl151766151968_
                         _e151771151971_
                         _hd151770151974_
                         _tl151769151976_
                         _e151801151875_
                         _hd151800151878_
                         _tl151799151880_)))
                    (___kont153808153809_ _tl151763151960_ _hd151764151958_))
                (___kont153808153809_ _tl151763151960_ _hd151764151958_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont153808153809_
                                             _tl151763151960_
                                             _hd151764151958_))
                                        (___kont153808153809_
                                         _tl151763151960_
                                         _hd151764151958_))
                                    (___kont153808153809_
                                     _tl151763151960_
                                     _hd151764151958_))))
                            (___kont153808153809_
                             _tl151763151960_
                             _hd151764151958_))))
                    (let () (declare (not safe)) (_g151758151818_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self151741_ _ctx151742_ _stx151743_ _args151744_)
        (let ()
          (declare (not safe))
          (gxc#xform-call% _ctx151742_ _stx151743_))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
