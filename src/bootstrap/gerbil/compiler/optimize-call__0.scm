(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1709375802)
  (begin
    (define gxc#&optimize-call
      (make-promise
       (lambda ()
         (let ((_tbl152588_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp152883 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-merge! _tbl152588_ __tmp152883))
           (let ()
             (declare (not safe))
             (hash-put! _tbl152588_ '%#call gxc#optimize-call%))
           _tbl152588_))))
    (define gxc#apply-optimize-call
      (lambda (_stx152571_ . _args152573_)
        (let ((__tmp152885
               (lambda ()
                 (declare (not safe))
                 (if (null? _args152573_)
                     (gxc#compile-e__0 _stx152571_)
                     (let ((_arg1152578_ (car _args152573_))
                           (_rest152580_ (cdr _args152573_)))
                       (if (null? _rest152580_)
                           (gxc#compile-e__1 _stx152571_ _arg1152578_)
                           (let ((_arg2152583_ (car _rest152580_))
                                 (_rest152585_ (cdr _rest152580_)))
                             (if (null? _rest152585_)
                                 (gxc#compile-e__2
                                  _stx152571_
                                  _arg1152578_
                                  _arg2152583_)
                                 (apply gxc#compile-e
                                        _stx152571_
                                        _arg1152578_
                                        _arg2152583_
                                        _rest152585_))))))))
              (__tmp152884 (force gxc#&optimize-call)))
          (declare (not safe))
          (call-with-parameters
           __tmp152885
           gxc#current-compile-methods
           __tmp152884))))
    (define gxc#optimize-call%
      (lambda (_stx152426_)
        (let* ((___stx152633152634_ _stx152426_)
               (_g152429152449_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx152633152634_)))))
          (let ((___kont152635152636_
                 (lambda (_L152493_ _L152494_)
                   (let* ((_rator-id152512_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L152494_)))
                          (_rator-type152514_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id152512_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type152514_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp152886
                                  (##structure-ref
                                   _rator-type152514_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id152512_
                              '" => "
                              _rator-type152514_
                              '" "
                              __tmp152886))
                           (let ((_optimized152517_
                                  (let ((__method152881
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type152514_
                                            'optimize-call))))
                                    (if __method152881
                                        (__method152881
                                         _rator-type152514_
                                         _stx152426_
                                         _L152493_)
                                        (let ()
                                          (declare (not safe))
                                          (error '"Missing method"
                                                 _rator-type152514_
                                                 'optimize-call))))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type152514_))
                                 _optimized152517_
                                 (let* ((___stx152615152616_ _optimized152517_)
                                        (_g152520152530_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx152615152616_)))))
                                   (let ((___kont152617152618_
                                          (lambda (_L152550_)
                                            (let ((__tmp152887
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L152550_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp152887
                                               _stx152426_))))
                                         (___kont152619152620_
                                          (lambda () _optimized152517_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx152615152616_))
                                         (let ((_e152525152542_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx152615152616_))))
                                           (let ((_tl152523152547_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e152525152542_)))
                                                 (_hd152524152545_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e152525152542_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd152524152545_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd152524152545_))
                                                     (___kont152617152618_
                                                      _tl152523152547_)
                                                     (___kont152619152620_))
                                                 (___kont152619152620_))))
                                         (___kont152619152620_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type152514_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx152426_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _stx152426_
                                _rator-type152514_)))))))
                (___kont152637152638_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _stx152426_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx152633152634_))
                (let ((_e152435152461_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx152633152634_))))
                  (let ((_tl152433152466_
                         (let () (declare (not safe)) (##cdr _e152435152461_)))
                        (_hd152434152464_
                         (let ()
                           (declare (not safe))
                           (##car _e152435152461_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl152433152466_))
                        (let ((_e152438152469_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl152433152466_))))
                          (let ((_tl152436152474_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e152438152469_)))
                                (_hd152437152472_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e152438152469_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd152437152472_))
                                (let ((_e152441152477_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd152437152472_))))
                                  (let ((_tl152439152482_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e152441152477_)))
                                        (_hd152440152480_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e152441152477_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd152440152480_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd152440152480_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl152439152482_))
                                                (let ((_e152444152485_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl152439152482_))))
                                                  (let ((_tl152442152490_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e152444152485_)))
                                                        (_hd152443152488_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e152444152485_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl152442152490_))
                                                        (___kont152635152636_
                                                         _tl152436152474_
                                                         _hd152443152488_)
                                                        (___kont152637152638_))))
                                                (___kont152637152638_))
                                            (___kont152637152638_))
                                        (___kont152637152638_))))
                                (___kont152637152638_))))
                        (___kont152637152638_))))
                (___kont152637152638_))))))
    (define gxc#!predicate::optimize-call
      (lambda (_self152380_ _stx152381_ _args152382_)
        (let* ((_g152384152394_
                (lambda (_g152385152391_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g152385152391_))))
               (_g152383152423_
                (lambda (_g152385152397_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g152385152397_))
                      (let ((_e152389152399_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g152385152397_))))
                        (let ((_hd152388152402_
                               (let ()
                                 (declare (not safe))
                                 (##car _e152389152399_)))
                              (_tl152387152404_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e152389152399_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl152387152404_))
                              ((lambda (_L152407_)
                                 (let* ((_klass152418_
                                         (let ((__tmp152888
                                                (##structure-ref
                                                 _self152380_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx152381_
                                            __tmp152888)))
                                        (_object152420_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L152407_))))
                                   (if (##structure-ref
                                        _klass152418_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp152904
                                              (let ((__tmp152905
                                                     (let ((__tmp152907
                                                            (let ((__tmp152908
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152909
                                  (##structure-ref
                                   _klass152418_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp152909 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp152908)))
                   (__tmp152906
                    (let () (declare (not safe)) (cons _object152420_ '()))))
               (declare (not safe))
               (cons __tmp152907 __tmp152906))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#struct-direct-instance?
                                                      __tmp152905))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp152904
                                          _stx152381_))
                                       (if (##structure-ref
                                            _klass152418_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp152898
                                                  (let ((__tmp152899
                                                         (let ((__tmp152901
                                                                (let ((__tmp152902
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp152903
                                      (##structure-ref
                                       _klass152418_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp152903 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp152902)))
                       (__tmp152900
                        (let ()
                          (declare (not safe))
                          (cons _object152420_ '()))))
                   (declare (not safe))
                   (cons __tmp152901 __tmp152900))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-instance?
                                                          __tmp152899))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp152898
                                              _stx152381_))
                                           (let ((__tmp152889
                                                  (let ((__tmp152890
                                                         (let ((__tmp152896
                                                                (let ((__tmp152897
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'class-instance? '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp152897)))
                       (__tmp152891
                        (let ((__tmp152893
                               (let ((__tmp152894
                                      (let ((__tmp152895
                                             (##structure-ref
                                              _self152380_
                                              '1
                                              gxc#!type::t
                                              '#f)))
                                        (declare (not safe))
                                        (cons __tmp152895 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp152894)))
                              (__tmp152892
                               (let ()
                                 (declare (not safe))
                                 (cons _object152420_ '()))))
                          (declare (not safe))
                          (cons __tmp152893 __tmp152892))))
                   (declare (not safe))
                   (cons __tmp152896 __tmp152891))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#call
                                                          __tmp152890))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp152889
                                              _stx152381_))))))
                               _hd152388152402_)
                              (let ()
                                (declare (not safe))
                                (_g152384152394_ _g152385152397_)))))
                      (let ()
                        (declare (not safe))
                        (_g152384152394_ _g152385152397_))))))
          (declare (not safe))
          (_g152383152423_ _args152382_))))
    (define gxc#!predicate::optimize-call::specialize
      (lambda (__klass152590 __method-table152591)
        (let ((__id152592
               (let ((__slot152593
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152590 'id))))
                 (if __slot152593
                     __slot152593
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self152380_ _stx152381_ _args152382_)
            (let* ((_g152384152394_
                    (lambda (_g152385152391_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g152385152391_))))
                   (_g152383152423_
                    (lambda (_g152385152397_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g152385152397_))
                          (let ((_e152389152399_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g152385152397_))))
                            (let ((_hd152388152402_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e152389152399_)))
                                  (_tl152387152404_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e152389152399_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl152387152404_))
                                  ((lambda (_L152407_)
                                     (let* ((_klass152418_
                                             (let ((__tmp152910
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self152380_
                                                       __id152592
                                                       __klass152590
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx152381_
                                                __tmp152910)))
                                            (_object152420_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L152407_))))
                                       (if (##structure-ref
                                            _klass152418_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp152926
                                                  (let ((__tmp152927
                                                         (let ((__tmp152929
                                                                (let ((__tmp152930
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp152931
                                      (##structure-ref
                                       _klass152418_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp152931 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp152930)))
                       (__tmp152928
                        (let ()
                          (declare (not safe))
                          (cons _object152420_ '()))))
                   (declare (not safe))
                   (cons __tmp152929 __tmp152928))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-direct-instance?
                                                          __tmp152927))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp152926
                                              _stx152381_))
                                           (if (##structure-ref
                                                _klass152418_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp152920
                                                      (let ((__tmp152921
                                                             (let ((__tmp152923
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp152924
                                   (let ((__tmp152925
                                          (##structure-ref
                                           _klass152418_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp152925 '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp152924)))
                           (__tmp152922
                            (let ()
                              (declare (not safe))
                              (cons _object152420_ '()))))
                       (declare (not safe))
                       (cons __tmp152923 __tmp152922))))
                (declare (not safe))
                (cons '%#struct-instance? __tmp152921))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp152920
                                                  _stx152381_))
                                               (let ((__tmp152911
                                                      (let ((__tmp152912
                                                             (let ((__tmp152918
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp152919
                                   (let ()
                                     (declare (not safe))
                                     (cons 'class-instance? '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp152919)))
                           (__tmp152913
                            (let ((__tmp152915
                                   (let ((__tmp152916
                                          (let ((__tmp152917
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _self152380_
                                                    __id152592
                                                    __klass152590
                                                    '#f))))
                                            (declare (not safe))
                                            (cons __tmp152917 '()))))
                                     (declare (not safe))
                                     (cons '%#ref __tmp152916)))
                                  (__tmp152914
                                   (let ()
                                     (declare (not safe))
                                     (cons _object152420_ '()))))
                              (declare (not safe))
                              (cons __tmp152915 __tmp152914))))
                       (declare (not safe))
                       (cons __tmp152918 __tmp152913))))
                (declare (not safe))
                (cons '%#call __tmp152912))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp152911
                                                  _stx152381_))))))
                                   _hd152388152402_)
                                  (let ()
                                    (declare (not safe))
                                    (_g152384152394_ _g152385152397_)))))
                          (let ()
                            (declare (not safe))
                            (_g152384152394_ _g152385152397_))))))
              (declare (not safe))
              (_g152383152423_ _args152382_))))))
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
      (lambda (_self152100_ _stx152101_ _args152102_)
        (let* ((_klass152104_
                (let ((__tmp152932
                       (##structure-ref _self152100_ '1 gxc#!type::t '#f)))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _stx152101_ __tmp152932)))
               (_fields152106_
                (length (##structure-ref _klass152104_ '5 gxc#!class::t '#f)))
               (_args152108_ (map gxc#compile-e _args152102_))
               (_inline-make-object152110_
                (let ((__tmp152933
                       (let ((__tmp152939
                              (let ((__tmp152940
                                     (let ()
                                       (declare (not safe))
                                       (cons '##structure '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp152940)))
                             (__tmp152934
                              (let ((__tmp152936
                                     (let ((__tmp152937
                                            (let ((__tmp152938
                                                   (##structure-ref
                                                    _self152100_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp152938 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp152937)))
                                    (__tmp152935
                                     (let ()
                                       (declare (not safe))
                                       (make-list__%
                                        _fields152106_
                                        '(%#quote #f)))))
                                (declare (not safe))
                                (cons __tmp152936 __tmp152935))))
                         (declare (not safe))
                         (cons __tmp152939 __tmp152934))))
                  (declare (not safe))
                  (cons '%#call __tmp152933))))
          (let ((_$e152113_
                 (##structure-ref _klass152104_ '6 gxc#!class::t '#f)))
            (if _$e152113_
                ((lambda (_ctor152116_)
                   (let ((_$obj152118_
                          (let ((__tmp153040 (gensym '__obj)))
                            (declare (not safe))
                            (make-symbol__0 __tmp153040)))
                         (_ctor-impl152119_
                          (let ()
                            (declare (not safe))
                            (gxc#!class-lookup-method
                             _klass152104_
                             _ctor152116_))))
                     (let ((__tmp153041
                            (let ((__tmp153042
                                   (let ((__tmp153110
                                          (let ((__tmp153111
                                                 (let ((__tmp153113
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj152118_
                                                                '())))
                                                       (__tmp153112
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _inline-make-object152110_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp153113
                                                         __tmp153112))))
                                            (declare (not safe))
                                            (cons __tmp153111 '())))
                                         (__tmp153043
                                          (let ((__tmp153044
                                                 (let ((__tmp153045
                                                        (let ((__tmp153049
                                                               (if _ctor-impl152119_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153104
                                  (let ((__tmp153108
                                         (let ((__tmp153109
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _ctor-impl152119_
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp153109)))
                                        (__tmp153105
                                         (let ((__tmp153106
                                                (let ((__tmp153107
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj152118_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp153107))))
                                           (declare (not safe))
                                           (cons __tmp153106 _args152108_))))
                                    (declare (not safe))
                                    (cons __tmp153108 __tmp153105))))
                             (declare (not safe))
                             (cons '%#call __tmp153104))
                           (let* ((_$ctor152121_
                                   (let ((__tmp153050 (gensym '__constructor)))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp153050)))
                                  (__tmp153051
                                   (let ((__tmp153086
                                          (let ((__tmp153087
                                                 (let ((__tmp153103
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$ctor152121_
                                                                '())))
                                                       (__tmp153088
                                                        (let ((__tmp153089
                                                               (let ((__tmp153090
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp153101
                                     (let ((__tmp153102
                                            (let ()
                                              (declare (not safe))
                                              (cons 'direct-method-ref '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp153102)))
                                    (__tmp153091
                                     (let ((__tmp153098
                                            (let ((__tmp153099
                                                   (let ((__tmp153100
                                                          (##structure-ref
                                                           _self152100_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp153100 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp153099)))
                                           (__tmp153092
                                            (let ((__tmp153096
                                                   (let ((__tmp153097
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj152118_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153097)))
                                                  (__tmp153093
                                                   (let ((__tmp153094
                                                          (let ((__tmp153095
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _ctor152116_ '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp153095))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153094 '()))))
                                              (declare (not safe))
                                              (cons __tmp153096 __tmp153093))))
                                       (declare (not safe))
                                       (cons __tmp153098 __tmp153092))))
                                (declare (not safe))
                                (cons __tmp153101 __tmp153091))))
                         (declare (not safe))
                         (cons '%#call __tmp153090))))
                  (declare (not safe))
                  (cons __tmp153089 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153103
                                                         __tmp153088))))
                                            (declare (not safe))
                                            (cons __tmp153087 '())))
                                         (__tmp153052
                                          (let ((__tmp153053
                                                 (let ((__tmp153054
                                                        (let ((__tmp153084
                                                               (let ((__tmp153085
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$ctor152121_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp153085)))
                      (__tmp153055
                       (let ((__tmp153077
                              (let ((__tmp153078
                                     (let ((__tmp153082
                                            (let ((__tmp153083
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$ctor152121_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp153083)))
                                           (__tmp153079
                                            (let ((__tmp153080
                                                   (let ((__tmp153081
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj152118_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153081))))
                                              (declare (not safe))
                                              (cons __tmp153080
                                                    _args152108_))))
                                       (declare (not safe))
                                       (cons __tmp153082 __tmp153079))))
                                (declare (not safe))
                                (cons '%#call __tmp153078)))
                             (__tmp153056
                              (let ((__tmp153057
                                     (let ((__tmp153058
                                            (let ((__tmp153075
                                                   (let ((__tmp153076
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153076)))
                                                  (__tmp153059
                                                   (let ((__tmp153073
                                                          (let ((__tmp153074
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons '"missing constructor method implementation"
                                 '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp153074)))
                 (__tmp153060
                  (let ((__tmp153071
                         (let ((__tmp153072
                                (let ()
                                  (declare (not safe))
                                  (cons 'class: '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp153072)))
                        (__tmp153061
                         (let ((__tmp153068
                                (let ((__tmp153069
                                       (let ((__tmp153070
                                              (##structure-ref
                                               _self152100_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp153070 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp153069)))
                               (__tmp153062
                                (let ((__tmp153066
                                       (let ((__tmp153067
                                              (let ()
                                                (declare (not safe))
                                                (cons 'method: '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp153067)))
                                      (__tmp153063
                                       (let ((__tmp153064
                                              (let ((__tmp153065
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _ctor152116_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#quote __tmp153065))))
                                         (declare (not safe))
                                         (cons __tmp153064 '()))))
                                  (declare (not safe))
                                  (cons __tmp153066 __tmp153063))))
                           (declare (not safe))
                           (cons __tmp153068 __tmp153062))))
                    (declare (not safe))
                    (cons __tmp153071 __tmp153061))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153073
                                                           __tmp153060))))
                                              (declare (not safe))
                                              (cons __tmp153075 __tmp153059))))
                                       (declare (not safe))
                                       (cons '%#call __tmp153058))))
                                (declare (not safe))
                                (cons __tmp153057 '()))))
                         (declare (not safe))
                         (cons __tmp153077 __tmp153056))))
                  (declare (not safe))
                  (cons __tmp153084 __tmp153055))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#if __tmp153054))))
                                            (declare (not safe))
                                            (cons __tmp153053 '()))))
                                     (declare (not safe))
                                     (cons __tmp153086 __tmp153052))))
                             (declare (not safe))
                             (cons '%#let-values __tmp153051))))
                      (__tmp153046
                       (let ((__tmp153047
                              (let ((__tmp153048
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj152118_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp153048))))
                         (declare (not safe))
                         (cons __tmp153047 '()))))
                  (declare (not safe))
                  (cons __tmp153049 __tmp153046))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#begin
                                                         __tmp153045))))
                                            (declare (not safe))
                                            (cons __tmp153044 '()))))
                                     (declare (not safe))
                                     (cons __tmp153110 __tmp153043))))
                              (declare (not safe))
                              (cons '%#let-values __tmp153042))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp153041 _stx152101_))))
                 _$e152113_)
                (let ((_$e152123_
                       (##structure-ref _klass152104_ '9 gxc#!class::t '#f)))
                  (if _$e152123_
                      ((lambda (_metaclass152126_)
                         (let* ((_$obj152128_
                                 (let ((__tmp153002 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp153002)))
                                (_metakons152130_
                                 (let ((__tmp153003
                                        (let ()
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-class
                                           _stx152101_
                                           _metaclass152126_))))
                                   (declare (not safe))
                                   (gxc#!class-lookup-method
                                    __tmp153003
                                    'instance-init!))))
                           (let ((__tmp153004
                                  (let ((__tmp153005
                                         (let ((__tmp153036
                                                (let ((__tmp153037
                                                       (let ((__tmp153039
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj152128_ '())))
                     (__tmp153038
                      (let ()
                        (declare (not safe))
                        (cons _inline-make-object152110_ '()))))
                 (declare (not safe))
                 (cons __tmp153039 __tmp153038))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153037 '())))
                                               (__tmp153006
                                                (let ((__tmp153007
                                                       (let ((__tmp153008
                                                              (let ((__tmp153012
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if _metakons152130_
                                 (let ((__tmp153026
                                        (let ((__tmp153034
                                               (let ((__tmp153035
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _metakons152130_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp153035)))
                                              (__tmp153027
                                               (let ((__tmp153031
                                                      (let ((__tmp153032
                                                             (let ((__tmp153033
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self152100_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp153033 '()))))
                (declare (not safe))
                (cons '%#ref __tmp153032)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp153028
                                                      (let ((__tmp153029
                                                             (let ((__tmp153030
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _$obj152128_ '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp153030))))
                (declare (not safe))
                (cons __tmp153029 _args152108_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp153031
                                                       __tmp153028))))
                                          (declare (not safe))
                                          (cons __tmp153034 __tmp153027))))
                                   (declare (not safe))
                                   (cons '%#call __tmp153026))
                                 (let ((__tmp153013
                                        (let ((__tmp153024
                                               (let ((__tmp153025
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'call-method
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp153025)))
                                              (__tmp153014
                                               (let ((__tmp153021
                                                      (let ((__tmp153022
                                                             (let ((__tmp153023
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self152100_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp153023 '()))))
                (declare (not safe))
                (cons '%#ref __tmp153022)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp153015
                                                      (let ((__tmp153019
                                                             (let ((__tmp153020
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'instance-init! '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp153020)))
                    (__tmp153016
                     (let ((__tmp153017
                            (let ((__tmp153018
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj152128_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp153018))))
                       (declare (not safe))
                       (cons __tmp153017 _args152108_))))
                (declare (not safe))
                (cons __tmp153019 __tmp153016))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp153021
                                                       __tmp153015))))
                                          (declare (not safe))
                                          (cons __tmp153024 __tmp153014))))
                                   (declare (not safe))
                                   (cons '%#call __tmp153013))))
                            (__tmp153009
                             (let ((__tmp153010
                                    (let ((__tmp153011
                                           (let ()
                                             (declare (not safe))
                                             (cons _$obj152128_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp153011))))
                               (declare (not safe))
                               (cons __tmp153010 '()))))
                        (declare (not safe))
                        (cons __tmp153012 __tmp153009))))
                 (declare (not safe))
                 (cons '%#begin __tmp153008))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153007 '()))))
                                           (declare (not safe))
                                           (cons __tmp153036 __tmp153006))))
                                    (declare (not safe))
                                    (cons '%#let-values __tmp153005))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp153004 _stx152101_))))
                       _$e152123_)
                      (if (##structure-ref _klass152104_ '7 gxc#!class::t '#f)
                          (if (fx= (length _args152108_) _fields152106_)
                              (let ((__tmp152994
                                     (let ((__tmp152995
                                            (let ((__tmp153000
                                                   (let ((__tmp153001
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153001)))
                                                  (__tmp152996
                                                   (let ((__tmp152997
                                                          (let ((__tmp152998
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp152999
                                (##structure-ref
                                 _self152100_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (cons __tmp152999 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp152998))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp152997
                                                           _args152108_))))
                                              (declare (not safe))
                                              (cons __tmp153000 __tmp152996))))
                                       (declare (not safe))
                                       (cons '%#call __tmp152995))))
                                (declare (not safe))
                                (gxc#xform-wrap-source
                                 __tmp152994
                                 _stx152101_))
                              (let ((__tmp152993
                                     (##structure-ref
                                      _self152100_
                                      '1
                                      gxc#!type::t
                                      '#f))
                                    (__tmp152992
                                     (length (##structure-ref
                                              _klass152104_
                                              '5
                                              gxc#!class::t
                                              '#f))))
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"illegal struct constructor application; arity mismatch"
                                 _stx152101_
                                 __tmp152993
                                 __tmp152992)))
                          (let ((_$obj152133_
                                 (let ((__tmp152941 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp152941))))
                            (let _lp152135_ ((_rest152137_ _args152108_)
                                             (_initializers152138_ '()))
                              (let* ((___stx152671152672_ _rest152137_)
                                     (_g152142152163_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx152671152672_)))))
                                (let ((___kont152673152674_
                                       (lambda (_L152217_ _L152218_ _L152219_)
                                         (let* ((_slot152250_
                                                 (keyword->symbol
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e _L152219_))))
                                                (_off152252_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass152104_
                                                    _slot152250_))))
                                           (if _off152252_
                                               (let ((__tmp152943
                                                      (let ((__tmp152944
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _off152252_ _L152218_))))
                (declare (not safe))
                (cons __tmp152944 _initializers152138_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp152135_
                                                  _L152217_
                                                  __tmp152943))
                                               (let ((__tmp152942
                                                      (##structure-ref
                                                       _self152100_
                                                       '1
                                                       gxc#!type::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"unknown slot"
                                                  _stx152101_
                                                  __tmp152942
                                                  _slot152250_))))))
                                      (___kont152675152676_
                                       (lambda ()
                                         (let ((__tmp152945
                                                (let ((__tmp152946
                                                       (let ((__tmp152969
                                                              (let ((__tmp152970
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp152972
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj152133_ '())))
                                   (__tmp152971
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object152110_ '()))))
                               (declare (not safe))
                               (cons __tmp152972 __tmp152971))))
                        (declare (not safe))
                        (cons __tmp152970 '())))
                     (__tmp152947
                      (let ((__tmp152948
                             (let ((__tmp152949
                                    (let ((__tmp152966
                                           (let ((__tmp152967
                                                  (let ((__tmp152968
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj152133_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp152968))))
                                             (declare (not safe))
                                             (cons __tmp152967 '())))
                                          (__tmp152950
                                           (let ((__tmp152951
                                                  (lambda (_i152177_ _r152178_)
                                                    (let ((__tmp152952
                                                           (let ((__tmp152953
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp152963
                                 (let ((__tmp152964
                                        (let ((__tmp152965
                                               (##structure-ref
                                                _self152100_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp152965 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp152964)))
                                (__tmp152954
                                 (let ((__tmp152960
                                        (let ((__tmp152961
                                               (let ((__tmp152962
                                                      (car _i152177_)))
                                                 (declare (not safe))
                                                 (cons __tmp152962 '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp152961)))
                                       (__tmp152955
                                        (let ((__tmp152958
                                               (let ((__tmp152959
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _$obj152133_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp152959)))
                                              (__tmp152956
                                               (let ((__tmp152957
                                                      (cdr _i152177_)))
                                                 (declare (not safe))
                                                 (cons __tmp152957 '()))))
                                          (declare (not safe))
                                          (cons __tmp152958 __tmp152956))))
                                   (declare (not safe))
                                   (cons __tmp152960 __tmp152955))))
                            (declare (not safe))
                            (cons __tmp152963 __tmp152954))))
                     (declare (not safe))
                     (cons '%#struct-unchecked-set! __tmp152953))))
              (declare (not safe))
              (cons __tmp152952 _r152178_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (foldl1 __tmp152951
                                                     '()
                                                     _initializers152138_))))
                                      (declare (not safe))
                                      (foldr1 cons __tmp152966 __tmp152950))))
                               (declare (not safe))
                               (cons '%#begin __tmp152949))))
                        (declare (not safe))
                        (cons __tmp152948 '()))))
                 (declare (not safe))
                 (cons __tmp152969 __tmp152947))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp152946))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp152945
                                            _stx152101_))))
                                      (___kont152677152678_
                                       (lambda ()
                                         (let ((__tmp152973
                                                (let ((__tmp152974
                                                       (let ((__tmp152988
                                                              (let ((__tmp152989
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp152991
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj152133_ '())))
                                   (__tmp152990
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object152110_ '()))))
                               (declare (not safe))
                               (cons __tmp152991 __tmp152990))))
                        (declare (not safe))
                        (cons __tmp152989 '())))
                     (__tmp152975
                      (let ((__tmp152976
                             (let ((__tmp152977
                                    (let ((__tmp152981
                                           (let ((__tmp152982
                                                  (let ((__tmp152986
                                                         (let ((__tmp152987
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons 'class-instance-init! '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp152987)))
                (__tmp152983
                 (let ((__tmp152984
                        (let ((__tmp152985
                               (let ()
                                 (declare (not safe))
                                 (cons _$obj152133_ '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp152985))))
                   (declare (not safe))
                   (cons __tmp152984 _args152108_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp152986
                                                          __tmp152983))))
                                             (declare (not safe))
                                             (cons '%#call __tmp152982)))
                                          (__tmp152978
                                           (let ((__tmp152979
                                                  (let ((__tmp152980
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj152133_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp152980))))
                                             (declare (not safe))
                                             (cons __tmp152979 '()))))
                                      (declare (not safe))
                                      (cons __tmp152981 __tmp152978))))
                               (declare (not safe))
                               (cons '%#begin __tmp152977))))
                        (declare (not safe))
                        (cons __tmp152976 '()))))
                 (declare (not safe))
                 (cons __tmp152988 __tmp152975))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp152974))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp152973
                                            _stx152101_)))))
                                  (let* ((_g152140152180_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   ___stx152671152672_))
                                                (___kont152675152676_)
                                                (___kont152677152678_))))
                                         (___match152708152709_
                                          (lambda (_e152149152185_
                                                   _hd152148152188_
                                                   _tl152147152190_
                                                   _e152152152193_
                                                   _hd152151152196_
                                                   _tl152150152198_
                                                   _e152155152201_
                                                   _hd152154152204_
                                                   _tl152153152206_
                                                   _e152158152209_
                                                   _hd152157152212_
                                                   _tl152156152214_)
                                            (let ((_L152217_ _tl152156152214_)
                                                  (_L152218_ _hd152157152212_)
                                                  (_L152219_ _hd152154152204_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-keyword?
                                                     _L152219_))
                                                  (___kont152673152674_
                                                   _L152217_
                                                   _L152218_
                                                   _L152219_)
                                                  (___kont152677152678_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx152671152672_))
                                        (let ((_e152149152185_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx152671152672_))))
                                          (let ((_tl152147152190_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e152149152185_)))
                                                (_hd152148152188_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e152149152185_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd152148152188_))
                                                (let ((_e152152152193_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd152148152188_))))
                                                  (let ((_tl152150152198_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e152152152193_)))
                                                        (_hd152151152196_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e152152152193_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd152151152196_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#quote
                                                               _hd152151152196_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl152150152198_))
                        (let ((_e152155152201_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl152150152198_))))
                          (let ((_tl152153152206_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e152155152201_)))
                                (_hd152154152204_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e152155152201_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl152153152206_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl152147152190_))
                                    (let ((_e152158152209_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl152147152190_))))
                                      (let ((_tl152156152214_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e152158152209_)))
                                            (_hd152157152212_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e152158152209_))))
                                        (___match152708152709_
                                         _e152149152185_
                                         _hd152148152188_
                                         _tl152147152190_
                                         _e152152152193_
                                         _hd152151152196_
                                         _tl152150152198_
                                         _e152155152201_
                                         _hd152154152204_
                                         _tl152153152206_
                                         _e152158152209_
                                         _hd152157152212_
                                         _tl152156152214_)))
                                    (___kont152677152678_))
                                (___kont152677152678_))))
                        (___kont152677152678_))
                    (___kont152677152678_))
                (___kont152677152678_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont152677152678_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g152140152180_))))))))))))))))
    (define gxc#!constructor::optimize-call::specialize
      (lambda (__klass152594 __method-table152595)
        (let ((__id152596
               (let ((__slot152597
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152594 'id))))
                 (if __slot152597
                     __slot152597
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self152100_ _stx152101_ _args152102_)
            (let* ((_klass152104_
                    (let ((__tmp153114
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _self152100_
                              __id152596
                              __klass152594
                              '#f))))
                      (declare (not safe))
                      (gxc#optimizer-resolve-class _stx152101_ __tmp153114)))
                   (_fields152106_
                    (length (##structure-ref
                             _klass152104_
                             '5
                             gxc#!class::t
                             '#f)))
                   (_args152108_ (map gxc#compile-e _args152102_))
                   (_inline-make-object152110_
                    (let ((__tmp153115
                           (let ((__tmp153121
                                  (let ((__tmp153122
                                         (let ()
                                           (declare (not safe))
                                           (cons '##structure '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp153122)))
                                 (__tmp153116
                                  (let ((__tmp153118
                                         (let ((__tmp153119
                                                (let ((__tmp153120
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self152100_
                                                          __id152596
                                                          __klass152594
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp153120 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp153119)))
                                        (__tmp153117
                                         (let ()
                                           (declare (not safe))
                                           (make-list__%
                                            _fields152106_
                                            '(%#quote #f)))))
                                    (declare (not safe))
                                    (cons __tmp153118 __tmp153117))))
                             (declare (not safe))
                             (cons __tmp153121 __tmp153116))))
                      (declare (not safe))
                      (cons '%#call __tmp153115))))
              (let ((_$e152113_
                     (##structure-ref _klass152104_ '6 gxc#!class::t '#f)))
                (if _$e152113_
                    ((lambda (_ctor152116_)
                       (let ((_$obj152118_
                              (let ((__tmp153222 (gensym '__obj)))
                                (declare (not safe))
                                (make-symbol__0 __tmp153222)))
                             (_ctor-impl152119_
                              (let ()
                                (declare (not safe))
                                (gxc#!class-lookup-method
                                 _klass152104_
                                 _ctor152116_))))
                         (let ((__tmp153223
                                (let ((__tmp153224
                                       (let ((__tmp153292
                                              (let ((__tmp153293
                                                     (let ((__tmp153295
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$obj152118_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp153294
                    (let ()
                      (declare (not safe))
                      (cons _inline-make-object152110_ '()))))
               (declare (not safe))
               (cons __tmp153295 __tmp153294))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp153293 '())))
                                             (__tmp153225
                                              (let ((__tmp153226
                                                     (let ((__tmp153227
                                                            (let ((__tmp153231
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _ctor-impl152119_
                               (let ((__tmp153286
                                      (let ((__tmp153290
                                             (let ((__tmp153291
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor-impl152119_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp153291)))
                                            (__tmp153287
                                             (let ((__tmp153288
                                                    (let ((__tmp153289
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$obj152118_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp153289))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153288
                                                     _args152108_))))
                                        (declare (not safe))
                                        (cons __tmp153290 __tmp153287))))
                                 (declare (not safe))
                                 (cons '%#call __tmp153286))
                               (let* ((_$ctor152121_
                                       (let ((__tmp153232
                                              (gensym '__constructor)))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp153232)))
                                      (__tmp153233
                                       (let ((__tmp153268
                                              (let ((__tmp153269
                                                     (let ((__tmp153285
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$ctor152121_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp153270
                    (let ((__tmp153271
                           (let ((__tmp153272
                                  (let ((__tmp153283
                                         (let ((__tmp153284
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'direct-method-ref
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp153284)))
                                        (__tmp153273
                                         (let ((__tmp153280
                                                (let ((__tmp153281
                                                       (let ((__tmp153282
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self152100_
                         __id152596
                         __klass152594
                         '#f))))
                 (declare (not safe))
                 (cons __tmp153282 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp153281)))
                                               (__tmp153274
                                                (let ((__tmp153278
                                                       (let ((__tmp153279
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj152118_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp153279)))
              (__tmp153275
               (let ((__tmp153276
                      (let ((__tmp153277
                             (let ()
                               (declare (not safe))
                               (cons _ctor152116_ '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp153277))))
                 (declare (not safe))
                 (cons __tmp153276 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153278
                                                        __tmp153275))))
                                           (declare (not safe))
                                           (cons __tmp153280 __tmp153274))))
                                    (declare (not safe))
                                    (cons __tmp153283 __tmp153273))))
                             (declare (not safe))
                             (cons '%#call __tmp153272))))
                      (declare (not safe))
                      (cons __tmp153271 '()))))
               (declare (not safe))
               (cons __tmp153285 __tmp153270))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp153269 '())))
                                             (__tmp153234
                                              (let ((__tmp153235
                                                     (let ((__tmp153236
                                                            (let ((__tmp153266
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153267
                                  (let ()
                                    (declare (not safe))
                                    (cons _$ctor152121_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp153267)))
                          (__tmp153237
                           (let ((__tmp153259
                                  (let ((__tmp153260
                                         (let ((__tmp153264
                                                (let ((__tmp153265
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$ctor152121_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp153265)))
                                               (__tmp153261
                                                (let ((__tmp153262
                                                       (let ((__tmp153263
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj152118_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp153263))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153262
                                                        _args152108_))))
                                           (declare (not safe))
                                           (cons __tmp153264 __tmp153261))))
                                    (declare (not safe))
                                    (cons '%#call __tmp153260)))
                                 (__tmp153238
                                  (let ((__tmp153239
                                         (let ((__tmp153240
                                                (let ((__tmp153257
                                                       (let ((__tmp153258
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'error '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp153258)))
              (__tmp153241
               (let ((__tmp153255
                      (let ((__tmp153256
                             (let ()
                               (declare (not safe))
                               (cons '"missing constructor method implementation"
                                     '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp153256)))
                     (__tmp153242
                      (let ((__tmp153253
                             (let ((__tmp153254
                                    (let ()
                                      (declare (not safe))
                                      (cons 'class: '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp153254)))
                            (__tmp153243
                             (let ((__tmp153250
                                    (let ((__tmp153251
                                           (let ((__tmp153252
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self152100_
                                                     __id152596
                                                     __klass152594
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp153252 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp153251)))
                                   (__tmp153244
                                    (let ((__tmp153248
                                           (let ((__tmp153249
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'method: '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp153249)))
                                          (__tmp153245
                                           (let ((__tmp153246
                                                  (let ((__tmp153247
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _ctor152116_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#quote
                                                          __tmp153247))))
                                             (declare (not safe))
                                             (cons __tmp153246 '()))))
                                      (declare (not safe))
                                      (cons __tmp153248 __tmp153245))))
                               (declare (not safe))
                               (cons __tmp153250 __tmp153244))))
                        (declare (not safe))
                        (cons __tmp153253 __tmp153243))))
                 (declare (not safe))
                 (cons __tmp153255 __tmp153242))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153257
                                                        __tmp153241))))
                                           (declare (not safe))
                                           (cons '%#call __tmp153240))))
                                    (declare (not safe))
                                    (cons __tmp153239 '()))))
                             (declare (not safe))
                             (cons __tmp153259 __tmp153238))))
                      (declare (not safe))
                      (cons __tmp153266 __tmp153237))))
               (declare (not safe))
               (cons '%#if __tmp153236))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp153235 '()))))
                                         (declare (not safe))
                                         (cons __tmp153268 __tmp153234))))
                                 (declare (not safe))
                                 (cons '%#let-values __tmp153233))))
                          (__tmp153228
                           (let ((__tmp153229
                                  (let ((__tmp153230
                                         (let ()
                                           (declare (not safe))
                                           (cons _$obj152118_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp153230))))
                             (declare (not safe))
                             (cons __tmp153229 '()))))
                      (declare (not safe))
                      (cons __tmp153231 __tmp153228))))
               (declare (not safe))
               (cons '%#begin __tmp153227))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp153226 '()))))
                                         (declare (not safe))
                                         (cons __tmp153292 __tmp153225))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp153224))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp153223 _stx152101_))))
                     _$e152113_)
                    (let ((_$e152123_
                           (##structure-ref
                            _klass152104_
                            '9
                            gxc#!class::t
                            '#f)))
                      (if _$e152123_
                          ((lambda (_metaclass152126_)
                             (let* ((_$obj152128_
                                     (let ((__tmp153184 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp153184)))
                                    (_metakons152130_
                                     (let ((__tmp153185
                                            (let ()
                                              (declare (not safe))
                                              (gxc#optimizer-resolve-class
                                               _stx152101_
                                               _metaclass152126_))))
                                       (declare (not safe))
                                       (gxc#!class-lookup-method
                                        __tmp153185
                                        'instance-init!))))
                               (let ((__tmp153186
                                      (let ((__tmp153187
                                             (let ((__tmp153218
                                                    (let ((__tmp153219
                                                           (let ((__tmp153221
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj152128_ '())))
                         (__tmp153220
                          (let ()
                            (declare (not safe))
                            (cons _inline-make-object152110_ '()))))
                     (declare (not safe))
                     (cons __tmp153221 __tmp153220))))
              (declare (not safe))
              (cons __tmp153219 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp153188
                                                    (let ((__tmp153189
                                                           (let ((__tmp153190
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp153194
                                 (if _metakons152130_
                                     (let ((__tmp153208
                                            (let ((__tmp153216
                                                   (let ((__tmp153217
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _metakons152130_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153217)))
                                                  (__tmp153209
                                                   (let ((__tmp153213
                                                          (let ((__tmp153214
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp153215
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self152100_
                                   __id152596
                                   __klass152594
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp153215 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp153214)))
                 (__tmp153210
                  (let ((__tmp153211
                         (let ((__tmp153212
                                (let ()
                                  (declare (not safe))
                                  (cons _$obj152128_ '()))))
                           (declare (not safe))
                           (cons '%#ref __tmp153212))))
                    (declare (not safe))
                    (cons __tmp153211 _args152108_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153213
                                                           __tmp153210))))
                                              (declare (not safe))
                                              (cons __tmp153216 __tmp153209))))
                                       (declare (not safe))
                                       (cons '%#call __tmp153208))
                                     (let ((__tmp153195
                                            (let ((__tmp153206
                                                   (let ((__tmp153207
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'call-method
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153207)))
                                                  (__tmp153196
                                                   (let ((__tmp153203
                                                          (let ((__tmp153204
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp153205
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self152100_
                                   __id152596
                                   __klass152594
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp153205 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp153204)))
                 (__tmp153197
                  (let ((__tmp153201
                         (let ((__tmp153202
                                (let ()
                                  (declare (not safe))
                                  (cons 'instance-init! '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp153202)))
                        (__tmp153198
                         (let ((__tmp153199
                                (let ((__tmp153200
                                       (let ()
                                         (declare (not safe))
                                         (cons _$obj152128_ '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp153200))))
                           (declare (not safe))
                           (cons __tmp153199 _args152108_))))
                    (declare (not safe))
                    (cons __tmp153201 __tmp153198))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153203
                                                           __tmp153197))))
                                              (declare (not safe))
                                              (cons __tmp153206 __tmp153196))))
                                       (declare (not safe))
                                       (cons '%#call __tmp153195))))
                                (__tmp153191
                                 (let ((__tmp153192
                                        (let ((__tmp153193
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$obj152128_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp153193))))
                                   (declare (not safe))
                                   (cons __tmp153192 '()))))
                            (declare (not safe))
                            (cons __tmp153194 __tmp153191))))
                     (declare (not safe))
                     (cons '%#begin __tmp153190))))
              (declare (not safe))
              (cons __tmp153189 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153218
                                                     __tmp153188))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp153187))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp153186
                                  _stx152101_))))
                           _$e152123_)
                          (if (##structure-ref
                               _klass152104_
                               '7
                               gxc#!class::t
                               '#f)
                              (if (fx= (length _args152108_) _fields152106_)
                                  (let ((__tmp153176
                                         (let ((__tmp153177
                                                (let ((__tmp153182
                                                       (let ((__tmp153183
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '##structure '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp153183)))
              (__tmp153178
               (let ((__tmp153179
                      (let ((__tmp153180
                             (let ((__tmp153181
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _self152100_
                                       __id152596
                                       __klass152594
                                       '#f))))
                               (declare (not safe))
                               (cons __tmp153181 '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp153180))))
                 (declare (not safe))
                 (cons __tmp153179 _args152108_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153182
                                                        __tmp153178))))
                                           (declare (not safe))
                                           (cons '%#call __tmp153177))))
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp153176
                                     _stx152101_))
                                  (let ((__tmp153175
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _self152100_
                                            __id152596
                                            __klass152594
                                            '#f)))
                                        (__tmp153174
                                         (length (##structure-ref
                                                  _klass152104_
                                                  '5
                                                  gxc#!class::t
                                                  '#f))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"illegal struct constructor application; arity mismatch"
                                     _stx152101_
                                     __tmp153175
                                     __tmp153174)))
                              (let ((_$obj152133_
                                     (let ((__tmp153123 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp153123))))
                                (let _lp152135_ ((_rest152137_ _args152108_)
                                                 (_initializers152138_ '()))
                                  (let* ((___stx152713152714_ _rest152137_)
                                         (_g152142152163_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               ___stx152713152714_)))))
                                    (let ((___kont152715152716_
                                           (lambda (_L152217_
                                                    _L152218_
                                                    _L152219_)
                                             (let* ((_slot152250_
                                                     (keyword->symbol
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L152219_))))
                                                    (_off152252_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass152104_
                                                        _slot152250_))))
                                               (if _off152252_
                                                   (let ((__tmp153125
                                                          (let ((__tmp153126
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _off152252_ _L152218_))))
                    (declare (not safe))
                    (cons __tmp153126 _initializers152138_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp152135_
                                                      _L152217_
                                                      __tmp153125))
                                                   (let ((__tmp153124
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _self152100_
                                                             __id152596
                                                             __klass152594
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"unknown slot"
                                                      _stx152101_
                                                      __tmp153124
                                                      _slot152250_))))))
                                          (___kont152717152718_
                                           (lambda ()
                                             (let ((__tmp153127
                                                    (let ((__tmp153128
                                                           (let ((__tmp153151
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp153152
                                 (let ((__tmp153154
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj152133_ '())))
                                       (__tmp153153
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object152110_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp153154 __tmp153153))))
                            (declare (not safe))
                            (cons __tmp153152 '())))
                         (__tmp153129
                          (let ((__tmp153130
                                 (let ((__tmp153131
                                        (let ((__tmp153148
                                               (let ((__tmp153149
                                                      (let ((__tmp153150
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj152133_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp153150))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp153149 '())))
                                              (__tmp153132
                                               (let ((__tmp153133
                                                      (lambda (_i152177_
                                                               _r152178_)
                                                        (let ((__tmp153134
                                                               (let ((__tmp153135
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp153145
                                     (let ((__tmp153146
                                            (let ((__tmp153147
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self152100_
                                                      __id152596
                                                      __klass152594
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp153147 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp153146)))
                                    (__tmp153136
                                     (let ((__tmp153142
                                            (let ((__tmp153143
                                                   (let ((__tmp153144
                                                          (car _i152177_)))
                                                     (declare (not safe))
                                                     (cons __tmp153144 '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp153143)))
                                           (__tmp153137
                                            (let ((__tmp153140
                                                   (let ((__tmp153141
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj152133_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153141)))
                                                  (__tmp153138
                                                   (let ((__tmp153139
                                                          (cdr _i152177_)))
                                                     (declare (not safe))
                                                     (cons __tmp153139 '()))))
                                              (declare (not safe))
                                              (cons __tmp153140 __tmp153138))))
                                       (declare (not safe))
                                       (cons __tmp153142 __tmp153137))))
                                (declare (not safe))
                                (cons __tmp153145 __tmp153136))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-set! __tmp153135))))
                  (declare (not safe))
                  (cons __tmp153134 _r152178_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl1 __tmp153133
                                                         '()
                                                         _initializers152138_))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp153148
                                                  __tmp153132))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp153131))))
                            (declare (not safe))
                            (cons __tmp153130 '()))))
                     (declare (not safe))
                     (cons __tmp153151 __tmp153129))))
              (declare (not safe))
              (cons '%#let-values __tmp153128))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp153127
                                                _stx152101_))))
                                          (___kont152719152720_
                                           (lambda ()
                                             (let ((__tmp153155
                                                    (let ((__tmp153156
                                                           (let ((__tmp153170
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp153171
                                 (let ((__tmp153173
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj152133_ '())))
                                       (__tmp153172
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object152110_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp153173 __tmp153172))))
                            (declare (not safe))
                            (cons __tmp153171 '())))
                         (__tmp153157
                          (let ((__tmp153158
                                 (let ((__tmp153159
                                        (let ((__tmp153163
                                               (let ((__tmp153164
                                                      (let ((__tmp153168
                                                             (let ((__tmp153169
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'class-instance-init! '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp153169)))
                    (__tmp153165
                     (let ((__tmp153166
                            (let ((__tmp153167
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj152133_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp153167))))
                       (declare (not safe))
                       (cons __tmp153166 _args152108_))))
                (declare (not safe))
                (cons __tmp153168 __tmp153165))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp153164)))
                                              (__tmp153160
                                               (let ((__tmp153161
                                                      (let ((__tmp153162
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj152133_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp153162))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp153161 '()))))
                                          (declare (not safe))
                                          (cons __tmp153163 __tmp153160))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp153159))))
                            (declare (not safe))
                            (cons __tmp153158 '()))))
                     (declare (not safe))
                     (cons __tmp153170 __tmp153157))))
              (declare (not safe))
              (cons '%#let-values __tmp153156))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp153155
                                                _stx152101_)))))
                                      (let* ((_g152140152180_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       ___stx152713152714_))
                                                    (___kont152717152718_)
                                                    (___kont152719152720_))))
                                             (___match152750152751_
                                              (lambda (_e152149152185_
                                                       _hd152148152188_
                                                       _tl152147152190_
                                                       _e152152152193_
                                                       _hd152151152196_
                                                       _tl152150152198_
                                                       _e152155152201_
                                                       _hd152154152204_
                                                       _tl152153152206_
                                                       _e152158152209_
                                                       _hd152157152212_
                                                       _tl152156152214_)
                                                (let ((_L152217_
                                                       _tl152156152214_)
                                                      (_L152218_
                                                       _hd152157152212_)
                                                      (_L152219_
                                                       _hd152154152204_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-keyword?
                                                         _L152219_))
                                                      (___kont152715152716_
                                                       _L152217_
                                                       _L152218_
                                                       _L152219_)
                                                      (___kont152719152720_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               ___stx152713152714_))
                                            (let ((_e152149152185_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      ___stx152713152714_))))
                                              (let ((_tl152147152190_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e152149152185_)))
                                                    (_hd152148152188_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e152149152185_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd152148152188_))
                                                    (let ((_e152152152193_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd152148152188_))))
                                                      (let ((_tl152150152198_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e152152152193_)))
                    (_hd152151152196_
                     (let () (declare (not safe)) (##car _e152152152193_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd152151152196_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd152151152196_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl152150152198_))
                            (let ((_e152155152201_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl152150152198_))))
                              (let ((_tl152153152206_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e152155152201_)))
                                    (_hd152154152204_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e152155152201_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl152153152206_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl152147152190_))
                                        (let ((_e152158152209_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl152147152190_))))
                                          (let ((_tl152156152214_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e152158152209_)))
                                                (_hd152157152212_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e152158152209_))))
                                            (___match152750152751_
                                             _e152149152185_
                                             _hd152148152188_
                                             _tl152147152190_
                                             _e152152152193_
                                             _hd152151152196_
                                             _tl152150152198_
                                             _e152155152201_
                                             _hd152154152204_
                                             _tl152153152206_
                                             _e152158152209_
                                             _hd152157152212_
                                             _tl152156152214_)))
                                        (___kont152719152720_))
                                    (___kont152719152720_))))
                            (___kont152719152720_))
                        (___kont152719152720_))
                    (___kont152719152720_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont152719152720_))))
                                            (let ()
                                              (declare (not safe))
                                              (_g152140152180_))))))))))))))))))
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
      (lambda (_self151923_ _stx151924_ _args151925_)
        (let* ((_g151927151937_
                (lambda (_g151928151934_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g151928151934_))))
               (_g151926151975_
                (lambda (_g151928151940_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g151928151940_))
                      (let ((_e151932151942_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g151928151940_))))
                        (let ((_hd151931151945_
                               (let ()
                                 (declare (not safe))
                                 (##car _e151932151942_)))
                              (_tl151930151947_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e151932151942_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl151930151947_))
                              ((lambda (_L151950_)
                                 (let* ((_klass151961_
                                         (let ((__tmp153296
                                                (##structure-ref
                                                 _self151923_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx151924_
                                            __tmp153296)))
                                        (_field151963_
                                         (let ((__tmp153297
                                                (##structure-ref
                                                 _self151923_
                                                 '2
                                                 gxc#!accessor::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _klass151961_
                                            __tmp153297)))
                                        (_object151965_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L151950_))))
                                   (if (##structure-ref
                                        _klass151961_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp153374
                                              (let ((__tmp153383
                                                     (if (##structure-ref
                                                          _self151923_
                                                          '3
                                                          gxc#!accessor::t
                                                          '#f)
                                                         '%#struct-direct-ref
                                                         '%#struct-unchecked-ref))
                                                    (__tmp153375
                                                     (let ((__tmp153380
                                                            (let ((__tmp153381
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153382
                                  (##structure-ref
                                   _self151923_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp153382 '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp153381)))
                   (__tmp153376
                    (let ((__tmp153378
                           (let ((__tmp153379
                                  (let ()
                                    (declare (not safe))
                                    (cons _field151963_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp153379)))
                          (__tmp153377
                           (let ()
                             (declare (not safe))
                             (cons _object151965_ '()))))
                      (declare (not safe))
                      (cons __tmp153378 __tmp153377))))
               (declare (not safe))
               (cons __tmp153380 __tmp153376))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp153383
                                                      __tmp153375))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp153374
                                          _stx151924_))
                                       (if (##structure-ref
                                            _klass151961_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp153364
                                                  (let ((__tmp153373
                                                         (if (##structure-ref
                                                              _self151923_
                                                              '3
                                                              gxc#!accessor::t
                                                              '#f)
                                                             '%#struct-ref
                                                             '%#struct-unchecked-ref))
                                                        (__tmp153365
                                                         (let ((__tmp153370
                                                                (let ((__tmp153371
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp153372
                                      (##structure-ref
                                       _self151923_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp153372 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp153371)))
                       (__tmp153366
                        (let ((__tmp153368
                               (let ((__tmp153369
                                      (let ()
                                        (declare (not safe))
                                        (cons _field151963_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp153369)))
                              (__tmp153367
                               (let ()
                                 (declare (not safe))
                                 (cons _object151965_ '()))))
                          (declare (not safe))
                          (cons __tmp153368 __tmp153367))))
                   (declare (not safe))
                   (cons __tmp153370 __tmp153366))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp153373
                                                          __tmp153365))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp153364
                                              _stx151924_))
                                           (let ((_$e151968_
                                                  (let ((__tmp153298
                                                         (##structure-ref
                                                          _self151923_
                                                          '2
                                                          gxc#!accessor::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _klass151961_
                                                     __tmp153298))))
                                             (if _$e151968_
                                                 ((lambda (_klass151971_)
                                                    (let ((__tmp153354
                                                           (let ((__tmp153363
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##structure-ref
                               _self151923_
                               '3
                               gxc#!accessor::t
                               '#f)
                              '%#struct-ref
                              '%#struct-unchecked-ref))
                         (__tmp153355
                          (let ((__tmp153360
                                 (let ((__tmp153361
                                        (let ((__tmp153362
                                               (##structure-ref
                                                _self151923_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp153362 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp153361)))
                                (__tmp153356
                                 (let ((__tmp153358
                                        (let ((__tmp153359
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _field151963_ '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp153359)))
                                       (__tmp153357
                                        (let ()
                                          (declare (not safe))
                                          (cons _object151965_ '()))))
                                   (declare (not safe))
                                   (cons __tmp153358 __tmp153357))))
                            (declare (not safe))
                            (cons __tmp153360 __tmp153356))))
                     (declare (not safe))
                     (cons __tmp153363 __tmp153355))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp153354 _stx151924_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e151968_)
                                                 (if (##structure-ref
                                                      _self151923_
                                                      '3
                                                      gxc#!accessor::t
                                                      '#f)
                                                     (let ((__tmp153308
                                                            (let* ((_$obj151973_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp153309 (gensym '__obj)))
                              (declare (not safe))
                              (make-symbol__0 __tmp153309)))
                           (__tmp153310
                            (let ((__tmp153350
                                   (let ((__tmp153351
                                          (let ((__tmp153353
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _$obj151973_ '())))
                                                (__tmp153352
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _object151965_ '()))))
                                            (declare (not safe))
                                            (cons __tmp153353 __tmp153352))))
                                     (declare (not safe))
                                     (cons __tmp153351 '())))
                                  (__tmp153311
                                   (let ((__tmp153312
                                          (let ((__tmp153313
                                                 (let ((__tmp153342
                                                        (let ((__tmp153343
                                                               (let ((__tmp153347
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp153348
                                     (let ((__tmp153349
                                            (##structure-ref
                                             _klass151961_
                                             '1
                                             gxc#!type::t
                                             '#f)))
                                       (declare (not safe))
                                       (cons __tmp153349 '()))))
                                (declare (not safe))
                                (cons '%#quote __tmp153348)))
                             (__tmp153344
                              (let ((__tmp153345
                                     (let ((__tmp153346
                                            (let ()
                                              (declare (not safe))
                                              (cons _$obj151973_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp153346))))
                                (declare (not safe))
                                (cons __tmp153345 '()))))
                         (declare (not safe))
                         (cons __tmp153347 __tmp153344))))
                  (declare (not safe))
                  (cons '%#struct-direct-instance? __tmp153343)))
               (__tmp153314
                (let ((__tmp153331
                       (let ((__tmp153332
                              (let ((__tmp153339
                                     (let ((__tmp153340
                                            (let ((__tmp153341
                                                   (##structure-ref
                                                    _self151923_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp153341 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp153340)))
                                    (__tmp153333
                                     (let ((__tmp153337
                                            (let ((__tmp153338
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field151963_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp153338)))
                                           (__tmp153334
                                            (let ((__tmp153335
                                                   (let ((__tmp153336
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj151973_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153336))))
                                              (declare (not safe))
                                              (cons __tmp153335 '()))))
                                       (declare (not safe))
                                       (cons __tmp153337 __tmp153334))))
                                (declare (not safe))
                                (cons __tmp153339 __tmp153333))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp153332)))
                      (__tmp153315
                       (let ((__tmp153316
                              (let ((__tmp153317
                                     (let ((__tmp153329
                                            (let ((__tmp153330
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'class-slot-ref
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp153330)))
                                           (__tmp153318
                                            (let ((__tmp153326
                                                   (let ((__tmp153327
                                                          (let ((__tmp153328
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref _self151923_ '1 gxc#!type::t '#f)))
                    (declare (not safe))
                    (cons __tmp153328 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153327)))
                                                  (__tmp153319
                                                   (let ((__tmp153324
                                                          (let ((__tmp153325
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj151973_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp153325)))
                 (__tmp153320
                  (let ((__tmp153321
                         (let ((__tmp153322
                                (let ((__tmp153323
                                       (##structure-ref
                                        _self151923_
                                        '2
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (cons __tmp153323 '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp153322))))
                    (declare (not safe))
                    (cons __tmp153321 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153324
                                                           __tmp153320))))
                                              (declare (not safe))
                                              (cons __tmp153326 __tmp153319))))
                                       (declare (not safe))
                                       (cons __tmp153329 __tmp153318))))
                                (declare (not safe))
                                (cons '%#call __tmp153317))))
                         (declare (not safe))
                         (cons __tmp153316 '()))))
                  (declare (not safe))
                  (cons __tmp153331 __tmp153315))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153342
                                                         __tmp153314))))
                                            (declare (not safe))
                                            (cons '%#if __tmp153313))))
                                     (declare (not safe))
                                     (cons __tmp153312 '()))))
                              (declare (not safe))
                              (cons __tmp153350 __tmp153311))))
                      (declare (not safe))
                      (cons '%#let-values __tmp153310))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp153308 _stx151924_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp153299
                                                            (let ((__tmp153300
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153306
                                  (let ((__tmp153307
                                         (let ()
                                           (declare (not safe))
                                           (cons 'unchecked-slot-ref '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp153307)))
                                 (__tmp153301
                                  (let ((__tmp153302
                                         (let ((__tmp153303
                                                (let ((__tmp153304
                                                       (let ((__tmp153305
                                                              (##structure-ref
                                                               _self151923_
                                                               '2
                                                               gxc#!accessor::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp153305
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote
                                                        __tmp153304))))
                                           (declare (not safe))
                                           (cons __tmp153303 '()))))
                                    (declare (not safe))
                                    (cons _object151965_ __tmp153302))))
                             (declare (not safe))
                             (cons __tmp153306 __tmp153301))))
                      (declare (not safe))
                      (cons '%#call __tmp153300))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp153299 _stx151924_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _hd151931151945_)
                              (let ()
                                (declare (not safe))
                                (_g151927151937_ _g151928151940_)))))
                      (let ()
                        (declare (not safe))
                        (_g151927151937_ _g151928151940_))))))
          (declare (not safe))
          (_g151926151975_ _args151925_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass152598 __method-table152599)
        (let ((__id152600
               (let ((__slot152603
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152598 'id))))
                 (if __slot152603
                     __slot152603
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__checked?152601
               (let ((__slot152604
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152598 'checked?))))
                 (if __slot152604
                     __slot152604
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__slot152602
               (let ((__slot152605
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152598 'slot))))
                 (if __slot152605
                     __slot152605
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_self151923_ _stx151924_ _args151925_)
            (let* ((_g151927151937_
                    (lambda (_g151928151934_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g151928151934_))))
                   (_g151926151975_
                    (lambda (_g151928151940_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g151928151940_))
                          (let ((_e151932151942_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g151928151940_))))
                            (let ((_hd151931151945_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e151932151942_)))
                                  (_tl151930151947_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e151932151942_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl151930151947_))
                                  ((lambda (_L151950_)
                                     (let* ((_klass151961_
                                             (let ((__tmp153384
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self151923_
                                                       __id152600
                                                       __klass152598
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx151924_
                                                __tmp153384)))
                                            (_field151963_
                                             (let ((__tmp153385
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self151923_
                                                       __slot152602
                                                       __klass152598
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _klass151961_
                                                __tmp153385)))
                                            (_object151965_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L151950_))))
                                       (if (##structure-ref
                                            _klass151961_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp153462
                                                  (let ((__tmp153471
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self151923_
                        __checked?152601
                        __klass152598
                        '#f))
                     '%#struct-direct-ref
                     '%#struct-unchecked-ref))
                (__tmp153463
                 (let ((__tmp153468
                        (let ((__tmp153469
                               (let ((__tmp153470
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _self151923_
                                         __id152600
                                         __klass152598
                                         '#f))))
                                 (declare (not safe))
                                 (cons __tmp153470 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp153469)))
                       (__tmp153464
                        (let ((__tmp153466
                               (let ((__tmp153467
                                      (let ()
                                        (declare (not safe))
                                        (cons _field151963_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp153467)))
                              (__tmp153465
                               (let ()
                                 (declare (not safe))
                                 (cons _object151965_ '()))))
                          (declare (not safe))
                          (cons __tmp153466 __tmp153465))))
                   (declare (not safe))
                   (cons __tmp153468 __tmp153464))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp153471
                                                          __tmp153463))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp153462
                                              _stx151924_))
                                           (if (##structure-ref
                                                _klass151961_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp153452
                                                      (let ((__tmp153461
                                                             (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self151923_
                            __checked?152601
                            __klass152598
                            '#f))
                         '%#struct-ref
                         '%#struct-unchecked-ref))
                    (__tmp153453
                     (let ((__tmp153458
                            (let ((__tmp153459
                                   (let ((__tmp153460
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self151923_
                                             __id152600
                                             __klass152598
                                             '#f))))
                                     (declare (not safe))
                                     (cons __tmp153460 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp153459)))
                           (__tmp153454
                            (let ((__tmp153456
                                   (let ((__tmp153457
                                          (let ()
                                            (declare (not safe))
                                            (cons _field151963_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp153457)))
                                  (__tmp153455
                                   (let ()
                                     (declare (not safe))
                                     (cons _object151965_ '()))))
                              (declare (not safe))
                              (cons __tmp153456 __tmp153455))))
                       (declare (not safe))
                       (cons __tmp153458 __tmp153454))))
                (declare (not safe))
                (cons __tmp153461 __tmp153453))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp153452
                                                  _stx151924_))
                                               (let ((_$e151968_
                                                      (let ((__tmp153386
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self151923_
                        __slot152602
                        __klass152598
                        '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _klass151961_ __tmp153386))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e151968_
                                                     ((lambda (_klass151971_)
                                                        (let ((__tmp153442
                                                               (let ((__tmp153451
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self151923_
                                     __checked?152601
                                     __klass152598
                                     '#f))
                                  '%#struct-ref
                                  '%#struct-unchecked-ref))
                             (__tmp153443
                              (let ((__tmp153448
                                     (let ((__tmp153449
                                            (let ((__tmp153450
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self151923_
                                                      __id152600
                                                      __klass152598
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp153450 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp153449)))
                                    (__tmp153444
                                     (let ((__tmp153446
                                            (let ((__tmp153447
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field151963_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp153447)))
                                           (__tmp153445
                                            (let ()
                                              (declare (not safe))
                                              (cons _object151965_ '()))))
                                       (declare (not safe))
                                       (cons __tmp153446 __tmp153445))))
                                (declare (not safe))
                                (cons __tmp153448 __tmp153444))))
                         (declare (not safe))
                         (cons __tmp153451 __tmp153443))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp153442 _stx151924_)))
              _$e151968_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _self151923_
                                                            __checked?152601
                                                            __klass152598
                                                            '#f))
                                                         (let ((__tmp153396
                                                                (let* ((_$obj151973_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp153397 (gensym '__obj)))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp153397)))
                               (__tmp153398
                                (let ((__tmp153438
                                       (let ((__tmp153439
                                              (let ((__tmp153441
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _$obj151973_
                                                             '())))
                                                    (__tmp153440
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _object151965_
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp153441
                                                      __tmp153440))))
                                         (declare (not safe))
                                         (cons __tmp153439 '())))
                                      (__tmp153399
                                       (let ((__tmp153400
                                              (let ((__tmp153401
                                                     (let ((__tmp153430
                                                            (let ((__tmp153431
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153435
                                  (let ((__tmp153436
                                         (let ((__tmp153437
                                                (##structure-ref
                                                 _klass151961_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp153437 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp153436)))
                                 (__tmp153432
                                  (let ((__tmp153433
                                         (let ((__tmp153434
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj151973_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp153434))))
                                    (declare (not safe))
                                    (cons __tmp153433 '()))))
                             (declare (not safe))
                             (cons __tmp153435 __tmp153432))))
                      (declare (not safe))
                      (cons '%#struct-direct-instance? __tmp153431)))
                   (__tmp153402
                    (let ((__tmp153419
                           (let ((__tmp153420
                                  (let ((__tmp153427
                                         (let ((__tmp153428
                                                (let ((__tmp153429
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self151923_
                                                          __id152600
                                                          __klass152598
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp153429 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp153428)))
                                        (__tmp153421
                                         (let ((__tmp153425
                                                (let ((__tmp153426
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field151963_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp153426)))
                                               (__tmp153422
                                                (let ((__tmp153423
                                                       (let ((__tmp153424
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj151973_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp153424))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153423 '()))))
                                           (declare (not safe))
                                           (cons __tmp153425 __tmp153422))))
                                    (declare (not safe))
                                    (cons __tmp153427 __tmp153421))))
                             (declare (not safe))
                             (cons '%#struct-unchecked-ref __tmp153420)))
                          (__tmp153403
                           (let ((__tmp153404
                                  (let ((__tmp153405
                                         (let ((__tmp153417
                                                (let ((__tmp153418
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-slot-ref
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp153418)))
                                               (__tmp153406
                                                (let ((__tmp153414
                                                       (let ((__tmp153415
                                                              (let ((__tmp153416
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self151923_
                                __id152600
                                __klass152598
                                '#f))))
                        (declare (not safe))
                        (cons __tmp153416 '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp153415)))
              (__tmp153407
               (let ((__tmp153412
                      (let ((__tmp153413
                             (let ()
                               (declare (not safe))
                               (cons _$obj151973_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp153413)))
                     (__tmp153408
                      (let ((__tmp153409
                             (let ((__tmp153410
                                    (let ((__tmp153411
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _self151923_
                                              __slot152602
                                              __klass152598
                                              '#f))))
                                      (declare (not safe))
                                      (cons __tmp153411 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp153410))))
                        (declare (not safe))
                        (cons __tmp153409 '()))))
                 (declare (not safe))
                 (cons __tmp153412 __tmp153408))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153414
                                                        __tmp153407))))
                                           (declare (not safe))
                                           (cons __tmp153417 __tmp153406))))
                                    (declare (not safe))
                                    (cons '%#call __tmp153405))))
                             (declare (not safe))
                             (cons __tmp153404 '()))))
                      (declare (not safe))
                      (cons __tmp153419 __tmp153403))))
               (declare (not safe))
               (cons __tmp153430 __tmp153402))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#if __tmp153401))))
                                         (declare (not safe))
                                         (cons __tmp153400 '()))))
                                  (declare (not safe))
                                  (cons __tmp153438 __tmp153399))))
                          (declare (not safe))
                          (cons '%#let-values __tmp153398))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp153396 _stx151924_))
                 (let ((__tmp153387
                        (let ((__tmp153388
                               (let ((__tmp153394
                                      (let ((__tmp153395
                                             (let ()
                                               (declare (not safe))
                                               (cons 'unchecked-slot-ref
                                                     '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp153395)))
                                     (__tmp153389
                                      (let ((__tmp153390
                                             (let ((__tmp153391
                                                    (let ((__tmp153392
                                                           (let ((__tmp153393
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _self151923_
                             __slot152602
                             __klass152598
                             '#f))))
                     (declare (not safe))
                     (cons __tmp153393 '()))))
              (declare (not safe))
              (cons '%#quote __tmp153392))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153391 '()))))
                                        (declare (not safe))
                                        (cons _object151965_ __tmp153390))))
                                 (declare (not safe))
                                 (cons __tmp153394 __tmp153389))))
                          (declare (not safe))
                          (cons '%#call __tmp153388))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp153387 _stx151924_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd151931151945_)
                                  (let ()
                                    (declare (not safe))
                                    (_g151927151937_ _g151928151940_)))))
                          (let ()
                            (declare (not safe))
                            (_g151927151937_ _g151928151940_))))))
              (declare (not safe))
              (_g151926151975_ _args151925_))))))
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
      (lambda (_self151728_ _stx151729_ _args151730_)
        (let* ((_g151732151746_
                (lambda (_g151733151743_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g151733151743_))))
               (_g151731151798_
                (lambda (_g151733151749_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g151733151749_))
                      (let ((_e151738151751_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g151733151749_))))
                        (let ((_hd151737151754_
                               (let ()
                                 (declare (not safe))
                                 (##car _e151738151751_)))
                              (_tl151736151756_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e151738151751_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl151736151756_))
                              (let ((_e151741151759_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl151736151756_))))
                                (let ((_hd151740151762_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e151741151759_)))
                                      (_tl151739151764_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e151741151759_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl151739151764_))
                                      ((lambda (_L151767_ _L151768_)
                                         (let* ((_klass151782_
                                                 (let ((__tmp153472
                                                        (##structure-ref
                                                         _self151728_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _stx151729_
                                                    __tmp153472)))
                                                (_field151784_
                                                 (let ((__tmp153473
                                                        (##structure-ref
                                                         _self151728_
                                                         '2
                                                         gxc#!mutator::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass151782_
                                                    __tmp153473)))
                                                (_object151786_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L151768_)))
                                                (_value151788_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L151767_))))
                                           (if (##structure-ref
                                                _klass151782_
                                                '8
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp153555
                                                      (let ((__tmp153565
                                                             (if (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _self151728_
                          '3
                          gxc#!mutator::t
                          '#f)
                         '%#struct-direct-set!
                         '%#struct-unchecked-set!))
                    (__tmp153556
                     (let ((__tmp153562
                            (let ((__tmp153563
                                   (let ((__tmp153564
                                          (##structure-ref
                                           _self151728_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp153564 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp153563)))
                           (__tmp153557
                            (let ((__tmp153560
                                   (let ((__tmp153561
                                          (let ()
                                            (declare (not safe))
                                            (cons _field151784_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp153561)))
                                  (__tmp153558
                                   (let ((__tmp153559
                                          (let ()
                                            (declare (not safe))
                                            (cons _value151788_ '()))))
                                     (declare (not safe))
                                     (cons _object151786_ __tmp153559))))
                              (declare (not safe))
                              (cons __tmp153560 __tmp153558))))
                       (declare (not safe))
                       (cons __tmp153562 __tmp153557))))
                (declare (not safe))
                (cons __tmp153565 __tmp153556))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp153555
                                                  _stx151729_))
                                               (if (##structure-ref
                                                    _klass151782_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp153544
                                                          (let ((__tmp153554
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##structure-ref
                              _self151728_
                              '3
                              gxc#!mutator::t
                              '#f)
                             '%#struct-set!
                             '%#struct-unchecked-set!))
                        (__tmp153545
                         (let ((__tmp153551
                                (let ((__tmp153552
                                       (let ((__tmp153553
                                              (##structure-ref
                                               _self151728_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp153553 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp153552)))
                               (__tmp153546
                                (let ((__tmp153549
                                       (let ((__tmp153550
                                              (let ()
                                                (declare (not safe))
                                                (cons _field151784_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp153550)))
                                      (__tmp153547
                                       (let ((__tmp153548
                                              (let ()
                                                (declare (not safe))
                                                (cons _value151788_ '()))))
                                         (declare (not safe))
                                         (cons _object151786_ __tmp153548))))
                                  (declare (not safe))
                                  (cons __tmp153549 __tmp153547))))
                           (declare (not safe))
                           (cons __tmp153551 __tmp153546))))
                    (declare (not safe))
                    (cons __tmp153554 __tmp153545))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp153544
                                                      _stx151729_))
                                                   (let ((_$e151791_
                                                          (let ((__tmp153474
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref
                          _self151728_
                          '2
                          gxc#!mutator::t
                          '#f)))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct _klass151782_ __tmp153474))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e151791_
                                                         ((lambda (_klass151794_)
                                                            (let ((__tmp153533
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153543
                                  (if (##structure-ref
                                       _self151728_
                                       '3
                                       gxc#!mutator::t
                                       '#f)
                                      '%#struct-set!
                                      '%#struct-unchecked-set!))
                                 (__tmp153534
                                  (let ((__tmp153540
                                         (let ((__tmp153541
                                                (let ((__tmp153542
                                                       (##structure-ref
                                                        _self151728_
                                                        '1
                                                        gxc#!type::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp153542 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp153541)))
                                        (__tmp153535
                                         (let ((__tmp153538
                                                (let ((__tmp153539
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field151784_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp153539)))
                                               (__tmp153536
                                                (let ((__tmp153537
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _value151788_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons _object151786_
                                                        __tmp153537))))
                                           (declare (not safe))
                                           (cons __tmp153538 __tmp153536))))
                                    (declare (not safe))
                                    (cons __tmp153540 __tmp153535))))
                             (declare (not safe))
                             (cons __tmp153543 __tmp153534))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp153533 _stx151729_)))
                  _$e151791_)
                 (if (##structure-ref _self151728_ '3 gxc#!mutator::t '#f)
                     (let ((__tmp153485
                            (let* ((_$obj151796_
                                    (let ((__tmp153486 (gensym '__obj)))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp153486)))
                                   (__tmp153487
                                    (let ((__tmp153529
                                           (let ((__tmp153530
                                                  (let ((__tmp153532
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj151796_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp153531
                 (let () (declare (not safe)) (cons _object151786_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp153532
                                                          __tmp153531))))
                                             (declare (not safe))
                                             (cons __tmp153530 '())))
                                          (__tmp153488
                                           (let ((__tmp153489
                                                  (let ((__tmp153490
                                                         (let ((__tmp153521
                                                                (let ((__tmp153522
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp153526
                                      (let ((__tmp153527
                                             (let ((__tmp153528
                                                    (##structure-ref
                                                     _klass151782_
                                                     '1
                                                     gxc#!type::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp153528 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp153527)))
                                     (__tmp153523
                                      (let ((__tmp153524
                                             (let ((__tmp153525
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj151796_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp153525))))
                                        (declare (not safe))
                                        (cons __tmp153524 '()))))
                                 (declare (not safe))
                                 (cons __tmp153526 __tmp153523))))
                          (declare (not safe))
                          (cons '%#struct-direct-instance? __tmp153522)))
                       (__tmp153491
                        (let ((__tmp153509
                               (let ((__tmp153510
                                      (let ((__tmp153518
                                             (let ((__tmp153519
                                                    (let ((__tmp153520
                                                           (##structure-ref
                                                            _self151728_
                                                            '1
                                                            gxc#!type::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (cons __tmp153520 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp153519)))
                                            (__tmp153511
                                             (let ((__tmp153516
                                                    (let ((__tmp153517
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field151784_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp153517)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp153512
                                                    (let ((__tmp153514
                                                           (let ((__tmp153515
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj151796_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp153515)))
                  (__tmp153513
                   (let () (declare (not safe)) (cons _value151788_ '()))))
              (declare (not safe))
              (cons __tmp153514 __tmp153513))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153516
                                                     __tmp153512))))
                                        (declare (not safe))
                                        (cons __tmp153518 __tmp153511))))
                                 (declare (not safe))
                                 (cons '%#struct-unchecked-set! __tmp153510)))
                              (__tmp153492
                               (let ((__tmp153493
                                      (let ((__tmp153494
                                             (let ((__tmp153507
                                                    (let ((__tmp153508
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp153508)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp153495
                                                    (let ((__tmp153504
                                                           (let ((__tmp153505
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp153506
                                 (##structure-ref
                                  _self151728_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (cons __tmp153506 '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp153505)))
                  (__tmp153496
                   (let ((__tmp153502
                          (let ((__tmp153503
                                 (let ()
                                   (declare (not safe))
                                   (cons _$obj151796_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp153503)))
                         (__tmp153497
                          (let ((__tmp153499
                                 (let ((__tmp153500
                                        (let ((__tmp153501
                                               (##structure-ref
                                                _self151728_
                                                '2
                                                gxc#!mutator::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp153501 '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp153500)))
                                (__tmp153498
                                 (let ()
                                   (declare (not safe))
                                   (cons _value151788_ '()))))
                            (declare (not safe))
                            (cons __tmp153499 __tmp153498))))
                     (declare (not safe))
                     (cons __tmp153502 __tmp153497))))
              (declare (not safe))
              (cons __tmp153504 __tmp153496))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153507
                                                     __tmp153495))))
                                        (declare (not safe))
                                        (cons '%#call __tmp153494))))
                                 (declare (not safe))
                                 (cons __tmp153493 '()))))
                          (declare (not safe))
                          (cons __tmp153509 __tmp153492))))
                   (declare (not safe))
                   (cons __tmp153521 __tmp153491))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#if __tmp153490))))
                                             (declare (not safe))
                                             (cons __tmp153489 '()))))
                                      (declare (not safe))
                                      (cons __tmp153529 __tmp153488))))
                              (declare (not safe))
                              (cons '%#let-values __tmp153487))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp153485 _stx151729_))
                     (let ((__tmp153475
                            (let ((__tmp153476
                                   (let ((__tmp153483
                                          (let ((__tmp153484
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'unchecked-slot-set!
                                                         '()))))
                                            (declare (not safe))
                                            (cons '%#ref __tmp153484)))
                                         (__tmp153477
                                          (let ((__tmp153478
                                                 (let ((__tmp153480
                                                        (let ((__tmp153481
                                                               (let ((__tmp153482
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##structure-ref
                               _self151728_
                               '2
                               gxc#!mutator::t
                               '#f)))
                         (declare (not safe))
                         (cons __tmp153482 '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp153481)))
               (__tmp153479
                (let () (declare (not safe)) (cons _value151788_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153480
                                                         __tmp153479))))
                                            (declare (not safe))
                                            (cons _object151786_
                                                  __tmp153478))))
                                     (declare (not safe))
                                     (cons __tmp153483 __tmp153477))))
                              (declare (not safe))
                              (cons '%#call __tmp153476))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp153475 _stx151729_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd151740151762_
                                       _hd151737151754_)
                                      (let ()
                                        (declare (not safe))
                                        (_g151732151746_ _g151733151749_)))))
                              (let ()
                                (declare (not safe))
                                (_g151732151746_ _g151733151749_)))))
                      (let ()
                        (declare (not safe))
                        (_g151732151746_ _g151733151749_))))))
          (declare (not safe))
          (_g151731151798_ _args151730_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass152606 __method-table152607)
        (let ((__id152608
               (let ((__slot152611
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152606 'id))))
                 (if __slot152611
                     __slot152611
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__checked?152609
               (let ((__slot152612
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152606 'checked?))))
                 (if __slot152612
                     __slot152612
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__slot152610
               (let ((__slot152613
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152606 'slot))))
                 (if __slot152613
                     __slot152613
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_self151728_ _stx151729_ _args151730_)
            (let* ((_g151732151746_
                    (lambda (_g151733151743_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g151733151743_))))
                   (_g151731151798_
                    (lambda (_g151733151749_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g151733151749_))
                          (let ((_e151738151751_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g151733151749_))))
                            (let ((_hd151737151754_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e151738151751_)))
                                  (_tl151736151756_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e151738151751_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl151736151756_))
                                  (let ((_e151741151759_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl151736151756_))))
                                    (let ((_hd151740151762_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e151741151759_)))
                                          (_tl151739151764_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e151741151759_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl151739151764_))
                                          ((lambda (_L151767_ _L151768_)
                                             (let* ((_klass151782_
                                                     (let ((__tmp153566
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self151728_
                                                               __id152608
                                                               __klass152606
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _stx151729_
                                                        __tmp153566)))
                                                    (_field151784_
                                                     (let ((__tmp153567
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self151728_
                                                               __slot152610
                                                               __klass152606
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass151782_
                                                        __tmp153567)))
                                                    (_object151786_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L151768_)))
                                                    (_value151788_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L151767_))))
                                               (if (##structure-ref
                                                    _klass151782_
                                                    '8
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp153649
                                                          (let ((__tmp153659
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self151728_
                                __checked?152609
                                __klass152606
                                '#f))
                             '%#struct-direct-set!
                             '%#struct-unchecked-set!))
                        (__tmp153650
                         (let ((__tmp153656
                                (let ((__tmp153657
                                       (let ((__tmp153658
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _self151728_
                                                 __id152608
                                                 __klass152606
                                                 '#f))))
                                         (declare (not safe))
                                         (cons __tmp153658 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp153657)))
                               (__tmp153651
                                (let ((__tmp153654
                                       (let ((__tmp153655
                                              (let ()
                                                (declare (not safe))
                                                (cons _field151784_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp153655)))
                                      (__tmp153652
                                       (let ((__tmp153653
                                              (let ()
                                                (declare (not safe))
                                                (cons _value151788_ '()))))
                                         (declare (not safe))
                                         (cons _object151786_ __tmp153653))))
                                  (declare (not safe))
                                  (cons __tmp153654 __tmp153652))))
                           (declare (not safe))
                           (cons __tmp153656 __tmp153651))))
                    (declare (not safe))
                    (cons __tmp153659 __tmp153650))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp153649
                                                      _stx151729_))
                                                   (if (##structure-ref
                                                        _klass151782_
                                                        '7
                                                        gxc#!class::t
                                                        '#f)
                                                       (let ((__tmp153638
                                                              (let ((__tmp153648
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _self151728_
                                    __checked?152609
                                    __klass152606
                                    '#f))
                                 '%#struct-set!
                                 '%#struct-unchecked-set!))
                            (__tmp153639
                             (let ((__tmp153645
                                    (let ((__tmp153646
                                           (let ((__tmp153647
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self151728_
                                                     __id152608
                                                     __klass152606
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp153647 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp153646)))
                                   (__tmp153640
                                    (let ((__tmp153643
                                           (let ((__tmp153644
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _field151784_ '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp153644)))
                                          (__tmp153641
                                           (let ((__tmp153642
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _value151788_ '()))))
                                             (declare (not safe))
                                             (cons _object151786_
                                                   __tmp153642))))
                                      (declare (not safe))
                                      (cons __tmp153643 __tmp153641))))
                               (declare (not safe))
                               (cons __tmp153645 __tmp153640))))
                        (declare (not safe))
                        (cons __tmp153648 __tmp153639))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp153638 _stx151729_))
               (let ((_$e151791_
                      (let ((__tmp153568
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self151728_
                                __slot152610
                                __klass152606
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _klass151782_
                         __tmp153568))))
                 (if _$e151791_
                     ((lambda (_klass151794_)
                        (let ((__tmp153627
                               (let ((__tmp153637
                                      (if (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self151728_
                                             __checked?152609
                                             __klass152606
                                             '#f))
                                          '%#struct-set!
                                          '%#struct-unchecked-set!))
                                     (__tmp153628
                                      (let ((__tmp153634
                                             (let ((__tmp153635
                                                    (let ((__tmp153636
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _self151728_
                                                              __id152608
                                                              __klass152606
                                                              '#f))))
                                                      (declare (not safe))
                                                      (cons __tmp153636 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp153635)))
                                            (__tmp153629
                                             (let ((__tmp153632
                                                    (let ((__tmp153633
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field151784_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp153633)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp153630
                                                    (let ((__tmp153631
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _value151788_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _object151786_ __tmp153631))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153632
                                                     __tmp153630))))
                                        (declare (not safe))
                                        (cons __tmp153634 __tmp153629))))
                                 (declare (not safe))
                                 (cons __tmp153637 __tmp153628))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp153627 _stx151729_)))
                      _$e151791_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self151728_
                            __checked?152609
                            __klass152606
                            '#f))
                         (let ((__tmp153579
                                (let* ((_$obj151796_
                                        (let ((__tmp153580 (gensym '__obj)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp153580)))
                                       (__tmp153581
                                        (let ((__tmp153623
                                               (let ((__tmp153624
                                                      (let ((__tmp153626
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj151796_ '())))
                    (__tmp153625
                     (let () (declare (not safe)) (cons _object151786_ '()))))
                (declare (not safe))
                (cons __tmp153626 __tmp153625))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp153624 '())))
                                              (__tmp153582
                                               (let ((__tmp153583
                                                      (let ((__tmp153584
                                                             (let ((__tmp153615
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp153616
                                   (let ((__tmp153620
                                          (let ((__tmp153621
                                                 (let ((__tmp153622
                                                        (##structure-ref
                                                         _klass151782_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp153622 '()))))
                                            (declare (not safe))
                                            (cons '%#quote __tmp153621)))
                                         (__tmp153617
                                          (let ((__tmp153618
                                                 (let ((__tmp153619
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj151796_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp153619))))
                                            (declare (not safe))
                                            (cons __tmp153618 '()))))
                                     (declare (not safe))
                                     (cons __tmp153620 __tmp153617))))
                              (declare (not safe))
                              (cons '%#struct-direct-instance? __tmp153616)))
                           (__tmp153585
                            (let ((__tmp153603
                                   (let ((__tmp153604
                                          (let ((__tmp153612
                                                 (let ((__tmp153613
                                                        (let ((__tmp153614
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _self151728_
                          __id152608
                          __klass152606
                          '#f))))
                  (declare (not safe))
                  (cons __tmp153614 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp153613)))
                                                (__tmp153605
                                                 (let ((__tmp153610
                                                        (let ((__tmp153611
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _field151784_ '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp153611)))
               (__tmp153606
                (let ((__tmp153608
                       (let ((__tmp153609
                              (let ()
                                (declare (not safe))
                                (cons _$obj151796_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp153609)))
                      (__tmp153607
                       (let () (declare (not safe)) (cons _value151788_ '()))))
                  (declare (not safe))
                  (cons __tmp153608 __tmp153607))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153610
                                                         __tmp153606))))
                                            (declare (not safe))
                                            (cons __tmp153612 __tmp153605))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp153604)))
                                  (__tmp153586
                                   (let ((__tmp153587
                                          (let ((__tmp153588
                                                 (let ((__tmp153601
                                                        (let ((__tmp153602
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons 'class-slot-set! '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp153602)))
               (__tmp153589
                (let ((__tmp153598
                       (let ((__tmp153599
                              (let ((__tmp153600
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _self151728_
                                        __id152608
                                        __klass152606
                                        '#f))))
                                (declare (not safe))
                                (cons __tmp153600 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp153599)))
                      (__tmp153590
                       (let ((__tmp153596
                              (let ((__tmp153597
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj151796_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp153597)))
                             (__tmp153591
                              (let ((__tmp153593
                                     (let ((__tmp153594
                                            (let ((__tmp153595
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self151728_
                                                      __slot152610
                                                      __klass152606
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp153595 '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp153594)))
                                    (__tmp153592
                                     (let ()
                                       (declare (not safe))
                                       (cons _value151788_ '()))))
                                (declare (not safe))
                                (cons __tmp153593 __tmp153592))))
                         (declare (not safe))
                         (cons __tmp153596 __tmp153591))))
                  (declare (not safe))
                  (cons __tmp153598 __tmp153590))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153601
                                                         __tmp153589))))
                                            (declare (not safe))
                                            (cons '%#call __tmp153588))))
                                     (declare (not safe))
                                     (cons __tmp153587 '()))))
                              (declare (not safe))
                              (cons __tmp153603 __tmp153586))))
                       (declare (not safe))
                       (cons __tmp153615 __tmp153585))))
                (declare (not safe))
                (cons '%#if __tmp153584))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp153583 '()))))
                                          (declare (not safe))
                                          (cons __tmp153623 __tmp153582))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp153581))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp153579 _stx151729_))
                         (let ((__tmp153569
                                (let ((__tmp153570
                                       (let ((__tmp153577
                                              (let ((__tmp153578
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons 'unchecked-slot-set!
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#ref __tmp153578)))
                                             (__tmp153571
                                              (let ((__tmp153572
                                                     (let ((__tmp153574
                                                            (let ((__tmp153575
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153576
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self151728_
                                     __slot152610
                                     __klass152606
                                     '#f))))
                             (declare (not safe))
                             (cons __tmp153576 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp153575)))
                   (__tmp153573
                    (let () (declare (not safe)) (cons _value151788_ '()))))
               (declare (not safe))
               (cons __tmp153574 __tmp153573))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _object151786_
                                                      __tmp153572))))
                                         (declare (not safe))
                                         (cons __tmp153577 __tmp153571))))
                                  (declare (not safe))
                                  (cons '%#call __tmp153570))))
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp153569
                            _stx151729_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _hd151740151762_
                                           _hd151737151754_)
                                          (let ()
                                            (declare (not safe))
                                            (_g151732151746_
                                             _g151733151749_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g151732151746_ _g151733151749_)))))
                          (let ()
                            (declare (not safe))
                            (_g151732151746_ _g151733151749_))))))
              (declare (not safe))
              (_g151731151798_ _args151730_))))))
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
      (lambda (_self151562_ _stx151563_ _args151564_)
        (let* ((_self151565151574_ _self151562_)
               (_E151567151578_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self151565151574_))))
               (_K151568151585_
                (lambda (_inline151581_ _dispatch151582_ _arity151583_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self151562_ _args151564_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx151563_
                         _arity151583_)))
                  (if _inline151581_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp153665
                               (let ((__tmp153666
                                      (_inline151581_ _stx151563_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp153666
                                  _stx151563_))))
                          (declare (not safe))
                          (gxc#compile-e__0 __tmp153665)))
                      (if _dispatch151582_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch151582_))
                            (let ((__tmp153660
                                   (let ((__tmp153661
                                          (let ((__tmp153662
                                                 (let ((__tmp153663
                                                        (let ((__tmp153664
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch151582_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp153664))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153663
                                                         _args151564_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp153662))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp153661
                                      _stx151563_))))
                              (declare (not safe))
                              (gxc#compile-e__0 __tmp153660)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _stx151563_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self151565151574_ 'gxc#!lambda::t))
              (let* ((_e151569151588_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151565151574_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e151570151591_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151565151574_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity151594_ _e151570151591_)
                     (_e151571151596_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151565151574_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch151599_ _e151571151596_)
                     (_e151572151601_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151565151574_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline151604_ _e151572151601_))
                (declare (not safe))
                (_K151568151585_
                 _inline151604_
                 _dispatch151599_
                 _arity151594_))
              (let () (declare (not safe)) (_E151567151578_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self151401_ _stx151402_ _args151403_)
        (let* ((_self151404151411_ _self151401_)
               (_E151406151415_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self151404151411_))))
               (_K151407151429_
                (lambda (_clauses151418_)
                  (let ((_$e151424_
                         (let ((__tmp153667
                                (lambda (_g151419151421_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g151419151421_
                                     _args151403_)))))
                           (declare (not safe))
                           (find __tmp153667 _clauses151418_))))
                    (if _$e151424_
                        ((lambda (_clause151427_)
                           (let ((__method152882
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause151427_
                                     'optimize-call))))
                             (if __method152882
                                 (__method152882
                                  _clause151427_
                                  _stx151402_
                                  _args151403_)
                                 (let ()
                                   (declare (not safe))
                                   (error '"Missing method"
                                          _clause151427_
                                          'optimize-call)))))
                         _$e151424_)
                        (let ((__tmp153668
                               (map gxc#!lambda-arity _clauses151418_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx151402_
                           __tmp153668)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self151404151411_
                 'gxc#!case-lambda::t))
              (let* ((_e151408151432_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151404151411_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e151409151435_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151404151411_
                         '2
                         gxc#!case-lambda::t
                         '#f)))
                     (_clauses151438_ _e151409151435_))
                (declare (not safe))
                (_K151407151429_ _clauses151438_))
              (let () (declare (not safe)) (_E151406151415_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self151215_ _args151216_)
        (let* ((_self151217151224_ _self151215_)
               (_E151219151228_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self151217151224_))))
               (_K151220151268_
                (lambda (_arity151231_)
                  (let* ((_arity151232151241_ _arity151231_)
                         (_E151235151245_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (error '"No clause matching"
                                     _arity151232151241_)))))
                    (let ((_K151239151265_
                           (lambda ()
                             (fx= (length _args151216_) _arity151231_)))
                          (_K151236151251_
                           (lambda (_arity151249_)
                             (fx>= (length _args151216_) _arity151249_))))
                      (let ((_try-match151234151261_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity151232151241_))
                                   (let ((_tl151238151256_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity151232151241_)))
                                         (_hd151237151254_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity151232151241_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl151238151256_))
                                         (let ((_arity151259_
                                                _hd151237151254_))
                                           (declare (not safe))
                                           (_K151236151251_ _arity151259_))
                                         (let ()
                                           (declare (not safe))
                                           (_E151235151245_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E151235151245_))))))
                        (if (let ()
                              (declare (not safe))
                              (fixnum? _arity151232151241_))
                            (let () (declare (not safe)) (_K151239151265_))
                            (let ()
                              (declare (not safe))
                              (_try-match151234151261_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self151217151224_ 'gxc#!lambda::t))
              (let* ((_e151221151271_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151217151224_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e151222151274_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151217151224_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity151277_ _e151222151274_))
                (declare (not safe))
                (_K151220151268_ _arity151277_))
              (let () (declare (not safe)) (_E151219151228_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self151100_ _stx151101_ _args151102_)
        (let* ((_self151103151111_ _self151100_)
               (_E151105151115_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self151103151111_))))
               (_K151106151199_
                (lambda (_dispatch151118_ _table151119_)
                  (let* ((_g151120151129_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch151118_)))
                         (_else151122151137_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch151118_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _stx151101_))))
                         (_K151124151183_
                          (lambda (_main151140_ _keys151141_)
                            (let ((_g153669_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx151101_
                                      _args151102_))))
                              (begin
                                (let ((_g153670_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g153669_)
                                             (##vector-length _g153669_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g153670_ 2)))
                                      (error "Context expects 2 values"
                                             _g153670_)))
                                (let ((_pargs151143_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g153669_ 0)))
                                      (_kwargs151144_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g153669_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main151140_))
                                    (if _table151119_
                                        (let ((_xargs151151_
                                               (map (lambda (_key151146_)
                                                      (let ((_$e151148_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq__0 _key151146_ _kwargs151144_))))
                (if _$e151148_ (values _$e151148_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys151141_)))
                                          (for-each
                                           (lambda (_kw151153_)
                                             (if (memq (car _kw151153_)
                                                       _keys151141_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx151101_
                                                    _keys151141_
                                                    _kw151153_))))
                                           _kwargs151144_)
                                          (let ((__tmp153722
                                                 (let ((__tmp153723
                                                        (let ((__tmp153724
                                                               (let ((__tmp153729
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp153730
                                     (let ()
                                       (declare (not safe))
                                       (cons _main151140_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp153730)))
                             (__tmp153725
                              (let ((__tmp153727
                                     (let ((__tmp153728
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp153728)))
                                    (__tmp153726
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs151143_
                                               _xargs151151_))))
                                (declare (not safe))
                                (cons __tmp153727 __tmp153726))))
                         (declare (not safe))
                         (cons __tmp153729 __tmp153725))))
                  (declare (not safe))
                  (cons '%#call __tmp153724))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp153723
                                                    _stx151101_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0 __tmp153722)))
                                        (let* ((_kwt151155_
                                                (let ((__tmp153671
                                                       (gensym '__kwt)))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp153671)))
                                               (_kwvars151158_
                                                (map (lambda (_g153672_)
                                                       (let ((__tmp153673
                                                              (gensym '__kw)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp153673)))
                                                     _kwargs151144_))
                                               (_kwbind151163_
                                                (map (lambda (_kw151160_
                                                              _kwvar151161_)
                                                       (let ((__tmp153676
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar151161_ '())))
                     (__tmp153674
                      (let ((__tmp153675 (cdr _kw151160_)))
                        (declare (not safe))
                        (cons __tmp153675 '()))))
                 (declare (not safe))
                 (cons __tmp153676 __tmp153674)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs151144_
                                                     _kwvars151158_))
                                               (_kwset151168_
                                                (map (lambda (_kw151165_
                                                              _kwvar151166_)
                                                       (let ((__tmp153677
                                                              (let ((__tmp153678
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp153686
                                    (let ((__tmp153687
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt151155_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp153687)))
                                   (__tmp153679
                                    (let ((__tmp153683
                                           (let ((__tmp153684
                                                  (let ((__tmp153685
                                                         (car _kw151165_)))
                                                    (declare (not safe))
                                                    (cons __tmp153685 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp153684)))
                                          (__tmp153680
                                           (let ((__tmp153681
                                                  (let ((__tmp153682
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar151166_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp153682))))
                                             (declare (not safe))
                                             (cons __tmp153681 '()))))
                                      (declare (not safe))
                                      (cons __tmp153683 __tmp153680))))
                               (declare (not safe))
                               (cons __tmp153686 __tmp153679))))
                        (declare (not safe))
                        (cons '(%#ref symbolic-table-set!) __tmp153678))))
                 (declare (not safe))
                 (cons '%#call __tmp153677)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs151144_
                                                     _kwvars151158_))
                                               (_xkwargs151173_
                                                (map (lambda (_kw151170_
                                                              _kwvar151171_)
                                                       (let ((__tmp153690
                                                              (car _kw151170_))
                                                             (__tmp153688
                                                              (let ((__tmp153689
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar151171_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp153689))))
                 (declare (not safe))
                 (cons __tmp153690 __tmp153688)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs151144_
                                                     _kwvars151158_))
                                               (_xargs151180_
                                                (map (lambda (_key151175_)
                                                       (let ((_$e151177_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq__0 _key151175_ _xkwargs151173_))))
                 (if _$e151177_ (values _$e151177_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys151141_)))
                                          (let ((__tmp153691
                                                 (let ((__tmp153692
                                                        (let ((__tmp153693
                                                               (let ((__tmp153694
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp153695
                                     (let ((__tmp153696
                                            (let ((__tmp153710
                                                   (let ((__tmp153711
                                                          (let ((__tmp153721
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt151155_ '())))
                        (__tmp153712
                         (let ((__tmp153713
                                (let ((__tmp153714
                                       (let ((__tmp153715
                                              (let ((__tmp153716
                                                     (let ((__tmp153718
                                                            (let ((__tmp153719
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153720 (length _kwargs151144_)))
                             (declare (not safe))
                             (cons __tmp153720 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp153719)))
                   (__tmp153717
                    (let () (declare (not safe)) (cons '(%#quote 0) '()))))
               (declare (not safe))
               (cons __tmp153718 __tmp153717))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-symbolic-table)
                                                      __tmp153716))))
                                         (declare (not safe))
                                         (cons '%#call __tmp153715))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp153714
                                   _stx151101_))))
                           (declare (not safe))
                           (cons __tmp153713 '()))))
                    (declare (not safe))
                    (cons __tmp153721 __tmp153712))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153711 '())))
                                                  (__tmp153697
                                                   (let ((__tmp153698
                                                          (let ((__tmp153699
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp153700
                                (let ((__tmp153701
                                       (let ((__tmp153702
                                              (let ((__tmp153703
                                                     (let ((__tmp153708
                                                            (let ((__tmp153709
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main151140_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp153709)))
                   (__tmp153704
                    (let ((__tmp153706
                           (let ((__tmp153707
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt151155_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp153707)))
                          (__tmp153705
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs151143_ _xargs151180_))))
                      (declare (not safe))
                      (cons __tmp153706 __tmp153705))))
               (declare (not safe))
               (cons __tmp153708 __tmp153704))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp153703))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp153702
                                          _stx151101_))))
                                  (declare (not safe))
                                  (cons __tmp153701 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp153700 _kwset151168_))))
                    (declare (not safe))
                    (cons '%#begin __tmp153699))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153698 '()))))
                                              (declare (not safe))
                                              (cons __tmp153710 __tmp153697))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp153696))))
                                (declare (not safe))
                                (cons __tmp153695 '()))))
                         (declare (not safe))
                         (cons _kwbind151163_ __tmp153694))))
                  (declare (not safe))
                  (cons '%#let-values __tmp153693))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp153692
                                                    _stx151101_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0
                                             __tmp153691)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g151120151129_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e151125151186_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g151120151129_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                               (_e151126151189_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g151120151129_
                                   '2
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_keys151192_ _e151126151189_)
                               (_e151127151194_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g151120151129_
                                   '3
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_main151197_ _e151127151194_))
                          (declare (not safe))
                          (_K151124151183_ _main151197_ _keys151192_))
                        (let () (declare (not safe)) (_else151122151137_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self151103151111_
                 'gxc#!kw-lambda::t))
              (let* ((_e151107151202_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151103151111_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e151108151205_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151103151111_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table151208_ _e151108151205_)
                     (_e151109151210_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151103151111_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch151213_ _e151109151210_))
                (declare (not safe))
                (_K151106151199_ _dispatch151213_ _table151208_))
              (let () (declare (not safe)) (_E151105151115_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx150713_ _args150714_)
        (let _lp150716_ ((_rest150718_ _args150714_)
                         (_pargs150719_ '())
                         (_kwargs150720_ '()))
          (let* ((___stx152764152765_ _rest150718_)
                 (_g150726150778_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx152764152765_)))))
            (let ((___kont152766152767_
                   (lambda (_L150957_ _L150958_)
                     (let ((__tmp153731
                            (let ()
                              (declare (not safe))
                              (cons _L150958_ _pargs150719_))))
                       (declare (not safe))
                       (_lp150716_ _L150957_ __tmp153731 _kwargs150720_))))
                  (___kont152768152769_
                   (lambda (_L150903_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L150903_ _pargs150719_))
                             (reverse _kwargs150720_))))
                  (___kont152770152771_
                   (lambda (_L150850_ _L150851_ _L150852_)
                     (let ((_kw150869_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _L150852_))))
                       (if (assq _kw150869_ _kwargs150720_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx150713_
                              _kw150869_))
                           (let ((__tmp153732
                                  (let ((__tmp153733
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw150869_ _L150851_))))
                                    (declare (not safe))
                                    (cons __tmp153733 _kwargs150720_))))
                             (declare (not safe))
                             (_lp150716_
                              _L150850_
                              _pargs150719_
                              __tmp153732))))))
                  (___kont152772152773_
                   (lambda (_L150798_ _L150799_)
                     (let ((__tmp153734
                            (let ()
                              (declare (not safe))
                              (cons _L150799_ _pargs150719_))))
                       (declare (not safe))
                       (_lp150716_ _L150798_ __tmp153734 _kwargs150720_))))
                  (___kont152774152775_
                   (lambda ()
                     (values (reverse _pargs150719_)
                             (reverse _kwargs150720_)))))
              (let* ((_g150725150785_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx152764152765_))
                            (___kont152774152775_)
                            (let () (declare (not safe)) (_g150726150778_)))))
                     (___match152871152872_
                      (lambda (_e150759150818_
                               _hd150758150821_
                               _tl150757150823_
                               _e150762150826_
                               _hd150761150829_
                               _tl150760150831_
                               _e150765150834_
                               _hd150764150837_
                               _tl150763150839_
                               _e150768150842_
                               _hd150767150845_
                               _tl150766150847_)
                        (let ((_L150850_ _tl150766150847_)
                              (_L150851_ _hd150767150845_)
                              (_L150852_ _hd150764150837_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L150852_))
                              (___kont152770152771_
                               _L150850_
                               _L150851_
                               _L150852_)
                              (___kont152772152773_
                               _tl150757150823_
                               _hd150758150821_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx152764152765_))
                    (let ((_e150732150922_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx152764152765_))))
                      (let ((_tl150730150927_
                             (let ()
                               (declare (not safe))
                               (##cdr _e150732150922_)))
                            (_hd150731150925_
                             (let ()
                               (declare (not safe))
                               (##car _e150732150922_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd150731150925_))
                            (let ((_e150735150930_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd150731150925_))))
                              (let ((_tl150733150935_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e150735150930_)))
                                    (_hd150734150933_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e150735150930_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd150734150933_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd150734150933_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl150733150935_))
                                            (let ((_e150738150938_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl150733150935_))))
                                              (let ((_tl150736150943_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e150738150938_)))
                                                    (_hd150737150941_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e150738150938_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd150737150941_))
                                                    (let ((_e150739150946_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd150737150941_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e150739150946_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl150736150943_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl150730150927_))
                          (let ((_e150742150949_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl150730150927_))))
                            (let ((_tl150740150954_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e150742150949_)))
                                  (_hd150741150952_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e150742150949_))))
                              (___kont152766152767_
                               _tl150740150954_
                               _hd150741150952_)))
                          (___kont152772152773_
                           _tl150730150927_
                           _hd150731150925_))
                      (___kont152772152773_ _tl150730150927_ _hd150731150925_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e150739150946_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl150736150943_))
                          (___kont152768152769_ _tl150730150927_)
                          (___kont152772152773_
                           _tl150730150927_
                           _hd150731150925_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl150736150943_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl150730150927_))
                              (let ((_e150768150842_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl150730150927_))))
                                (let ((_tl150766150847_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e150768150842_)))
                                      (_hd150767150845_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e150768150842_))))
                                  (___match152871152872_
                                   _e150732150922_
                                   _hd150731150925_
                                   _tl150730150927_
                                   _e150735150930_
                                   _hd150734150933_
                                   _tl150733150935_
                                   _e150738150938_
                                   _hd150737150941_
                                   _tl150736150943_
                                   _e150768150842_
                                   _hd150767150845_
                                   _tl150766150847_)))
                              (___kont152772152773_
                               _tl150730150927_
                               _hd150731150925_))
                          (___kont152772152773_
                           _tl150730150927_
                           _hd150731150925_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl150736150943_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl150730150927_))
                                                            (let ((_e150768150842_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl150730150927_))))
                      (let ((_tl150766150847_
                             (let ()
                               (declare (not safe))
                               (##cdr _e150768150842_)))
                            (_hd150767150845_
                             (let ()
                               (declare (not safe))
                               (##car _e150768150842_))))
                        (___match152871152872_
                         _e150732150922_
                         _hd150731150925_
                         _tl150730150927_
                         _e150735150930_
                         _hd150734150933_
                         _tl150733150935_
                         _e150738150938_
                         _hd150737150941_
                         _tl150736150943_
                         _e150768150842_
                         _hd150767150845_
                         _tl150766150847_)))
                    (___kont152772152773_ _tl150730150927_ _hd150731150925_))
                (___kont152772152773_ _tl150730150927_ _hd150731150925_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont152772152773_
                                             _tl150730150927_
                                             _hd150731150925_))
                                        (___kont152772152773_
                                         _tl150730150927_
                                         _hd150731150925_))
                                    (___kont152772152773_
                                     _tl150730150927_
                                     _hd150731150925_))))
                            (___kont152772152773_
                             _tl150730150927_
                             _hd150731150925_))))
                    (let () (declare (not safe)) (_g150725150785_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self150709_ _stx150710_ _args150711_)
        (let () (declare (not safe)) (gxc#xform-call% _stx150710_))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
