(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1709229974)
  (begin
    (define gxc#&optimize-call
      (make-promise
       (lambda ()
         (let ((_tbl152583_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp152878 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-merge! _tbl152583_ __tmp152878))
           (let ()
             (declare (not safe))
             (hash-put! _tbl152583_ '%#call gxc#optimize-call%))
           _tbl152583_))))
    (define gxc#apply-optimize-call
      (lambda (_stx152566_ . _args152568_)
        (let ((__tmp152880
               (lambda ()
                 (declare (not safe))
                 (if (null? _args152568_)
                     (gxc#compile-e__0 _stx152566_)
                     (let ((_arg1152573_ (car _args152568_))
                           (_rest152575_ (cdr _args152568_)))
                       (if (null? _rest152575_)
                           (gxc#compile-e__1 _stx152566_ _arg1152573_)
                           (let ((_arg2152578_ (car _rest152575_))
                                 (_rest152580_ (cdr _rest152575_)))
                             (if (null? _rest152580_)
                                 (gxc#compile-e__2
                                  _stx152566_
                                  _arg1152573_
                                  _arg2152578_)
                                 (apply gxc#compile-e
                                        _stx152566_
                                        _arg1152573_
                                        _arg2152578_
                                        _rest152580_))))))))
              (__tmp152879 (force gxc#&optimize-call)))
          (declare (not safe))
          (call-with-parameters
           __tmp152880
           gxc#current-compile-methods
           __tmp152879))))
    (define gxc#optimize-call%
      (lambda (_stx152421_)
        (let* ((___stx152628152629_ _stx152421_)
               (_g152424152444_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx152628152629_)))))
          (let ((___kont152630152631_
                 (lambda (_L152488_ _L152489_)
                   (let* ((_rator-id152507_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L152489_)))
                          (_rator-type152509_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id152507_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type152509_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp152881
                                  (##structure-ref
                                   _rator-type152509_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id152507_
                              '" => "
                              _rator-type152509_
                              '" "
                              __tmp152881))
                           (let ((_optimized152512_
                                  (let ((__method152876
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type152509_
                                            'optimize-call))))
                                    (if __method152876
                                        (__method152876
                                         _rator-type152509_
                                         _stx152421_
                                         _L152488_)
                                        (let ()
                                          (declare (not safe))
                                          (error '"Missing method"
                                                 _rator-type152509_
                                                 'optimize-call))))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type152509_))
                                 _optimized152512_
                                 (let* ((___stx152610152611_ _optimized152512_)
                                        (_g152515152525_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx152610152611_)))))
                                   (let ((___kont152612152613_
                                          (lambda (_L152545_)
                                            (let ((__tmp152882
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L152545_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp152882
                                               _stx152421_))))
                                         (___kont152614152615_
                                          (lambda () _optimized152512_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx152610152611_))
                                         (let ((_e152520152537_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx152610152611_))))
                                           (let ((_tl152518152542_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e152520152537_)))
                                                 (_hd152519152540_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e152520152537_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd152519152540_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd152519152540_))
                                                     (___kont152612152613_
                                                      _tl152518152542_)
                                                     (___kont152614152615_))
                                                 (___kont152614152615_))))
                                         (___kont152614152615_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type152509_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx152421_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _stx152421_
                                _rator-type152509_)))))))
                (___kont152632152633_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _stx152421_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx152628152629_))
                (let ((_e152430152456_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx152628152629_))))
                  (let ((_tl152428152461_
                         (let () (declare (not safe)) (##cdr _e152430152456_)))
                        (_hd152429152459_
                         (let ()
                           (declare (not safe))
                           (##car _e152430152456_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl152428152461_))
                        (let ((_e152433152464_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl152428152461_))))
                          (let ((_tl152431152469_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e152433152464_)))
                                (_hd152432152467_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e152433152464_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd152432152467_))
                                (let ((_e152436152472_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd152432152467_))))
                                  (let ((_tl152434152477_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e152436152472_)))
                                        (_hd152435152475_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e152436152472_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd152435152475_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd152435152475_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl152434152477_))
                                                (let ((_e152439152480_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl152434152477_))))
                                                  (let ((_tl152437152485_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e152439152480_)))
                                                        (_hd152438152483_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e152439152480_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl152437152485_))
                                                        (___kont152630152631_
                                                         _tl152431152469_
                                                         _hd152438152483_)
                                                        (___kont152632152633_))))
                                                (___kont152632152633_))
                                            (___kont152632152633_))
                                        (___kont152632152633_))))
                                (___kont152632152633_))))
                        (___kont152632152633_))))
                (___kont152632152633_))))))
    (define gxc#!predicate::optimize-call
      (lambda (_self152375_ _stx152376_ _args152377_)
        (let* ((_g152379152389_
                (lambda (_g152380152386_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g152380152386_))))
               (_g152378152418_
                (lambda (_g152380152392_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g152380152392_))
                      (let ((_e152384152394_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g152380152392_))))
                        (let ((_hd152383152397_
                               (let ()
                                 (declare (not safe))
                                 (##car _e152384152394_)))
                              (_tl152382152399_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e152384152394_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl152382152399_))
                              ((lambda (_L152402_)
                                 (let* ((_klass152413_
                                         (let ((__tmp152883
                                                (##structure-ref
                                                 _self152375_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx152376_
                                            __tmp152883)))
                                        (_object152415_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L152402_))))
                                   (if (##structure-ref
                                        _klass152413_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp152899
                                              (let ((__tmp152900
                                                     (let ((__tmp152902
                                                            (let ((__tmp152903
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152904
                                  (##structure-ref
                                   _klass152413_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp152904 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp152903)))
                   (__tmp152901
                    (let () (declare (not safe)) (cons _object152415_ '()))))
               (declare (not safe))
               (cons __tmp152902 __tmp152901))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#struct-direct-instance?
                                                      __tmp152900))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp152899
                                          _stx152376_))
                                       (if (##structure-ref
                                            _klass152413_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp152893
                                                  (let ((__tmp152894
                                                         (let ((__tmp152896
                                                                (let ((__tmp152897
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp152898
                                      (##structure-ref
                                       _klass152413_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp152898 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp152897)))
                       (__tmp152895
                        (let ()
                          (declare (not safe))
                          (cons _object152415_ '()))))
                   (declare (not safe))
                   (cons __tmp152896 __tmp152895))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-instance?
                                                          __tmp152894))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp152893
                                              _stx152376_))
                                           (let ((__tmp152884
                                                  (let ((__tmp152885
                                                         (let ((__tmp152891
                                                                (let ((__tmp152892
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'class-instance? '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp152892)))
                       (__tmp152886
                        (let ((__tmp152888
                               (let ((__tmp152889
                                      (let ((__tmp152890
                                             (##structure-ref
                                              _self152375_
                                              '1
                                              gxc#!type::t
                                              '#f)))
                                        (declare (not safe))
                                        (cons __tmp152890 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp152889)))
                              (__tmp152887
                               (let ()
                                 (declare (not safe))
                                 (cons _object152415_ '()))))
                          (declare (not safe))
                          (cons __tmp152888 __tmp152887))))
                   (declare (not safe))
                   (cons __tmp152891 __tmp152886))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#call
                                                          __tmp152885))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp152884
                                              _stx152376_))))))
                               _hd152383152397_)
                              (let ()
                                (declare (not safe))
                                (_g152379152389_ _g152380152392_)))))
                      (let ()
                        (declare (not safe))
                        (_g152379152389_ _g152380152392_))))))
          (declare (not safe))
          (_g152378152418_ _args152377_))))
    (define gxc#!predicate::optimize-call::specialize
      (lambda (__klass152585 __method-table152586)
        (let ((__id152587
               (let ((__slot152588
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152585 'id))))
                 (if __slot152588
                     __slot152588
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self152375_ _stx152376_ _args152377_)
            (let* ((_g152379152389_
                    (lambda (_g152380152386_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g152380152386_))))
                   (_g152378152418_
                    (lambda (_g152380152392_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g152380152392_))
                          (let ((_e152384152394_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g152380152392_))))
                            (let ((_hd152383152397_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e152384152394_)))
                                  (_tl152382152399_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e152384152394_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl152382152399_))
                                  ((lambda (_L152402_)
                                     (let* ((_klass152413_
                                             (let ((__tmp152905
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self152375_
                                                       __id152587
                                                       __klass152585
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx152376_
                                                __tmp152905)))
                                            (_object152415_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L152402_))))
                                       (if (##structure-ref
                                            _klass152413_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp152921
                                                  (let ((__tmp152922
                                                         (let ((__tmp152924
                                                                (let ((__tmp152925
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp152926
                                      (##structure-ref
                                       _klass152413_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp152926 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp152925)))
                       (__tmp152923
                        (let ()
                          (declare (not safe))
                          (cons _object152415_ '()))))
                   (declare (not safe))
                   (cons __tmp152924 __tmp152923))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-direct-instance?
                                                          __tmp152922))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp152921
                                              _stx152376_))
                                           (if (##structure-ref
                                                _klass152413_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp152915
                                                      (let ((__tmp152916
                                                             (let ((__tmp152918
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp152919
                                   (let ((__tmp152920
                                          (##structure-ref
                                           _klass152413_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp152920 '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp152919)))
                           (__tmp152917
                            (let ()
                              (declare (not safe))
                              (cons _object152415_ '()))))
                       (declare (not safe))
                       (cons __tmp152918 __tmp152917))))
                (declare (not safe))
                (cons '%#struct-instance? __tmp152916))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp152915
                                                  _stx152376_))
                                               (let ((__tmp152906
                                                      (let ((__tmp152907
                                                             (let ((__tmp152913
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp152914
                                   (let ()
                                     (declare (not safe))
                                     (cons 'class-instance? '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp152914)))
                           (__tmp152908
                            (let ((__tmp152910
                                   (let ((__tmp152911
                                          (let ((__tmp152912
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _self152375_
                                                    __id152587
                                                    __klass152585
                                                    '#f))))
                                            (declare (not safe))
                                            (cons __tmp152912 '()))))
                                     (declare (not safe))
                                     (cons '%#ref __tmp152911)))
                                  (__tmp152909
                                   (let ()
                                     (declare (not safe))
                                     (cons _object152415_ '()))))
                              (declare (not safe))
                              (cons __tmp152910 __tmp152909))))
                       (declare (not safe))
                       (cons __tmp152913 __tmp152908))))
                (declare (not safe))
                (cons '%#call __tmp152907))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp152906
                                                  _stx152376_))))))
                                   _hd152383152397_)
                                  (let ()
                                    (declare (not safe))
                                    (_g152379152389_ _g152380152392_)))))
                          (let ()
                            (declare (not safe))
                            (_g152379152389_ _g152380152392_))))))
              (declare (not safe))
              (_g152378152418_ _args152377_))))))
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
      (lambda (_self152095_ _stx152096_ _args152097_)
        (let* ((_klass152099_
                (let ((__tmp152927
                       (##structure-ref _self152095_ '1 gxc#!type::t '#f)))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _stx152096_ __tmp152927)))
               (_fields152101_
                (length (##structure-ref _klass152099_ '5 gxc#!class::t '#f)))
               (_args152103_ (map gxc#compile-e _args152097_))
               (_inline-make-object152105_
                (let ((__tmp152928
                       (let ((__tmp152934
                              (let ((__tmp152935
                                     (let ()
                                       (declare (not safe))
                                       (cons '##structure '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp152935)))
                             (__tmp152929
                              (let ((__tmp152931
                                     (let ((__tmp152932
                                            (let ((__tmp152933
                                                   (##structure-ref
                                                    _self152095_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp152933 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp152932)))
                                    (__tmp152930
                                     (let ()
                                       (declare (not safe))
                                       (make-list__%
                                        _fields152101_
                                        '(%#quote #f)))))
                                (declare (not safe))
                                (cons __tmp152931 __tmp152930))))
                         (declare (not safe))
                         (cons __tmp152934 __tmp152929))))
                  (declare (not safe))
                  (cons '%#call __tmp152928))))
          (let ((_$e152108_
                 (##structure-ref _klass152099_ '6 gxc#!class::t '#f)))
            (if _$e152108_
                ((lambda (_ctor152111_)
                   (let ((_$obj152113_
                          (let ((__tmp153035 (gensym '__obj)))
                            (declare (not safe))
                            (make-symbol__0 __tmp153035)))
                         (_ctor-impl152114_
                          (let ()
                            (declare (not safe))
                            (gxc#!class-lookup-method
                             _klass152099_
                             _ctor152111_))))
                     (let ((__tmp153036
                            (let ((__tmp153037
                                   (let ((__tmp153105
                                          (let ((__tmp153106
                                                 (let ((__tmp153108
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj152113_
                                                                '())))
                                                       (__tmp153107
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _inline-make-object152105_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp153108
                                                         __tmp153107))))
                                            (declare (not safe))
                                            (cons __tmp153106 '())))
                                         (__tmp153038
                                          (let ((__tmp153039
                                                 (let ((__tmp153040
                                                        (let ((__tmp153044
                                                               (if _ctor-impl152114_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153099
                                  (let ((__tmp153103
                                         (let ((__tmp153104
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _ctor-impl152114_
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp153104)))
                                        (__tmp153100
                                         (let ((__tmp153101
                                                (let ((__tmp153102
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj152113_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp153102))))
                                           (declare (not safe))
                                           (cons __tmp153101 _args152103_))))
                                    (declare (not safe))
                                    (cons __tmp153103 __tmp153100))))
                             (declare (not safe))
                             (cons '%#call __tmp153099))
                           (let* ((_$ctor152116_
                                   (let ((__tmp153045 (gensym '__constructor)))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp153045)))
                                  (__tmp153046
                                   (let ((__tmp153081
                                          (let ((__tmp153082
                                                 (let ((__tmp153098
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$ctor152116_
                                                                '())))
                                                       (__tmp153083
                                                        (let ((__tmp153084
                                                               (let ((__tmp153085
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp153096
                                     (let ((__tmp153097
                                            (let ()
                                              (declare (not safe))
                                              (cons 'direct-method-ref '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp153097)))
                                    (__tmp153086
                                     (let ((__tmp153093
                                            (let ((__tmp153094
                                                   (let ((__tmp153095
                                                          (##structure-ref
                                                           _self152095_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp153095 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp153094)))
                                           (__tmp153087
                                            (let ((__tmp153091
                                                   (let ((__tmp153092
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj152113_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153092)))
                                                  (__tmp153088
                                                   (let ((__tmp153089
                                                          (let ((__tmp153090
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _ctor152111_ '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp153090))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153089 '()))))
                                              (declare (not safe))
                                              (cons __tmp153091 __tmp153088))))
                                       (declare (not safe))
                                       (cons __tmp153093 __tmp153087))))
                                (declare (not safe))
                                (cons __tmp153096 __tmp153086))))
                         (declare (not safe))
                         (cons '%#call __tmp153085))))
                  (declare (not safe))
                  (cons __tmp153084 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153098
                                                         __tmp153083))))
                                            (declare (not safe))
                                            (cons __tmp153082 '())))
                                         (__tmp153047
                                          (let ((__tmp153048
                                                 (let ((__tmp153049
                                                        (let ((__tmp153079
                                                               (let ((__tmp153080
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$ctor152116_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp153080)))
                      (__tmp153050
                       (let ((__tmp153072
                              (let ((__tmp153073
                                     (let ((__tmp153077
                                            (let ((__tmp153078
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$ctor152116_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp153078)))
                                           (__tmp153074
                                            (let ((__tmp153075
                                                   (let ((__tmp153076
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj152113_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153076))))
                                              (declare (not safe))
                                              (cons __tmp153075
                                                    _args152103_))))
                                       (declare (not safe))
                                       (cons __tmp153077 __tmp153074))))
                                (declare (not safe))
                                (cons '%#call __tmp153073)))
                             (__tmp153051
                              (let ((__tmp153052
                                     (let ((__tmp153053
                                            (let ((__tmp153070
                                                   (let ((__tmp153071
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153071)))
                                                  (__tmp153054
                                                   (let ((__tmp153068
                                                          (let ((__tmp153069
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons '"missing constructor method implementation"
                                 '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp153069)))
                 (__tmp153055
                  (let ((__tmp153066
                         (let ((__tmp153067
                                (let ()
                                  (declare (not safe))
                                  (cons 'class: '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp153067)))
                        (__tmp153056
                         (let ((__tmp153063
                                (let ((__tmp153064
                                       (let ((__tmp153065
                                              (##structure-ref
                                               _self152095_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp153065 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp153064)))
                               (__tmp153057
                                (let ((__tmp153061
                                       (let ((__tmp153062
                                              (let ()
                                                (declare (not safe))
                                                (cons 'method: '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp153062)))
                                      (__tmp153058
                                       (let ((__tmp153059
                                              (let ((__tmp153060
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _ctor152111_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#quote __tmp153060))))
                                         (declare (not safe))
                                         (cons __tmp153059 '()))))
                                  (declare (not safe))
                                  (cons __tmp153061 __tmp153058))))
                           (declare (not safe))
                           (cons __tmp153063 __tmp153057))))
                    (declare (not safe))
                    (cons __tmp153066 __tmp153056))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153068
                                                           __tmp153055))))
                                              (declare (not safe))
                                              (cons __tmp153070 __tmp153054))))
                                       (declare (not safe))
                                       (cons '%#call __tmp153053))))
                                (declare (not safe))
                                (cons __tmp153052 '()))))
                         (declare (not safe))
                         (cons __tmp153072 __tmp153051))))
                  (declare (not safe))
                  (cons __tmp153079 __tmp153050))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#if __tmp153049))))
                                            (declare (not safe))
                                            (cons __tmp153048 '()))))
                                     (declare (not safe))
                                     (cons __tmp153081 __tmp153047))))
                             (declare (not safe))
                             (cons '%#let-values __tmp153046))))
                      (__tmp153041
                       (let ((__tmp153042
                              (let ((__tmp153043
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj152113_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp153043))))
                         (declare (not safe))
                         (cons __tmp153042 '()))))
                  (declare (not safe))
                  (cons __tmp153044 __tmp153041))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#begin
                                                         __tmp153040))))
                                            (declare (not safe))
                                            (cons __tmp153039 '()))))
                                     (declare (not safe))
                                     (cons __tmp153105 __tmp153038))))
                              (declare (not safe))
                              (cons '%#let-values __tmp153037))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp153036 _stx152096_))))
                 _$e152108_)
                (let ((_$e152118_
                       (##structure-ref _klass152099_ '9 gxc#!class::t '#f)))
                  (if _$e152118_
                      ((lambda (_metaclass152121_)
                         (let* ((_$obj152123_
                                 (let ((__tmp152997 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp152997)))
                                (_metakons152125_
                                 (let ((__tmp152998
                                        (let ()
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-class
                                           _stx152096_
                                           _metaclass152121_))))
                                   (declare (not safe))
                                   (gxc#!class-lookup-method
                                    __tmp152998
                                    'instance-init!))))
                           (let ((__tmp152999
                                  (let ((__tmp153000
                                         (let ((__tmp153031
                                                (let ((__tmp153032
                                                       (let ((__tmp153034
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj152123_ '())))
                     (__tmp153033
                      (let ()
                        (declare (not safe))
                        (cons _inline-make-object152105_ '()))))
                 (declare (not safe))
                 (cons __tmp153034 __tmp153033))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153032 '())))
                                               (__tmp153001
                                                (let ((__tmp153002
                                                       (let ((__tmp153003
                                                              (let ((__tmp153007
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if _metakons152125_
                                 (let ((__tmp153021
                                        (let ((__tmp153029
                                               (let ((__tmp153030
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _metakons152125_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp153030)))
                                              (__tmp153022
                                               (let ((__tmp153026
                                                      (let ((__tmp153027
                                                             (let ((__tmp153028
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self152095_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp153028 '()))))
                (declare (not safe))
                (cons '%#ref __tmp153027)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp153023
                                                      (let ((__tmp153024
                                                             (let ((__tmp153025
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _$obj152123_ '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp153025))))
                (declare (not safe))
                (cons __tmp153024 _args152103_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp153026
                                                       __tmp153023))))
                                          (declare (not safe))
                                          (cons __tmp153029 __tmp153022))))
                                   (declare (not safe))
                                   (cons '%#call __tmp153021))
                                 (let ((__tmp153008
                                        (let ((__tmp153019
                                               (let ((__tmp153020
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'call-method
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp153020)))
                                              (__tmp153009
                                               (let ((__tmp153016
                                                      (let ((__tmp153017
                                                             (let ((__tmp153018
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self152095_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp153018 '()))))
                (declare (not safe))
                (cons '%#ref __tmp153017)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp153010
                                                      (let ((__tmp153014
                                                             (let ((__tmp153015
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'instance-init! '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp153015)))
                    (__tmp153011
                     (let ((__tmp153012
                            (let ((__tmp153013
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj152123_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp153013))))
                       (declare (not safe))
                       (cons __tmp153012 _args152103_))))
                (declare (not safe))
                (cons __tmp153014 __tmp153011))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp153016
                                                       __tmp153010))))
                                          (declare (not safe))
                                          (cons __tmp153019 __tmp153009))))
                                   (declare (not safe))
                                   (cons '%#call __tmp153008))))
                            (__tmp153004
                             (let ((__tmp153005
                                    (let ((__tmp153006
                                           (let ()
                                             (declare (not safe))
                                             (cons _$obj152123_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp153006))))
                               (declare (not safe))
                               (cons __tmp153005 '()))))
                        (declare (not safe))
                        (cons __tmp153007 __tmp153004))))
                 (declare (not safe))
                 (cons '%#begin __tmp153003))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153002 '()))))
                                           (declare (not safe))
                                           (cons __tmp153031 __tmp153001))))
                                    (declare (not safe))
                                    (cons '%#let-values __tmp153000))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp152999 _stx152096_))))
                       _$e152118_)
                      (if (##structure-ref _klass152099_ '7 gxc#!class::t '#f)
                          (if (fx= (length _args152103_) _fields152101_)
                              (let ((__tmp152989
                                     (let ((__tmp152990
                                            (let ((__tmp152995
                                                   (let ((__tmp152996
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152996)))
                                                  (__tmp152991
                                                   (let ((__tmp152992
                                                          (let ((__tmp152993
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp152994
                                (##structure-ref
                                 _self152095_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (cons __tmp152994 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp152993))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp152992
                                                           _args152103_))))
                                              (declare (not safe))
                                              (cons __tmp152995 __tmp152991))))
                                       (declare (not safe))
                                       (cons '%#call __tmp152990))))
                                (declare (not safe))
                                (gxc#xform-wrap-source
                                 __tmp152989
                                 _stx152096_))
                              (let ((__tmp152988
                                     (##structure-ref
                                      _self152095_
                                      '1
                                      gxc#!type::t
                                      '#f))
                                    (__tmp152987
                                     (length (##structure-ref
                                              _klass152099_
                                              '5
                                              gxc#!class::t
                                              '#f))))
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"illegal struct constructor application; arity mismatch"
                                 _stx152096_
                                 __tmp152988
                                 __tmp152987)))
                          (let ((_$obj152128_
                                 (let ((__tmp152936 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp152936))))
                            (let _lp152130_ ((_rest152132_ _args152103_)
                                             (_initializers152133_ '()))
                              (let* ((___stx152666152667_ _rest152132_)
                                     (_g152137152158_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx152666152667_)))))
                                (let ((___kont152668152669_
                                       (lambda (_L152212_ _L152213_ _L152214_)
                                         (let* ((_slot152245_
                                                 (keyword->symbol
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e _L152214_))))
                                                (_off152247_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass152099_
                                                    _slot152245_))))
                                           (if _off152247_
                                               (let ((__tmp152938
                                                      (let ((__tmp152939
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _off152247_ _L152213_))))
                (declare (not safe))
                (cons __tmp152939 _initializers152133_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp152130_
                                                  _L152212_
                                                  __tmp152938))
                                               (let ((__tmp152937
                                                      (##structure-ref
                                                       _self152095_
                                                       '1
                                                       gxc#!type::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"unknown slot"
                                                  _stx152096_
                                                  __tmp152937
                                                  _slot152245_))))))
                                      (___kont152670152671_
                                       (lambda ()
                                         (let ((__tmp152940
                                                (let ((__tmp152941
                                                       (let ((__tmp152964
                                                              (let ((__tmp152965
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp152967
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj152128_ '())))
                                   (__tmp152966
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object152105_ '()))))
                               (declare (not safe))
                               (cons __tmp152967 __tmp152966))))
                        (declare (not safe))
                        (cons __tmp152965 '())))
                     (__tmp152942
                      (let ((__tmp152943
                             (let ((__tmp152944
                                    (let ((__tmp152961
                                           (let ((__tmp152962
                                                  (let ((__tmp152963
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj152128_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp152963))))
                                             (declare (not safe))
                                             (cons __tmp152962 '())))
                                          (__tmp152945
                                           (let ((__tmp152946
                                                  (lambda (_i152172_ _r152173_)
                                                    (let ((__tmp152947
                                                           (let ((__tmp152948
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp152958
                                 (let ((__tmp152959
                                        (let ((__tmp152960
                                               (##structure-ref
                                                _self152095_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp152960 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp152959)))
                                (__tmp152949
                                 (let ((__tmp152955
                                        (let ((__tmp152956
                                               (let ((__tmp152957
                                                      (car _i152172_)))
                                                 (declare (not safe))
                                                 (cons __tmp152957 '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp152956)))
                                       (__tmp152950
                                        (let ((__tmp152953
                                               (let ((__tmp152954
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _$obj152128_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp152954)))
                                              (__tmp152951
                                               (let ((__tmp152952
                                                      (cdr _i152172_)))
                                                 (declare (not safe))
                                                 (cons __tmp152952 '()))))
                                          (declare (not safe))
                                          (cons __tmp152953 __tmp152951))))
                                   (declare (not safe))
                                   (cons __tmp152955 __tmp152950))))
                            (declare (not safe))
                            (cons __tmp152958 __tmp152949))))
                     (declare (not safe))
                     (cons '%#struct-unchecked-set! __tmp152948))))
              (declare (not safe))
              (cons __tmp152947 _r152173_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (foldl1 __tmp152946
                                                     '()
                                                     _initializers152133_))))
                                      (declare (not safe))
                                      (foldr1 cons __tmp152961 __tmp152945))))
                               (declare (not safe))
                               (cons '%#begin __tmp152944))))
                        (declare (not safe))
                        (cons __tmp152943 '()))))
                 (declare (not safe))
                 (cons __tmp152964 __tmp152942))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp152941))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp152940
                                            _stx152096_))))
                                      (___kont152672152673_
                                       (lambda ()
                                         (let ((__tmp152968
                                                (let ((__tmp152969
                                                       (let ((__tmp152983
                                                              (let ((__tmp152984
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp152986
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj152128_ '())))
                                   (__tmp152985
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object152105_ '()))))
                               (declare (not safe))
                               (cons __tmp152986 __tmp152985))))
                        (declare (not safe))
                        (cons __tmp152984 '())))
                     (__tmp152970
                      (let ((__tmp152971
                             (let ((__tmp152972
                                    (let ((__tmp152976
                                           (let ((__tmp152977
                                                  (let ((__tmp152981
                                                         (let ((__tmp152982
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons 'class-instance-init! '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp152982)))
                (__tmp152978
                 (let ((__tmp152979
                        (let ((__tmp152980
                               (let ()
                                 (declare (not safe))
                                 (cons _$obj152128_ '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp152980))))
                   (declare (not safe))
                   (cons __tmp152979 _args152103_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp152981
                                                          __tmp152978))))
                                             (declare (not safe))
                                             (cons '%#call __tmp152977)))
                                          (__tmp152973
                                           (let ((__tmp152974
                                                  (let ((__tmp152975
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj152128_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp152975))))
                                             (declare (not safe))
                                             (cons __tmp152974 '()))))
                                      (declare (not safe))
                                      (cons __tmp152976 __tmp152973))))
                               (declare (not safe))
                               (cons '%#begin __tmp152972))))
                        (declare (not safe))
                        (cons __tmp152971 '()))))
                 (declare (not safe))
                 (cons __tmp152983 __tmp152970))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp152969))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp152968
                                            _stx152096_)))))
                                  (let* ((_g152135152175_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   ___stx152666152667_))
                                                (___kont152670152671_)
                                                (___kont152672152673_))))
                                         (___match152703152704_
                                          (lambda (_e152144152180_
                                                   _hd152143152183_
                                                   _tl152142152185_
                                                   _e152147152188_
                                                   _hd152146152191_
                                                   _tl152145152193_
                                                   _e152150152196_
                                                   _hd152149152199_
                                                   _tl152148152201_
                                                   _e152153152204_
                                                   _hd152152152207_
                                                   _tl152151152209_)
                                            (let ((_L152212_ _tl152151152209_)
                                                  (_L152213_ _hd152152152207_)
                                                  (_L152214_ _hd152149152199_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-keyword?
                                                     _L152214_))
                                                  (___kont152668152669_
                                                   _L152212_
                                                   _L152213_
                                                   _L152214_)
                                                  (___kont152672152673_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx152666152667_))
                                        (let ((_e152144152180_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx152666152667_))))
                                          (let ((_tl152142152185_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e152144152180_)))
                                                (_hd152143152183_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e152144152180_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd152143152183_))
                                                (let ((_e152147152188_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd152143152183_))))
                                                  (let ((_tl152145152193_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e152147152188_)))
                                                        (_hd152146152191_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e152147152188_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd152146152191_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#quote
                                                               _hd152146152191_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl152145152193_))
                        (let ((_e152150152196_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl152145152193_))))
                          (let ((_tl152148152201_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e152150152196_)))
                                (_hd152149152199_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e152150152196_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl152148152201_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl152142152185_))
                                    (let ((_e152153152204_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl152142152185_))))
                                      (let ((_tl152151152209_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e152153152204_)))
                                            (_hd152152152207_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e152153152204_))))
                                        (___match152703152704_
                                         _e152144152180_
                                         _hd152143152183_
                                         _tl152142152185_
                                         _e152147152188_
                                         _hd152146152191_
                                         _tl152145152193_
                                         _e152150152196_
                                         _hd152149152199_
                                         _tl152148152201_
                                         _e152153152204_
                                         _hd152152152207_
                                         _tl152151152209_)))
                                    (___kont152672152673_))
                                (___kont152672152673_))))
                        (___kont152672152673_))
                    (___kont152672152673_))
                (___kont152672152673_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont152672152673_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g152135152175_))))))))))))))))
    (define gxc#!constructor::optimize-call::specialize
      (lambda (__klass152589 __method-table152590)
        (let ((__id152591
               (let ((__slot152592
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152589 'id))))
                 (if __slot152592
                     __slot152592
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self152095_ _stx152096_ _args152097_)
            (let* ((_klass152099_
                    (let ((__tmp153109
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _self152095_
                              __id152591
                              __klass152589
                              '#f))))
                      (declare (not safe))
                      (gxc#optimizer-resolve-class _stx152096_ __tmp153109)))
                   (_fields152101_
                    (length (##structure-ref
                             _klass152099_
                             '5
                             gxc#!class::t
                             '#f)))
                   (_args152103_ (map gxc#compile-e _args152097_))
                   (_inline-make-object152105_
                    (let ((__tmp153110
                           (let ((__tmp153116
                                  (let ((__tmp153117
                                         (let ()
                                           (declare (not safe))
                                           (cons '##structure '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp153117)))
                                 (__tmp153111
                                  (let ((__tmp153113
                                         (let ((__tmp153114
                                                (let ((__tmp153115
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self152095_
                                                          __id152591
                                                          __klass152589
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp153115 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp153114)))
                                        (__tmp153112
                                         (let ()
                                           (declare (not safe))
                                           (make-list__%
                                            _fields152101_
                                            '(%#quote #f)))))
                                    (declare (not safe))
                                    (cons __tmp153113 __tmp153112))))
                             (declare (not safe))
                             (cons __tmp153116 __tmp153111))))
                      (declare (not safe))
                      (cons '%#call __tmp153110))))
              (let ((_$e152108_
                     (##structure-ref _klass152099_ '6 gxc#!class::t '#f)))
                (if _$e152108_
                    ((lambda (_ctor152111_)
                       (let ((_$obj152113_
                              (let ((__tmp153217 (gensym '__obj)))
                                (declare (not safe))
                                (make-symbol__0 __tmp153217)))
                             (_ctor-impl152114_
                              (let ()
                                (declare (not safe))
                                (gxc#!class-lookup-method
                                 _klass152099_
                                 _ctor152111_))))
                         (let ((__tmp153218
                                (let ((__tmp153219
                                       (let ((__tmp153287
                                              (let ((__tmp153288
                                                     (let ((__tmp153290
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$obj152113_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp153289
                    (let ()
                      (declare (not safe))
                      (cons _inline-make-object152105_ '()))))
               (declare (not safe))
               (cons __tmp153290 __tmp153289))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp153288 '())))
                                             (__tmp153220
                                              (let ((__tmp153221
                                                     (let ((__tmp153222
                                                            (let ((__tmp153226
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _ctor-impl152114_
                               (let ((__tmp153281
                                      (let ((__tmp153285
                                             (let ((__tmp153286
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor-impl152114_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp153286)))
                                            (__tmp153282
                                             (let ((__tmp153283
                                                    (let ((__tmp153284
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$obj152113_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp153284))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153283
                                                     _args152103_))))
                                        (declare (not safe))
                                        (cons __tmp153285 __tmp153282))))
                                 (declare (not safe))
                                 (cons '%#call __tmp153281))
                               (let* ((_$ctor152116_
                                       (let ((__tmp153227
                                              (gensym '__constructor)))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp153227)))
                                      (__tmp153228
                                       (let ((__tmp153263
                                              (let ((__tmp153264
                                                     (let ((__tmp153280
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$ctor152116_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp153265
                    (let ((__tmp153266
                           (let ((__tmp153267
                                  (let ((__tmp153278
                                         (let ((__tmp153279
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'direct-method-ref
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp153279)))
                                        (__tmp153268
                                         (let ((__tmp153275
                                                (let ((__tmp153276
                                                       (let ((__tmp153277
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self152095_
                         __id152591
                         __klass152589
                         '#f))))
                 (declare (not safe))
                 (cons __tmp153277 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp153276)))
                                               (__tmp153269
                                                (let ((__tmp153273
                                                       (let ((__tmp153274
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj152113_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp153274)))
              (__tmp153270
               (let ((__tmp153271
                      (let ((__tmp153272
                             (let ()
                               (declare (not safe))
                               (cons _ctor152111_ '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp153272))))
                 (declare (not safe))
                 (cons __tmp153271 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153273
                                                        __tmp153270))))
                                           (declare (not safe))
                                           (cons __tmp153275 __tmp153269))))
                                    (declare (not safe))
                                    (cons __tmp153278 __tmp153268))))
                             (declare (not safe))
                             (cons '%#call __tmp153267))))
                      (declare (not safe))
                      (cons __tmp153266 '()))))
               (declare (not safe))
               (cons __tmp153280 __tmp153265))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp153264 '())))
                                             (__tmp153229
                                              (let ((__tmp153230
                                                     (let ((__tmp153231
                                                            (let ((__tmp153261
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153262
                                  (let ()
                                    (declare (not safe))
                                    (cons _$ctor152116_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp153262)))
                          (__tmp153232
                           (let ((__tmp153254
                                  (let ((__tmp153255
                                         (let ((__tmp153259
                                                (let ((__tmp153260
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$ctor152116_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp153260)))
                                               (__tmp153256
                                                (let ((__tmp153257
                                                       (let ((__tmp153258
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj152113_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp153258))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153257
                                                        _args152103_))))
                                           (declare (not safe))
                                           (cons __tmp153259 __tmp153256))))
                                    (declare (not safe))
                                    (cons '%#call __tmp153255)))
                                 (__tmp153233
                                  (let ((__tmp153234
                                         (let ((__tmp153235
                                                (let ((__tmp153252
                                                       (let ((__tmp153253
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'error '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp153253)))
              (__tmp153236
               (let ((__tmp153250
                      (let ((__tmp153251
                             (let ()
                               (declare (not safe))
                               (cons '"missing constructor method implementation"
                                     '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp153251)))
                     (__tmp153237
                      (let ((__tmp153248
                             (let ((__tmp153249
                                    (let ()
                                      (declare (not safe))
                                      (cons 'class: '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp153249)))
                            (__tmp153238
                             (let ((__tmp153245
                                    (let ((__tmp153246
                                           (let ((__tmp153247
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self152095_
                                                     __id152591
                                                     __klass152589
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp153247 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp153246)))
                                   (__tmp153239
                                    (let ((__tmp153243
                                           (let ((__tmp153244
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'method: '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp153244)))
                                          (__tmp153240
                                           (let ((__tmp153241
                                                  (let ((__tmp153242
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _ctor152111_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#quote
                                                          __tmp153242))))
                                             (declare (not safe))
                                             (cons __tmp153241 '()))))
                                      (declare (not safe))
                                      (cons __tmp153243 __tmp153240))))
                               (declare (not safe))
                               (cons __tmp153245 __tmp153239))))
                        (declare (not safe))
                        (cons __tmp153248 __tmp153238))))
                 (declare (not safe))
                 (cons __tmp153250 __tmp153237))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153252
                                                        __tmp153236))))
                                           (declare (not safe))
                                           (cons '%#call __tmp153235))))
                                    (declare (not safe))
                                    (cons __tmp153234 '()))))
                             (declare (not safe))
                             (cons __tmp153254 __tmp153233))))
                      (declare (not safe))
                      (cons __tmp153261 __tmp153232))))
               (declare (not safe))
               (cons '%#if __tmp153231))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp153230 '()))))
                                         (declare (not safe))
                                         (cons __tmp153263 __tmp153229))))
                                 (declare (not safe))
                                 (cons '%#let-values __tmp153228))))
                          (__tmp153223
                           (let ((__tmp153224
                                  (let ((__tmp153225
                                         (let ()
                                           (declare (not safe))
                                           (cons _$obj152113_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp153225))))
                             (declare (not safe))
                             (cons __tmp153224 '()))))
                      (declare (not safe))
                      (cons __tmp153226 __tmp153223))))
               (declare (not safe))
               (cons '%#begin __tmp153222))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp153221 '()))))
                                         (declare (not safe))
                                         (cons __tmp153287 __tmp153220))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp153219))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp153218 _stx152096_))))
                     _$e152108_)
                    (let ((_$e152118_
                           (##structure-ref
                            _klass152099_
                            '9
                            gxc#!class::t
                            '#f)))
                      (if _$e152118_
                          ((lambda (_metaclass152121_)
                             (let* ((_$obj152123_
                                     (let ((__tmp153179 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp153179)))
                                    (_metakons152125_
                                     (let ((__tmp153180
                                            (let ()
                                              (declare (not safe))
                                              (gxc#optimizer-resolve-class
                                               _stx152096_
                                               _metaclass152121_))))
                                       (declare (not safe))
                                       (gxc#!class-lookup-method
                                        __tmp153180
                                        'instance-init!))))
                               (let ((__tmp153181
                                      (let ((__tmp153182
                                             (let ((__tmp153213
                                                    (let ((__tmp153214
                                                           (let ((__tmp153216
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj152123_ '())))
                         (__tmp153215
                          (let ()
                            (declare (not safe))
                            (cons _inline-make-object152105_ '()))))
                     (declare (not safe))
                     (cons __tmp153216 __tmp153215))))
              (declare (not safe))
              (cons __tmp153214 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp153183
                                                    (let ((__tmp153184
                                                           (let ((__tmp153185
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp153189
                                 (if _metakons152125_
                                     (let ((__tmp153203
                                            (let ((__tmp153211
                                                   (let ((__tmp153212
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _metakons152125_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153212)))
                                                  (__tmp153204
                                                   (let ((__tmp153208
                                                          (let ((__tmp153209
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp153210
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self152095_
                                   __id152591
                                   __klass152589
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp153210 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp153209)))
                 (__tmp153205
                  (let ((__tmp153206
                         (let ((__tmp153207
                                (let ()
                                  (declare (not safe))
                                  (cons _$obj152123_ '()))))
                           (declare (not safe))
                           (cons '%#ref __tmp153207))))
                    (declare (not safe))
                    (cons __tmp153206 _args152103_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153208
                                                           __tmp153205))))
                                              (declare (not safe))
                                              (cons __tmp153211 __tmp153204))))
                                       (declare (not safe))
                                       (cons '%#call __tmp153203))
                                     (let ((__tmp153190
                                            (let ((__tmp153201
                                                   (let ((__tmp153202
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'call-method
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153202)))
                                                  (__tmp153191
                                                   (let ((__tmp153198
                                                          (let ((__tmp153199
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp153200
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self152095_
                                   __id152591
                                   __klass152589
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp153200 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp153199)))
                 (__tmp153192
                  (let ((__tmp153196
                         (let ((__tmp153197
                                (let ()
                                  (declare (not safe))
                                  (cons 'instance-init! '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp153197)))
                        (__tmp153193
                         (let ((__tmp153194
                                (let ((__tmp153195
                                       (let ()
                                         (declare (not safe))
                                         (cons _$obj152123_ '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp153195))))
                           (declare (not safe))
                           (cons __tmp153194 _args152103_))))
                    (declare (not safe))
                    (cons __tmp153196 __tmp153193))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153198
                                                           __tmp153192))))
                                              (declare (not safe))
                                              (cons __tmp153201 __tmp153191))))
                                       (declare (not safe))
                                       (cons '%#call __tmp153190))))
                                (__tmp153186
                                 (let ((__tmp153187
                                        (let ((__tmp153188
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$obj152123_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp153188))))
                                   (declare (not safe))
                                   (cons __tmp153187 '()))))
                            (declare (not safe))
                            (cons __tmp153189 __tmp153186))))
                     (declare (not safe))
                     (cons '%#begin __tmp153185))))
              (declare (not safe))
              (cons __tmp153184 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153213
                                                     __tmp153183))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp153182))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp153181
                                  _stx152096_))))
                           _$e152118_)
                          (if (##structure-ref
                               _klass152099_
                               '7
                               gxc#!class::t
                               '#f)
                              (if (fx= (length _args152103_) _fields152101_)
                                  (let ((__tmp153171
                                         (let ((__tmp153172
                                                (let ((__tmp153177
                                                       (let ((__tmp153178
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '##structure '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp153178)))
              (__tmp153173
               (let ((__tmp153174
                      (let ((__tmp153175
                             (let ((__tmp153176
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _self152095_
                                       __id152591
                                       __klass152589
                                       '#f))))
                               (declare (not safe))
                               (cons __tmp153176 '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp153175))))
                 (declare (not safe))
                 (cons __tmp153174 _args152103_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153177
                                                        __tmp153173))))
                                           (declare (not safe))
                                           (cons '%#call __tmp153172))))
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp153171
                                     _stx152096_))
                                  (let ((__tmp153170
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _self152095_
                                            __id152591
                                            __klass152589
                                            '#f)))
                                        (__tmp153169
                                         (length (##structure-ref
                                                  _klass152099_
                                                  '5
                                                  gxc#!class::t
                                                  '#f))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"illegal struct constructor application; arity mismatch"
                                     _stx152096_
                                     __tmp153170
                                     __tmp153169)))
                              (let ((_$obj152128_
                                     (let ((__tmp153118 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp153118))))
                                (let _lp152130_ ((_rest152132_ _args152103_)
                                                 (_initializers152133_ '()))
                                  (let* ((___stx152708152709_ _rest152132_)
                                         (_g152137152158_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               ___stx152708152709_)))))
                                    (let ((___kont152710152711_
                                           (lambda (_L152212_
                                                    _L152213_
                                                    _L152214_)
                                             (let* ((_slot152245_
                                                     (keyword->symbol
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L152214_))))
                                                    (_off152247_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass152099_
                                                        _slot152245_))))
                                               (if _off152247_
                                                   (let ((__tmp153120
                                                          (let ((__tmp153121
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _off152247_ _L152213_))))
                    (declare (not safe))
                    (cons __tmp153121 _initializers152133_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp152130_
                                                      _L152212_
                                                      __tmp153120))
                                                   (let ((__tmp153119
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _self152095_
                                                             __id152591
                                                             __klass152589
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"unknown slot"
                                                      _stx152096_
                                                      __tmp153119
                                                      _slot152245_))))))
                                          (___kont152712152713_
                                           (lambda ()
                                             (let ((__tmp153122
                                                    (let ((__tmp153123
                                                           (let ((__tmp153146
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp153147
                                 (let ((__tmp153149
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj152128_ '())))
                                       (__tmp153148
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object152105_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp153149 __tmp153148))))
                            (declare (not safe))
                            (cons __tmp153147 '())))
                         (__tmp153124
                          (let ((__tmp153125
                                 (let ((__tmp153126
                                        (let ((__tmp153143
                                               (let ((__tmp153144
                                                      (let ((__tmp153145
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj152128_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp153145))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp153144 '())))
                                              (__tmp153127
                                               (let ((__tmp153128
                                                      (lambda (_i152172_
                                                               _r152173_)
                                                        (let ((__tmp153129
                                                               (let ((__tmp153130
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp153140
                                     (let ((__tmp153141
                                            (let ((__tmp153142
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self152095_
                                                      __id152591
                                                      __klass152589
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp153142 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp153141)))
                                    (__tmp153131
                                     (let ((__tmp153137
                                            (let ((__tmp153138
                                                   (let ((__tmp153139
                                                          (car _i152172_)))
                                                     (declare (not safe))
                                                     (cons __tmp153139 '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp153138)))
                                           (__tmp153132
                                            (let ((__tmp153135
                                                   (let ((__tmp153136
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj152128_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153136)))
                                                  (__tmp153133
                                                   (let ((__tmp153134
                                                          (cdr _i152172_)))
                                                     (declare (not safe))
                                                     (cons __tmp153134 '()))))
                                              (declare (not safe))
                                              (cons __tmp153135 __tmp153133))))
                                       (declare (not safe))
                                       (cons __tmp153137 __tmp153132))))
                                (declare (not safe))
                                (cons __tmp153140 __tmp153131))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-set! __tmp153130))))
                  (declare (not safe))
                  (cons __tmp153129 _r152173_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl1 __tmp153128
                                                         '()
                                                         _initializers152133_))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp153143
                                                  __tmp153127))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp153126))))
                            (declare (not safe))
                            (cons __tmp153125 '()))))
                     (declare (not safe))
                     (cons __tmp153146 __tmp153124))))
              (declare (not safe))
              (cons '%#let-values __tmp153123))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp153122
                                                _stx152096_))))
                                          (___kont152714152715_
                                           (lambda ()
                                             (let ((__tmp153150
                                                    (let ((__tmp153151
                                                           (let ((__tmp153165
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp153166
                                 (let ((__tmp153168
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj152128_ '())))
                                       (__tmp153167
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object152105_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp153168 __tmp153167))))
                            (declare (not safe))
                            (cons __tmp153166 '())))
                         (__tmp153152
                          (let ((__tmp153153
                                 (let ((__tmp153154
                                        (let ((__tmp153158
                                               (let ((__tmp153159
                                                      (let ((__tmp153163
                                                             (let ((__tmp153164
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'class-instance-init! '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp153164)))
                    (__tmp153160
                     (let ((__tmp153161
                            (let ((__tmp153162
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj152128_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp153162))))
                       (declare (not safe))
                       (cons __tmp153161 _args152103_))))
                (declare (not safe))
                (cons __tmp153163 __tmp153160))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp153159)))
                                              (__tmp153155
                                               (let ((__tmp153156
                                                      (let ((__tmp153157
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj152128_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp153157))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp153156 '()))))
                                          (declare (not safe))
                                          (cons __tmp153158 __tmp153155))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp153154))))
                            (declare (not safe))
                            (cons __tmp153153 '()))))
                     (declare (not safe))
                     (cons __tmp153165 __tmp153152))))
              (declare (not safe))
              (cons '%#let-values __tmp153151))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp153150
                                                _stx152096_)))))
                                      (let* ((_g152135152175_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       ___stx152708152709_))
                                                    (___kont152712152713_)
                                                    (___kont152714152715_))))
                                             (___match152745152746_
                                              (lambda (_e152144152180_
                                                       _hd152143152183_
                                                       _tl152142152185_
                                                       _e152147152188_
                                                       _hd152146152191_
                                                       _tl152145152193_
                                                       _e152150152196_
                                                       _hd152149152199_
                                                       _tl152148152201_
                                                       _e152153152204_
                                                       _hd152152152207_
                                                       _tl152151152209_)
                                                (let ((_L152212_
                                                       _tl152151152209_)
                                                      (_L152213_
                                                       _hd152152152207_)
                                                      (_L152214_
                                                       _hd152149152199_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-keyword?
                                                         _L152214_))
                                                      (___kont152710152711_
                                                       _L152212_
                                                       _L152213_
                                                       _L152214_)
                                                      (___kont152714152715_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               ___stx152708152709_))
                                            (let ((_e152144152180_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      ___stx152708152709_))))
                                              (let ((_tl152142152185_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e152144152180_)))
                                                    (_hd152143152183_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e152144152180_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd152143152183_))
                                                    (let ((_e152147152188_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd152143152183_))))
                                                      (let ((_tl152145152193_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e152147152188_)))
                    (_hd152146152191_
                     (let () (declare (not safe)) (##car _e152147152188_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd152146152191_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd152146152191_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl152145152193_))
                            (let ((_e152150152196_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl152145152193_))))
                              (let ((_tl152148152201_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e152150152196_)))
                                    (_hd152149152199_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e152150152196_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl152148152201_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl152142152185_))
                                        (let ((_e152153152204_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl152142152185_))))
                                          (let ((_tl152151152209_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e152153152204_)))
                                                (_hd152152152207_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e152153152204_))))
                                            (___match152745152746_
                                             _e152144152180_
                                             _hd152143152183_
                                             _tl152142152185_
                                             _e152147152188_
                                             _hd152146152191_
                                             _tl152145152193_
                                             _e152150152196_
                                             _hd152149152199_
                                             _tl152148152201_
                                             _e152153152204_
                                             _hd152152152207_
                                             _tl152151152209_)))
                                        (___kont152714152715_))
                                    (___kont152714152715_))))
                            (___kont152714152715_))
                        (___kont152714152715_))
                    (___kont152714152715_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont152714152715_))))
                                            (let ()
                                              (declare (not safe))
                                              (_g152135152175_))))))))))))))))))
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
      (lambda (_self151918_ _stx151919_ _args151920_)
        (let* ((_g151922151932_
                (lambda (_g151923151929_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g151923151929_))))
               (_g151921151970_
                (lambda (_g151923151935_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g151923151935_))
                      (let ((_e151927151937_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g151923151935_))))
                        (let ((_hd151926151940_
                               (let ()
                                 (declare (not safe))
                                 (##car _e151927151937_)))
                              (_tl151925151942_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e151927151937_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl151925151942_))
                              ((lambda (_L151945_)
                                 (let* ((_klass151956_
                                         (let ((__tmp153291
                                                (##structure-ref
                                                 _self151918_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx151919_
                                            __tmp153291)))
                                        (_field151958_
                                         (let ((__tmp153292
                                                (##structure-ref
                                                 _self151918_
                                                 '2
                                                 gxc#!accessor::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _klass151956_
                                            __tmp153292)))
                                        (_object151960_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L151945_))))
                                   (if (##structure-ref
                                        _klass151956_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp153369
                                              (let ((__tmp153378
                                                     (if (##structure-ref
                                                          _self151918_
                                                          '3
                                                          gxc#!accessor::t
                                                          '#f)
                                                         '%#struct-direct-ref
                                                         '%#struct-unchecked-ref))
                                                    (__tmp153370
                                                     (let ((__tmp153375
                                                            (let ((__tmp153376
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153377
                                  (##structure-ref
                                   _self151918_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp153377 '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp153376)))
                   (__tmp153371
                    (let ((__tmp153373
                           (let ((__tmp153374
                                  (let ()
                                    (declare (not safe))
                                    (cons _field151958_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp153374)))
                          (__tmp153372
                           (let ()
                             (declare (not safe))
                             (cons _object151960_ '()))))
                      (declare (not safe))
                      (cons __tmp153373 __tmp153372))))
               (declare (not safe))
               (cons __tmp153375 __tmp153371))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp153378
                                                      __tmp153370))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp153369
                                          _stx151919_))
                                       (if (##structure-ref
                                            _klass151956_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp153359
                                                  (let ((__tmp153368
                                                         (if (##structure-ref
                                                              _self151918_
                                                              '3
                                                              gxc#!accessor::t
                                                              '#f)
                                                             '%#struct-ref
                                                             '%#struct-unchecked-ref))
                                                        (__tmp153360
                                                         (let ((__tmp153365
                                                                (let ((__tmp153366
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp153367
                                      (##structure-ref
                                       _self151918_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp153367 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp153366)))
                       (__tmp153361
                        (let ((__tmp153363
                               (let ((__tmp153364
                                      (let ()
                                        (declare (not safe))
                                        (cons _field151958_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp153364)))
                              (__tmp153362
                               (let ()
                                 (declare (not safe))
                                 (cons _object151960_ '()))))
                          (declare (not safe))
                          (cons __tmp153363 __tmp153362))))
                   (declare (not safe))
                   (cons __tmp153365 __tmp153361))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp153368
                                                          __tmp153360))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp153359
                                              _stx151919_))
                                           (let ((_$e151963_
                                                  (let ((__tmp153293
                                                         (##structure-ref
                                                          _self151918_
                                                          '2
                                                          gxc#!accessor::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _klass151956_
                                                     __tmp153293))))
                                             (if _$e151963_
                                                 ((lambda (_klass151966_)
                                                    (let ((__tmp153349
                                                           (let ((__tmp153358
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##structure-ref
                               _self151918_
                               '3
                               gxc#!accessor::t
                               '#f)
                              '%#struct-ref
                              '%#struct-unchecked-ref))
                         (__tmp153350
                          (let ((__tmp153355
                                 (let ((__tmp153356
                                        (let ((__tmp153357
                                               (##structure-ref
                                                _self151918_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp153357 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp153356)))
                                (__tmp153351
                                 (let ((__tmp153353
                                        (let ((__tmp153354
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _field151958_ '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp153354)))
                                       (__tmp153352
                                        (let ()
                                          (declare (not safe))
                                          (cons _object151960_ '()))))
                                   (declare (not safe))
                                   (cons __tmp153353 __tmp153352))))
                            (declare (not safe))
                            (cons __tmp153355 __tmp153351))))
                     (declare (not safe))
                     (cons __tmp153358 __tmp153350))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp153349 _stx151919_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e151963_)
                                                 (if (##structure-ref
                                                      _self151918_
                                                      '3
                                                      gxc#!accessor::t
                                                      '#f)
                                                     (let ((__tmp153303
                                                            (let* ((_$obj151968_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp153304 (gensym '__obj)))
                              (declare (not safe))
                              (make-symbol__0 __tmp153304)))
                           (__tmp153305
                            (let ((__tmp153345
                                   (let ((__tmp153346
                                          (let ((__tmp153348
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _$obj151968_ '())))
                                                (__tmp153347
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _object151960_ '()))))
                                            (declare (not safe))
                                            (cons __tmp153348 __tmp153347))))
                                     (declare (not safe))
                                     (cons __tmp153346 '())))
                                  (__tmp153306
                                   (let ((__tmp153307
                                          (let ((__tmp153308
                                                 (let ((__tmp153337
                                                        (let ((__tmp153338
                                                               (let ((__tmp153342
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp153343
                                     (let ((__tmp153344
                                            (##structure-ref
                                             _klass151956_
                                             '1
                                             gxc#!type::t
                                             '#f)))
                                       (declare (not safe))
                                       (cons __tmp153344 '()))))
                                (declare (not safe))
                                (cons '%#quote __tmp153343)))
                             (__tmp153339
                              (let ((__tmp153340
                                     (let ((__tmp153341
                                            (let ()
                                              (declare (not safe))
                                              (cons _$obj151968_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp153341))))
                                (declare (not safe))
                                (cons __tmp153340 '()))))
                         (declare (not safe))
                         (cons __tmp153342 __tmp153339))))
                  (declare (not safe))
                  (cons '%#struct-direct-instance? __tmp153338)))
               (__tmp153309
                (let ((__tmp153326
                       (let ((__tmp153327
                              (let ((__tmp153334
                                     (let ((__tmp153335
                                            (let ((__tmp153336
                                                   (##structure-ref
                                                    _self151918_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp153336 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp153335)))
                                    (__tmp153328
                                     (let ((__tmp153332
                                            (let ((__tmp153333
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field151958_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp153333)))
                                           (__tmp153329
                                            (let ((__tmp153330
                                                   (let ((__tmp153331
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj151968_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153331))))
                                              (declare (not safe))
                                              (cons __tmp153330 '()))))
                                       (declare (not safe))
                                       (cons __tmp153332 __tmp153329))))
                                (declare (not safe))
                                (cons __tmp153334 __tmp153328))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp153327)))
                      (__tmp153310
                       (let ((__tmp153311
                              (let ((__tmp153312
                                     (let ((__tmp153324
                                            (let ((__tmp153325
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'class-slot-ref
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp153325)))
                                           (__tmp153313
                                            (let ((__tmp153321
                                                   (let ((__tmp153322
                                                          (let ((__tmp153323
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref _self151918_ '1 gxc#!type::t '#f)))
                    (declare (not safe))
                    (cons __tmp153323 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153322)))
                                                  (__tmp153314
                                                   (let ((__tmp153319
                                                          (let ((__tmp153320
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj151968_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp153320)))
                 (__tmp153315
                  (let ((__tmp153316
                         (let ((__tmp153317
                                (let ((__tmp153318
                                       (##structure-ref
                                        _self151918_
                                        '2
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (cons __tmp153318 '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp153317))))
                    (declare (not safe))
                    (cons __tmp153316 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153319
                                                           __tmp153315))))
                                              (declare (not safe))
                                              (cons __tmp153321 __tmp153314))))
                                       (declare (not safe))
                                       (cons __tmp153324 __tmp153313))))
                                (declare (not safe))
                                (cons '%#call __tmp153312))))
                         (declare (not safe))
                         (cons __tmp153311 '()))))
                  (declare (not safe))
                  (cons __tmp153326 __tmp153310))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153337
                                                         __tmp153309))))
                                            (declare (not safe))
                                            (cons '%#if __tmp153308))))
                                     (declare (not safe))
                                     (cons __tmp153307 '()))))
                              (declare (not safe))
                              (cons __tmp153345 __tmp153306))))
                      (declare (not safe))
                      (cons '%#let-values __tmp153305))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp153303 _stx151919_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp153294
                                                            (let ((__tmp153295
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153301
                                  (let ((__tmp153302
                                         (let ()
                                           (declare (not safe))
                                           (cons 'unchecked-slot-ref '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp153302)))
                                 (__tmp153296
                                  (let ((__tmp153297
                                         (let ((__tmp153298
                                                (let ((__tmp153299
                                                       (let ((__tmp153300
                                                              (##structure-ref
                                                               _self151918_
                                                               '2
                                                               gxc#!accessor::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp153300
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote
                                                        __tmp153299))))
                                           (declare (not safe))
                                           (cons __tmp153298 '()))))
                                    (declare (not safe))
                                    (cons _object151960_ __tmp153297))))
                             (declare (not safe))
                             (cons __tmp153301 __tmp153296))))
                      (declare (not safe))
                      (cons '%#call __tmp153295))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp153294 _stx151919_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _hd151926151940_)
                              (let ()
                                (declare (not safe))
                                (_g151922151932_ _g151923151935_)))))
                      (let ()
                        (declare (not safe))
                        (_g151922151932_ _g151923151935_))))))
          (declare (not safe))
          (_g151921151970_ _args151920_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass152593 __method-table152594)
        (let ((__checked?152595
               (let ((__slot152598
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152593 'checked?))))
                 (if __slot152598
                     __slot152598
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__slot152596
               (let ((__slot152599
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152593 'slot))))
                 (if __slot152599
                     __slot152599
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__id152597
               (let ((__slot152600
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152593 'id))))
                 (if __slot152600
                     __slot152600
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self151918_ _stx151919_ _args151920_)
            (let* ((_g151922151932_
                    (lambda (_g151923151929_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g151923151929_))))
                   (_g151921151970_
                    (lambda (_g151923151935_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g151923151935_))
                          (let ((_e151927151937_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g151923151935_))))
                            (let ((_hd151926151940_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e151927151937_)))
                                  (_tl151925151942_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e151927151937_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl151925151942_))
                                  ((lambda (_L151945_)
                                     (let* ((_klass151956_
                                             (let ((__tmp153379
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self151918_
                                                       __id152597
                                                       __klass152593
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx151919_
                                                __tmp153379)))
                                            (_field151958_
                                             (let ((__tmp153380
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self151918_
                                                       __slot152596
                                                       __klass152593
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _klass151956_
                                                __tmp153380)))
                                            (_object151960_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L151945_))))
                                       (if (##structure-ref
                                            _klass151956_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp153457
                                                  (let ((__tmp153466
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self151918_
                        __checked?152595
                        __klass152593
                        '#f))
                     '%#struct-direct-ref
                     '%#struct-unchecked-ref))
                (__tmp153458
                 (let ((__tmp153463
                        (let ((__tmp153464
                               (let ((__tmp153465
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _self151918_
                                         __id152597
                                         __klass152593
                                         '#f))))
                                 (declare (not safe))
                                 (cons __tmp153465 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp153464)))
                       (__tmp153459
                        (let ((__tmp153461
                               (let ((__tmp153462
                                      (let ()
                                        (declare (not safe))
                                        (cons _field151958_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp153462)))
                              (__tmp153460
                               (let ()
                                 (declare (not safe))
                                 (cons _object151960_ '()))))
                          (declare (not safe))
                          (cons __tmp153461 __tmp153460))))
                   (declare (not safe))
                   (cons __tmp153463 __tmp153459))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp153466
                                                          __tmp153458))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp153457
                                              _stx151919_))
                                           (if (##structure-ref
                                                _klass151956_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp153447
                                                      (let ((__tmp153456
                                                             (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self151918_
                            __checked?152595
                            __klass152593
                            '#f))
                         '%#struct-ref
                         '%#struct-unchecked-ref))
                    (__tmp153448
                     (let ((__tmp153453
                            (let ((__tmp153454
                                   (let ((__tmp153455
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self151918_
                                             __id152597
                                             __klass152593
                                             '#f))))
                                     (declare (not safe))
                                     (cons __tmp153455 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp153454)))
                           (__tmp153449
                            (let ((__tmp153451
                                   (let ((__tmp153452
                                          (let ()
                                            (declare (not safe))
                                            (cons _field151958_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp153452)))
                                  (__tmp153450
                                   (let ()
                                     (declare (not safe))
                                     (cons _object151960_ '()))))
                              (declare (not safe))
                              (cons __tmp153451 __tmp153450))))
                       (declare (not safe))
                       (cons __tmp153453 __tmp153449))))
                (declare (not safe))
                (cons __tmp153456 __tmp153448))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp153447
                                                  _stx151919_))
                                               (let ((_$e151963_
                                                      (let ((__tmp153381
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self151918_
                        __slot152596
                        __klass152593
                        '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _klass151956_ __tmp153381))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e151963_
                                                     ((lambda (_klass151966_)
                                                        (let ((__tmp153437
                                                               (let ((__tmp153446
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self151918_
                                     __checked?152595
                                     __klass152593
                                     '#f))
                                  '%#struct-ref
                                  '%#struct-unchecked-ref))
                             (__tmp153438
                              (let ((__tmp153443
                                     (let ((__tmp153444
                                            (let ((__tmp153445
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self151918_
                                                      __id152597
                                                      __klass152593
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp153445 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp153444)))
                                    (__tmp153439
                                     (let ((__tmp153441
                                            (let ((__tmp153442
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field151958_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp153442)))
                                           (__tmp153440
                                            (let ()
                                              (declare (not safe))
                                              (cons _object151960_ '()))))
                                       (declare (not safe))
                                       (cons __tmp153441 __tmp153440))))
                                (declare (not safe))
                                (cons __tmp153443 __tmp153439))))
                         (declare (not safe))
                         (cons __tmp153446 __tmp153438))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp153437 _stx151919_)))
              _$e151963_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _self151918_
                                                            __checked?152595
                                                            __klass152593
                                                            '#f))
                                                         (let ((__tmp153391
                                                                (let* ((_$obj151968_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp153392 (gensym '__obj)))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp153392)))
                               (__tmp153393
                                (let ((__tmp153433
                                       (let ((__tmp153434
                                              (let ((__tmp153436
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _$obj151968_
                                                             '())))
                                                    (__tmp153435
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _object151960_
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp153436
                                                      __tmp153435))))
                                         (declare (not safe))
                                         (cons __tmp153434 '())))
                                      (__tmp153394
                                       (let ((__tmp153395
                                              (let ((__tmp153396
                                                     (let ((__tmp153425
                                                            (let ((__tmp153426
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153430
                                  (let ((__tmp153431
                                         (let ((__tmp153432
                                                (##structure-ref
                                                 _klass151956_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp153432 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp153431)))
                                 (__tmp153427
                                  (let ((__tmp153428
                                         (let ((__tmp153429
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj151968_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp153429))))
                                    (declare (not safe))
                                    (cons __tmp153428 '()))))
                             (declare (not safe))
                             (cons __tmp153430 __tmp153427))))
                      (declare (not safe))
                      (cons '%#struct-direct-instance? __tmp153426)))
                   (__tmp153397
                    (let ((__tmp153414
                           (let ((__tmp153415
                                  (let ((__tmp153422
                                         (let ((__tmp153423
                                                (let ((__tmp153424
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self151918_
                                                          __id152597
                                                          __klass152593
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp153424 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp153423)))
                                        (__tmp153416
                                         (let ((__tmp153420
                                                (let ((__tmp153421
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field151958_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp153421)))
                                               (__tmp153417
                                                (let ((__tmp153418
                                                       (let ((__tmp153419
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj151968_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp153419))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153418 '()))))
                                           (declare (not safe))
                                           (cons __tmp153420 __tmp153417))))
                                    (declare (not safe))
                                    (cons __tmp153422 __tmp153416))))
                             (declare (not safe))
                             (cons '%#struct-unchecked-ref __tmp153415)))
                          (__tmp153398
                           (let ((__tmp153399
                                  (let ((__tmp153400
                                         (let ((__tmp153412
                                                (let ((__tmp153413
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-slot-ref
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp153413)))
                                               (__tmp153401
                                                (let ((__tmp153409
                                                       (let ((__tmp153410
                                                              (let ((__tmp153411
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self151918_
                                __id152597
                                __klass152593
                                '#f))))
                        (declare (not safe))
                        (cons __tmp153411 '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp153410)))
              (__tmp153402
               (let ((__tmp153407
                      (let ((__tmp153408
                             (let ()
                               (declare (not safe))
                               (cons _$obj151968_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp153408)))
                     (__tmp153403
                      (let ((__tmp153404
                             (let ((__tmp153405
                                    (let ((__tmp153406
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _self151918_
                                              __slot152596
                                              __klass152593
                                              '#f))))
                                      (declare (not safe))
                                      (cons __tmp153406 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp153405))))
                        (declare (not safe))
                        (cons __tmp153404 '()))))
                 (declare (not safe))
                 (cons __tmp153407 __tmp153403))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153409
                                                        __tmp153402))))
                                           (declare (not safe))
                                           (cons __tmp153412 __tmp153401))))
                                    (declare (not safe))
                                    (cons '%#call __tmp153400))))
                             (declare (not safe))
                             (cons __tmp153399 '()))))
                      (declare (not safe))
                      (cons __tmp153414 __tmp153398))))
               (declare (not safe))
               (cons __tmp153425 __tmp153397))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#if __tmp153396))))
                                         (declare (not safe))
                                         (cons __tmp153395 '()))))
                                  (declare (not safe))
                                  (cons __tmp153433 __tmp153394))))
                          (declare (not safe))
                          (cons '%#let-values __tmp153393))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp153391 _stx151919_))
                 (let ((__tmp153382
                        (let ((__tmp153383
                               (let ((__tmp153389
                                      (let ((__tmp153390
                                             (let ()
                                               (declare (not safe))
                                               (cons 'unchecked-slot-ref
                                                     '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp153390)))
                                     (__tmp153384
                                      (let ((__tmp153385
                                             (let ((__tmp153386
                                                    (let ((__tmp153387
                                                           (let ((__tmp153388
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _self151918_
                             __slot152596
                             __klass152593
                             '#f))))
                     (declare (not safe))
                     (cons __tmp153388 '()))))
              (declare (not safe))
              (cons '%#quote __tmp153387))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153386 '()))))
                                        (declare (not safe))
                                        (cons _object151960_ __tmp153385))))
                                 (declare (not safe))
                                 (cons __tmp153389 __tmp153384))))
                          (declare (not safe))
                          (cons '%#call __tmp153383))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp153382 _stx151919_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd151926151940_)
                                  (let ()
                                    (declare (not safe))
                                    (_g151922151932_ _g151923151935_)))))
                          (let ()
                            (declare (not safe))
                            (_g151922151932_ _g151923151935_))))))
              (declare (not safe))
              (_g151921151970_ _args151920_))))))
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
      (lambda (_self151723_ _stx151724_ _args151725_)
        (let* ((_g151727151741_
                (lambda (_g151728151738_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g151728151738_))))
               (_g151726151793_
                (lambda (_g151728151744_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g151728151744_))
                      (let ((_e151733151746_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g151728151744_))))
                        (let ((_hd151732151749_
                               (let ()
                                 (declare (not safe))
                                 (##car _e151733151746_)))
                              (_tl151731151751_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e151733151746_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl151731151751_))
                              (let ((_e151736151754_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl151731151751_))))
                                (let ((_hd151735151757_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e151736151754_)))
                                      (_tl151734151759_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e151736151754_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl151734151759_))
                                      ((lambda (_L151762_ _L151763_)
                                         (let* ((_klass151777_
                                                 (let ((__tmp153467
                                                        (##structure-ref
                                                         _self151723_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _stx151724_
                                                    __tmp153467)))
                                                (_field151779_
                                                 (let ((__tmp153468
                                                        (##structure-ref
                                                         _self151723_
                                                         '2
                                                         gxc#!mutator::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass151777_
                                                    __tmp153468)))
                                                (_object151781_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L151763_)))
                                                (_value151783_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L151762_))))
                                           (if (##structure-ref
                                                _klass151777_
                                                '8
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp153550
                                                      (let ((__tmp153560
                                                             (if (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _self151723_
                          '3
                          gxc#!mutator::t
                          '#f)
                         '%#struct-direct-set!
                         '%#struct-unchecked-set!))
                    (__tmp153551
                     (let ((__tmp153557
                            (let ((__tmp153558
                                   (let ((__tmp153559
                                          (##structure-ref
                                           _self151723_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp153559 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp153558)))
                           (__tmp153552
                            (let ((__tmp153555
                                   (let ((__tmp153556
                                          (let ()
                                            (declare (not safe))
                                            (cons _field151779_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp153556)))
                                  (__tmp153553
                                   (let ((__tmp153554
                                          (let ()
                                            (declare (not safe))
                                            (cons _value151783_ '()))))
                                     (declare (not safe))
                                     (cons _object151781_ __tmp153554))))
                              (declare (not safe))
                              (cons __tmp153555 __tmp153553))))
                       (declare (not safe))
                       (cons __tmp153557 __tmp153552))))
                (declare (not safe))
                (cons __tmp153560 __tmp153551))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp153550
                                                  _stx151724_))
                                               (if (##structure-ref
                                                    _klass151777_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp153539
                                                          (let ((__tmp153549
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##structure-ref
                              _self151723_
                              '3
                              gxc#!mutator::t
                              '#f)
                             '%#struct-set!
                             '%#struct-unchecked-set!))
                        (__tmp153540
                         (let ((__tmp153546
                                (let ((__tmp153547
                                       (let ((__tmp153548
                                              (##structure-ref
                                               _self151723_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp153548 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp153547)))
                               (__tmp153541
                                (let ((__tmp153544
                                       (let ((__tmp153545
                                              (let ()
                                                (declare (not safe))
                                                (cons _field151779_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp153545)))
                                      (__tmp153542
                                       (let ((__tmp153543
                                              (let ()
                                                (declare (not safe))
                                                (cons _value151783_ '()))))
                                         (declare (not safe))
                                         (cons _object151781_ __tmp153543))))
                                  (declare (not safe))
                                  (cons __tmp153544 __tmp153542))))
                           (declare (not safe))
                           (cons __tmp153546 __tmp153541))))
                    (declare (not safe))
                    (cons __tmp153549 __tmp153540))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp153539
                                                      _stx151724_))
                                                   (let ((_$e151786_
                                                          (let ((__tmp153469
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref
                          _self151723_
                          '2
                          gxc#!mutator::t
                          '#f)))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct _klass151777_ __tmp153469))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e151786_
                                                         ((lambda (_klass151789_)
                                                            (let ((__tmp153528
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153538
                                  (if (##structure-ref
                                       _self151723_
                                       '3
                                       gxc#!mutator::t
                                       '#f)
                                      '%#struct-set!
                                      '%#struct-unchecked-set!))
                                 (__tmp153529
                                  (let ((__tmp153535
                                         (let ((__tmp153536
                                                (let ((__tmp153537
                                                       (##structure-ref
                                                        _self151723_
                                                        '1
                                                        gxc#!type::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp153537 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp153536)))
                                        (__tmp153530
                                         (let ((__tmp153533
                                                (let ((__tmp153534
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field151779_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp153534)))
                                               (__tmp153531
                                                (let ((__tmp153532
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _value151783_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons _object151781_
                                                        __tmp153532))))
                                           (declare (not safe))
                                           (cons __tmp153533 __tmp153531))))
                                    (declare (not safe))
                                    (cons __tmp153535 __tmp153530))))
                             (declare (not safe))
                             (cons __tmp153538 __tmp153529))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp153528 _stx151724_)))
                  _$e151786_)
                 (if (##structure-ref _self151723_ '3 gxc#!mutator::t '#f)
                     (let ((__tmp153480
                            (let* ((_$obj151791_
                                    (let ((__tmp153481 (gensym '__obj)))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp153481)))
                                   (__tmp153482
                                    (let ((__tmp153524
                                           (let ((__tmp153525
                                                  (let ((__tmp153527
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj151791_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp153526
                 (let () (declare (not safe)) (cons _object151781_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp153527
                                                          __tmp153526))))
                                             (declare (not safe))
                                             (cons __tmp153525 '())))
                                          (__tmp153483
                                           (let ((__tmp153484
                                                  (let ((__tmp153485
                                                         (let ((__tmp153516
                                                                (let ((__tmp153517
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp153521
                                      (let ((__tmp153522
                                             (let ((__tmp153523
                                                    (##structure-ref
                                                     _klass151777_
                                                     '1
                                                     gxc#!type::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp153523 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp153522)))
                                     (__tmp153518
                                      (let ((__tmp153519
                                             (let ((__tmp153520
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj151791_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp153520))))
                                        (declare (not safe))
                                        (cons __tmp153519 '()))))
                                 (declare (not safe))
                                 (cons __tmp153521 __tmp153518))))
                          (declare (not safe))
                          (cons '%#struct-direct-instance? __tmp153517)))
                       (__tmp153486
                        (let ((__tmp153504
                               (let ((__tmp153505
                                      (let ((__tmp153513
                                             (let ((__tmp153514
                                                    (let ((__tmp153515
                                                           (##structure-ref
                                                            _self151723_
                                                            '1
                                                            gxc#!type::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (cons __tmp153515 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp153514)))
                                            (__tmp153506
                                             (let ((__tmp153511
                                                    (let ((__tmp153512
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field151779_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp153512)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp153507
                                                    (let ((__tmp153509
                                                           (let ((__tmp153510
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj151791_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp153510)))
                  (__tmp153508
                   (let () (declare (not safe)) (cons _value151783_ '()))))
              (declare (not safe))
              (cons __tmp153509 __tmp153508))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153511
                                                     __tmp153507))))
                                        (declare (not safe))
                                        (cons __tmp153513 __tmp153506))))
                                 (declare (not safe))
                                 (cons '%#struct-unchecked-set! __tmp153505)))
                              (__tmp153487
                               (let ((__tmp153488
                                      (let ((__tmp153489
                                             (let ((__tmp153502
                                                    (let ((__tmp153503
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp153503)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp153490
                                                    (let ((__tmp153499
                                                           (let ((__tmp153500
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp153501
                                 (##structure-ref
                                  _self151723_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (cons __tmp153501 '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp153500)))
                  (__tmp153491
                   (let ((__tmp153497
                          (let ((__tmp153498
                                 (let ()
                                   (declare (not safe))
                                   (cons _$obj151791_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp153498)))
                         (__tmp153492
                          (let ((__tmp153494
                                 (let ((__tmp153495
                                        (let ((__tmp153496
                                               (##structure-ref
                                                _self151723_
                                                '2
                                                gxc#!mutator::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp153496 '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp153495)))
                                (__tmp153493
                                 (let ()
                                   (declare (not safe))
                                   (cons _value151783_ '()))))
                            (declare (not safe))
                            (cons __tmp153494 __tmp153493))))
                     (declare (not safe))
                     (cons __tmp153497 __tmp153492))))
              (declare (not safe))
              (cons __tmp153499 __tmp153491))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153502
                                                     __tmp153490))))
                                        (declare (not safe))
                                        (cons '%#call __tmp153489))))
                                 (declare (not safe))
                                 (cons __tmp153488 '()))))
                          (declare (not safe))
                          (cons __tmp153504 __tmp153487))))
                   (declare (not safe))
                   (cons __tmp153516 __tmp153486))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#if __tmp153485))))
                                             (declare (not safe))
                                             (cons __tmp153484 '()))))
                                      (declare (not safe))
                                      (cons __tmp153524 __tmp153483))))
                              (declare (not safe))
                              (cons '%#let-values __tmp153482))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp153480 _stx151724_))
                     (let ((__tmp153470
                            (let ((__tmp153471
                                   (let ((__tmp153478
                                          (let ((__tmp153479
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'unchecked-slot-set!
                                                         '()))))
                                            (declare (not safe))
                                            (cons '%#ref __tmp153479)))
                                         (__tmp153472
                                          (let ((__tmp153473
                                                 (let ((__tmp153475
                                                        (let ((__tmp153476
                                                               (let ((__tmp153477
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##structure-ref
                               _self151723_
                               '2
                               gxc#!mutator::t
                               '#f)))
                         (declare (not safe))
                         (cons __tmp153477 '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp153476)))
               (__tmp153474
                (let () (declare (not safe)) (cons _value151783_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153475
                                                         __tmp153474))))
                                            (declare (not safe))
                                            (cons _object151781_
                                                  __tmp153473))))
                                     (declare (not safe))
                                     (cons __tmp153478 __tmp153472))))
                              (declare (not safe))
                              (cons '%#call __tmp153471))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp153470 _stx151724_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd151735151757_
                                       _hd151732151749_)
                                      (let ()
                                        (declare (not safe))
                                        (_g151727151741_ _g151728151744_)))))
                              (let ()
                                (declare (not safe))
                                (_g151727151741_ _g151728151744_)))))
                      (let ()
                        (declare (not safe))
                        (_g151727151741_ _g151728151744_))))))
          (declare (not safe))
          (_g151726151793_ _args151725_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass152601 __method-table152602)
        (let ((__checked?152603
               (let ((__slot152606
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152601 'checked?))))
                 (if __slot152606
                     __slot152606
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__slot152604
               (let ((__slot152607
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152601 'slot))))
                 (if __slot152607
                     __slot152607
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__id152605
               (let ((__slot152608
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152601 'id))))
                 (if __slot152608
                     __slot152608
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self151723_ _stx151724_ _args151725_)
            (let* ((_g151727151741_
                    (lambda (_g151728151738_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g151728151738_))))
                   (_g151726151793_
                    (lambda (_g151728151744_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g151728151744_))
                          (let ((_e151733151746_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g151728151744_))))
                            (let ((_hd151732151749_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e151733151746_)))
                                  (_tl151731151751_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e151733151746_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl151731151751_))
                                  (let ((_e151736151754_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl151731151751_))))
                                    (let ((_hd151735151757_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e151736151754_)))
                                          (_tl151734151759_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e151736151754_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl151734151759_))
                                          ((lambda (_L151762_ _L151763_)
                                             (let* ((_klass151777_
                                                     (let ((__tmp153561
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self151723_
                                                               __id152605
                                                               __klass152601
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _stx151724_
                                                        __tmp153561)))
                                                    (_field151779_
                                                     (let ((__tmp153562
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self151723_
                                                               __slot152604
                                                               __klass152601
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass151777_
                                                        __tmp153562)))
                                                    (_object151781_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L151763_)))
                                                    (_value151783_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L151762_))))
                                               (if (##structure-ref
                                                    _klass151777_
                                                    '8
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp153644
                                                          (let ((__tmp153654
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self151723_
                                __checked?152603
                                __klass152601
                                '#f))
                             '%#struct-direct-set!
                             '%#struct-unchecked-set!))
                        (__tmp153645
                         (let ((__tmp153651
                                (let ((__tmp153652
                                       (let ((__tmp153653
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _self151723_
                                                 __id152605
                                                 __klass152601
                                                 '#f))))
                                         (declare (not safe))
                                         (cons __tmp153653 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp153652)))
                               (__tmp153646
                                (let ((__tmp153649
                                       (let ((__tmp153650
                                              (let ()
                                                (declare (not safe))
                                                (cons _field151779_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp153650)))
                                      (__tmp153647
                                       (let ((__tmp153648
                                              (let ()
                                                (declare (not safe))
                                                (cons _value151783_ '()))))
                                         (declare (not safe))
                                         (cons _object151781_ __tmp153648))))
                                  (declare (not safe))
                                  (cons __tmp153649 __tmp153647))))
                           (declare (not safe))
                           (cons __tmp153651 __tmp153646))))
                    (declare (not safe))
                    (cons __tmp153654 __tmp153645))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp153644
                                                      _stx151724_))
                                                   (if (##structure-ref
                                                        _klass151777_
                                                        '7
                                                        gxc#!class::t
                                                        '#f)
                                                       (let ((__tmp153633
                                                              (let ((__tmp153643
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _self151723_
                                    __checked?152603
                                    __klass152601
                                    '#f))
                                 '%#struct-set!
                                 '%#struct-unchecked-set!))
                            (__tmp153634
                             (let ((__tmp153640
                                    (let ((__tmp153641
                                           (let ((__tmp153642
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self151723_
                                                     __id152605
                                                     __klass152601
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp153642 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp153641)))
                                   (__tmp153635
                                    (let ((__tmp153638
                                           (let ((__tmp153639
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _field151779_ '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp153639)))
                                          (__tmp153636
                                           (let ((__tmp153637
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _value151783_ '()))))
                                             (declare (not safe))
                                             (cons _object151781_
                                                   __tmp153637))))
                                      (declare (not safe))
                                      (cons __tmp153638 __tmp153636))))
                               (declare (not safe))
                               (cons __tmp153640 __tmp153635))))
                        (declare (not safe))
                        (cons __tmp153643 __tmp153634))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp153633 _stx151724_))
               (let ((_$e151786_
                      (let ((__tmp153563
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self151723_
                                __slot152604
                                __klass152601
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _klass151777_
                         __tmp153563))))
                 (if _$e151786_
                     ((lambda (_klass151789_)
                        (let ((__tmp153622
                               (let ((__tmp153632
                                      (if (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self151723_
                                             __checked?152603
                                             __klass152601
                                             '#f))
                                          '%#struct-set!
                                          '%#struct-unchecked-set!))
                                     (__tmp153623
                                      (let ((__tmp153629
                                             (let ((__tmp153630
                                                    (let ((__tmp153631
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _self151723_
                                                              __id152605
                                                              __klass152601
                                                              '#f))))
                                                      (declare (not safe))
                                                      (cons __tmp153631 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp153630)))
                                            (__tmp153624
                                             (let ((__tmp153627
                                                    (let ((__tmp153628
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field151779_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp153628)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp153625
                                                    (let ((__tmp153626
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _value151783_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _object151781_ __tmp153626))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153627
                                                     __tmp153625))))
                                        (declare (not safe))
                                        (cons __tmp153629 __tmp153624))))
                                 (declare (not safe))
                                 (cons __tmp153632 __tmp153623))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp153622 _stx151724_)))
                      _$e151786_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self151723_
                            __checked?152603
                            __klass152601
                            '#f))
                         (let ((__tmp153574
                                (let* ((_$obj151791_
                                        (let ((__tmp153575 (gensym '__obj)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp153575)))
                                       (__tmp153576
                                        (let ((__tmp153618
                                               (let ((__tmp153619
                                                      (let ((__tmp153621
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj151791_ '())))
                    (__tmp153620
                     (let () (declare (not safe)) (cons _object151781_ '()))))
                (declare (not safe))
                (cons __tmp153621 __tmp153620))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp153619 '())))
                                              (__tmp153577
                                               (let ((__tmp153578
                                                      (let ((__tmp153579
                                                             (let ((__tmp153610
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp153611
                                   (let ((__tmp153615
                                          (let ((__tmp153616
                                                 (let ((__tmp153617
                                                        (##structure-ref
                                                         _klass151777_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp153617 '()))))
                                            (declare (not safe))
                                            (cons '%#quote __tmp153616)))
                                         (__tmp153612
                                          (let ((__tmp153613
                                                 (let ((__tmp153614
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj151791_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp153614))))
                                            (declare (not safe))
                                            (cons __tmp153613 '()))))
                                     (declare (not safe))
                                     (cons __tmp153615 __tmp153612))))
                              (declare (not safe))
                              (cons '%#struct-direct-instance? __tmp153611)))
                           (__tmp153580
                            (let ((__tmp153598
                                   (let ((__tmp153599
                                          (let ((__tmp153607
                                                 (let ((__tmp153608
                                                        (let ((__tmp153609
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _self151723_
                          __id152605
                          __klass152601
                          '#f))))
                  (declare (not safe))
                  (cons __tmp153609 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp153608)))
                                                (__tmp153600
                                                 (let ((__tmp153605
                                                        (let ((__tmp153606
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _field151779_ '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp153606)))
               (__tmp153601
                (let ((__tmp153603
                       (let ((__tmp153604
                              (let ()
                                (declare (not safe))
                                (cons _$obj151791_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp153604)))
                      (__tmp153602
                       (let () (declare (not safe)) (cons _value151783_ '()))))
                  (declare (not safe))
                  (cons __tmp153603 __tmp153602))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153605
                                                         __tmp153601))))
                                            (declare (not safe))
                                            (cons __tmp153607 __tmp153600))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp153599)))
                                  (__tmp153581
                                   (let ((__tmp153582
                                          (let ((__tmp153583
                                                 (let ((__tmp153596
                                                        (let ((__tmp153597
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons 'class-slot-set! '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp153597)))
               (__tmp153584
                (let ((__tmp153593
                       (let ((__tmp153594
                              (let ((__tmp153595
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _self151723_
                                        __id152605
                                        __klass152601
                                        '#f))))
                                (declare (not safe))
                                (cons __tmp153595 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp153594)))
                      (__tmp153585
                       (let ((__tmp153591
                              (let ((__tmp153592
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj151791_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp153592)))
                             (__tmp153586
                              (let ((__tmp153588
                                     (let ((__tmp153589
                                            (let ((__tmp153590
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self151723_
                                                      __slot152604
                                                      __klass152601
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp153590 '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp153589)))
                                    (__tmp153587
                                     (let ()
                                       (declare (not safe))
                                       (cons _value151783_ '()))))
                                (declare (not safe))
                                (cons __tmp153588 __tmp153587))))
                         (declare (not safe))
                         (cons __tmp153591 __tmp153586))))
                  (declare (not safe))
                  (cons __tmp153593 __tmp153585))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153596
                                                         __tmp153584))))
                                            (declare (not safe))
                                            (cons '%#call __tmp153583))))
                                     (declare (not safe))
                                     (cons __tmp153582 '()))))
                              (declare (not safe))
                              (cons __tmp153598 __tmp153581))))
                       (declare (not safe))
                       (cons __tmp153610 __tmp153580))))
                (declare (not safe))
                (cons '%#if __tmp153579))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp153578 '()))))
                                          (declare (not safe))
                                          (cons __tmp153618 __tmp153577))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp153576))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp153574 _stx151724_))
                         (let ((__tmp153564
                                (let ((__tmp153565
                                       (let ((__tmp153572
                                              (let ((__tmp153573
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons 'unchecked-slot-set!
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#ref __tmp153573)))
                                             (__tmp153566
                                              (let ((__tmp153567
                                                     (let ((__tmp153569
                                                            (let ((__tmp153570
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153571
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self151723_
                                     __slot152604
                                     __klass152601
                                     '#f))))
                             (declare (not safe))
                             (cons __tmp153571 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp153570)))
                   (__tmp153568
                    (let () (declare (not safe)) (cons _value151783_ '()))))
               (declare (not safe))
               (cons __tmp153569 __tmp153568))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _object151781_
                                                      __tmp153567))))
                                         (declare (not safe))
                                         (cons __tmp153572 __tmp153566))))
                                  (declare (not safe))
                                  (cons '%#call __tmp153565))))
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp153564
                            _stx151724_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _hd151735151757_
                                           _hd151732151749_)
                                          (let ()
                                            (declare (not safe))
                                            (_g151727151741_
                                             _g151728151744_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g151727151741_ _g151728151744_)))))
                          (let ()
                            (declare (not safe))
                            (_g151727151741_ _g151728151744_))))))
              (declare (not safe))
              (_g151726151793_ _args151725_))))))
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
      (lambda (_self151557_ _stx151558_ _args151559_)
        (let* ((_self151560151569_ _self151557_)
               (_E151562151573_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self151560151569_))))
               (_K151563151580_
                (lambda (_inline151576_ _dispatch151577_ _arity151578_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self151557_ _args151559_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx151558_
                         _arity151578_)))
                  (if _inline151576_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp153660
                               (let ((__tmp153661
                                      (_inline151576_ _stx151558_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp153661
                                  _stx151558_))))
                          (declare (not safe))
                          (gxc#compile-e__0 __tmp153660)))
                      (if _dispatch151577_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch151577_))
                            (let ((__tmp153655
                                   (let ((__tmp153656
                                          (let ((__tmp153657
                                                 (let ((__tmp153658
                                                        (let ((__tmp153659
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch151577_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp153659))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153658
                                                         _args151559_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp153657))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp153656
                                      _stx151558_))))
                              (declare (not safe))
                              (gxc#compile-e__0 __tmp153655)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _stx151558_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self151560151569_ 'gxc#!lambda::t))
              (let* ((_e151564151583_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151560151569_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e151565151586_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151560151569_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity151589_ _e151565151586_)
                     (_e151566151591_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151560151569_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch151594_ _e151566151591_)
                     (_e151567151596_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151560151569_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline151599_ _e151567151596_))
                (declare (not safe))
                (_K151563151580_
                 _inline151599_
                 _dispatch151594_
                 _arity151589_))
              (let () (declare (not safe)) (_E151562151573_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self151396_ _stx151397_ _args151398_)
        (let* ((_self151399151406_ _self151396_)
               (_E151401151410_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self151399151406_))))
               (_K151402151424_
                (lambda (_clauses151413_)
                  (let ((_$e151419_
                         (let ((__tmp153662
                                (lambda (_g151414151416_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g151414151416_
                                     _args151398_)))))
                           (declare (not safe))
                           (find __tmp153662 _clauses151413_))))
                    (if _$e151419_
                        ((lambda (_clause151422_)
                           (let ((__method152877
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause151422_
                                     'optimize-call))))
                             (if __method152877
                                 (__method152877
                                  _clause151422_
                                  _stx151397_
                                  _args151398_)
                                 (let ()
                                   (declare (not safe))
                                   (error '"Missing method"
                                          _clause151422_
                                          'optimize-call)))))
                         _$e151419_)
                        (let ((__tmp153663
                               (map gxc#!lambda-arity _clauses151413_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx151397_
                           __tmp153663)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self151399151406_
                 'gxc#!case-lambda::t))
              (let* ((_e151403151427_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151399151406_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e151404151430_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151399151406_
                         '2
                         gxc#!case-lambda::t
                         '#f)))
                     (_clauses151433_ _e151404151430_))
                (declare (not safe))
                (_K151402151424_ _clauses151433_))
              (let () (declare (not safe)) (_E151401151410_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self151210_ _args151211_)
        (let* ((_self151212151219_ _self151210_)
               (_E151214151223_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self151212151219_))))
               (_K151215151263_
                (lambda (_arity151226_)
                  (let* ((_arity151227151236_ _arity151226_)
                         (_E151230151240_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (error '"No clause matching"
                                     _arity151227151236_)))))
                    (let ((_K151234151260_
                           (lambda ()
                             (fx= (length _args151211_) _arity151226_)))
                          (_K151231151246_
                           (lambda (_arity151244_)
                             (fx>= (length _args151211_) _arity151244_))))
                      (let ((_try-match151229151256_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity151227151236_))
                                   (let ((_tl151233151251_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity151227151236_)))
                                         (_hd151232151249_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity151227151236_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl151233151251_))
                                         (let ((_arity151254_
                                                _hd151232151249_))
                                           (declare (not safe))
                                           (_K151231151246_ _arity151254_))
                                         (let ()
                                           (declare (not safe))
                                           (_E151230151240_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E151230151240_))))))
                        (if (let ()
                              (declare (not safe))
                              (fixnum? _arity151227151236_))
                            (let () (declare (not safe)) (_K151234151260_))
                            (let ()
                              (declare (not safe))
                              (_try-match151229151256_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self151212151219_ 'gxc#!lambda::t))
              (let* ((_e151216151266_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151212151219_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e151217151269_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151212151219_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity151272_ _e151217151269_))
                (declare (not safe))
                (_K151215151263_ _arity151272_))
              (let () (declare (not safe)) (_E151214151223_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self151095_ _stx151096_ _args151097_)
        (let* ((_self151098151106_ _self151095_)
               (_E151100151110_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self151098151106_))))
               (_K151101151194_
                (lambda (_dispatch151113_ _table151114_)
                  (let* ((_g151115151124_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch151113_)))
                         (_else151117151132_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch151113_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _stx151096_))))
                         (_K151119151178_
                          (lambda (_main151135_ _keys151136_)
                            (let ((_g153664_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx151096_
                                      _args151097_))))
                              (begin
                                (let ((_g153665_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g153664_)
                                             (##vector-length _g153664_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g153665_ 2)))
                                      (error "Context expects 2 values"
                                             _g153665_)))
                                (let ((_pargs151138_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g153664_ 0)))
                                      (_kwargs151139_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g153664_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main151135_))
                                    (if _table151114_
                                        (let ((_xargs151146_
                                               (map (lambda (_key151141_)
                                                      (let ((_$e151143_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq__0 _key151141_ _kwargs151139_))))
                (if _$e151143_ (values _$e151143_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys151136_)))
                                          (for-each
                                           (lambda (_kw151148_)
                                             (if (memq (car _kw151148_)
                                                       _keys151136_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx151096_
                                                    _keys151136_
                                                    _kw151148_))))
                                           _kwargs151139_)
                                          (let ((__tmp153717
                                                 (let ((__tmp153718
                                                        (let ((__tmp153719
                                                               (let ((__tmp153724
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp153725
                                     (let ()
                                       (declare (not safe))
                                       (cons _main151135_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp153725)))
                             (__tmp153720
                              (let ((__tmp153722
                                     (let ((__tmp153723
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp153723)))
                                    (__tmp153721
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs151138_
                                               _xargs151146_))))
                                (declare (not safe))
                                (cons __tmp153722 __tmp153721))))
                         (declare (not safe))
                         (cons __tmp153724 __tmp153720))))
                  (declare (not safe))
                  (cons '%#call __tmp153719))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp153718
                                                    _stx151096_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0 __tmp153717)))
                                        (let* ((_kwt151150_
                                                (let ((__tmp153666
                                                       (gensym '__kwt)))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp153666)))
                                               (_kwvars151153_
                                                (map (lambda (_g153667_)
                                                       (let ((__tmp153668
                                                              (gensym '__kw)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp153668)))
                                                     _kwargs151139_))
                                               (_kwbind151158_
                                                (map (lambda (_kw151155_
                                                              _kwvar151156_)
                                                       (let ((__tmp153671
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar151156_ '())))
                     (__tmp153669
                      (let ((__tmp153670 (cdr _kw151155_)))
                        (declare (not safe))
                        (cons __tmp153670 '()))))
                 (declare (not safe))
                 (cons __tmp153671 __tmp153669)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs151139_
                                                     _kwvars151153_))
                                               (_kwset151163_
                                                (map (lambda (_kw151160_
                                                              _kwvar151161_)
                                                       (let ((__tmp153672
                                                              (let ((__tmp153673
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp153681
                                    (let ((__tmp153682
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt151150_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp153682)))
                                   (__tmp153674
                                    (let ((__tmp153678
                                           (let ((__tmp153679
                                                  (let ((__tmp153680
                                                         (car _kw151160_)))
                                                    (declare (not safe))
                                                    (cons __tmp153680 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp153679)))
                                          (__tmp153675
                                           (let ((__tmp153676
                                                  (let ((__tmp153677
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar151161_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp153677))))
                                             (declare (not safe))
                                             (cons __tmp153676 '()))))
                                      (declare (not safe))
                                      (cons __tmp153678 __tmp153675))))
                               (declare (not safe))
                               (cons __tmp153681 __tmp153674))))
                        (declare (not safe))
                        (cons '(%#ref symbolic-table-set!) __tmp153673))))
                 (declare (not safe))
                 (cons '%#call __tmp153672)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs151139_
                                                     _kwvars151153_))
                                               (_xkwargs151168_
                                                (map (lambda (_kw151165_
                                                              _kwvar151166_)
                                                       (let ((__tmp153685
                                                              (car _kw151165_))
                                                             (__tmp153683
                                                              (let ((__tmp153684
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar151166_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp153684))))
                 (declare (not safe))
                 (cons __tmp153685 __tmp153683)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs151139_
                                                     _kwvars151153_))
                                               (_xargs151175_
                                                (map (lambda (_key151170_)
                                                       (let ((_$e151172_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq__0 _key151170_ _xkwargs151168_))))
                 (if _$e151172_ (values _$e151172_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys151136_)))
                                          (let ((__tmp153686
                                                 (let ((__tmp153687
                                                        (let ((__tmp153688
                                                               (let ((__tmp153689
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp153690
                                     (let ((__tmp153691
                                            (let ((__tmp153705
                                                   (let ((__tmp153706
                                                          (let ((__tmp153716
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt151150_ '())))
                        (__tmp153707
                         (let ((__tmp153708
                                (let ((__tmp153709
                                       (let ((__tmp153710
                                              (let ((__tmp153711
                                                     (let ((__tmp153713
                                                            (let ((__tmp153714
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153715 (length _kwargs151139_)))
                             (declare (not safe))
                             (cons __tmp153715 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp153714)))
                   (__tmp153712
                    (let () (declare (not safe)) (cons '(%#quote 0) '()))))
               (declare (not safe))
               (cons __tmp153713 __tmp153712))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-symbolic-table)
                                                      __tmp153711))))
                                         (declare (not safe))
                                         (cons '%#call __tmp153710))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp153709
                                   _stx151096_))))
                           (declare (not safe))
                           (cons __tmp153708 '()))))
                    (declare (not safe))
                    (cons __tmp153716 __tmp153707))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153706 '())))
                                                  (__tmp153692
                                                   (let ((__tmp153693
                                                          (let ((__tmp153694
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp153695
                                (let ((__tmp153696
                                       (let ((__tmp153697
                                              (let ((__tmp153698
                                                     (let ((__tmp153703
                                                            (let ((__tmp153704
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main151135_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp153704)))
                   (__tmp153699
                    (let ((__tmp153701
                           (let ((__tmp153702
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt151150_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp153702)))
                          (__tmp153700
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs151138_ _xargs151175_))))
                      (declare (not safe))
                      (cons __tmp153701 __tmp153700))))
               (declare (not safe))
               (cons __tmp153703 __tmp153699))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp153698))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp153697
                                          _stx151096_))))
                                  (declare (not safe))
                                  (cons __tmp153696 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp153695 _kwset151163_))))
                    (declare (not safe))
                    (cons '%#begin __tmp153694))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153693 '()))))
                                              (declare (not safe))
                                              (cons __tmp153705 __tmp153692))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp153691))))
                                (declare (not safe))
                                (cons __tmp153690 '()))))
                         (declare (not safe))
                         (cons _kwbind151158_ __tmp153689))))
                  (declare (not safe))
                  (cons '%#let-values __tmp153688))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp153687
                                                    _stx151096_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0
                                             __tmp153686)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g151115151124_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e151120151181_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g151115151124_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                               (_e151121151184_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g151115151124_
                                   '2
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_keys151187_ _e151121151184_)
                               (_e151122151189_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g151115151124_
                                   '3
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_main151192_ _e151122151189_))
                          (declare (not safe))
                          (_K151119151178_ _main151192_ _keys151187_))
                        (let () (declare (not safe)) (_else151117151132_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self151098151106_
                 'gxc#!kw-lambda::t))
              (let* ((_e151102151197_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151098151106_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e151103151200_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151098151106_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table151203_ _e151103151200_)
                     (_e151104151205_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151098151106_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch151208_ _e151104151205_))
                (declare (not safe))
                (_K151101151194_ _dispatch151208_ _table151203_))
              (let () (declare (not safe)) (_E151100151110_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx150708_ _args150709_)
        (let _lp150711_ ((_rest150713_ _args150709_)
                         (_pargs150714_ '())
                         (_kwargs150715_ '()))
          (let* ((___stx152759152760_ _rest150713_)
                 (_g150721150773_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx152759152760_)))))
            (let ((___kont152761152762_
                   (lambda (_L150952_ _L150953_)
                     (let ((__tmp153726
                            (let ()
                              (declare (not safe))
                              (cons _L150953_ _pargs150714_))))
                       (declare (not safe))
                       (_lp150711_ _L150952_ __tmp153726 _kwargs150715_))))
                  (___kont152763152764_
                   (lambda (_L150898_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L150898_ _pargs150714_))
                             (reverse _kwargs150715_))))
                  (___kont152765152766_
                   (lambda (_L150845_ _L150846_ _L150847_)
                     (let ((_kw150864_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _L150847_))))
                       (if (assq _kw150864_ _kwargs150715_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx150708_
                              _kw150864_))
                           (let ((__tmp153727
                                  (let ((__tmp153728
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw150864_ _L150846_))))
                                    (declare (not safe))
                                    (cons __tmp153728 _kwargs150715_))))
                             (declare (not safe))
                             (_lp150711_
                              _L150845_
                              _pargs150714_
                              __tmp153727))))))
                  (___kont152767152768_
                   (lambda (_L150793_ _L150794_)
                     (let ((__tmp153729
                            (let ()
                              (declare (not safe))
                              (cons _L150794_ _pargs150714_))))
                       (declare (not safe))
                       (_lp150711_ _L150793_ __tmp153729 _kwargs150715_))))
                  (___kont152769152770_
                   (lambda ()
                     (values (reverse _pargs150714_)
                             (reverse _kwargs150715_)))))
              (let* ((_g150720150780_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx152759152760_))
                            (___kont152769152770_)
                            (let () (declare (not safe)) (_g150721150773_)))))
                     (___match152866152867_
                      (lambda (_e150754150813_
                               _hd150753150816_
                               _tl150752150818_
                               _e150757150821_
                               _hd150756150824_
                               _tl150755150826_
                               _e150760150829_
                               _hd150759150832_
                               _tl150758150834_
                               _e150763150837_
                               _hd150762150840_
                               _tl150761150842_)
                        (let ((_L150845_ _tl150761150842_)
                              (_L150846_ _hd150762150840_)
                              (_L150847_ _hd150759150832_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L150847_))
                              (___kont152765152766_
                               _L150845_
                               _L150846_
                               _L150847_)
                              (___kont152767152768_
                               _tl150752150818_
                               _hd150753150816_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx152759152760_))
                    (let ((_e150727150917_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx152759152760_))))
                      (let ((_tl150725150922_
                             (let ()
                               (declare (not safe))
                               (##cdr _e150727150917_)))
                            (_hd150726150920_
                             (let ()
                               (declare (not safe))
                               (##car _e150727150917_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd150726150920_))
                            (let ((_e150730150925_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd150726150920_))))
                              (let ((_tl150728150930_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e150730150925_)))
                                    (_hd150729150928_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e150730150925_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd150729150928_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd150729150928_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl150728150930_))
                                            (let ((_e150733150933_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl150728150930_))))
                                              (let ((_tl150731150938_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e150733150933_)))
                                                    (_hd150732150936_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e150733150933_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd150732150936_))
                                                    (let ((_e150734150941_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd150732150936_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e150734150941_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl150731150938_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl150725150922_))
                          (let ((_e150737150944_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl150725150922_))))
                            (let ((_tl150735150949_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e150737150944_)))
                                  (_hd150736150947_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e150737150944_))))
                              (___kont152761152762_
                               _tl150735150949_
                               _hd150736150947_)))
                          (___kont152767152768_
                           _tl150725150922_
                           _hd150726150920_))
                      (___kont152767152768_ _tl150725150922_ _hd150726150920_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e150734150941_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl150731150938_))
                          (___kont152763152764_ _tl150725150922_)
                          (___kont152767152768_
                           _tl150725150922_
                           _hd150726150920_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl150731150938_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl150725150922_))
                              (let ((_e150763150837_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl150725150922_))))
                                (let ((_tl150761150842_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e150763150837_)))
                                      (_hd150762150840_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e150763150837_))))
                                  (___match152866152867_
                                   _e150727150917_
                                   _hd150726150920_
                                   _tl150725150922_
                                   _e150730150925_
                                   _hd150729150928_
                                   _tl150728150930_
                                   _e150733150933_
                                   _hd150732150936_
                                   _tl150731150938_
                                   _e150763150837_
                                   _hd150762150840_
                                   _tl150761150842_)))
                              (___kont152767152768_
                               _tl150725150922_
                               _hd150726150920_))
                          (___kont152767152768_
                           _tl150725150922_
                           _hd150726150920_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl150731150938_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl150725150922_))
                                                            (let ((_e150763150837_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl150725150922_))))
                      (let ((_tl150761150842_
                             (let ()
                               (declare (not safe))
                               (##cdr _e150763150837_)))
                            (_hd150762150840_
                             (let ()
                               (declare (not safe))
                               (##car _e150763150837_))))
                        (___match152866152867_
                         _e150727150917_
                         _hd150726150920_
                         _tl150725150922_
                         _e150730150925_
                         _hd150729150928_
                         _tl150728150930_
                         _e150733150933_
                         _hd150732150936_
                         _tl150731150938_
                         _e150763150837_
                         _hd150762150840_
                         _tl150761150842_)))
                    (___kont152767152768_ _tl150725150922_ _hd150726150920_))
                (___kont152767152768_ _tl150725150922_ _hd150726150920_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont152767152768_
                                             _tl150725150922_
                                             _hd150726150920_))
                                        (___kont152767152768_
                                         _tl150725150922_
                                         _hd150726150920_))
                                    (___kont152767152768_
                                     _tl150725150922_
                                     _hd150726150920_))))
                            (___kont152767152768_
                             _tl150725150922_
                             _hd150726150920_))))
                    (let () (declare (not safe)) (_g150720150780_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self150704_ _stx150705_ _args150706_)
        (let () (declare (not safe)) (gxc#xform-call% _stx150705_))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
