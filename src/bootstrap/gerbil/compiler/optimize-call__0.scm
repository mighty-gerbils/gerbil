(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1710632273)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp154807 (list gxc#::basic-xform::t))
            (__tmp154805
             (let ((__tmp154806
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp154806 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp154807
         '()
         __tmp154805
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _$args154508_
        (apply make-instance gxc#::optimize-call::t _$args154508_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp154808
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
        (make-promise __tmp154808)))
    (define gxc#apply-optimize-call
      (lambda (_stx154500_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_self154503_
                (let ((__obj154802
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj154802))
               (__tmp154809
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self154503_ _stx154500_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp154809
           gxc#current-compile-method
           _self154503_))))
    (define gxc#optimize-call%
      (lambda (_self154354_ _stx154355_)
        (let* ((___stx154553154554_ _stx154355_)
               (_g154358154378_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx154553154554_)))))
          (let ((___kont154555154556_
                 (lambda (_L154422_ _L154423_)
                   (let* ((_rator-id154441_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L154423_)))
                          (_rator-type154443_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id154441_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type154443_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp154810
                                  (##structure-ref
                                   _rator-type154443_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id154441_
                              '" => "
                              _rator-type154443_
                              '" "
                              __tmp154810))
                           (let ((_optimized154446_
                                  (let ((__method154803
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type154443_
                                            'optimize-call))))
                                    (if __method154803
                                        (__method154803
                                         _rator-type154443_
                                         _self154354_
                                         _stx154355_
                                         _L154422_)
                                        (let ()
                                          (declare (not safe))
                                          (error '"Missing method"
                                                 _rator-type154443_
                                                 'optimize-call))))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type154443_))
                                 _optimized154446_
                                 (let* ((___stx154535154536_ _optimized154446_)
                                        (_g154449154459_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx154535154536_)))))
                                   (let ((___kont154537154538_
                                          (lambda (_L154479_)
                                            (let ((__tmp154811
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L154479_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp154811
                                               _stx154355_))))
                                         (___kont154539154540_
                                          (lambda () _optimized154446_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx154535154536_))
                                         (let ((_e154454154471_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx154535154536_))))
                                           (let ((_tl154452154476_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e154454154471_)))
                                                 (_hd154453154474_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e154454154471_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd154453154474_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd154453154474_))
                                                     (___kont154537154538_
                                                      _tl154452154476_)
                                                     (___kont154539154540_))
                                                 (___kont154539154540_))))
                                         (___kont154539154540_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type154443_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _self154354_ _stx154355_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _stx154355_
                                _rator-type154443_)))))))
                (___kont154557154558_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _self154354_ _stx154355_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx154553154554_))
                (let ((_e154364154390_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx154553154554_))))
                  (let ((_tl154362154395_
                         (let () (declare (not safe)) (##cdr _e154364154390_)))
                        (_hd154363154393_
                         (let ()
                           (declare (not safe))
                           (##car _e154364154390_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl154362154395_))
                        (let ((_e154367154398_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl154362154395_))))
                          (let ((_tl154365154403_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e154367154398_)))
                                (_hd154366154401_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e154367154398_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd154366154401_))
                                (let ((_e154370154406_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd154366154401_))))
                                  (let ((_tl154368154411_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e154370154406_)))
                                        (_hd154369154409_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e154370154406_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd154369154409_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd154369154409_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl154368154411_))
                                                (let ((_e154373154414_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl154368154411_))))
                                                  (let ((_tl154371154419_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e154373154414_)))
                                                        (_hd154372154417_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e154373154414_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl154371154419_))
                                                        (___kont154555154556_
                                                         _tl154365154403_
                                                         _hd154372154417_)
                                                        (___kont154557154558_))))
                                                (___kont154557154558_))
                                            (___kont154557154558_))
                                        (___kont154557154558_))))
                                (___kont154557154558_))))
                        (___kont154557154558_))))
                (___kont154557154558_))))))
    (define gxc#!predicate::optimize-call
      (lambda (_self154307_ _ctx154308_ _stx154309_ _args154310_)
        (let* ((_g154312154322_
                (lambda (_g154313154319_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g154313154319_))))
               (_g154311154351_
                (lambda (_g154313154325_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g154313154325_))
                      (let ((_e154317154327_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g154313154325_))))
                        (let ((_hd154316154330_
                               (let ()
                                 (declare (not safe))
                                 (##car _e154317154327_)))
                              (_tl154315154332_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e154317154327_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl154315154332_))
                              ((lambda (_L154335_)
                                 (let* ((_klass154346_
                                         (let ((__tmp154812
                                                (##structure-ref
                                                 _self154307_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx154309_
                                            __tmp154812)))
                                        (_object154348_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _ctx154308_
                                            _L154335_))))
                                   (if (##structure-ref
                                        _klass154346_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp154828
                                              (let ((__tmp154829
                                                     (let ((__tmp154831
                                                            (let ((__tmp154832
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp154833
                                  (##structure-ref
                                   _klass154346_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp154833 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp154832)))
                   (__tmp154830
                    (let () (declare (not safe)) (cons _object154348_ '()))))
               (declare (not safe))
               (cons __tmp154831 __tmp154830))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#struct-direct-instance?
                                                      __tmp154829))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp154828
                                          _stx154309_))
                                       (if (##structure-ref
                                            _klass154346_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp154822
                                                  (let ((__tmp154823
                                                         (let ((__tmp154825
                                                                (let ((__tmp154826
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp154827
                                      (##structure-ref
                                       _klass154346_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp154827 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp154826)))
                       (__tmp154824
                        (let ()
                          (declare (not safe))
                          (cons _object154348_ '()))))
                   (declare (not safe))
                   (cons __tmp154825 __tmp154824))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-instance?
                                                          __tmp154823))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp154822
                                              _stx154309_))
                                           (let ((__tmp154813
                                                  (let ((__tmp154814
                                                         (let ((__tmp154820
                                                                (let ((__tmp154821
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'class-instance? '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp154821)))
                       (__tmp154815
                        (let ((__tmp154817
                               (let ((__tmp154818
                                      (let ((__tmp154819
                                             (##structure-ref
                                              _self154307_
                                              '1
                                              gxc#!type::t
                                              '#f)))
                                        (declare (not safe))
                                        (cons __tmp154819 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp154818)))
                              (__tmp154816
                               (let ()
                                 (declare (not safe))
                                 (cons _object154348_ '()))))
                          (declare (not safe))
                          (cons __tmp154817 __tmp154816))))
                   (declare (not safe))
                   (cons __tmp154820 __tmp154815))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#call
                                                          __tmp154814))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp154813
                                              _stx154309_))))))
                               _hd154316154330_)
                              (let ()
                                (declare (not safe))
                                (_g154312154322_ _g154313154325_)))))
                      (let ()
                        (declare (not safe))
                        (_g154312154322_ _g154313154325_))))))
          (declare (not safe))
          (_g154311154351_ _args154310_))))
    (define gxc#!predicate::optimize-call::specialize
      (lambda (__klass154510 __method-table154511)
        (let ((__id154512
               (let ((__slot154513
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154510 'id))))
                 (if __slot154513
                     __slot154513
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self154307_ _ctx154308_ _stx154309_ _args154310_)
            (let* ((_g154312154322_
                    (lambda (_g154313154319_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g154313154319_))))
                   (_g154311154351_
                    (lambda (_g154313154325_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g154313154325_))
                          (let ((_e154317154327_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g154313154325_))))
                            (let ((_hd154316154330_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e154317154327_)))
                                  (_tl154315154332_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e154317154327_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl154315154332_))
                                  ((lambda (_L154335_)
                                     (let* ((_klass154346_
                                             (let ((__tmp154834
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self154307_
                                                       __id154512
                                                       __klass154510
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx154309_
                                                __tmp154834)))
                                            (_object154348_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _ctx154308_
                                                _L154335_))))
                                       (if (##structure-ref
                                            _klass154346_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp154850
                                                  (let ((__tmp154851
                                                         (let ((__tmp154853
                                                                (let ((__tmp154854
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp154855
                                      (##structure-ref
                                       _klass154346_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp154855 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp154854)))
                       (__tmp154852
                        (let ()
                          (declare (not safe))
                          (cons _object154348_ '()))))
                   (declare (not safe))
                   (cons __tmp154853 __tmp154852))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-direct-instance?
                                                          __tmp154851))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp154850
                                              _stx154309_))
                                           (if (##structure-ref
                                                _klass154346_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp154844
                                                      (let ((__tmp154845
                                                             (let ((__tmp154847
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp154848
                                   (let ((__tmp154849
                                          (##structure-ref
                                           _klass154346_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp154849 '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp154848)))
                           (__tmp154846
                            (let ()
                              (declare (not safe))
                              (cons _object154348_ '()))))
                       (declare (not safe))
                       (cons __tmp154847 __tmp154846))))
                (declare (not safe))
                (cons '%#struct-instance? __tmp154845))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp154844
                                                  _stx154309_))
                                               (let ((__tmp154835
                                                      (let ((__tmp154836
                                                             (let ((__tmp154842
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp154843
                                   (let ()
                                     (declare (not safe))
                                     (cons 'class-instance? '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp154843)))
                           (__tmp154837
                            (let ((__tmp154839
                                   (let ((__tmp154840
                                          (let ((__tmp154841
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _self154307_
                                                    __id154512
                                                    __klass154510
                                                    '#f))))
                                            (declare (not safe))
                                            (cons __tmp154841 '()))))
                                     (declare (not safe))
                                     (cons '%#ref __tmp154840)))
                                  (__tmp154838
                                   (let ()
                                     (declare (not safe))
                                     (cons _object154348_ '()))))
                              (declare (not safe))
                              (cons __tmp154839 __tmp154838))))
                       (declare (not safe))
                       (cons __tmp154842 __tmp154837))))
                (declare (not safe))
                (cons '%#call __tmp154836))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp154835
                                                  _stx154309_))))))
                                   _hd154316154330_)
                                  (let ()
                                    (declare (not safe))
                                    (_g154312154322_ _g154313154325_)))))
                          (let ()
                            (declare (not safe))
                            (_g154312154322_ _g154313154325_))))))
              (declare (not safe))
              (_g154311154351_ _args154310_))))))
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
      (lambda (_self154022_ _ctx154023_ _stx154024_ _args154025_)
        (let* ((_klass154027_
                (let ((__tmp154856
                       (##structure-ref _self154022_ '1 gxc#!type::t '#f)))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _stx154024_ __tmp154856)))
               (_fields154029_
                (length (##structure-ref _klass154027_ '5 gxc#!class::t '#f)))
               (_args154035_
                (map (lambda (_g154030154032_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _ctx154023_ _g154030154032_)))
                     _args154025_))
               (_inline-make-object154037_
                (let ((__tmp154857
                       (let ((__tmp154863
                              (let ((__tmp154864
                                     (let ()
                                       (declare (not safe))
                                       (cons '##structure '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp154864)))
                             (__tmp154858
                              (let ((__tmp154860
                                     (let ((__tmp154861
                                            (let ((__tmp154862
                                                   (##structure-ref
                                                    _self154022_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp154862 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp154861)))
                                    (__tmp154859
                                     (make-list _fields154029_ '(%#quote #f))))
                                (declare (not safe))
                                (cons __tmp154860 __tmp154859))))
                         (declare (not safe))
                         (cons __tmp154863 __tmp154858))))
                  (declare (not safe))
                  (cons '%#call __tmp154857))))
          (let ((_$e154040_
                 (##structure-ref _klass154027_ '6 gxc#!class::t '#f)))
            (if _$e154040_
                ((lambda (_ctor154043_)
                   (let ((_$obj154045_
                          (let ((__tmp154965 (gensym '__obj)))
                            (declare (not safe))
                            (make-symbol__0 __tmp154965)))
                         (_ctor-impl154046_
                          (let ()
                            (declare (not safe))
                            (gxc#!class-lookup-method
                             _klass154027_
                             _ctor154043_))))
                     (let ((__tmp154966
                            (let ((__tmp154967
                                   (let ((__tmp155035
                                          (let ((__tmp155036
                                                 (let ((__tmp155038
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj154045_
                                                                '())))
                                                       (__tmp155037
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _inline-make-object154037_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp155038
                                                         __tmp155037))))
                                            (declare (not safe))
                                            (cons __tmp155036 '())))
                                         (__tmp154968
                                          (let ((__tmp154969
                                                 (let ((__tmp154970
                                                        (let ((__tmp154974
                                                               (if _ctor-impl154046_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155029
                                  (let ((__tmp155033
                                         (let ((__tmp155034
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _ctor-impl154046_
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp155034)))
                                        (__tmp155030
                                         (let ((__tmp155031
                                                (let ((__tmp155032
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj154045_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp155032))))
                                           (declare (not safe))
                                           (cons __tmp155031 _args154035_))))
                                    (declare (not safe))
                                    (cons __tmp155033 __tmp155030))))
                             (declare (not safe))
                             (cons '%#call __tmp155029))
                           (let* ((_$ctor154048_
                                   (let ((__tmp154975 (gensym '__constructor)))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp154975)))
                                  (__tmp154976
                                   (let ((__tmp155011
                                          (let ((__tmp155012
                                                 (let ((__tmp155028
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$ctor154048_
                                                                '())))
                                                       (__tmp155013
                                                        (let ((__tmp155014
                                                               (let ((__tmp155015
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp155026
                                     (let ((__tmp155027
                                            (let ()
                                              (declare (not safe))
                                              (cons 'direct-method-ref '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp155027)))
                                    (__tmp155016
                                     (let ((__tmp155023
                                            (let ((__tmp155024
                                                   (let ((__tmp155025
                                                          (##structure-ref
                                                           _self154022_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp155025 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp155024)))
                                           (__tmp155017
                                            (let ((__tmp155021
                                                   (let ((__tmp155022
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj154045_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155022)))
                                                  (__tmp155018
                                                   (let ((__tmp155019
                                                          (let ((__tmp155020
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _ctor154043_ '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp155020))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp155019 '()))))
                                              (declare (not safe))
                                              (cons __tmp155021 __tmp155018))))
                                       (declare (not safe))
                                       (cons __tmp155023 __tmp155017))))
                                (declare (not safe))
                                (cons __tmp155026 __tmp155016))))
                         (declare (not safe))
                         (cons '%#call __tmp155015))))
                  (declare (not safe))
                  (cons __tmp155014 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp155028
                                                         __tmp155013))))
                                            (declare (not safe))
                                            (cons __tmp155012 '())))
                                         (__tmp154977
                                          (let ((__tmp154978
                                                 (let ((__tmp154979
                                                        (let ((__tmp155009
                                                               (let ((__tmp155010
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$ctor154048_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp155010)))
                      (__tmp154980
                       (let ((__tmp155002
                              (let ((__tmp155003
                                     (let ((__tmp155007
                                            (let ((__tmp155008
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$ctor154048_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp155008)))
                                           (__tmp155004
                                            (let ((__tmp155005
                                                   (let ((__tmp155006
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj154045_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155006))))
                                              (declare (not safe))
                                              (cons __tmp155005
                                                    _args154035_))))
                                       (declare (not safe))
                                       (cons __tmp155007 __tmp155004))))
                                (declare (not safe))
                                (cons '%#call __tmp155003)))
                             (__tmp154981
                              (let ((__tmp154982
                                     (let ((__tmp154983
                                            (let ((__tmp155000
                                                   (let ((__tmp155001
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155001)))
                                                  (__tmp154984
                                                   (let ((__tmp154998
                                                          (let ((__tmp154999
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons '"missing constructor method implementation"
                                 '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp154999)))
                 (__tmp154985
                  (let ((__tmp154996
                         (let ((__tmp154997
                                (let ()
                                  (declare (not safe))
                                  (cons 'class: '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp154997)))
                        (__tmp154986
                         (let ((__tmp154993
                                (let ((__tmp154994
                                       (let ((__tmp154995
                                              (##structure-ref
                                               _self154022_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp154995 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp154994)))
                               (__tmp154987
                                (let ((__tmp154991
                                       (let ((__tmp154992
                                              (let ()
                                                (declare (not safe))
                                                (cons 'method: '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp154992)))
                                      (__tmp154988
                                       (let ((__tmp154989
                                              (let ((__tmp154990
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _ctor154043_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#quote __tmp154990))))
                                         (declare (not safe))
                                         (cons __tmp154989 '()))))
                                  (declare (not safe))
                                  (cons __tmp154991 __tmp154988))))
                           (declare (not safe))
                           (cons __tmp154993 __tmp154987))))
                    (declare (not safe))
                    (cons __tmp154996 __tmp154986))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp154998
                                                           __tmp154985))))
                                              (declare (not safe))
                                              (cons __tmp155000 __tmp154984))))
                                       (declare (not safe))
                                       (cons '%#call __tmp154983))))
                                (declare (not safe))
                                (cons __tmp154982 '()))))
                         (declare (not safe))
                         (cons __tmp155002 __tmp154981))))
                  (declare (not safe))
                  (cons __tmp155009 __tmp154980))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#if __tmp154979))))
                                            (declare (not safe))
                                            (cons __tmp154978 '()))))
                                     (declare (not safe))
                                     (cons __tmp155011 __tmp154977))))
                             (declare (not safe))
                             (cons '%#let-values __tmp154976))))
                      (__tmp154971
                       (let ((__tmp154972
                              (let ((__tmp154973
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj154045_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp154973))))
                         (declare (not safe))
                         (cons __tmp154972 '()))))
                  (declare (not safe))
                  (cons __tmp154974 __tmp154971))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#begin
                                                         __tmp154970))))
                                            (declare (not safe))
                                            (cons __tmp154969 '()))))
                                     (declare (not safe))
                                     (cons __tmp155035 __tmp154968))))
                              (declare (not safe))
                              (cons '%#let-values __tmp154967))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp154966 _stx154024_))))
                 _$e154040_)
                (let ((_$e154050_
                       (##structure-ref _klass154027_ '10 gxc#!class::t '#f)))
                  (if _$e154050_
                      ((lambda (_metaclass154053_)
                         (let* ((_$obj154055_
                                 (let ((__tmp154927 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp154927)))
                                (_metakons154057_
                                 (let ((__tmp154928
                                        (let ()
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-class
                                           _stx154024_
                                           _metaclass154053_))))
                                   (declare (not safe))
                                   (gxc#!class-lookup-method
                                    __tmp154928
                                    'instance-init!))))
                           (let ((__tmp154929
                                  (let ((__tmp154930
                                         (let ((__tmp154961
                                                (let ((__tmp154962
                                                       (let ((__tmp154964
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj154055_ '())))
                     (__tmp154963
                      (let ()
                        (declare (not safe))
                        (cons _inline-make-object154037_ '()))))
                 (declare (not safe))
                 (cons __tmp154964 __tmp154963))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp154962 '())))
                                               (__tmp154931
                                                (let ((__tmp154932
                                                       (let ((__tmp154933
                                                              (let ((__tmp154937
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if _metakons154057_
                                 (let ((__tmp154951
                                        (let ((__tmp154959
                                               (let ((__tmp154960
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _metakons154057_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp154960)))
                                              (__tmp154952
                                               (let ((__tmp154956
                                                      (let ((__tmp154957
                                                             (let ((__tmp154958
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self154022_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp154958 '()))))
                (declare (not safe))
                (cons '%#ref __tmp154957)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp154953
                                                      (let ((__tmp154954
                                                             (let ((__tmp154955
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _$obj154055_ '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp154955))))
                (declare (not safe))
                (cons __tmp154954 _args154035_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp154956
                                                       __tmp154953))))
                                          (declare (not safe))
                                          (cons __tmp154959 __tmp154952))))
                                   (declare (not safe))
                                   (cons '%#call __tmp154951))
                                 (let ((__tmp154938
                                        (let ((__tmp154949
                                               (let ((__tmp154950
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'call-method
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp154950)))
                                              (__tmp154939
                                               (let ((__tmp154946
                                                      (let ((__tmp154947
                                                             (let ((__tmp154948
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self154022_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp154948 '()))))
                (declare (not safe))
                (cons '%#ref __tmp154947)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp154940
                                                      (let ((__tmp154944
                                                             (let ((__tmp154945
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'instance-init! '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp154945)))
                    (__tmp154941
                     (let ((__tmp154942
                            (let ((__tmp154943
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj154055_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp154943))))
                       (declare (not safe))
                       (cons __tmp154942 _args154035_))))
                (declare (not safe))
                (cons __tmp154944 __tmp154941))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp154946
                                                       __tmp154940))))
                                          (declare (not safe))
                                          (cons __tmp154949 __tmp154939))))
                                   (declare (not safe))
                                   (cons '%#call __tmp154938))))
                            (__tmp154934
                             (let ((__tmp154935
                                    (let ((__tmp154936
                                           (let ()
                                             (declare (not safe))
                                             (cons _$obj154055_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp154936))))
                               (declare (not safe))
                               (cons __tmp154935 '()))))
                        (declare (not safe))
                        (cons __tmp154937 __tmp154934))))
                 (declare (not safe))
                 (cons '%#begin __tmp154933))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp154932 '()))))
                                           (declare (not safe))
                                           (cons __tmp154961 __tmp154931))))
                                    (declare (not safe))
                                    (cons '%#let-values __tmp154930))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp154929 _stx154024_))))
                       _$e154050_)
                      (if (##structure-ref _klass154027_ '7 gxc#!class::t '#f)
                          (if (fx= (length _args154035_) _fields154029_)
                              (let ((__tmp154919
                                     (let ((__tmp154920
                                            (let ((__tmp154925
                                                   (let ((__tmp154926
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp154926)))
                                                  (__tmp154921
                                                   (let ((__tmp154922
                                                          (let ((__tmp154923
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp154924
                                (##structure-ref
                                 _self154022_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (cons __tmp154924 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp154923))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp154922
                                                           _args154035_))))
                                              (declare (not safe))
                                              (cons __tmp154925 __tmp154921))))
                                       (declare (not safe))
                                       (cons '%#call __tmp154920))))
                                (declare (not safe))
                                (gxc#xform-wrap-source
                                 __tmp154919
                                 _stx154024_))
                              (let ((__tmp154918
                                     (##structure-ref
                                      _self154022_
                                      '1
                                      gxc#!type::t
                                      '#f))
                                    (__tmp154917
                                     (length (##structure-ref
                                              _klass154027_
                                              '5
                                              gxc#!class::t
                                              '#f))))
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"illegal struct constructor application; arity mismatch"
                                 _stx154024_
                                 __tmp154918
                                 __tmp154917)))
                          (let ((_$obj154060_
                                 (let ((__tmp154865 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp154865))))
                            (let _lp154062_ ((_rest154064_ _args154035_)
                                             (_initializers154065_ '()))
                              (let* ((___stx154591154592_ _rest154064_)
                                     (_g154069154090_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx154591154592_)))))
                                (let ((___kont154593154594_
                                       (lambda (_L154144_ _L154145_ _L154146_)
                                         (let* ((_slot154177_
                                                 (let ((__tmp154866
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L154146_))))
                                                   (declare (not safe))
                                                   (keyword->symbol
                                                    __tmp154866)))
                                                (_off154179_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass154027_
                                                    _slot154177_))))
                                           (if _off154179_
                                               (let ((__tmp154868
                                                      (let ((__tmp154869
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _off154179_ _L154145_))))
                (declare (not safe))
                (cons __tmp154869 _initializers154065_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp154062_
                                                  _L154144_
                                                  __tmp154868))
                                               (let ((__tmp154867
                                                      (##structure-ref
                                                       _self154022_
                                                       '1
                                                       gxc#!type::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"unknown slot"
                                                  _stx154024_
                                                  __tmp154867
                                                  _slot154177_))))))
                                      (___kont154595154596_
                                       (lambda ()
                                         (let ((__tmp154870
                                                (let ((__tmp154871
                                                       (let ((__tmp154894
                                                              (let ((__tmp154895
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp154897
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj154060_ '())))
                                   (__tmp154896
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object154037_ '()))))
                               (declare (not safe))
                               (cons __tmp154897 __tmp154896))))
                        (declare (not safe))
                        (cons __tmp154895 '())))
                     (__tmp154872
                      (let ((__tmp154873
                             (let ((__tmp154874
                                    (let ((__tmp154891
                                           (let ((__tmp154892
                                                  (let ((__tmp154893
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj154060_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp154893))))
                                             (declare (not safe))
                                             (cons __tmp154892 '())))
                                          (__tmp154875
                                           (let ((__tmp154876
                                                  (lambda (_i154104_ _r154105_)
                                                    (let ((__tmp154877
                                                           (let ((__tmp154878
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp154888
                                 (let ((__tmp154889
                                        (let ((__tmp154890
                                               (##structure-ref
                                                _self154022_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp154890 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp154889)))
                                (__tmp154879
                                 (let ((__tmp154885
                                        (let ((__tmp154886
                                               (let ((__tmp154887
                                                      (car _i154104_)))
                                                 (declare (not safe))
                                                 (cons __tmp154887 '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp154886)))
                                       (__tmp154880
                                        (let ((__tmp154883
                                               (let ((__tmp154884
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _$obj154060_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp154884)))
                                              (__tmp154881
                                               (let ((__tmp154882
                                                      (cdr _i154104_)))
                                                 (declare (not safe))
                                                 (cons __tmp154882 '()))))
                                          (declare (not safe))
                                          (cons __tmp154883 __tmp154881))))
                                   (declare (not safe))
                                   (cons __tmp154885 __tmp154880))))
                            (declare (not safe))
                            (cons __tmp154888 __tmp154879))))
                     (declare (not safe))
                     (cons '%#struct-unchecked-set! __tmp154878))))
              (declare (not safe))
              (cons __tmp154877 _r154105_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (foldl1 __tmp154876
                                                     '()
                                                     _initializers154065_))))
                                      (declare (not safe))
                                      (foldr1 cons __tmp154891 __tmp154875))))
                               (declare (not safe))
                               (cons '%#begin __tmp154874))))
                        (declare (not safe))
                        (cons __tmp154873 '()))))
                 (declare (not safe))
                 (cons __tmp154894 __tmp154872))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp154871))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp154870
                                            _stx154024_))))
                                      (___kont154597154598_
                                       (lambda ()
                                         (let ((__tmp154898
                                                (let ((__tmp154899
                                                       (let ((__tmp154913
                                                              (let ((__tmp154914
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp154916
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj154060_ '())))
                                   (__tmp154915
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object154037_ '()))))
                               (declare (not safe))
                               (cons __tmp154916 __tmp154915))))
                        (declare (not safe))
                        (cons __tmp154914 '())))
                     (__tmp154900
                      (let ((__tmp154901
                             (let ((__tmp154902
                                    (let ((__tmp154906
                                           (let ((__tmp154907
                                                  (let ((__tmp154911
                                                         (let ((__tmp154912
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons 'class-instance-init! '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp154912)))
                (__tmp154908
                 (let ((__tmp154909
                        (let ((__tmp154910
                               (let ()
                                 (declare (not safe))
                                 (cons _$obj154060_ '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp154910))))
                   (declare (not safe))
                   (cons __tmp154909 _args154035_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp154911
                                                          __tmp154908))))
                                             (declare (not safe))
                                             (cons '%#call __tmp154907)))
                                          (__tmp154903
                                           (let ((__tmp154904
                                                  (let ((__tmp154905
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj154060_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp154905))))
                                             (declare (not safe))
                                             (cons __tmp154904 '()))))
                                      (declare (not safe))
                                      (cons __tmp154906 __tmp154903))))
                               (declare (not safe))
                               (cons '%#begin __tmp154902))))
                        (declare (not safe))
                        (cons __tmp154901 '()))))
                 (declare (not safe))
                 (cons __tmp154913 __tmp154900))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp154899))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp154898
                                            _stx154024_)))))
                                  (let* ((_g154067154107_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   ___stx154591154592_))
                                                (___kont154595154596_)
                                                (___kont154597154598_))))
                                         (___match154628154629_
                                          (lambda (_e154076154112_
                                                   _hd154075154115_
                                                   _tl154074154117_
                                                   _e154079154120_
                                                   _hd154078154123_
                                                   _tl154077154125_
                                                   _e154082154128_
                                                   _hd154081154131_
                                                   _tl154080154133_
                                                   _e154085154136_
                                                   _hd154084154139_
                                                   _tl154083154141_)
                                            (let ((_L154144_ _tl154083154141_)
                                                  (_L154145_ _hd154084154139_)
                                                  (_L154146_ _hd154081154131_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-keyword?
                                                     _L154146_))
                                                  (___kont154593154594_
                                                   _L154144_
                                                   _L154145_
                                                   _L154146_)
                                                  (___kont154597154598_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx154591154592_))
                                        (let ((_e154076154112_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx154591154592_))))
                                          (let ((_tl154074154117_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e154076154112_)))
                                                (_hd154075154115_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e154076154112_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd154075154115_))
                                                (let ((_e154079154120_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd154075154115_))))
                                                  (let ((_tl154077154125_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e154079154120_)))
                                                        (_hd154078154123_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e154079154120_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd154078154123_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#quote
                                                               _hd154078154123_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl154077154125_))
                        (let ((_e154082154128_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl154077154125_))))
                          (let ((_tl154080154133_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e154082154128_)))
                                (_hd154081154131_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e154082154128_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl154080154133_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl154074154117_))
                                    (let ((_e154085154136_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl154074154117_))))
                                      (let ((_tl154083154141_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e154085154136_)))
                                            (_hd154084154139_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e154085154136_))))
                                        (___match154628154629_
                                         _e154076154112_
                                         _hd154075154115_
                                         _tl154074154117_
                                         _e154079154120_
                                         _hd154078154123_
                                         _tl154077154125_
                                         _e154082154128_
                                         _hd154081154131_
                                         _tl154080154133_
                                         _e154085154136_
                                         _hd154084154139_
                                         _tl154083154141_)))
                                    (___kont154597154598_))
                                (___kont154597154598_))))
                        (___kont154597154598_))
                    (___kont154597154598_))
                (___kont154597154598_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont154597154598_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g154067154107_))))))))))))))))
    (define gxc#!constructor::optimize-call::specialize
      (lambda (__klass154514 __method-table154515)
        (let ((__id154516
               (let ((__slot154517
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154514 'id))))
                 (if __slot154517
                     __slot154517
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self154022_ _ctx154023_ _stx154024_ _args154025_)
            (let* ((_klass154027_
                    (let ((__tmp155039
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _self154022_
                              __id154516
                              __klass154514
                              '#f))))
                      (declare (not safe))
                      (gxc#optimizer-resolve-class _stx154024_ __tmp155039)))
                   (_fields154029_
                    (length (##structure-ref
                             _klass154027_
                             '5
                             gxc#!class::t
                             '#f)))
                   (_args154035_
                    (map (lambda (_g154030154032_)
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _ctx154023_ _g154030154032_)))
                         _args154025_))
                   (_inline-make-object154037_
                    (let ((__tmp155040
                           (let ((__tmp155046
                                  (let ((__tmp155047
                                         (let ()
                                           (declare (not safe))
                                           (cons '##structure '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp155047)))
                                 (__tmp155041
                                  (let ((__tmp155043
                                         (let ((__tmp155044
                                                (let ((__tmp155045
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self154022_
                                                          __id154516
                                                          __klass154514
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp155045 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp155044)))
                                        (__tmp155042
                                         (make-list
                                          _fields154029_
                                          '(%#quote #f))))
                                    (declare (not safe))
                                    (cons __tmp155043 __tmp155042))))
                             (declare (not safe))
                             (cons __tmp155046 __tmp155041))))
                      (declare (not safe))
                      (cons '%#call __tmp155040))))
              (let ((_$e154040_
                     (##structure-ref _klass154027_ '6 gxc#!class::t '#f)))
                (if _$e154040_
                    ((lambda (_ctor154043_)
                       (let ((_$obj154045_
                              (let ((__tmp155148 (gensym '__obj)))
                                (declare (not safe))
                                (make-symbol__0 __tmp155148)))
                             (_ctor-impl154046_
                              (let ()
                                (declare (not safe))
                                (gxc#!class-lookup-method
                                 _klass154027_
                                 _ctor154043_))))
                         (let ((__tmp155149
                                (let ((__tmp155150
                                       (let ((__tmp155218
                                              (let ((__tmp155219
                                                     (let ((__tmp155221
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$obj154045_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp155220
                    (let ()
                      (declare (not safe))
                      (cons _inline-make-object154037_ '()))))
               (declare (not safe))
               (cons __tmp155221 __tmp155220))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp155219 '())))
                                             (__tmp155151
                                              (let ((__tmp155152
                                                     (let ((__tmp155153
                                                            (let ((__tmp155157
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _ctor-impl154046_
                               (let ((__tmp155212
                                      (let ((__tmp155216
                                             (let ((__tmp155217
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor-impl154046_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp155217)))
                                            (__tmp155213
                                             (let ((__tmp155214
                                                    (let ((__tmp155215
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$obj154045_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp155215))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp155214
                                                     _args154035_))))
                                        (declare (not safe))
                                        (cons __tmp155216 __tmp155213))))
                                 (declare (not safe))
                                 (cons '%#call __tmp155212))
                               (let* ((_$ctor154048_
                                       (let ((__tmp155158
                                              (gensym '__constructor)))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp155158)))
                                      (__tmp155159
                                       (let ((__tmp155194
                                              (let ((__tmp155195
                                                     (let ((__tmp155211
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$ctor154048_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp155196
                    (let ((__tmp155197
                           (let ((__tmp155198
                                  (let ((__tmp155209
                                         (let ((__tmp155210
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'direct-method-ref
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp155210)))
                                        (__tmp155199
                                         (let ((__tmp155206
                                                (let ((__tmp155207
                                                       (let ((__tmp155208
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self154022_
                         __id154516
                         __klass154514
                         '#f))))
                 (declare (not safe))
                 (cons __tmp155208 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp155207)))
                                               (__tmp155200
                                                (let ((__tmp155204
                                                       (let ((__tmp155205
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj154045_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp155205)))
              (__tmp155201
               (let ((__tmp155202
                      (let ((__tmp155203
                             (let ()
                               (declare (not safe))
                               (cons _ctor154043_ '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp155203))))
                 (declare (not safe))
                 (cons __tmp155202 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp155204
                                                        __tmp155201))))
                                           (declare (not safe))
                                           (cons __tmp155206 __tmp155200))))
                                    (declare (not safe))
                                    (cons __tmp155209 __tmp155199))))
                             (declare (not safe))
                             (cons '%#call __tmp155198))))
                      (declare (not safe))
                      (cons __tmp155197 '()))))
               (declare (not safe))
               (cons __tmp155211 __tmp155196))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp155195 '())))
                                             (__tmp155160
                                              (let ((__tmp155161
                                                     (let ((__tmp155162
                                                            (let ((__tmp155192
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155193
                                  (let ()
                                    (declare (not safe))
                                    (cons _$ctor154048_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp155193)))
                          (__tmp155163
                           (let ((__tmp155185
                                  (let ((__tmp155186
                                         (let ((__tmp155190
                                                (let ((__tmp155191
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$ctor154048_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp155191)))
                                               (__tmp155187
                                                (let ((__tmp155188
                                                       (let ((__tmp155189
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj154045_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp155189))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp155188
                                                        _args154035_))))
                                           (declare (not safe))
                                           (cons __tmp155190 __tmp155187))))
                                    (declare (not safe))
                                    (cons '%#call __tmp155186)))
                                 (__tmp155164
                                  (let ((__tmp155165
                                         (let ((__tmp155166
                                                (let ((__tmp155183
                                                       (let ((__tmp155184
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'error '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp155184)))
              (__tmp155167
               (let ((__tmp155181
                      (let ((__tmp155182
                             (let ()
                               (declare (not safe))
                               (cons '"missing constructor method implementation"
                                     '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp155182)))
                     (__tmp155168
                      (let ((__tmp155179
                             (let ((__tmp155180
                                    (let ()
                                      (declare (not safe))
                                      (cons 'class: '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp155180)))
                            (__tmp155169
                             (let ((__tmp155176
                                    (let ((__tmp155177
                                           (let ((__tmp155178
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self154022_
                                                     __id154516
                                                     __klass154514
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp155178 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp155177)))
                                   (__tmp155170
                                    (let ((__tmp155174
                                           (let ((__tmp155175
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'method: '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp155175)))
                                          (__tmp155171
                                           (let ((__tmp155172
                                                  (let ((__tmp155173
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _ctor154043_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#quote
                                                          __tmp155173))))
                                             (declare (not safe))
                                             (cons __tmp155172 '()))))
                                      (declare (not safe))
                                      (cons __tmp155174 __tmp155171))))
                               (declare (not safe))
                               (cons __tmp155176 __tmp155170))))
                        (declare (not safe))
                        (cons __tmp155179 __tmp155169))))
                 (declare (not safe))
                 (cons __tmp155181 __tmp155168))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp155183
                                                        __tmp155167))))
                                           (declare (not safe))
                                           (cons '%#call __tmp155166))))
                                    (declare (not safe))
                                    (cons __tmp155165 '()))))
                             (declare (not safe))
                             (cons __tmp155185 __tmp155164))))
                      (declare (not safe))
                      (cons __tmp155192 __tmp155163))))
               (declare (not safe))
               (cons '%#if __tmp155162))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp155161 '()))))
                                         (declare (not safe))
                                         (cons __tmp155194 __tmp155160))))
                                 (declare (not safe))
                                 (cons '%#let-values __tmp155159))))
                          (__tmp155154
                           (let ((__tmp155155
                                  (let ((__tmp155156
                                         (let ()
                                           (declare (not safe))
                                           (cons _$obj154045_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp155156))))
                             (declare (not safe))
                             (cons __tmp155155 '()))))
                      (declare (not safe))
                      (cons __tmp155157 __tmp155154))))
               (declare (not safe))
               (cons '%#begin __tmp155153))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp155152 '()))))
                                         (declare (not safe))
                                         (cons __tmp155218 __tmp155151))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp155150))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp155149 _stx154024_))))
                     _$e154040_)
                    (let ((_$e154050_
                           (##structure-ref
                            _klass154027_
                            '10
                            gxc#!class::t
                            '#f)))
                      (if _$e154050_
                          ((lambda (_metaclass154053_)
                             (let* ((_$obj154055_
                                     (let ((__tmp155110 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp155110)))
                                    (_metakons154057_
                                     (let ((__tmp155111
                                            (let ()
                                              (declare (not safe))
                                              (gxc#optimizer-resolve-class
                                               _stx154024_
                                               _metaclass154053_))))
                                       (declare (not safe))
                                       (gxc#!class-lookup-method
                                        __tmp155111
                                        'instance-init!))))
                               (let ((__tmp155112
                                      (let ((__tmp155113
                                             (let ((__tmp155144
                                                    (let ((__tmp155145
                                                           (let ((__tmp155147
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj154055_ '())))
                         (__tmp155146
                          (let ()
                            (declare (not safe))
                            (cons _inline-make-object154037_ '()))))
                     (declare (not safe))
                     (cons __tmp155147 __tmp155146))))
              (declare (not safe))
              (cons __tmp155145 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp155114
                                                    (let ((__tmp155115
                                                           (let ((__tmp155116
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp155120
                                 (if _metakons154057_
                                     (let ((__tmp155134
                                            (let ((__tmp155142
                                                   (let ((__tmp155143
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _metakons154057_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155143)))
                                                  (__tmp155135
                                                   (let ((__tmp155139
                                                          (let ((__tmp155140
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp155141
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self154022_
                                   __id154516
                                   __klass154514
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp155141 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp155140)))
                 (__tmp155136
                  (let ((__tmp155137
                         (let ((__tmp155138
                                (let ()
                                  (declare (not safe))
                                  (cons _$obj154055_ '()))))
                           (declare (not safe))
                           (cons '%#ref __tmp155138))))
                    (declare (not safe))
                    (cons __tmp155137 _args154035_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp155139
                                                           __tmp155136))))
                                              (declare (not safe))
                                              (cons __tmp155142 __tmp155135))))
                                       (declare (not safe))
                                       (cons '%#call __tmp155134))
                                     (let ((__tmp155121
                                            (let ((__tmp155132
                                                   (let ((__tmp155133
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'call-method
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155133)))
                                                  (__tmp155122
                                                   (let ((__tmp155129
                                                          (let ((__tmp155130
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp155131
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self154022_
                                   __id154516
                                   __klass154514
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp155131 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp155130)))
                 (__tmp155123
                  (let ((__tmp155127
                         (let ((__tmp155128
                                (let ()
                                  (declare (not safe))
                                  (cons 'instance-init! '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp155128)))
                        (__tmp155124
                         (let ((__tmp155125
                                (let ((__tmp155126
                                       (let ()
                                         (declare (not safe))
                                         (cons _$obj154055_ '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp155126))))
                           (declare (not safe))
                           (cons __tmp155125 _args154035_))))
                    (declare (not safe))
                    (cons __tmp155127 __tmp155124))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp155129
                                                           __tmp155123))))
                                              (declare (not safe))
                                              (cons __tmp155132 __tmp155122))))
                                       (declare (not safe))
                                       (cons '%#call __tmp155121))))
                                (__tmp155117
                                 (let ((__tmp155118
                                        (let ((__tmp155119
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$obj154055_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp155119))))
                                   (declare (not safe))
                                   (cons __tmp155118 '()))))
                            (declare (not safe))
                            (cons __tmp155120 __tmp155117))))
                     (declare (not safe))
                     (cons '%#begin __tmp155116))))
              (declare (not safe))
              (cons __tmp155115 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp155144
                                                     __tmp155114))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp155113))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp155112
                                  _stx154024_))))
                           _$e154050_)
                          (if (##structure-ref
                               _klass154027_
                               '7
                               gxc#!class::t
                               '#f)
                              (if (fx= (length _args154035_) _fields154029_)
                                  (let ((__tmp155102
                                         (let ((__tmp155103
                                                (let ((__tmp155108
                                                       (let ((__tmp155109
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '##structure '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp155109)))
              (__tmp155104
               (let ((__tmp155105
                      (let ((__tmp155106
                             (let ((__tmp155107
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _self154022_
                                       __id154516
                                       __klass154514
                                       '#f))))
                               (declare (not safe))
                               (cons __tmp155107 '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp155106))))
                 (declare (not safe))
                 (cons __tmp155105 _args154035_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp155108
                                                        __tmp155104))))
                                           (declare (not safe))
                                           (cons '%#call __tmp155103))))
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp155102
                                     _stx154024_))
                                  (let ((__tmp155101
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _self154022_
                                            __id154516
                                            __klass154514
                                            '#f)))
                                        (__tmp155100
                                         (length (##structure-ref
                                                  _klass154027_
                                                  '5
                                                  gxc#!class::t
                                                  '#f))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"illegal struct constructor application; arity mismatch"
                                     _stx154024_
                                     __tmp155101
                                     __tmp155100)))
                              (let ((_$obj154060_
                                     (let ((__tmp155048 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp155048))))
                                (let _lp154062_ ((_rest154064_ _args154035_)
                                                 (_initializers154065_ '()))
                                  (let* ((___stx154633154634_ _rest154064_)
                                         (_g154069154090_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               ___stx154633154634_)))))
                                    (let ((___kont154635154636_
                                           (lambda (_L154144_
                                                    _L154145_
                                                    _L154146_)
                                             (let* ((_slot154177_
                                                     (let ((__tmp155049
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _L154146_))))
                                                       (declare (not safe))
                                                       (keyword->symbol
                                                        __tmp155049)))
                                                    (_off154179_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass154027_
                                                        _slot154177_))))
                                               (if _off154179_
                                                   (let ((__tmp155051
                                                          (let ((__tmp155052
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _off154179_ _L154145_))))
                    (declare (not safe))
                    (cons __tmp155052 _initializers154065_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp154062_
                                                      _L154144_
                                                      __tmp155051))
                                                   (let ((__tmp155050
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _self154022_
                                                             __id154516
                                                             __klass154514
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"unknown slot"
                                                      _stx154024_
                                                      __tmp155050
                                                      _slot154177_))))))
                                          (___kont154637154638_
                                           (lambda ()
                                             (let ((__tmp155053
                                                    (let ((__tmp155054
                                                           (let ((__tmp155077
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp155078
                                 (let ((__tmp155080
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj154060_ '())))
                                       (__tmp155079
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object154037_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp155080 __tmp155079))))
                            (declare (not safe))
                            (cons __tmp155078 '())))
                         (__tmp155055
                          (let ((__tmp155056
                                 (let ((__tmp155057
                                        (let ((__tmp155074
                                               (let ((__tmp155075
                                                      (let ((__tmp155076
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj154060_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp155076))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp155075 '())))
                                              (__tmp155058
                                               (let ((__tmp155059
                                                      (lambda (_i154104_
                                                               _r154105_)
                                                        (let ((__tmp155060
                                                               (let ((__tmp155061
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp155071
                                     (let ((__tmp155072
                                            (let ((__tmp155073
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self154022_
                                                      __id154516
                                                      __klass154514
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp155073 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp155072)))
                                    (__tmp155062
                                     (let ((__tmp155068
                                            (let ((__tmp155069
                                                   (let ((__tmp155070
                                                          (car _i154104_)))
                                                     (declare (not safe))
                                                     (cons __tmp155070 '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp155069)))
                                           (__tmp155063
                                            (let ((__tmp155066
                                                   (let ((__tmp155067
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj154060_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155067)))
                                                  (__tmp155064
                                                   (let ((__tmp155065
                                                          (cdr _i154104_)))
                                                     (declare (not safe))
                                                     (cons __tmp155065 '()))))
                                              (declare (not safe))
                                              (cons __tmp155066 __tmp155064))))
                                       (declare (not safe))
                                       (cons __tmp155068 __tmp155063))))
                                (declare (not safe))
                                (cons __tmp155071 __tmp155062))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-set! __tmp155061))))
                  (declare (not safe))
                  (cons __tmp155060 _r154105_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl1 __tmp155059
                                                         '()
                                                         _initializers154065_))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp155074
                                                  __tmp155058))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp155057))))
                            (declare (not safe))
                            (cons __tmp155056 '()))))
                     (declare (not safe))
                     (cons __tmp155077 __tmp155055))))
              (declare (not safe))
              (cons '%#let-values __tmp155054))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp155053
                                                _stx154024_))))
                                          (___kont154639154640_
                                           (lambda ()
                                             (let ((__tmp155081
                                                    (let ((__tmp155082
                                                           (let ((__tmp155096
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp155097
                                 (let ((__tmp155099
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj154060_ '())))
                                       (__tmp155098
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object154037_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp155099 __tmp155098))))
                            (declare (not safe))
                            (cons __tmp155097 '())))
                         (__tmp155083
                          (let ((__tmp155084
                                 (let ((__tmp155085
                                        (let ((__tmp155089
                                               (let ((__tmp155090
                                                      (let ((__tmp155094
                                                             (let ((__tmp155095
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'class-instance-init! '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp155095)))
                    (__tmp155091
                     (let ((__tmp155092
                            (let ((__tmp155093
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj154060_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp155093))))
                       (declare (not safe))
                       (cons __tmp155092 _args154035_))))
                (declare (not safe))
                (cons __tmp155094 __tmp155091))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp155090)))
                                              (__tmp155086
                                               (let ((__tmp155087
                                                      (let ((__tmp155088
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj154060_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp155088))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp155087 '()))))
                                          (declare (not safe))
                                          (cons __tmp155089 __tmp155086))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp155085))))
                            (declare (not safe))
                            (cons __tmp155084 '()))))
                     (declare (not safe))
                     (cons __tmp155096 __tmp155083))))
              (declare (not safe))
              (cons '%#let-values __tmp155082))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp155081
                                                _stx154024_)))))
                                      (let* ((_g154067154107_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       ___stx154633154634_))
                                                    (___kont154637154638_)
                                                    (___kont154639154640_))))
                                             (___match154670154671_
                                              (lambda (_e154076154112_
                                                       _hd154075154115_
                                                       _tl154074154117_
                                                       _e154079154120_
                                                       _hd154078154123_
                                                       _tl154077154125_
                                                       _e154082154128_
                                                       _hd154081154131_
                                                       _tl154080154133_
                                                       _e154085154136_
                                                       _hd154084154139_
                                                       _tl154083154141_)
                                                (let ((_L154144_
                                                       _tl154083154141_)
                                                      (_L154145_
                                                       _hd154084154139_)
                                                      (_L154146_
                                                       _hd154081154131_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-keyword?
                                                         _L154146_))
                                                      (___kont154635154636_
                                                       _L154144_
                                                       _L154145_
                                                       _L154146_)
                                                      (___kont154639154640_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               ___stx154633154634_))
                                            (let ((_e154076154112_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      ___stx154633154634_))))
                                              (let ((_tl154074154117_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e154076154112_)))
                                                    (_hd154075154115_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e154076154112_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd154075154115_))
                                                    (let ((_e154079154120_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd154075154115_))))
                                                      (let ((_tl154077154125_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e154079154120_)))
                    (_hd154078154123_
                     (let () (declare (not safe)) (##car _e154079154120_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd154078154123_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd154078154123_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl154077154125_))
                            (let ((_e154082154128_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl154077154125_))))
                              (let ((_tl154080154133_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e154082154128_)))
                                    (_hd154081154131_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e154082154128_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl154080154133_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl154074154117_))
                                        (let ((_e154085154136_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl154074154117_))))
                                          (let ((_tl154083154141_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e154085154136_)))
                                                (_hd154084154139_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e154085154136_))))
                                            (___match154670154671_
                                             _e154076154112_
                                             _hd154075154115_
                                             _tl154074154117_
                                             _e154079154120_
                                             _hd154078154123_
                                             _tl154077154125_
                                             _e154082154128_
                                             _hd154081154131_
                                             _tl154080154133_
                                             _e154085154136_
                                             _hd154084154139_
                                             _tl154083154141_)))
                                        (___kont154639154640_))
                                    (___kont154639154640_))))
                            (___kont154639154640_))
                        (___kont154639154640_))
                    (___kont154639154640_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont154639154640_))))
                                            (let ()
                                              (declare (not safe))
                                              (_g154067154107_))))))))))))))))))
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
      (lambda (_self153844_ _ctx153845_ _stx153846_ _args153847_)
        (let* ((_g153849153859_
                (lambda (_g153850153856_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g153850153856_))))
               (_g153848153897_
                (lambda (_g153850153862_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g153850153862_))
                      (let ((_e153854153864_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g153850153862_))))
                        (let ((_hd153853153867_
                               (let ()
                                 (declare (not safe))
                                 (##car _e153854153864_)))
                              (_tl153852153869_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e153854153864_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl153852153869_))
                              ((lambda (_L153872_)
                                 (let* ((_klass153883_
                                         (let ((__tmp155222
                                                (##structure-ref
                                                 _self153844_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx153846_
                                            __tmp155222)))
                                        (_field153885_
                                         (let ((__tmp155223
                                                (##structure-ref
                                                 _self153844_
                                                 '2
                                                 gxc#!accessor::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _klass153883_
                                            __tmp155223)))
                                        (_object153887_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _ctx153845_
                                            _L153872_))))
                                   (if (##structure-ref
                                        _klass153883_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp155300
                                              (let ((__tmp155309
                                                     (if (##structure-ref
                                                          _self153844_
                                                          '3
                                                          gxc#!accessor::t
                                                          '#f)
                                                         '%#struct-direct-ref
                                                         '%#struct-unchecked-ref))
                                                    (__tmp155301
                                                     (let ((__tmp155306
                                                            (let ((__tmp155307
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155308
                                  (##structure-ref
                                   _self153844_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp155308 '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp155307)))
                   (__tmp155302
                    (let ((__tmp155304
                           (let ((__tmp155305
                                  (let ()
                                    (declare (not safe))
                                    (cons _field153885_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp155305)))
                          (__tmp155303
                           (let ()
                             (declare (not safe))
                             (cons _object153887_ '()))))
                      (declare (not safe))
                      (cons __tmp155304 __tmp155303))))
               (declare (not safe))
               (cons __tmp155306 __tmp155302))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp155309
                                                      __tmp155301))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp155300
                                          _stx153846_))
                                       (if (##structure-ref
                                            _klass153883_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp155290
                                                  (let ((__tmp155299
                                                         (if (##structure-ref
                                                              _self153844_
                                                              '3
                                                              gxc#!accessor::t
                                                              '#f)
                                                             '%#struct-ref
                                                             '%#struct-unchecked-ref))
                                                        (__tmp155291
                                                         (let ((__tmp155296
                                                                (let ((__tmp155297
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp155298
                                      (##structure-ref
                                       _self153844_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp155298 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp155297)))
                       (__tmp155292
                        (let ((__tmp155294
                               (let ((__tmp155295
                                      (let ()
                                        (declare (not safe))
                                        (cons _field153885_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp155295)))
                              (__tmp155293
                               (let ()
                                 (declare (not safe))
                                 (cons _object153887_ '()))))
                          (declare (not safe))
                          (cons __tmp155294 __tmp155293))))
                   (declare (not safe))
                   (cons __tmp155296 __tmp155292))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp155299
                                                          __tmp155291))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp155290
                                              _stx153846_))
                                           (let ((_$e153890_
                                                  (let ((__tmp155224
                                                         (##structure-ref
                                                          _self153844_
                                                          '2
                                                          gxc#!accessor::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _klass153883_
                                                     __tmp155224))))
                                             (if _$e153890_
                                                 ((lambda (_klass153893_)
                                                    (let ((__tmp155280
                                                           (let ((__tmp155289
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##structure-ref
                               _self153844_
                               '3
                               gxc#!accessor::t
                               '#f)
                              '%#struct-ref
                              '%#struct-unchecked-ref))
                         (__tmp155281
                          (let ((__tmp155286
                                 (let ((__tmp155287
                                        (let ((__tmp155288
                                               (##structure-ref
                                                _self153844_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp155288 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp155287)))
                                (__tmp155282
                                 (let ((__tmp155284
                                        (let ((__tmp155285
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _field153885_ '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp155285)))
                                       (__tmp155283
                                        (let ()
                                          (declare (not safe))
                                          (cons _object153887_ '()))))
                                   (declare (not safe))
                                   (cons __tmp155284 __tmp155283))))
                            (declare (not safe))
                            (cons __tmp155286 __tmp155282))))
                     (declare (not safe))
                     (cons __tmp155289 __tmp155281))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp155280 _stx153846_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e153890_)
                                                 (if (##structure-ref
                                                      _self153844_
                                                      '3
                                                      gxc#!accessor::t
                                                      '#f)
                                                     (let ((__tmp155234
                                                            (let* ((_$obj153895_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp155235 (gensym '__obj)))
                              (declare (not safe))
                              (make-symbol__0 __tmp155235)))
                           (__tmp155236
                            (let ((__tmp155276
                                   (let ((__tmp155277
                                          (let ((__tmp155279
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _$obj153895_ '())))
                                                (__tmp155278
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _object153887_ '()))))
                                            (declare (not safe))
                                            (cons __tmp155279 __tmp155278))))
                                     (declare (not safe))
                                     (cons __tmp155277 '())))
                                  (__tmp155237
                                   (let ((__tmp155238
                                          (let ((__tmp155239
                                                 (let ((__tmp155268
                                                        (let ((__tmp155269
                                                               (let ((__tmp155273
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp155274
                                     (let ((__tmp155275
                                            (##structure-ref
                                             _klass153883_
                                             '1
                                             gxc#!type::t
                                             '#f)))
                                       (declare (not safe))
                                       (cons __tmp155275 '()))))
                                (declare (not safe))
                                (cons '%#quote __tmp155274)))
                             (__tmp155270
                              (let ((__tmp155271
                                     (let ((__tmp155272
                                            (let ()
                                              (declare (not safe))
                                              (cons _$obj153895_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp155272))))
                                (declare (not safe))
                                (cons __tmp155271 '()))))
                         (declare (not safe))
                         (cons __tmp155273 __tmp155270))))
                  (declare (not safe))
                  (cons '%#struct-direct-instance? __tmp155269)))
               (__tmp155240
                (let ((__tmp155257
                       (let ((__tmp155258
                              (let ((__tmp155265
                                     (let ((__tmp155266
                                            (let ((__tmp155267
                                                   (##structure-ref
                                                    _self153844_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp155267 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp155266)))
                                    (__tmp155259
                                     (let ((__tmp155263
                                            (let ((__tmp155264
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field153885_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp155264)))
                                           (__tmp155260
                                            (let ((__tmp155261
                                                   (let ((__tmp155262
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj153895_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155262))))
                                              (declare (not safe))
                                              (cons __tmp155261 '()))))
                                       (declare (not safe))
                                       (cons __tmp155263 __tmp155260))))
                                (declare (not safe))
                                (cons __tmp155265 __tmp155259))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp155258)))
                      (__tmp155241
                       (let ((__tmp155242
                              (let ((__tmp155243
                                     (let ((__tmp155255
                                            (let ((__tmp155256
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'class-slot-ref
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp155256)))
                                           (__tmp155244
                                            (let ((__tmp155252
                                                   (let ((__tmp155253
                                                          (let ((__tmp155254
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref _self153844_ '1 gxc#!type::t '#f)))
                    (declare (not safe))
                    (cons __tmp155254 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155253)))
                                                  (__tmp155245
                                                   (let ((__tmp155250
                                                          (let ((__tmp155251
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj153895_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp155251)))
                 (__tmp155246
                  (let ((__tmp155247
                         (let ((__tmp155248
                                (let ((__tmp155249
                                       (##structure-ref
                                        _self153844_
                                        '2
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (cons __tmp155249 '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp155248))))
                    (declare (not safe))
                    (cons __tmp155247 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp155250
                                                           __tmp155246))))
                                              (declare (not safe))
                                              (cons __tmp155252 __tmp155245))))
                                       (declare (not safe))
                                       (cons __tmp155255 __tmp155244))))
                                (declare (not safe))
                                (cons '%#call __tmp155243))))
                         (declare (not safe))
                         (cons __tmp155242 '()))))
                  (declare (not safe))
                  (cons __tmp155257 __tmp155241))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp155268
                                                         __tmp155240))))
                                            (declare (not safe))
                                            (cons '%#if __tmp155239))))
                                     (declare (not safe))
                                     (cons __tmp155238 '()))))
                              (declare (not safe))
                              (cons __tmp155276 __tmp155237))))
                      (declare (not safe))
                      (cons '%#let-values __tmp155236))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp155234 _stx153846_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp155225
                                                            (let ((__tmp155226
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155232
                                  (let ((__tmp155233
                                         (let ()
                                           (declare (not safe))
                                           (cons 'unchecked-slot-ref '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp155233)))
                                 (__tmp155227
                                  (let ((__tmp155228
                                         (let ((__tmp155229
                                                (let ((__tmp155230
                                                       (let ((__tmp155231
                                                              (##structure-ref
                                                               _self153844_
                                                               '2
                                                               gxc#!accessor::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp155231
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote
                                                        __tmp155230))))
                                           (declare (not safe))
                                           (cons __tmp155229 '()))))
                                    (declare (not safe))
                                    (cons _object153887_ __tmp155228))))
                             (declare (not safe))
                             (cons __tmp155232 __tmp155227))))
                      (declare (not safe))
                      (cons '%#call __tmp155226))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp155225 _stx153846_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _hd153853153867_)
                              (let ()
                                (declare (not safe))
                                (_g153849153859_ _g153850153862_)))))
                      (let ()
                        (declare (not safe))
                        (_g153849153859_ _g153850153862_))))))
          (declare (not safe))
          (_g153848153897_ _args153847_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass154518 __method-table154519)
        (let ((__slot154520
               (let ((__slot154523
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154518 'slot))))
                 (if __slot154523
                     __slot154523
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__checked?154521
               (let ((__slot154524
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154518 'checked?))))
                 (if __slot154524
                     __slot154524
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__id154522
               (let ((__slot154525
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154518 'id))))
                 (if __slot154525
                     __slot154525
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self153844_ _ctx153845_ _stx153846_ _args153847_)
            (let* ((_g153849153859_
                    (lambda (_g153850153856_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g153850153856_))))
                   (_g153848153897_
                    (lambda (_g153850153862_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g153850153862_))
                          (let ((_e153854153864_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g153850153862_))))
                            (let ((_hd153853153867_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e153854153864_)))
                                  (_tl153852153869_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e153854153864_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl153852153869_))
                                  ((lambda (_L153872_)
                                     (let* ((_klass153883_
                                             (let ((__tmp155310
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self153844_
                                                       __id154522
                                                       __klass154518
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx153846_
                                                __tmp155310)))
                                            (_field153885_
                                             (let ((__tmp155311
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self153844_
                                                       __slot154520
                                                       __klass154518
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _klass153883_
                                                __tmp155311)))
                                            (_object153887_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _ctx153845_
                                                _L153872_))))
                                       (if (##structure-ref
                                            _klass153883_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp155388
                                                  (let ((__tmp155397
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self153844_
                        __checked?154521
                        __klass154518
                        '#f))
                     '%#struct-direct-ref
                     '%#struct-unchecked-ref))
                (__tmp155389
                 (let ((__tmp155394
                        (let ((__tmp155395
                               (let ((__tmp155396
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _self153844_
                                         __id154522
                                         __klass154518
                                         '#f))))
                                 (declare (not safe))
                                 (cons __tmp155396 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp155395)))
                       (__tmp155390
                        (let ((__tmp155392
                               (let ((__tmp155393
                                      (let ()
                                        (declare (not safe))
                                        (cons _field153885_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp155393)))
                              (__tmp155391
                               (let ()
                                 (declare (not safe))
                                 (cons _object153887_ '()))))
                          (declare (not safe))
                          (cons __tmp155392 __tmp155391))))
                   (declare (not safe))
                   (cons __tmp155394 __tmp155390))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp155397
                                                          __tmp155389))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp155388
                                              _stx153846_))
                                           (if (##structure-ref
                                                _klass153883_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp155378
                                                      (let ((__tmp155387
                                                             (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self153844_
                            __checked?154521
                            __klass154518
                            '#f))
                         '%#struct-ref
                         '%#struct-unchecked-ref))
                    (__tmp155379
                     (let ((__tmp155384
                            (let ((__tmp155385
                                   (let ((__tmp155386
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self153844_
                                             __id154522
                                             __klass154518
                                             '#f))))
                                     (declare (not safe))
                                     (cons __tmp155386 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp155385)))
                           (__tmp155380
                            (let ((__tmp155382
                                   (let ((__tmp155383
                                          (let ()
                                            (declare (not safe))
                                            (cons _field153885_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp155383)))
                                  (__tmp155381
                                   (let ()
                                     (declare (not safe))
                                     (cons _object153887_ '()))))
                              (declare (not safe))
                              (cons __tmp155382 __tmp155381))))
                       (declare (not safe))
                       (cons __tmp155384 __tmp155380))))
                (declare (not safe))
                (cons __tmp155387 __tmp155379))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp155378
                                                  _stx153846_))
                                               (let ((_$e153890_
                                                      (let ((__tmp155312
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self153844_
                        __slot154520
                        __klass154518
                        '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _klass153883_ __tmp155312))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e153890_
                                                     ((lambda (_klass153893_)
                                                        (let ((__tmp155368
                                                               (let ((__tmp155377
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self153844_
                                     __checked?154521
                                     __klass154518
                                     '#f))
                                  '%#struct-ref
                                  '%#struct-unchecked-ref))
                             (__tmp155369
                              (let ((__tmp155374
                                     (let ((__tmp155375
                                            (let ((__tmp155376
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self153844_
                                                      __id154522
                                                      __klass154518
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp155376 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp155375)))
                                    (__tmp155370
                                     (let ((__tmp155372
                                            (let ((__tmp155373
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field153885_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp155373)))
                                           (__tmp155371
                                            (let ()
                                              (declare (not safe))
                                              (cons _object153887_ '()))))
                                       (declare (not safe))
                                       (cons __tmp155372 __tmp155371))))
                                (declare (not safe))
                                (cons __tmp155374 __tmp155370))))
                         (declare (not safe))
                         (cons __tmp155377 __tmp155369))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp155368 _stx153846_)))
              _$e153890_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _self153844_
                                                            __checked?154521
                                                            __klass154518
                                                            '#f))
                                                         (let ((__tmp155322
                                                                (let* ((_$obj153895_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp155323 (gensym '__obj)))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp155323)))
                               (__tmp155324
                                (let ((__tmp155364
                                       (let ((__tmp155365
                                              (let ((__tmp155367
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _$obj153895_
                                                             '())))
                                                    (__tmp155366
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _object153887_
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp155367
                                                      __tmp155366))))
                                         (declare (not safe))
                                         (cons __tmp155365 '())))
                                      (__tmp155325
                                       (let ((__tmp155326
                                              (let ((__tmp155327
                                                     (let ((__tmp155356
                                                            (let ((__tmp155357
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155361
                                  (let ((__tmp155362
                                         (let ((__tmp155363
                                                (##structure-ref
                                                 _klass153883_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp155363 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp155362)))
                                 (__tmp155358
                                  (let ((__tmp155359
                                         (let ((__tmp155360
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj153895_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp155360))))
                                    (declare (not safe))
                                    (cons __tmp155359 '()))))
                             (declare (not safe))
                             (cons __tmp155361 __tmp155358))))
                      (declare (not safe))
                      (cons '%#struct-direct-instance? __tmp155357)))
                   (__tmp155328
                    (let ((__tmp155345
                           (let ((__tmp155346
                                  (let ((__tmp155353
                                         (let ((__tmp155354
                                                (let ((__tmp155355
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self153844_
                                                          __id154522
                                                          __klass154518
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp155355 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp155354)))
                                        (__tmp155347
                                         (let ((__tmp155351
                                                (let ((__tmp155352
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field153885_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp155352)))
                                               (__tmp155348
                                                (let ((__tmp155349
                                                       (let ((__tmp155350
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj153895_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp155350))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp155349 '()))))
                                           (declare (not safe))
                                           (cons __tmp155351 __tmp155348))))
                                    (declare (not safe))
                                    (cons __tmp155353 __tmp155347))))
                             (declare (not safe))
                             (cons '%#struct-unchecked-ref __tmp155346)))
                          (__tmp155329
                           (let ((__tmp155330
                                  (let ((__tmp155331
                                         (let ((__tmp155343
                                                (let ((__tmp155344
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-slot-ref
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp155344)))
                                               (__tmp155332
                                                (let ((__tmp155340
                                                       (let ((__tmp155341
                                                              (let ((__tmp155342
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self153844_
                                __id154522
                                __klass154518
                                '#f))))
                        (declare (not safe))
                        (cons __tmp155342 '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp155341)))
              (__tmp155333
               (let ((__tmp155338
                      (let ((__tmp155339
                             (let ()
                               (declare (not safe))
                               (cons _$obj153895_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp155339)))
                     (__tmp155334
                      (let ((__tmp155335
                             (let ((__tmp155336
                                    (let ((__tmp155337
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _self153844_
                                              __slot154520
                                              __klass154518
                                              '#f))))
                                      (declare (not safe))
                                      (cons __tmp155337 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp155336))))
                        (declare (not safe))
                        (cons __tmp155335 '()))))
                 (declare (not safe))
                 (cons __tmp155338 __tmp155334))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp155340
                                                        __tmp155333))))
                                           (declare (not safe))
                                           (cons __tmp155343 __tmp155332))))
                                    (declare (not safe))
                                    (cons '%#call __tmp155331))))
                             (declare (not safe))
                             (cons __tmp155330 '()))))
                      (declare (not safe))
                      (cons __tmp155345 __tmp155329))))
               (declare (not safe))
               (cons __tmp155356 __tmp155328))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#if __tmp155327))))
                                         (declare (not safe))
                                         (cons __tmp155326 '()))))
                                  (declare (not safe))
                                  (cons __tmp155364 __tmp155325))))
                          (declare (not safe))
                          (cons '%#let-values __tmp155324))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp155322 _stx153846_))
                 (let ((__tmp155313
                        (let ((__tmp155314
                               (let ((__tmp155320
                                      (let ((__tmp155321
                                             (let ()
                                               (declare (not safe))
                                               (cons 'unchecked-slot-ref
                                                     '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp155321)))
                                     (__tmp155315
                                      (let ((__tmp155316
                                             (let ((__tmp155317
                                                    (let ((__tmp155318
                                                           (let ((__tmp155319
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _self153844_
                             __slot154520
                             __klass154518
                             '#f))))
                     (declare (not safe))
                     (cons __tmp155319 '()))))
              (declare (not safe))
              (cons '%#quote __tmp155318))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp155317 '()))))
                                        (declare (not safe))
                                        (cons _object153887_ __tmp155316))))
                                 (declare (not safe))
                                 (cons __tmp155320 __tmp155315))))
                          (declare (not safe))
                          (cons '%#call __tmp155314))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp155313 _stx153846_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd153853153867_)
                                  (let ()
                                    (declare (not safe))
                                    (_g153849153859_ _g153850153862_)))))
                          (let ()
                            (declare (not safe))
                            (_g153849153859_ _g153850153862_))))))
              (declare (not safe))
              (_g153848153897_ _args153847_))))))
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
      (lambda (_self153648_ _ctx153649_ _stx153650_ _args153651_)
        (let* ((_g153653153667_
                (lambda (_g153654153664_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g153654153664_))))
               (_g153652153719_
                (lambda (_g153654153670_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g153654153670_))
                      (let ((_e153659153672_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g153654153670_))))
                        (let ((_hd153658153675_
                               (let ()
                                 (declare (not safe))
                                 (##car _e153659153672_)))
                              (_tl153657153677_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e153659153672_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl153657153677_))
                              (let ((_e153662153680_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl153657153677_))))
                                (let ((_hd153661153683_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e153662153680_)))
                                      (_tl153660153685_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e153662153680_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl153660153685_))
                                      ((lambda (_L153688_ _L153689_)
                                         (let* ((_klass153703_
                                                 (let ((__tmp155398
                                                        (##structure-ref
                                                         _self153648_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _stx153650_
                                                    __tmp155398)))
                                                (_field153705_
                                                 (let ((__tmp155399
                                                        (##structure-ref
                                                         _self153648_
                                                         '2
                                                         gxc#!mutator::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass153703_
                                                    __tmp155399)))
                                                (_object153707_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _ctx153649_
                                                    _L153689_)))
                                                (_value153709_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _ctx153649_
                                                    _L153688_))))
                                           (if (##structure-ref
                                                _klass153703_
                                                '8
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp155481
                                                      (let ((__tmp155491
                                                             (if (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _self153648_
                          '3
                          gxc#!mutator::t
                          '#f)
                         '%#struct-direct-set!
                         '%#struct-unchecked-set!))
                    (__tmp155482
                     (let ((__tmp155488
                            (let ((__tmp155489
                                   (let ((__tmp155490
                                          (##structure-ref
                                           _self153648_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp155490 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp155489)))
                           (__tmp155483
                            (let ((__tmp155486
                                   (let ((__tmp155487
                                          (let ()
                                            (declare (not safe))
                                            (cons _field153705_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp155487)))
                                  (__tmp155484
                                   (let ((__tmp155485
                                          (let ()
                                            (declare (not safe))
                                            (cons _value153709_ '()))))
                                     (declare (not safe))
                                     (cons _object153707_ __tmp155485))))
                              (declare (not safe))
                              (cons __tmp155486 __tmp155484))))
                       (declare (not safe))
                       (cons __tmp155488 __tmp155483))))
                (declare (not safe))
                (cons __tmp155491 __tmp155482))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp155481
                                                  _stx153650_))
                                               (if (##structure-ref
                                                    _klass153703_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp155470
                                                          (let ((__tmp155480
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##structure-ref
                              _self153648_
                              '3
                              gxc#!mutator::t
                              '#f)
                             '%#struct-set!
                             '%#struct-unchecked-set!))
                        (__tmp155471
                         (let ((__tmp155477
                                (let ((__tmp155478
                                       (let ((__tmp155479
                                              (##structure-ref
                                               _self153648_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp155479 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp155478)))
                               (__tmp155472
                                (let ((__tmp155475
                                       (let ((__tmp155476
                                              (let ()
                                                (declare (not safe))
                                                (cons _field153705_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp155476)))
                                      (__tmp155473
                                       (let ((__tmp155474
                                              (let ()
                                                (declare (not safe))
                                                (cons _value153709_ '()))))
                                         (declare (not safe))
                                         (cons _object153707_ __tmp155474))))
                                  (declare (not safe))
                                  (cons __tmp155475 __tmp155473))))
                           (declare (not safe))
                           (cons __tmp155477 __tmp155472))))
                    (declare (not safe))
                    (cons __tmp155480 __tmp155471))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp155470
                                                      _stx153650_))
                                                   (let ((_$e153712_
                                                          (let ((__tmp155400
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref
                          _self153648_
                          '2
                          gxc#!mutator::t
                          '#f)))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct _klass153703_ __tmp155400))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e153712_
                                                         ((lambda (_klass153715_)
                                                            (let ((__tmp155459
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155469
                                  (if (##structure-ref
                                       _self153648_
                                       '3
                                       gxc#!mutator::t
                                       '#f)
                                      '%#struct-set!
                                      '%#struct-unchecked-set!))
                                 (__tmp155460
                                  (let ((__tmp155466
                                         (let ((__tmp155467
                                                (let ((__tmp155468
                                                       (##structure-ref
                                                        _self153648_
                                                        '1
                                                        gxc#!type::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp155468 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp155467)))
                                        (__tmp155461
                                         (let ((__tmp155464
                                                (let ((__tmp155465
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field153705_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp155465)))
                                               (__tmp155462
                                                (let ((__tmp155463
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _value153709_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons _object153707_
                                                        __tmp155463))))
                                           (declare (not safe))
                                           (cons __tmp155464 __tmp155462))))
                                    (declare (not safe))
                                    (cons __tmp155466 __tmp155461))))
                             (declare (not safe))
                             (cons __tmp155469 __tmp155460))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp155459 _stx153650_)))
                  _$e153712_)
                 (if (##structure-ref _self153648_ '3 gxc#!mutator::t '#f)
                     (let ((__tmp155411
                            (let* ((_$obj153717_
                                    (let ((__tmp155412 (gensym '__obj)))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp155412)))
                                   (__tmp155413
                                    (let ((__tmp155455
                                           (let ((__tmp155456
                                                  (let ((__tmp155458
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj153717_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp155457
                 (let () (declare (not safe)) (cons _object153707_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp155458
                                                          __tmp155457))))
                                             (declare (not safe))
                                             (cons __tmp155456 '())))
                                          (__tmp155414
                                           (let ((__tmp155415
                                                  (let ((__tmp155416
                                                         (let ((__tmp155447
                                                                (let ((__tmp155448
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp155452
                                      (let ((__tmp155453
                                             (let ((__tmp155454
                                                    (##structure-ref
                                                     _klass153703_
                                                     '1
                                                     gxc#!type::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp155454 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp155453)))
                                     (__tmp155449
                                      (let ((__tmp155450
                                             (let ((__tmp155451
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj153717_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp155451))))
                                        (declare (not safe))
                                        (cons __tmp155450 '()))))
                                 (declare (not safe))
                                 (cons __tmp155452 __tmp155449))))
                          (declare (not safe))
                          (cons '%#struct-direct-instance? __tmp155448)))
                       (__tmp155417
                        (let ((__tmp155435
                               (let ((__tmp155436
                                      (let ((__tmp155444
                                             (let ((__tmp155445
                                                    (let ((__tmp155446
                                                           (##structure-ref
                                                            _self153648_
                                                            '1
                                                            gxc#!type::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (cons __tmp155446 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp155445)))
                                            (__tmp155437
                                             (let ((__tmp155442
                                                    (let ((__tmp155443
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field153705_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp155443)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp155438
                                                    (let ((__tmp155440
                                                           (let ((__tmp155441
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj153717_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp155441)))
                  (__tmp155439
                   (let () (declare (not safe)) (cons _value153709_ '()))))
              (declare (not safe))
              (cons __tmp155440 __tmp155439))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp155442
                                                     __tmp155438))))
                                        (declare (not safe))
                                        (cons __tmp155444 __tmp155437))))
                                 (declare (not safe))
                                 (cons '%#struct-unchecked-set! __tmp155436)))
                              (__tmp155418
                               (let ((__tmp155419
                                      (let ((__tmp155420
                                             (let ((__tmp155433
                                                    (let ((__tmp155434
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp155434)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp155421
                                                    (let ((__tmp155430
                                                           (let ((__tmp155431
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp155432
                                 (##structure-ref
                                  _self153648_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (cons __tmp155432 '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp155431)))
                  (__tmp155422
                   (let ((__tmp155428
                          (let ((__tmp155429
                                 (let ()
                                   (declare (not safe))
                                   (cons _$obj153717_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp155429)))
                         (__tmp155423
                          (let ((__tmp155425
                                 (let ((__tmp155426
                                        (let ((__tmp155427
                                               (##structure-ref
                                                _self153648_
                                                '2
                                                gxc#!mutator::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp155427 '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp155426)))
                                (__tmp155424
                                 (let ()
                                   (declare (not safe))
                                   (cons _value153709_ '()))))
                            (declare (not safe))
                            (cons __tmp155425 __tmp155424))))
                     (declare (not safe))
                     (cons __tmp155428 __tmp155423))))
              (declare (not safe))
              (cons __tmp155430 __tmp155422))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp155433
                                                     __tmp155421))))
                                        (declare (not safe))
                                        (cons '%#call __tmp155420))))
                                 (declare (not safe))
                                 (cons __tmp155419 '()))))
                          (declare (not safe))
                          (cons __tmp155435 __tmp155418))))
                   (declare (not safe))
                   (cons __tmp155447 __tmp155417))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#if __tmp155416))))
                                             (declare (not safe))
                                             (cons __tmp155415 '()))))
                                      (declare (not safe))
                                      (cons __tmp155455 __tmp155414))))
                              (declare (not safe))
                              (cons '%#let-values __tmp155413))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp155411 _stx153650_))
                     (let ((__tmp155401
                            (let ((__tmp155402
                                   (let ((__tmp155409
                                          (let ((__tmp155410
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'unchecked-slot-set!
                                                         '()))))
                                            (declare (not safe))
                                            (cons '%#ref __tmp155410)))
                                         (__tmp155403
                                          (let ((__tmp155404
                                                 (let ((__tmp155406
                                                        (let ((__tmp155407
                                                               (let ((__tmp155408
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##structure-ref
                               _self153648_
                               '2
                               gxc#!mutator::t
                               '#f)))
                         (declare (not safe))
                         (cons __tmp155408 '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp155407)))
               (__tmp155405
                (let () (declare (not safe)) (cons _value153709_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp155406
                                                         __tmp155405))))
                                            (declare (not safe))
                                            (cons _object153707_
                                                  __tmp155404))))
                                     (declare (not safe))
                                     (cons __tmp155409 __tmp155403))))
                              (declare (not safe))
                              (cons '%#call __tmp155402))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp155401 _stx153650_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd153661153683_
                                       _hd153658153675_)
                                      (let ()
                                        (declare (not safe))
                                        (_g153653153667_ _g153654153670_)))))
                              (let ()
                                (declare (not safe))
                                (_g153653153667_ _g153654153670_)))))
                      (let ()
                        (declare (not safe))
                        (_g153653153667_ _g153654153670_))))))
          (declare (not safe))
          (_g153652153719_ _args153651_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass154526 __method-table154527)
        (let ((__slot154528
               (let ((__slot154531
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154526 'slot))))
                 (if __slot154531
                     __slot154531
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__checked?154529
               (let ((__slot154532
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154526 'checked?))))
                 (if __slot154532
                     __slot154532
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__id154530
               (let ((__slot154533
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154526 'id))))
                 (if __slot154533
                     __slot154533
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self153648_ _ctx153649_ _stx153650_ _args153651_)
            (let* ((_g153653153667_
                    (lambda (_g153654153664_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g153654153664_))))
                   (_g153652153719_
                    (lambda (_g153654153670_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g153654153670_))
                          (let ((_e153659153672_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g153654153670_))))
                            (let ((_hd153658153675_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e153659153672_)))
                                  (_tl153657153677_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e153659153672_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl153657153677_))
                                  (let ((_e153662153680_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl153657153677_))))
                                    (let ((_hd153661153683_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e153662153680_)))
                                          (_tl153660153685_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e153662153680_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl153660153685_))
                                          ((lambda (_L153688_ _L153689_)
                                             (let* ((_klass153703_
                                                     (let ((__tmp155492
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self153648_
                                                               __id154530
                                                               __klass154526
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _stx153650_
                                                        __tmp155492)))
                                                    (_field153705_
                                                     (let ((__tmp155493
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self153648_
                                                               __slot154528
                                                               __klass154526
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass153703_
                                                        __tmp155493)))
                                                    (_object153707_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _ctx153649_
                                                        _L153689_)))
                                                    (_value153709_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _ctx153649_
                                                        _L153688_))))
                                               (if (##structure-ref
                                                    _klass153703_
                                                    '8
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp155575
                                                          (let ((__tmp155585
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self153648_
                                __checked?154529
                                __klass154526
                                '#f))
                             '%#struct-direct-set!
                             '%#struct-unchecked-set!))
                        (__tmp155576
                         (let ((__tmp155582
                                (let ((__tmp155583
                                       (let ((__tmp155584
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _self153648_
                                                 __id154530
                                                 __klass154526
                                                 '#f))))
                                         (declare (not safe))
                                         (cons __tmp155584 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp155583)))
                               (__tmp155577
                                (let ((__tmp155580
                                       (let ((__tmp155581
                                              (let ()
                                                (declare (not safe))
                                                (cons _field153705_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp155581)))
                                      (__tmp155578
                                       (let ((__tmp155579
                                              (let ()
                                                (declare (not safe))
                                                (cons _value153709_ '()))))
                                         (declare (not safe))
                                         (cons _object153707_ __tmp155579))))
                                  (declare (not safe))
                                  (cons __tmp155580 __tmp155578))))
                           (declare (not safe))
                           (cons __tmp155582 __tmp155577))))
                    (declare (not safe))
                    (cons __tmp155585 __tmp155576))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp155575
                                                      _stx153650_))
                                                   (if (##structure-ref
                                                        _klass153703_
                                                        '7
                                                        gxc#!class::t
                                                        '#f)
                                                       (let ((__tmp155564
                                                              (let ((__tmp155574
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _self153648_
                                    __checked?154529
                                    __klass154526
                                    '#f))
                                 '%#struct-set!
                                 '%#struct-unchecked-set!))
                            (__tmp155565
                             (let ((__tmp155571
                                    (let ((__tmp155572
                                           (let ((__tmp155573
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self153648_
                                                     __id154530
                                                     __klass154526
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp155573 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp155572)))
                                   (__tmp155566
                                    (let ((__tmp155569
                                           (let ((__tmp155570
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _field153705_ '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp155570)))
                                          (__tmp155567
                                           (let ((__tmp155568
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _value153709_ '()))))
                                             (declare (not safe))
                                             (cons _object153707_
                                                   __tmp155568))))
                                      (declare (not safe))
                                      (cons __tmp155569 __tmp155567))))
                               (declare (not safe))
                               (cons __tmp155571 __tmp155566))))
                        (declare (not safe))
                        (cons __tmp155574 __tmp155565))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp155564 _stx153650_))
               (let ((_$e153712_
                      (let ((__tmp155494
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self153648_
                                __slot154528
                                __klass154526
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _klass153703_
                         __tmp155494))))
                 (if _$e153712_
                     ((lambda (_klass153715_)
                        (let ((__tmp155553
                               (let ((__tmp155563
                                      (if (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self153648_
                                             __checked?154529
                                             __klass154526
                                             '#f))
                                          '%#struct-set!
                                          '%#struct-unchecked-set!))
                                     (__tmp155554
                                      (let ((__tmp155560
                                             (let ((__tmp155561
                                                    (let ((__tmp155562
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _self153648_
                                                              __id154530
                                                              __klass154526
                                                              '#f))))
                                                      (declare (not safe))
                                                      (cons __tmp155562 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp155561)))
                                            (__tmp155555
                                             (let ((__tmp155558
                                                    (let ((__tmp155559
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field153705_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp155559)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp155556
                                                    (let ((__tmp155557
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _value153709_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _object153707_ __tmp155557))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp155558
                                                     __tmp155556))))
                                        (declare (not safe))
                                        (cons __tmp155560 __tmp155555))))
                                 (declare (not safe))
                                 (cons __tmp155563 __tmp155554))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp155553 _stx153650_)))
                      _$e153712_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self153648_
                            __checked?154529
                            __klass154526
                            '#f))
                         (let ((__tmp155505
                                (let* ((_$obj153717_
                                        (let ((__tmp155506 (gensym '__obj)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp155506)))
                                       (__tmp155507
                                        (let ((__tmp155549
                                               (let ((__tmp155550
                                                      (let ((__tmp155552
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj153717_ '())))
                    (__tmp155551
                     (let () (declare (not safe)) (cons _object153707_ '()))))
                (declare (not safe))
                (cons __tmp155552 __tmp155551))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp155550 '())))
                                              (__tmp155508
                                               (let ((__tmp155509
                                                      (let ((__tmp155510
                                                             (let ((__tmp155541
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp155542
                                   (let ((__tmp155546
                                          (let ((__tmp155547
                                                 (let ((__tmp155548
                                                        (##structure-ref
                                                         _klass153703_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp155548 '()))))
                                            (declare (not safe))
                                            (cons '%#quote __tmp155547)))
                                         (__tmp155543
                                          (let ((__tmp155544
                                                 (let ((__tmp155545
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj153717_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp155545))))
                                            (declare (not safe))
                                            (cons __tmp155544 '()))))
                                     (declare (not safe))
                                     (cons __tmp155546 __tmp155543))))
                              (declare (not safe))
                              (cons '%#struct-direct-instance? __tmp155542)))
                           (__tmp155511
                            (let ((__tmp155529
                                   (let ((__tmp155530
                                          (let ((__tmp155538
                                                 (let ((__tmp155539
                                                        (let ((__tmp155540
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _self153648_
                          __id154530
                          __klass154526
                          '#f))))
                  (declare (not safe))
                  (cons __tmp155540 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp155539)))
                                                (__tmp155531
                                                 (let ((__tmp155536
                                                        (let ((__tmp155537
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _field153705_ '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp155537)))
               (__tmp155532
                (let ((__tmp155534
                       (let ((__tmp155535
                              (let ()
                                (declare (not safe))
                                (cons _$obj153717_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp155535)))
                      (__tmp155533
                       (let () (declare (not safe)) (cons _value153709_ '()))))
                  (declare (not safe))
                  (cons __tmp155534 __tmp155533))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp155536
                                                         __tmp155532))))
                                            (declare (not safe))
                                            (cons __tmp155538 __tmp155531))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp155530)))
                                  (__tmp155512
                                   (let ((__tmp155513
                                          (let ((__tmp155514
                                                 (let ((__tmp155527
                                                        (let ((__tmp155528
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons 'class-slot-set! '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp155528)))
               (__tmp155515
                (let ((__tmp155524
                       (let ((__tmp155525
                              (let ((__tmp155526
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _self153648_
                                        __id154530
                                        __klass154526
                                        '#f))))
                                (declare (not safe))
                                (cons __tmp155526 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp155525)))
                      (__tmp155516
                       (let ((__tmp155522
                              (let ((__tmp155523
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj153717_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp155523)))
                             (__tmp155517
                              (let ((__tmp155519
                                     (let ((__tmp155520
                                            (let ((__tmp155521
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self153648_
                                                      __slot154528
                                                      __klass154526
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp155521 '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp155520)))
                                    (__tmp155518
                                     (let ()
                                       (declare (not safe))
                                       (cons _value153709_ '()))))
                                (declare (not safe))
                                (cons __tmp155519 __tmp155518))))
                         (declare (not safe))
                         (cons __tmp155522 __tmp155517))))
                  (declare (not safe))
                  (cons __tmp155524 __tmp155516))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp155527
                                                         __tmp155515))))
                                            (declare (not safe))
                                            (cons '%#call __tmp155514))))
                                     (declare (not safe))
                                     (cons __tmp155513 '()))))
                              (declare (not safe))
                              (cons __tmp155529 __tmp155512))))
                       (declare (not safe))
                       (cons __tmp155541 __tmp155511))))
                (declare (not safe))
                (cons '%#if __tmp155510))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp155509 '()))))
                                          (declare (not safe))
                                          (cons __tmp155549 __tmp155508))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp155507))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp155505 _stx153650_))
                         (let ((__tmp155495
                                (let ((__tmp155496
                                       (let ((__tmp155503
                                              (let ((__tmp155504
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons 'unchecked-slot-set!
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#ref __tmp155504)))
                                             (__tmp155497
                                              (let ((__tmp155498
                                                     (let ((__tmp155500
                                                            (let ((__tmp155501
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155502
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self153648_
                                     __slot154528
                                     __klass154526
                                     '#f))))
                             (declare (not safe))
                             (cons __tmp155502 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp155501)))
                   (__tmp155499
                    (let () (declare (not safe)) (cons _value153709_ '()))))
               (declare (not safe))
               (cons __tmp155500 __tmp155499))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _object153707_
                                                      __tmp155498))))
                                         (declare (not safe))
                                         (cons __tmp155503 __tmp155497))))
                                  (declare (not safe))
                                  (cons '%#call __tmp155496))))
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp155495
                            _stx153650_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _hd153661153683_
                                           _hd153658153675_)
                                          (let ()
                                            (declare (not safe))
                                            (_g153653153667_
                                             _g153654153670_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g153653153667_ _g153654153670_)))))
                          (let ()
                            (declare (not safe))
                            (_g153653153667_ _g153654153670_))))))
              (declare (not safe))
              (_g153652153719_ _args153651_))))))
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
      (lambda (_self153481_ _ctx153482_ _stx153483_ _args153484_)
        (let* ((_self153485153494_ _self153481_)
               (_E153487153498_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153485153494_))))
               (_K153488153505_
                (lambda (_inline153501_ _dispatch153502_ _arity153503_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self153481_ _args153484_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx153483_
                         _arity153503_)))
                  (if _inline153501_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp155591
                               (let ((__tmp155592
                                      (_inline153501_ _stx153483_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp155592
                                  _stx153483_))))
                          (declare (not safe))
                          (gxc#compile-e__1 _ctx153482_ __tmp155591)))
                      (if _dispatch153502_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch153502_))
                            (let ((__tmp155586
                                   (let ((__tmp155587
                                          (let ((__tmp155588
                                                 (let ((__tmp155589
                                                        (let ((__tmp155590
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch153502_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp155590))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp155589
                                                         _args153484_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp155588))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp155587
                                      _stx153483_))))
                              (declare (not safe))
                              (gxc#compile-e__1 _ctx153482_ __tmp155586)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _ctx153482_ _stx153483_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self153485153494_ 'gxc#!lambda::t))
              (let* ((_e153489153508_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153485153494_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e153490153511_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153485153494_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity153514_ _e153490153511_)
                     (_e153491153516_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153485153494_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch153519_ _e153491153516_)
                     (_e153492153521_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153485153494_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline153524_ _e153492153521_))
                (declare (not safe))
                (_K153488153505_
                 _inline153524_
                 _dispatch153519_
                 _arity153514_))
              (let () (declare (not safe)) (_E153487153498_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self153319_ _ctx153320_ _stx153321_ _args153322_)
        (let* ((_self153323153330_ _self153319_)
               (_E153325153334_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153323153330_))))
               (_K153326153348_
                (lambda (_clauses153337_)
                  (let ((_$e153343_
                         (let ((__tmp155593
                                (lambda (_g153338153340_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g153338153340_
                                     _args153322_)))))
                           (declare (not safe))
                           (find __tmp155593 _clauses153337_))))
                    (if _$e153343_
                        ((lambda (_clause153346_)
                           (let ((__method154804
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause153346_
                                     'optimize-call))))
                             (if __method154804
                                 (__method154804
                                  _clause153346_
                                  _ctx153320_
                                  _stx153321_
                                  _args153322_)
                                 (let ()
                                   (declare (not safe))
                                   (error '"Missing method"
                                          _clause153346_
                                          'optimize-call)))))
                         _$e153343_)
                        (let ((__tmp155594
                               (map gxc#!lambda-arity _clauses153337_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx153321_
                           __tmp155594)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self153323153330_
                 'gxc#!case-lambda::t))
              (let* ((_e153327153351_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153323153330_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e153328153354_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153323153330_
                         '2
                         gxc#!case-lambda::t
                         '#f)))
                     (_clauses153357_ _e153328153354_))
                (declare (not safe))
                (_K153326153348_ _clauses153357_))
              (let () (declare (not safe)) (_E153325153334_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self153133_ _args153134_)
        (let* ((_self153135153142_ _self153133_)
               (_E153137153146_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153135153142_))))
               (_K153138153186_
                (lambda (_arity153149_)
                  (let* ((_arity153150153159_ _arity153149_)
                         (_E153153153163_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (error '"No clause matching"
                                     _arity153150153159_)))))
                    (let ((_K153157153183_
                           (lambda ()
                             (fx= (length _args153134_) _arity153149_)))
                          (_K153154153169_
                           (lambda (_arity153167_)
                             (fx>= (length _args153134_) _arity153167_))))
                      (let ((_try-match153152153179_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity153150153159_))
                                   (let ((_tl153156153174_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity153150153159_)))
                                         (_hd153155153172_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity153150153159_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl153156153174_))
                                         (let ((_arity153177_
                                                _hd153155153172_))
                                           (declare (not safe))
                                           (_K153154153169_ _arity153177_))
                                         (let ()
                                           (declare (not safe))
                                           (_E153153153163_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E153153153163_))))))
                        (if (let ()
                              (declare (not safe))
                              (fixnum? _arity153150153159_))
                            (let () (declare (not safe)) (_K153157153183_))
                            (let ()
                              (declare (not safe))
                              (_try-match153152153179_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self153135153142_ 'gxc#!lambda::t))
              (let* ((_e153139153189_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153135153142_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e153140153192_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153135153142_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity153195_ _e153140153192_))
                (declare (not safe))
                (_K153138153186_ _arity153195_))
              (let () (declare (not safe)) (_E153137153146_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self153017_ _ctx153018_ _stx153019_ _args153020_)
        (let* ((_self153021153029_ _self153017_)
               (_E153023153033_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153021153029_))))
               (_K153024153117_
                (lambda (_dispatch153036_ _table153037_)
                  (let* ((_g153038153047_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch153036_)))
                         (_else153040153055_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch153036_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _ctx153018_ _stx153019_))))
                         (_K153042153101_
                          (lambda (_main153058_ _keys153059_)
                            (let ((_g155595_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx153019_
                                      _args153020_))))
                              (begin
                                (let ((_g155596_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g155595_)
                                             (##vector-length _g155595_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g155596_ 2)))
                                      (error "Context expects 2 values"
                                             _g155596_)))
                                (let ((_pargs153061_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g155595_ 0)))
                                      (_kwargs153062_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g155595_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main153058_))
                                    (if _table153037_
                                        (let ((_xargs153069_
                                               (map (lambda (_key153064_)
                                                      (let ((_$e153066_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq__0 _key153064_ _kwargs153062_))))
                (if _$e153066_ (values _$e153066_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys153059_)))
                                          (for-each
                                           (lambda (_kw153071_)
                                             (if (memq (car _kw153071_)
                                                       _keys153059_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx153019_
                                                    _keys153059_
                                                    _kw153071_))))
                                           _kwargs153062_)
                                          (let ((__tmp155648
                                                 (let ((__tmp155649
                                                        (let ((__tmp155650
                                                               (let ((__tmp155655
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp155656
                                     (let ()
                                       (declare (not safe))
                                       (cons _main153058_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp155656)))
                             (__tmp155651
                              (let ((__tmp155653
                                     (let ((__tmp155654
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp155654)))
                                    (__tmp155652
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs153061_
                                               _xargs153069_))))
                                (declare (not safe))
                                (cons __tmp155653 __tmp155652))))
                         (declare (not safe))
                         (cons __tmp155655 __tmp155651))))
                  (declare (not safe))
                  (cons '%#call __tmp155650))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp155649
                                                    _stx153019_))))
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _ctx153018_
                                             __tmp155648)))
                                        (let* ((_kwt153073_
                                                (let ((__tmp155597
                                                       (gensym '__kwt)))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp155597)))
                                               (_kwvars153076_
                                                (map (lambda (_g155598_)
                                                       (let ((__tmp155599
                                                              (gensym '__kw)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp155599)))
                                                     _kwargs153062_))
                                               (_kwbind153081_
                                                (map (lambda (_kw153078_
                                                              _kwvar153079_)
                                                       (let ((__tmp155602
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar153079_ '())))
                     (__tmp155600
                      (let ((__tmp155601 (cdr _kw153078_)))
                        (declare (not safe))
                        (cons __tmp155601 '()))))
                 (declare (not safe))
                 (cons __tmp155602 __tmp155600)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs153062_
                                                     _kwvars153076_))
                                               (_kwset153086_
                                                (map (lambda (_kw153083_
                                                              _kwvar153084_)
                                                       (let ((__tmp155603
                                                              (let ((__tmp155604
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp155612
                                    (let ((__tmp155613
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt153073_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp155613)))
                                   (__tmp155605
                                    (let ((__tmp155609
                                           (let ((__tmp155610
                                                  (let ((__tmp155611
                                                         (car _kw153083_)))
                                                    (declare (not safe))
                                                    (cons __tmp155611 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp155610)))
                                          (__tmp155606
                                           (let ((__tmp155607
                                                  (let ((__tmp155608
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar153084_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp155608))))
                                             (declare (not safe))
                                             (cons __tmp155607 '()))))
                                      (declare (not safe))
                                      (cons __tmp155609 __tmp155606))))
                               (declare (not safe))
                               (cons __tmp155612 __tmp155605))))
                        (declare (not safe))
                        (cons '(%#ref symbolic-table-set!) __tmp155604))))
                 (declare (not safe))
                 (cons '%#call __tmp155603)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs153062_
                                                     _kwvars153076_))
                                               (_xkwargs153091_
                                                (map (lambda (_kw153088_
                                                              _kwvar153089_)
                                                       (let ((__tmp155616
                                                              (car _kw153088_))
                                                             (__tmp155614
                                                              (let ((__tmp155615
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar153089_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp155615))))
                 (declare (not safe))
                 (cons __tmp155616 __tmp155614)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs153062_
                                                     _kwvars153076_))
                                               (_xargs153098_
                                                (map (lambda (_key153093_)
                                                       (let ((_$e153095_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq__0 _key153093_ _xkwargs153091_))))
                 (if _$e153095_ (values _$e153095_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys153059_)))
                                          (let ((__tmp155617
                                                 (let ((__tmp155618
                                                        (let ((__tmp155619
                                                               (let ((__tmp155620
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp155621
                                     (let ((__tmp155622
                                            (let ((__tmp155636
                                                   (let ((__tmp155637
                                                          (let ((__tmp155647
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt153073_ '())))
                        (__tmp155638
                         (let ((__tmp155639
                                (let ((__tmp155640
                                       (let ((__tmp155641
                                              (let ((__tmp155642
                                                     (let ((__tmp155644
                                                            (let ((__tmp155645
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155646 (length _kwargs153062_)))
                             (declare (not safe))
                             (cons __tmp155646 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp155645)))
                   (__tmp155643
                    (let () (declare (not safe)) (cons '(%#quote 0) '()))))
               (declare (not safe))
               (cons __tmp155644 __tmp155643))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-symbolic-table)
                                                      __tmp155642))))
                                         (declare (not safe))
                                         (cons '%#call __tmp155641))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp155640
                                   _stx153019_))))
                           (declare (not safe))
                           (cons __tmp155639 '()))))
                    (declare (not safe))
                    (cons __tmp155647 __tmp155638))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp155637 '())))
                                                  (__tmp155623
                                                   (let ((__tmp155624
                                                          (let ((__tmp155625
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp155626
                                (let ((__tmp155627
                                       (let ((__tmp155628
                                              (let ((__tmp155629
                                                     (let ((__tmp155634
                                                            (let ((__tmp155635
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main153058_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp155635)))
                   (__tmp155630
                    (let ((__tmp155632
                           (let ((__tmp155633
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt153073_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp155633)))
                          (__tmp155631
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs153061_ _xargs153098_))))
                      (declare (not safe))
                      (cons __tmp155632 __tmp155631))))
               (declare (not safe))
               (cons __tmp155634 __tmp155630))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp155629))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp155628
                                          _stx153019_))))
                                  (declare (not safe))
                                  (cons __tmp155627 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp155626 _kwset153086_))))
                    (declare (not safe))
                    (cons '%#begin __tmp155625))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp155624 '()))))
                                              (declare (not safe))
                                              (cons __tmp155636 __tmp155623))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp155622))))
                                (declare (not safe))
                                (cons __tmp155621 '()))))
                         (declare (not safe))
                         (cons _kwbind153081_ __tmp155620))))
                  (declare (not safe))
                  (cons '%#let-values __tmp155619))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp155618
                                                    _stx153019_))))
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _ctx153018_
                                             __tmp155617)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g153038153047_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e153043153104_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g153038153047_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                               (_e153044153107_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g153038153047_
                                   '2
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_keys153110_ _e153044153107_)
                               (_e153045153112_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g153038153047_
                                   '3
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_main153115_ _e153045153112_))
                          (declare (not safe))
                          (_K153042153101_ _main153115_ _keys153110_))
                        (let () (declare (not safe)) (_else153040153055_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self153021153029_
                 'gxc#!kw-lambda::t))
              (let* ((_e153025153120_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153021153029_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e153026153123_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153021153029_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table153126_ _e153026153123_)
                     (_e153027153128_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153021153029_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch153131_ _e153027153128_))
                (declare (not safe))
                (_K153024153117_ _dispatch153131_ _table153126_))
              (let () (declare (not safe)) (_E153023153033_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx152630_ _args152631_)
        (let _lp152633_ ((_rest152635_ _args152631_)
                         (_pargs152636_ '())
                         (_kwargs152637_ '()))
          (let* ((___stx154684154685_ _rest152635_)
                 (_g152643152695_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx154684154685_)))))
            (let ((___kont154686154687_
                   (lambda (_L152874_ _L152875_)
                     (let ((__tmp155657
                            (let ()
                              (declare (not safe))
                              (cons _L152875_ _pargs152636_))))
                       (declare (not safe))
                       (_lp152633_ _L152874_ __tmp155657 _kwargs152637_))))
                  (___kont154688154689_
                   (lambda (_L152820_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L152820_ _pargs152636_))
                             (reverse _kwargs152637_))))
                  (___kont154690154691_
                   (lambda (_L152767_ _L152768_ _L152769_)
                     (let ((_kw152786_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _L152769_))))
                       (if (assq _kw152786_ _kwargs152637_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx152630_
                              _kw152786_))
                           (let ((__tmp155658
                                  (let ((__tmp155659
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw152786_ _L152768_))))
                                    (declare (not safe))
                                    (cons __tmp155659 _kwargs152637_))))
                             (declare (not safe))
                             (_lp152633_
                              _L152767_
                              _pargs152636_
                              __tmp155658))))))
                  (___kont154692154693_
                   (lambda (_L152715_ _L152716_)
                     (let ((__tmp155660
                            (let ()
                              (declare (not safe))
                              (cons _L152716_ _pargs152636_))))
                       (declare (not safe))
                       (_lp152633_ _L152715_ __tmp155660 _kwargs152637_))))
                  (___kont154694154695_
                   (lambda ()
                     (values (reverse _pargs152636_)
                             (reverse _kwargs152637_)))))
              (let* ((_g152642152702_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx154684154685_))
                            (___kont154694154695_)
                            (let () (declare (not safe)) (_g152643152695_)))))
                     (___match154791154792_
                      (lambda (_e152676152735_
                               _hd152675152738_
                               _tl152674152740_
                               _e152679152743_
                               _hd152678152746_
                               _tl152677152748_
                               _e152682152751_
                               _hd152681152754_
                               _tl152680152756_
                               _e152685152759_
                               _hd152684152762_
                               _tl152683152764_)
                        (let ((_L152767_ _tl152683152764_)
                              (_L152768_ _hd152684152762_)
                              (_L152769_ _hd152681152754_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L152769_))
                              (___kont154690154691_
                               _L152767_
                               _L152768_
                               _L152769_)
                              (___kont154692154693_
                               _tl152674152740_
                               _hd152675152738_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx154684154685_))
                    (let ((_e152649152839_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx154684154685_))))
                      (let ((_tl152647152844_
                             (let ()
                               (declare (not safe))
                               (##cdr _e152649152839_)))
                            (_hd152648152842_
                             (let ()
                               (declare (not safe))
                               (##car _e152649152839_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd152648152842_))
                            (let ((_e152652152847_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd152648152842_))))
                              (let ((_tl152650152852_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e152652152847_)))
                                    (_hd152651152850_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e152652152847_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd152651152850_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd152651152850_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl152650152852_))
                                            (let ((_e152655152855_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl152650152852_))))
                                              (let ((_tl152653152860_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e152655152855_)))
                                                    (_hd152654152858_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e152655152855_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd152654152858_))
                                                    (let ((_e152656152863_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd152654152858_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e152656152863_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl152653152860_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl152647152844_))
                          (let ((_e152659152866_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl152647152844_))))
                            (let ((_tl152657152871_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e152659152866_)))
                                  (_hd152658152869_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e152659152866_))))
                              (___kont154686154687_
                               _tl152657152871_
                               _hd152658152869_)))
                          (___kont154692154693_
                           _tl152647152844_
                           _hd152648152842_))
                      (___kont154692154693_ _tl152647152844_ _hd152648152842_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e152656152863_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl152653152860_))
                          (___kont154688154689_ _tl152647152844_)
                          (___kont154692154693_
                           _tl152647152844_
                           _hd152648152842_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl152653152860_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl152647152844_))
                              (let ((_e152685152759_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl152647152844_))))
                                (let ((_tl152683152764_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e152685152759_)))
                                      (_hd152684152762_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e152685152759_))))
                                  (___match154791154792_
                                   _e152649152839_
                                   _hd152648152842_
                                   _tl152647152844_
                                   _e152652152847_
                                   _hd152651152850_
                                   _tl152650152852_
                                   _e152655152855_
                                   _hd152654152858_
                                   _tl152653152860_
                                   _e152685152759_
                                   _hd152684152762_
                                   _tl152683152764_)))
                              (___kont154692154693_
                               _tl152647152844_
                               _hd152648152842_))
                          (___kont154692154693_
                           _tl152647152844_
                           _hd152648152842_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl152653152860_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl152647152844_))
                                                            (let ((_e152685152759_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl152647152844_))))
                      (let ((_tl152683152764_
                             (let ()
                               (declare (not safe))
                               (##cdr _e152685152759_)))
                            (_hd152684152762_
                             (let ()
                               (declare (not safe))
                               (##car _e152685152759_))))
                        (___match154791154792_
                         _e152649152839_
                         _hd152648152842_
                         _tl152647152844_
                         _e152652152847_
                         _hd152651152850_
                         _tl152650152852_
                         _e152655152855_
                         _hd152654152858_
                         _tl152653152860_
                         _e152685152759_
                         _hd152684152762_
                         _tl152683152764_)))
                    (___kont154692154693_ _tl152647152844_ _hd152648152842_))
                (___kont154692154693_ _tl152647152844_ _hd152648152842_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont154692154693_
                                             _tl152647152844_
                                             _hd152648152842_))
                                        (___kont154692154693_
                                         _tl152647152844_
                                         _hd152648152842_))
                                    (___kont154692154693_
                                     _tl152647152844_
                                     _hd152648152842_))))
                            (___kont154692154693_
                             _tl152647152844_
                             _hd152648152842_))))
                    (let () (declare (not safe)) (_g152642152702_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self152625_ _ctx152626_ _stx152627_ _args152628_)
        (let ()
          (declare (not safe))
          (gxc#xform-call% _ctx152626_ _stx152627_))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
