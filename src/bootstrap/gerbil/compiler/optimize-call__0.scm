(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1709127361)
  (begin
    (define gxc#&optimize-call
      (make-promise
       (lambda ()
         (let ((_tbl152586_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp152881 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-merge! _tbl152586_ __tmp152881))
           (let ()
             (declare (not safe))
             (hash-put! _tbl152586_ '%#call gxc#optimize-call%))
           _tbl152586_))))
    (define gxc#apply-optimize-call
      (lambda (_stx152569_ . _args152571_)
        (let ((__tmp152883
               (lambda ()
                 (declare (not safe))
                 (if (null? _args152571_)
                     (gxc#compile-e__0 _stx152569_)
                     (let ((_arg1152576_ (car _args152571_))
                           (_rest152578_ (cdr _args152571_)))
                       (if (null? _rest152578_)
                           (gxc#compile-e__1 _stx152569_ _arg1152576_)
                           (let ((_arg2152581_ (car _rest152578_))
                                 (_rest152583_ (cdr _rest152578_)))
                             (if (null? _rest152583_)
                                 (gxc#compile-e__2
                                  _stx152569_
                                  _arg1152576_
                                  _arg2152581_)
                                 (apply gxc#compile-e
                                        _stx152569_
                                        _arg1152576_
                                        _arg2152581_
                                        _rest152583_))))))))
              (__tmp152882 (force gxc#&optimize-call)))
          (declare (not safe))
          (call-with-parameters
           __tmp152883
           gxc#current-compile-methods
           __tmp152882))))
    (define gxc#optimize-call%
      (lambda (_stx152424_)
        (let* ((___stx152631152632_ _stx152424_)
               (_g152427152447_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx152631152632_)))))
          (let ((___kont152633152634_
                 (lambda (_L152491_ _L152492_)
                   (let* ((_rator-id152510_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L152492_)))
                          (_rator-type152512_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id152510_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type152512_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp152884
                                  (##structure-ref
                                   _rator-type152512_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id152510_
                              '" => "
                              _rator-type152512_
                              '" "
                              __tmp152884))
                           (let ((_optimized152515_
                                  (let ((__method152879
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type152512_
                                            'optimize-call))))
                                    (if __method152879
                                        (__method152879
                                         _rator-type152512_
                                         _stx152424_
                                         _L152491_)
                                        (let ()
                                          (declare (not safe))
                                          (error '"Missing method"
                                                 _rator-type152512_
                                                 'optimize-call))))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type152512_))
                                 _optimized152515_
                                 (let* ((___stx152613152614_ _optimized152515_)
                                        (_g152518152528_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx152613152614_)))))
                                   (let ((___kont152615152616_
                                          (lambda (_L152548_)
                                            (let ((__tmp152885
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L152548_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp152885
                                               _stx152424_))))
                                         (___kont152617152618_
                                          (lambda () _optimized152515_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx152613152614_))
                                         (let ((_e152523152540_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx152613152614_))))
                                           (let ((_tl152521152545_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e152523152540_)))
                                                 (_hd152522152543_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e152523152540_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd152522152543_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd152522152543_))
                                                     (___kont152615152616_
                                                      _tl152521152545_)
                                                     (___kont152617152618_))
                                                 (___kont152617152618_))))
                                         (___kont152617152618_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type152512_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx152424_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _stx152424_
                                _rator-type152512_)))))))
                (___kont152635152636_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _stx152424_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx152631152632_))
                (let ((_e152433152459_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx152631152632_))))
                  (let ((_tl152431152464_
                         (let () (declare (not safe)) (##cdr _e152433152459_)))
                        (_hd152432152462_
                         (let ()
                           (declare (not safe))
                           (##car _e152433152459_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl152431152464_))
                        (let ((_e152436152467_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl152431152464_))))
                          (let ((_tl152434152472_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e152436152467_)))
                                (_hd152435152470_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e152436152467_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd152435152470_))
                                (let ((_e152439152475_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd152435152470_))))
                                  (let ((_tl152437152480_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e152439152475_)))
                                        (_hd152438152478_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e152439152475_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd152438152478_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd152438152478_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl152437152480_))
                                                (let ((_e152442152483_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl152437152480_))))
                                                  (let ((_tl152440152488_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e152442152483_)))
                                                        (_hd152441152486_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e152442152483_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl152440152488_))
                                                        (___kont152633152634_
                                                         _tl152434152472_
                                                         _hd152441152486_)
                                                        (___kont152635152636_))))
                                                (___kont152635152636_))
                                            (___kont152635152636_))
                                        (___kont152635152636_))))
                                (___kont152635152636_))))
                        (___kont152635152636_))))
                (___kont152635152636_))))))
    (define gxc#!predicate::optimize-call
      (lambda (_self152378_ _stx152379_ _args152380_)
        (let* ((_g152382152392_
                (lambda (_g152383152389_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g152383152389_))))
               (_g152381152421_
                (lambda (_g152383152395_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g152383152395_))
                      (let ((_e152387152397_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g152383152395_))))
                        (let ((_hd152386152400_
                               (let ()
                                 (declare (not safe))
                                 (##car _e152387152397_)))
                              (_tl152385152402_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e152387152397_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl152385152402_))
                              ((lambda (_L152405_)
                                 (let* ((_klass152416_
                                         (let ((__tmp152886
                                                (##structure-ref
                                                 _self152378_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx152379_
                                            __tmp152886)))
                                        (_object152418_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L152405_))))
                                   (if (##structure-ref
                                        _klass152416_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp152902
                                              (let ((__tmp152903
                                                     (let ((__tmp152905
                                                            (let ((__tmp152906
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152907
                                  (##structure-ref
                                   _klass152416_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp152907 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp152906)))
                   (__tmp152904
                    (let () (declare (not safe)) (cons _object152418_ '()))))
               (declare (not safe))
               (cons __tmp152905 __tmp152904))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#struct-direct-instance?
                                                      __tmp152903))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp152902
                                          _stx152379_))
                                       (if (##structure-ref
                                            _klass152416_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp152896
                                                  (let ((__tmp152897
                                                         (let ((__tmp152899
                                                                (let ((__tmp152900
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp152901
                                      (##structure-ref
                                       _klass152416_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp152901 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp152900)))
                       (__tmp152898
                        (let ()
                          (declare (not safe))
                          (cons _object152418_ '()))))
                   (declare (not safe))
                   (cons __tmp152899 __tmp152898))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-instance?
                                                          __tmp152897))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp152896
                                              _stx152379_))
                                           (let ((__tmp152887
                                                  (let ((__tmp152888
                                                         (let ((__tmp152894
                                                                (let ((__tmp152895
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'class-instance? '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp152895)))
                       (__tmp152889
                        (let ((__tmp152891
                               (let ((__tmp152892
                                      (let ((__tmp152893
                                             (##structure-ref
                                              _self152378_
                                              '1
                                              gxc#!type::t
                                              '#f)))
                                        (declare (not safe))
                                        (cons __tmp152893 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp152892)))
                              (__tmp152890
                               (let ()
                                 (declare (not safe))
                                 (cons _object152418_ '()))))
                          (declare (not safe))
                          (cons __tmp152891 __tmp152890))))
                   (declare (not safe))
                   (cons __tmp152894 __tmp152889))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#call
                                                          __tmp152888))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp152887
                                              _stx152379_))))))
                               _hd152386152400_)
                              (let ()
                                (declare (not safe))
                                (_g152382152392_ _g152383152395_)))))
                      (let ()
                        (declare (not safe))
                        (_g152382152392_ _g152383152395_))))))
          (declare (not safe))
          (_g152381152421_ _args152380_))))
    (define gxc#!predicate::optimize-call::specialize
      (lambda (__klass152588 __method-table152589)
        (let ((__id152590
               (let ((__slot152591
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152588 'id))))
                 (if __slot152591
                     __slot152591
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self152378_ _stx152379_ _args152380_)
            (let* ((_g152382152392_
                    (lambda (_g152383152389_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g152383152389_))))
                   (_g152381152421_
                    (lambda (_g152383152395_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g152383152395_))
                          (let ((_e152387152397_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g152383152395_))))
                            (let ((_hd152386152400_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e152387152397_)))
                                  (_tl152385152402_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e152387152397_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl152385152402_))
                                  ((lambda (_L152405_)
                                     (let* ((_klass152416_
                                             (let ((__tmp152908
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self152378_
                                                       __id152590
                                                       __klass152588
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx152379_
                                                __tmp152908)))
                                            (_object152418_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L152405_))))
                                       (if (##structure-ref
                                            _klass152416_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp152924
                                                  (let ((__tmp152925
                                                         (let ((__tmp152927
                                                                (let ((__tmp152928
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp152929
                                      (##structure-ref
                                       _klass152416_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp152929 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp152928)))
                       (__tmp152926
                        (let ()
                          (declare (not safe))
                          (cons _object152418_ '()))))
                   (declare (not safe))
                   (cons __tmp152927 __tmp152926))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-direct-instance?
                                                          __tmp152925))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp152924
                                              _stx152379_))
                                           (if (##structure-ref
                                                _klass152416_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp152918
                                                      (let ((__tmp152919
                                                             (let ((__tmp152921
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp152922
                                   (let ((__tmp152923
                                          (##structure-ref
                                           _klass152416_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp152923 '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp152922)))
                           (__tmp152920
                            (let ()
                              (declare (not safe))
                              (cons _object152418_ '()))))
                       (declare (not safe))
                       (cons __tmp152921 __tmp152920))))
                (declare (not safe))
                (cons '%#struct-instance? __tmp152919))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp152918
                                                  _stx152379_))
                                               (let ((__tmp152909
                                                      (let ((__tmp152910
                                                             (let ((__tmp152916
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp152917
                                   (let ()
                                     (declare (not safe))
                                     (cons 'class-instance? '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp152917)))
                           (__tmp152911
                            (let ((__tmp152913
                                   (let ((__tmp152914
                                          (let ((__tmp152915
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _self152378_
                                                    __id152590
                                                    __klass152588
                                                    '#f))))
                                            (declare (not safe))
                                            (cons __tmp152915 '()))))
                                     (declare (not safe))
                                     (cons '%#ref __tmp152914)))
                                  (__tmp152912
                                   (let ()
                                     (declare (not safe))
                                     (cons _object152418_ '()))))
                              (declare (not safe))
                              (cons __tmp152913 __tmp152912))))
                       (declare (not safe))
                       (cons __tmp152916 __tmp152911))))
                (declare (not safe))
                (cons '%#call __tmp152910))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp152909
                                                  _stx152379_))))))
                                   _hd152386152400_)
                                  (let ()
                                    (declare (not safe))
                                    (_g152382152392_ _g152383152395_)))))
                          (let ()
                            (declare (not safe))
                            (_g152382152392_ _g152383152395_))))))
              (declare (not safe))
              (_g152381152421_ _args152380_))))))
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
      (lambda (_self152098_ _stx152099_ _args152100_)
        (let* ((_klass152102_
                (let ((__tmp152930
                       (##structure-ref _self152098_ '1 gxc#!type::t '#f)))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _stx152099_ __tmp152930)))
               (_fields152104_
                (length (##structure-ref _klass152102_ '5 gxc#!class::t '#f)))
               (_args152106_ (map gxc#compile-e _args152100_))
               (_inline-make-object152108_
                (let ((__tmp152931
                       (let ((__tmp152937
                              (let ((__tmp152938
                                     (let ()
                                       (declare (not safe))
                                       (cons '##structure '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp152938)))
                             (__tmp152932
                              (let ((__tmp152934
                                     (let ((__tmp152935
                                            (let ((__tmp152936
                                                   (##structure-ref
                                                    _self152098_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp152936 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp152935)))
                                    (__tmp152933
                                     (let ()
                                       (declare (not safe))
                                       (make-list__%
                                        _fields152104_
                                        '(%#quote #f)))))
                                (declare (not safe))
                                (cons __tmp152934 __tmp152933))))
                         (declare (not safe))
                         (cons __tmp152937 __tmp152932))))
                  (declare (not safe))
                  (cons '%#call __tmp152931))))
          (let ((_$e152111_
                 (##structure-ref _klass152102_ '6 gxc#!class::t '#f)))
            (if _$e152111_
                ((lambda (_ctor152114_)
                   (let ((_$obj152116_
                          (let ((__tmp153038 (gensym '__obj)))
                            (declare (not safe))
                            (make-symbol__0 __tmp153038)))
                         (_ctor-impl152117_
                          (let ()
                            (declare (not safe))
                            (gxc#!class-lookup-method
                             _klass152102_
                             _ctor152114_))))
                     (let ((__tmp153039
                            (let ((__tmp153040
                                   (let ((__tmp153108
                                          (let ((__tmp153109
                                                 (let ((__tmp153111
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj152116_
                                                                '())))
                                                       (__tmp153110
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _inline-make-object152108_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp153111
                                                         __tmp153110))))
                                            (declare (not safe))
                                            (cons __tmp153109 '())))
                                         (__tmp153041
                                          (let ((__tmp153042
                                                 (let ((__tmp153043
                                                        (let ((__tmp153047
                                                               (if _ctor-impl152117_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153102
                                  (let ((__tmp153106
                                         (let ((__tmp153107
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _ctor-impl152117_
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp153107)))
                                        (__tmp153103
                                         (let ((__tmp153104
                                                (let ((__tmp153105
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj152116_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp153105))))
                                           (declare (not safe))
                                           (cons __tmp153104 _args152106_))))
                                    (declare (not safe))
                                    (cons __tmp153106 __tmp153103))))
                             (declare (not safe))
                             (cons '%#call __tmp153102))
                           (let* ((_$ctor152119_
                                   (let ((__tmp153048 (gensym '__constructor)))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp153048)))
                                  (__tmp153049
                                   (let ((__tmp153084
                                          (let ((__tmp153085
                                                 (let ((__tmp153101
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$ctor152119_
                                                                '())))
                                                       (__tmp153086
                                                        (let ((__tmp153087
                                                               (let ((__tmp153088
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp153099
                                     (let ((__tmp153100
                                            (let ()
                                              (declare (not safe))
                                              (cons 'direct-method-ref '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp153100)))
                                    (__tmp153089
                                     (let ((__tmp153096
                                            (let ((__tmp153097
                                                   (let ((__tmp153098
                                                          (##structure-ref
                                                           _self152098_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp153098 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp153097)))
                                           (__tmp153090
                                            (let ((__tmp153094
                                                   (let ((__tmp153095
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj152116_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153095)))
                                                  (__tmp153091
                                                   (let ((__tmp153092
                                                          (let ((__tmp153093
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _ctor152114_ '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp153093))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153092 '()))))
                                              (declare (not safe))
                                              (cons __tmp153094 __tmp153091))))
                                       (declare (not safe))
                                       (cons __tmp153096 __tmp153090))))
                                (declare (not safe))
                                (cons __tmp153099 __tmp153089))))
                         (declare (not safe))
                         (cons '%#call __tmp153088))))
                  (declare (not safe))
                  (cons __tmp153087 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153101
                                                         __tmp153086))))
                                            (declare (not safe))
                                            (cons __tmp153085 '())))
                                         (__tmp153050
                                          (let ((__tmp153051
                                                 (let ((__tmp153052
                                                        (let ((__tmp153082
                                                               (let ((__tmp153083
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$ctor152119_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp153083)))
                      (__tmp153053
                       (let ((__tmp153075
                              (let ((__tmp153076
                                     (let ((__tmp153080
                                            (let ((__tmp153081
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$ctor152119_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp153081)))
                                           (__tmp153077
                                            (let ((__tmp153078
                                                   (let ((__tmp153079
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj152116_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153079))))
                                              (declare (not safe))
                                              (cons __tmp153078
                                                    _args152106_))))
                                       (declare (not safe))
                                       (cons __tmp153080 __tmp153077))))
                                (declare (not safe))
                                (cons '%#call __tmp153076)))
                             (__tmp153054
                              (let ((__tmp153055
                                     (let ((__tmp153056
                                            (let ((__tmp153073
                                                   (let ((__tmp153074
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153074)))
                                                  (__tmp153057
                                                   (let ((__tmp153071
                                                          (let ((__tmp153072
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons '"missing constructor method implementation"
                                 '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp153072)))
                 (__tmp153058
                  (let ((__tmp153069
                         (let ((__tmp153070
                                (let ()
                                  (declare (not safe))
                                  (cons 'class: '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp153070)))
                        (__tmp153059
                         (let ((__tmp153066
                                (let ((__tmp153067
                                       (let ((__tmp153068
                                              (##structure-ref
                                               _self152098_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp153068 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp153067)))
                               (__tmp153060
                                (let ((__tmp153064
                                       (let ((__tmp153065
                                              (let ()
                                                (declare (not safe))
                                                (cons 'method: '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp153065)))
                                      (__tmp153061
                                       (let ((__tmp153062
                                              (let ((__tmp153063
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _ctor152114_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#quote __tmp153063))))
                                         (declare (not safe))
                                         (cons __tmp153062 '()))))
                                  (declare (not safe))
                                  (cons __tmp153064 __tmp153061))))
                           (declare (not safe))
                           (cons __tmp153066 __tmp153060))))
                    (declare (not safe))
                    (cons __tmp153069 __tmp153059))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153071
                                                           __tmp153058))))
                                              (declare (not safe))
                                              (cons __tmp153073 __tmp153057))))
                                       (declare (not safe))
                                       (cons '%#call __tmp153056))))
                                (declare (not safe))
                                (cons __tmp153055 '()))))
                         (declare (not safe))
                         (cons __tmp153075 __tmp153054))))
                  (declare (not safe))
                  (cons __tmp153082 __tmp153053))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#if __tmp153052))))
                                            (declare (not safe))
                                            (cons __tmp153051 '()))))
                                     (declare (not safe))
                                     (cons __tmp153084 __tmp153050))))
                             (declare (not safe))
                             (cons '%#let-values __tmp153049))))
                      (__tmp153044
                       (let ((__tmp153045
                              (let ((__tmp153046
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj152116_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp153046))))
                         (declare (not safe))
                         (cons __tmp153045 '()))))
                  (declare (not safe))
                  (cons __tmp153047 __tmp153044))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#begin
                                                         __tmp153043))))
                                            (declare (not safe))
                                            (cons __tmp153042 '()))))
                                     (declare (not safe))
                                     (cons __tmp153108 __tmp153041))))
                              (declare (not safe))
                              (cons '%#let-values __tmp153040))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp153039 _stx152099_))))
                 _$e152111_)
                (let ((_$e152121_
                       (##structure-ref _klass152102_ '9 gxc#!class::t '#f)))
                  (if _$e152121_
                      ((lambda (_metaclass152124_)
                         (let* ((_$obj152126_
                                 (let ((__tmp153000 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp153000)))
                                (_metakons152128_
                                 (let ((__tmp153001
                                        (let ()
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-class
                                           _stx152099_
                                           _metaclass152124_))))
                                   (declare (not safe))
                                   (gxc#!class-lookup-method
                                    __tmp153001
                                    'instance-init!))))
                           (let ((__tmp153002
                                  (let ((__tmp153003
                                         (let ((__tmp153034
                                                (let ((__tmp153035
                                                       (let ((__tmp153037
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj152126_ '())))
                     (__tmp153036
                      (let ()
                        (declare (not safe))
                        (cons _inline-make-object152108_ '()))))
                 (declare (not safe))
                 (cons __tmp153037 __tmp153036))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153035 '())))
                                               (__tmp153004
                                                (let ((__tmp153005
                                                       (let ((__tmp153006
                                                              (let ((__tmp153010
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if _metakons152128_
                                 (let ((__tmp153024
                                        (let ((__tmp153032
                                               (let ((__tmp153033
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _metakons152128_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp153033)))
                                              (__tmp153025
                                               (let ((__tmp153029
                                                      (let ((__tmp153030
                                                             (let ((__tmp153031
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self152098_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp153031 '()))))
                (declare (not safe))
                (cons '%#ref __tmp153030)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp153026
                                                      (let ((__tmp153027
                                                             (let ((__tmp153028
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _$obj152126_ '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp153028))))
                (declare (not safe))
                (cons __tmp153027 _args152106_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp153029
                                                       __tmp153026))))
                                          (declare (not safe))
                                          (cons __tmp153032 __tmp153025))))
                                   (declare (not safe))
                                   (cons '%#call __tmp153024))
                                 (let ((__tmp153011
                                        (let ((__tmp153022
                                               (let ((__tmp153023
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'call-method
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp153023)))
                                              (__tmp153012
                                               (let ((__tmp153019
                                                      (let ((__tmp153020
                                                             (let ((__tmp153021
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self152098_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp153021 '()))))
                (declare (not safe))
                (cons '%#ref __tmp153020)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp153013
                                                      (let ((__tmp153017
                                                             (let ((__tmp153018
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'instance-init! '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp153018)))
                    (__tmp153014
                     (let ((__tmp153015
                            (let ((__tmp153016
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj152126_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp153016))))
                       (declare (not safe))
                       (cons __tmp153015 _args152106_))))
                (declare (not safe))
                (cons __tmp153017 __tmp153014))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp153019
                                                       __tmp153013))))
                                          (declare (not safe))
                                          (cons __tmp153022 __tmp153012))))
                                   (declare (not safe))
                                   (cons '%#call __tmp153011))))
                            (__tmp153007
                             (let ((__tmp153008
                                    (let ((__tmp153009
                                           (let ()
                                             (declare (not safe))
                                             (cons _$obj152126_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp153009))))
                               (declare (not safe))
                               (cons __tmp153008 '()))))
                        (declare (not safe))
                        (cons __tmp153010 __tmp153007))))
                 (declare (not safe))
                 (cons '%#begin __tmp153006))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153005 '()))))
                                           (declare (not safe))
                                           (cons __tmp153034 __tmp153004))))
                                    (declare (not safe))
                                    (cons '%#let-values __tmp153003))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp153002 _stx152099_))))
                       _$e152121_)
                      (if (##structure-ref _klass152102_ '7 gxc#!class::t '#f)
                          (if (fx= (length _args152106_) _fields152104_)
                              (let ((__tmp152992
                                     (let ((__tmp152993
                                            (let ((__tmp152998
                                                   (let ((__tmp152999
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152999)))
                                                  (__tmp152994
                                                   (let ((__tmp152995
                                                          (let ((__tmp152996
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp152997
                                (##structure-ref
                                 _self152098_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (cons __tmp152997 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp152996))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp152995
                                                           _args152106_))))
                                              (declare (not safe))
                                              (cons __tmp152998 __tmp152994))))
                                       (declare (not safe))
                                       (cons '%#call __tmp152993))))
                                (declare (not safe))
                                (gxc#xform-wrap-source
                                 __tmp152992
                                 _stx152099_))
                              (let ((__tmp152991
                                     (##structure-ref
                                      _self152098_
                                      '1
                                      gxc#!type::t
                                      '#f))
                                    (__tmp152990
                                     (length (##structure-ref
                                              _klass152102_
                                              '5
                                              gxc#!class::t
                                              '#f))))
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"illegal struct constructor application; arity mismatch"
                                 _stx152099_
                                 __tmp152991
                                 __tmp152990)))
                          (let ((_$obj152131_
                                 (let ((__tmp152939 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp152939))))
                            (let _lp152133_ ((_rest152135_ _args152106_)
                                             (_initializers152136_ '()))
                              (let* ((___stx152669152670_ _rest152135_)
                                     (_g152140152161_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx152669152670_)))))
                                (let ((___kont152671152672_
                                       (lambda (_L152215_ _L152216_ _L152217_)
                                         (let* ((_slot152248_
                                                 (keyword->symbol
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e _L152217_))))
                                                (_off152250_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass152102_
                                                    _slot152248_))))
                                           (if _off152250_
                                               (let ((__tmp152941
                                                      (let ((__tmp152942
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _off152250_ _L152216_))))
                (declare (not safe))
                (cons __tmp152942 _initializers152136_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp152133_
                                                  _L152215_
                                                  __tmp152941))
                                               (let ((__tmp152940
                                                      (##structure-ref
                                                       _self152098_
                                                       '1
                                                       gxc#!type::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"unknown slot"
                                                  _stx152099_
                                                  __tmp152940
                                                  _slot152248_))))))
                                      (___kont152673152674_
                                       (lambda ()
                                         (let ((__tmp152943
                                                (let ((__tmp152944
                                                       (let ((__tmp152967
                                                              (let ((__tmp152968
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp152970
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj152131_ '())))
                                   (__tmp152969
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object152108_ '()))))
                               (declare (not safe))
                               (cons __tmp152970 __tmp152969))))
                        (declare (not safe))
                        (cons __tmp152968 '())))
                     (__tmp152945
                      (let ((__tmp152946
                             (let ((__tmp152947
                                    (let ((__tmp152964
                                           (let ((__tmp152965
                                                  (let ((__tmp152966
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj152131_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp152966))))
                                             (declare (not safe))
                                             (cons __tmp152965 '())))
                                          (__tmp152948
                                           (let ((__tmp152949
                                                  (lambda (_i152175_ _r152176_)
                                                    (let ((__tmp152950
                                                           (let ((__tmp152951
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp152961
                                 (let ((__tmp152962
                                        (let ((__tmp152963
                                               (##structure-ref
                                                _self152098_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp152963 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp152962)))
                                (__tmp152952
                                 (let ((__tmp152958
                                        (let ((__tmp152959
                                               (let ((__tmp152960
                                                      (car _i152175_)))
                                                 (declare (not safe))
                                                 (cons __tmp152960 '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp152959)))
                                       (__tmp152953
                                        (let ((__tmp152956
                                               (let ((__tmp152957
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _$obj152131_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp152957)))
                                              (__tmp152954
                                               (let ((__tmp152955
                                                      (cdr _i152175_)))
                                                 (declare (not safe))
                                                 (cons __tmp152955 '()))))
                                          (declare (not safe))
                                          (cons __tmp152956 __tmp152954))))
                                   (declare (not safe))
                                   (cons __tmp152958 __tmp152953))))
                            (declare (not safe))
                            (cons __tmp152961 __tmp152952))))
                     (declare (not safe))
                     (cons '%#struct-unchecked-set! __tmp152951))))
              (declare (not safe))
              (cons __tmp152950 _r152176_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (foldl1 __tmp152949
                                                     '()
                                                     _initializers152136_))))
                                      (declare (not safe))
                                      (foldr1 cons __tmp152964 __tmp152948))))
                               (declare (not safe))
                               (cons '%#begin __tmp152947))))
                        (declare (not safe))
                        (cons __tmp152946 '()))))
                 (declare (not safe))
                 (cons __tmp152967 __tmp152945))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp152944))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp152943
                                            _stx152099_))))
                                      (___kont152675152676_
                                       (lambda ()
                                         (let ((__tmp152971
                                                (let ((__tmp152972
                                                       (let ((__tmp152986
                                                              (let ((__tmp152987
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp152989
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj152131_ '())))
                                   (__tmp152988
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object152108_ '()))))
                               (declare (not safe))
                               (cons __tmp152989 __tmp152988))))
                        (declare (not safe))
                        (cons __tmp152987 '())))
                     (__tmp152973
                      (let ((__tmp152974
                             (let ((__tmp152975
                                    (let ((__tmp152979
                                           (let ((__tmp152980
                                                  (let ((__tmp152984
                                                         (let ((__tmp152985
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons 'class-instance-init! '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp152985)))
                (__tmp152981
                 (let ((__tmp152982
                        (let ((__tmp152983
                               (let ()
                                 (declare (not safe))
                                 (cons _$obj152131_ '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp152983))))
                   (declare (not safe))
                   (cons __tmp152982 _args152106_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp152984
                                                          __tmp152981))))
                                             (declare (not safe))
                                             (cons '%#call __tmp152980)))
                                          (__tmp152976
                                           (let ((__tmp152977
                                                  (let ((__tmp152978
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj152131_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp152978))))
                                             (declare (not safe))
                                             (cons __tmp152977 '()))))
                                      (declare (not safe))
                                      (cons __tmp152979 __tmp152976))))
                               (declare (not safe))
                               (cons '%#begin __tmp152975))))
                        (declare (not safe))
                        (cons __tmp152974 '()))))
                 (declare (not safe))
                 (cons __tmp152986 __tmp152973))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp152972))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp152971
                                            _stx152099_)))))
                                  (let* ((_g152138152178_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   ___stx152669152670_))
                                                (___kont152673152674_)
                                                (___kont152675152676_))))
                                         (___match152706152707_
                                          (lambda (_e152147152183_
                                                   _hd152146152186_
                                                   _tl152145152188_
                                                   _e152150152191_
                                                   _hd152149152194_
                                                   _tl152148152196_
                                                   _e152153152199_
                                                   _hd152152152202_
                                                   _tl152151152204_
                                                   _e152156152207_
                                                   _hd152155152210_
                                                   _tl152154152212_)
                                            (let ((_L152215_ _tl152154152212_)
                                                  (_L152216_ _hd152155152210_)
                                                  (_L152217_ _hd152152152202_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-keyword?
                                                     _L152217_))
                                                  (___kont152671152672_
                                                   _L152215_
                                                   _L152216_
                                                   _L152217_)
                                                  (___kont152675152676_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx152669152670_))
                                        (let ((_e152147152183_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx152669152670_))))
                                          (let ((_tl152145152188_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e152147152183_)))
                                                (_hd152146152186_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e152147152183_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd152146152186_))
                                                (let ((_e152150152191_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd152146152186_))))
                                                  (let ((_tl152148152196_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e152150152191_)))
                                                        (_hd152149152194_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e152150152191_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd152149152194_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#quote
                                                               _hd152149152194_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl152148152196_))
                        (let ((_e152153152199_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl152148152196_))))
                          (let ((_tl152151152204_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e152153152199_)))
                                (_hd152152152202_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e152153152199_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl152151152204_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl152145152188_))
                                    (let ((_e152156152207_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl152145152188_))))
                                      (let ((_tl152154152212_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e152156152207_)))
                                            (_hd152155152210_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e152156152207_))))
                                        (___match152706152707_
                                         _e152147152183_
                                         _hd152146152186_
                                         _tl152145152188_
                                         _e152150152191_
                                         _hd152149152194_
                                         _tl152148152196_
                                         _e152153152199_
                                         _hd152152152202_
                                         _tl152151152204_
                                         _e152156152207_
                                         _hd152155152210_
                                         _tl152154152212_)))
                                    (___kont152675152676_))
                                (___kont152675152676_))))
                        (___kont152675152676_))
                    (___kont152675152676_))
                (___kont152675152676_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont152675152676_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g152138152178_))))))))))))))))
    (define gxc#!constructor::optimize-call::specialize
      (lambda (__klass152592 __method-table152593)
        (let ((__id152594
               (let ((__slot152595
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152592 'id))))
                 (if __slot152595
                     __slot152595
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self152098_ _stx152099_ _args152100_)
            (let* ((_klass152102_
                    (let ((__tmp153112
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _self152098_
                              __id152594
                              __klass152592
                              '#f))))
                      (declare (not safe))
                      (gxc#optimizer-resolve-class _stx152099_ __tmp153112)))
                   (_fields152104_
                    (length (##structure-ref
                             _klass152102_
                             '5
                             gxc#!class::t
                             '#f)))
                   (_args152106_ (map gxc#compile-e _args152100_))
                   (_inline-make-object152108_
                    (let ((__tmp153113
                           (let ((__tmp153119
                                  (let ((__tmp153120
                                         (let ()
                                           (declare (not safe))
                                           (cons '##structure '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp153120)))
                                 (__tmp153114
                                  (let ((__tmp153116
                                         (let ((__tmp153117
                                                (let ((__tmp153118
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self152098_
                                                          __id152594
                                                          __klass152592
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp153118 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp153117)))
                                        (__tmp153115
                                         (let ()
                                           (declare (not safe))
                                           (make-list__%
                                            _fields152104_
                                            '(%#quote #f)))))
                                    (declare (not safe))
                                    (cons __tmp153116 __tmp153115))))
                             (declare (not safe))
                             (cons __tmp153119 __tmp153114))))
                      (declare (not safe))
                      (cons '%#call __tmp153113))))
              (let ((_$e152111_
                     (##structure-ref _klass152102_ '6 gxc#!class::t '#f)))
                (if _$e152111_
                    ((lambda (_ctor152114_)
                       (let ((_$obj152116_
                              (let ((__tmp153220 (gensym '__obj)))
                                (declare (not safe))
                                (make-symbol__0 __tmp153220)))
                             (_ctor-impl152117_
                              (let ()
                                (declare (not safe))
                                (gxc#!class-lookup-method
                                 _klass152102_
                                 _ctor152114_))))
                         (let ((__tmp153221
                                (let ((__tmp153222
                                       (let ((__tmp153290
                                              (let ((__tmp153291
                                                     (let ((__tmp153293
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$obj152116_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp153292
                    (let ()
                      (declare (not safe))
                      (cons _inline-make-object152108_ '()))))
               (declare (not safe))
               (cons __tmp153293 __tmp153292))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp153291 '())))
                                             (__tmp153223
                                              (let ((__tmp153224
                                                     (let ((__tmp153225
                                                            (let ((__tmp153229
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _ctor-impl152117_
                               (let ((__tmp153284
                                      (let ((__tmp153288
                                             (let ((__tmp153289
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor-impl152117_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp153289)))
                                            (__tmp153285
                                             (let ((__tmp153286
                                                    (let ((__tmp153287
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$obj152116_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp153287))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153286
                                                     _args152106_))))
                                        (declare (not safe))
                                        (cons __tmp153288 __tmp153285))))
                                 (declare (not safe))
                                 (cons '%#call __tmp153284))
                               (let* ((_$ctor152119_
                                       (let ((__tmp153230
                                              (gensym '__constructor)))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp153230)))
                                      (__tmp153231
                                       (let ((__tmp153266
                                              (let ((__tmp153267
                                                     (let ((__tmp153283
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$ctor152119_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp153268
                    (let ((__tmp153269
                           (let ((__tmp153270
                                  (let ((__tmp153281
                                         (let ((__tmp153282
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'direct-method-ref
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp153282)))
                                        (__tmp153271
                                         (let ((__tmp153278
                                                (let ((__tmp153279
                                                       (let ((__tmp153280
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self152098_
                         __id152594
                         __klass152592
                         '#f))))
                 (declare (not safe))
                 (cons __tmp153280 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp153279)))
                                               (__tmp153272
                                                (let ((__tmp153276
                                                       (let ((__tmp153277
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj152116_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp153277)))
              (__tmp153273
               (let ((__tmp153274
                      (let ((__tmp153275
                             (let ()
                               (declare (not safe))
                               (cons _ctor152114_ '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp153275))))
                 (declare (not safe))
                 (cons __tmp153274 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153276
                                                        __tmp153273))))
                                           (declare (not safe))
                                           (cons __tmp153278 __tmp153272))))
                                    (declare (not safe))
                                    (cons __tmp153281 __tmp153271))))
                             (declare (not safe))
                             (cons '%#call __tmp153270))))
                      (declare (not safe))
                      (cons __tmp153269 '()))))
               (declare (not safe))
               (cons __tmp153283 __tmp153268))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp153267 '())))
                                             (__tmp153232
                                              (let ((__tmp153233
                                                     (let ((__tmp153234
                                                            (let ((__tmp153264
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153265
                                  (let ()
                                    (declare (not safe))
                                    (cons _$ctor152119_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp153265)))
                          (__tmp153235
                           (let ((__tmp153257
                                  (let ((__tmp153258
                                         (let ((__tmp153262
                                                (let ((__tmp153263
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$ctor152119_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp153263)))
                                               (__tmp153259
                                                (let ((__tmp153260
                                                       (let ((__tmp153261
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj152116_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp153261))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153260
                                                        _args152106_))))
                                           (declare (not safe))
                                           (cons __tmp153262 __tmp153259))))
                                    (declare (not safe))
                                    (cons '%#call __tmp153258)))
                                 (__tmp153236
                                  (let ((__tmp153237
                                         (let ((__tmp153238
                                                (let ((__tmp153255
                                                       (let ((__tmp153256
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'error '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp153256)))
              (__tmp153239
               (let ((__tmp153253
                      (let ((__tmp153254
                             (let ()
                               (declare (not safe))
                               (cons '"missing constructor method implementation"
                                     '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp153254)))
                     (__tmp153240
                      (let ((__tmp153251
                             (let ((__tmp153252
                                    (let ()
                                      (declare (not safe))
                                      (cons 'class: '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp153252)))
                            (__tmp153241
                             (let ((__tmp153248
                                    (let ((__tmp153249
                                           (let ((__tmp153250
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self152098_
                                                     __id152594
                                                     __klass152592
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp153250 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp153249)))
                                   (__tmp153242
                                    (let ((__tmp153246
                                           (let ((__tmp153247
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'method: '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp153247)))
                                          (__tmp153243
                                           (let ((__tmp153244
                                                  (let ((__tmp153245
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _ctor152114_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#quote
                                                          __tmp153245))))
                                             (declare (not safe))
                                             (cons __tmp153244 '()))))
                                      (declare (not safe))
                                      (cons __tmp153246 __tmp153243))))
                               (declare (not safe))
                               (cons __tmp153248 __tmp153242))))
                        (declare (not safe))
                        (cons __tmp153251 __tmp153241))))
                 (declare (not safe))
                 (cons __tmp153253 __tmp153240))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153255
                                                        __tmp153239))))
                                           (declare (not safe))
                                           (cons '%#call __tmp153238))))
                                    (declare (not safe))
                                    (cons __tmp153237 '()))))
                             (declare (not safe))
                             (cons __tmp153257 __tmp153236))))
                      (declare (not safe))
                      (cons __tmp153264 __tmp153235))))
               (declare (not safe))
               (cons '%#if __tmp153234))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp153233 '()))))
                                         (declare (not safe))
                                         (cons __tmp153266 __tmp153232))))
                                 (declare (not safe))
                                 (cons '%#let-values __tmp153231))))
                          (__tmp153226
                           (let ((__tmp153227
                                  (let ((__tmp153228
                                         (let ()
                                           (declare (not safe))
                                           (cons _$obj152116_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp153228))))
                             (declare (not safe))
                             (cons __tmp153227 '()))))
                      (declare (not safe))
                      (cons __tmp153229 __tmp153226))))
               (declare (not safe))
               (cons '%#begin __tmp153225))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp153224 '()))))
                                         (declare (not safe))
                                         (cons __tmp153290 __tmp153223))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp153222))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp153221 _stx152099_))))
                     _$e152111_)
                    (let ((_$e152121_
                           (##structure-ref
                            _klass152102_
                            '9
                            gxc#!class::t
                            '#f)))
                      (if _$e152121_
                          ((lambda (_metaclass152124_)
                             (let* ((_$obj152126_
                                     (let ((__tmp153182 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp153182)))
                                    (_metakons152128_
                                     (let ((__tmp153183
                                            (let ()
                                              (declare (not safe))
                                              (gxc#optimizer-resolve-class
                                               _stx152099_
                                               _metaclass152124_))))
                                       (declare (not safe))
                                       (gxc#!class-lookup-method
                                        __tmp153183
                                        'instance-init!))))
                               (let ((__tmp153184
                                      (let ((__tmp153185
                                             (let ((__tmp153216
                                                    (let ((__tmp153217
                                                           (let ((__tmp153219
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj152126_ '())))
                         (__tmp153218
                          (let ()
                            (declare (not safe))
                            (cons _inline-make-object152108_ '()))))
                     (declare (not safe))
                     (cons __tmp153219 __tmp153218))))
              (declare (not safe))
              (cons __tmp153217 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp153186
                                                    (let ((__tmp153187
                                                           (let ((__tmp153188
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp153192
                                 (if _metakons152128_
                                     (let ((__tmp153206
                                            (let ((__tmp153214
                                                   (let ((__tmp153215
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _metakons152128_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153215)))
                                                  (__tmp153207
                                                   (let ((__tmp153211
                                                          (let ((__tmp153212
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp153213
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self152098_
                                   __id152594
                                   __klass152592
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp153213 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp153212)))
                 (__tmp153208
                  (let ((__tmp153209
                         (let ((__tmp153210
                                (let ()
                                  (declare (not safe))
                                  (cons _$obj152126_ '()))))
                           (declare (not safe))
                           (cons '%#ref __tmp153210))))
                    (declare (not safe))
                    (cons __tmp153209 _args152106_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153211
                                                           __tmp153208))))
                                              (declare (not safe))
                                              (cons __tmp153214 __tmp153207))))
                                       (declare (not safe))
                                       (cons '%#call __tmp153206))
                                     (let ((__tmp153193
                                            (let ((__tmp153204
                                                   (let ((__tmp153205
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'call-method
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153205)))
                                                  (__tmp153194
                                                   (let ((__tmp153201
                                                          (let ((__tmp153202
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp153203
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self152098_
                                   __id152594
                                   __klass152592
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp153203 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp153202)))
                 (__tmp153195
                  (let ((__tmp153199
                         (let ((__tmp153200
                                (let ()
                                  (declare (not safe))
                                  (cons 'instance-init! '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp153200)))
                        (__tmp153196
                         (let ((__tmp153197
                                (let ((__tmp153198
                                       (let ()
                                         (declare (not safe))
                                         (cons _$obj152126_ '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp153198))))
                           (declare (not safe))
                           (cons __tmp153197 _args152106_))))
                    (declare (not safe))
                    (cons __tmp153199 __tmp153196))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153201
                                                           __tmp153195))))
                                              (declare (not safe))
                                              (cons __tmp153204 __tmp153194))))
                                       (declare (not safe))
                                       (cons '%#call __tmp153193))))
                                (__tmp153189
                                 (let ((__tmp153190
                                        (let ((__tmp153191
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$obj152126_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp153191))))
                                   (declare (not safe))
                                   (cons __tmp153190 '()))))
                            (declare (not safe))
                            (cons __tmp153192 __tmp153189))))
                     (declare (not safe))
                     (cons '%#begin __tmp153188))))
              (declare (not safe))
              (cons __tmp153187 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153216
                                                     __tmp153186))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp153185))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp153184
                                  _stx152099_))))
                           _$e152121_)
                          (if (##structure-ref
                               _klass152102_
                               '7
                               gxc#!class::t
                               '#f)
                              (if (fx= (length _args152106_) _fields152104_)
                                  (let ((__tmp153174
                                         (let ((__tmp153175
                                                (let ((__tmp153180
                                                       (let ((__tmp153181
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '##structure '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp153181)))
              (__tmp153176
               (let ((__tmp153177
                      (let ((__tmp153178
                             (let ((__tmp153179
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _self152098_
                                       __id152594
                                       __klass152592
                                       '#f))))
                               (declare (not safe))
                               (cons __tmp153179 '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp153178))))
                 (declare (not safe))
                 (cons __tmp153177 _args152106_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153180
                                                        __tmp153176))))
                                           (declare (not safe))
                                           (cons '%#call __tmp153175))))
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp153174
                                     _stx152099_))
                                  (let ((__tmp153173
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _self152098_
                                            __id152594
                                            __klass152592
                                            '#f)))
                                        (__tmp153172
                                         (length (##structure-ref
                                                  _klass152102_
                                                  '5
                                                  gxc#!class::t
                                                  '#f))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"illegal struct constructor application; arity mismatch"
                                     _stx152099_
                                     __tmp153173
                                     __tmp153172)))
                              (let ((_$obj152131_
                                     (let ((__tmp153121 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp153121))))
                                (let _lp152133_ ((_rest152135_ _args152106_)
                                                 (_initializers152136_ '()))
                                  (let* ((___stx152711152712_ _rest152135_)
                                         (_g152140152161_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               ___stx152711152712_)))))
                                    (let ((___kont152713152714_
                                           (lambda (_L152215_
                                                    _L152216_
                                                    _L152217_)
                                             (let* ((_slot152248_
                                                     (keyword->symbol
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L152217_))))
                                                    (_off152250_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass152102_
                                                        _slot152248_))))
                                               (if _off152250_
                                                   (let ((__tmp153123
                                                          (let ((__tmp153124
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _off152250_ _L152216_))))
                    (declare (not safe))
                    (cons __tmp153124 _initializers152136_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp152133_
                                                      _L152215_
                                                      __tmp153123))
                                                   (let ((__tmp153122
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _self152098_
                                                             __id152594
                                                             __klass152592
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"unknown slot"
                                                      _stx152099_
                                                      __tmp153122
                                                      _slot152248_))))))
                                          (___kont152715152716_
                                           (lambda ()
                                             (let ((__tmp153125
                                                    (let ((__tmp153126
                                                           (let ((__tmp153149
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp153150
                                 (let ((__tmp153152
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj152131_ '())))
                                       (__tmp153151
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object152108_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp153152 __tmp153151))))
                            (declare (not safe))
                            (cons __tmp153150 '())))
                         (__tmp153127
                          (let ((__tmp153128
                                 (let ((__tmp153129
                                        (let ((__tmp153146
                                               (let ((__tmp153147
                                                      (let ((__tmp153148
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj152131_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp153148))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp153147 '())))
                                              (__tmp153130
                                               (let ((__tmp153131
                                                      (lambda (_i152175_
                                                               _r152176_)
                                                        (let ((__tmp153132
                                                               (let ((__tmp153133
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp153143
                                     (let ((__tmp153144
                                            (let ((__tmp153145
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self152098_
                                                      __id152594
                                                      __klass152592
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp153145 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp153144)))
                                    (__tmp153134
                                     (let ((__tmp153140
                                            (let ((__tmp153141
                                                   (let ((__tmp153142
                                                          (car _i152175_)))
                                                     (declare (not safe))
                                                     (cons __tmp153142 '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp153141)))
                                           (__tmp153135
                                            (let ((__tmp153138
                                                   (let ((__tmp153139
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj152131_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153139)))
                                                  (__tmp153136
                                                   (let ((__tmp153137
                                                          (cdr _i152175_)))
                                                     (declare (not safe))
                                                     (cons __tmp153137 '()))))
                                              (declare (not safe))
                                              (cons __tmp153138 __tmp153136))))
                                       (declare (not safe))
                                       (cons __tmp153140 __tmp153135))))
                                (declare (not safe))
                                (cons __tmp153143 __tmp153134))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-set! __tmp153133))))
                  (declare (not safe))
                  (cons __tmp153132 _r152176_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl1 __tmp153131
                                                         '()
                                                         _initializers152136_))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp153146
                                                  __tmp153130))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp153129))))
                            (declare (not safe))
                            (cons __tmp153128 '()))))
                     (declare (not safe))
                     (cons __tmp153149 __tmp153127))))
              (declare (not safe))
              (cons '%#let-values __tmp153126))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp153125
                                                _stx152099_))))
                                          (___kont152717152718_
                                           (lambda ()
                                             (let ((__tmp153153
                                                    (let ((__tmp153154
                                                           (let ((__tmp153168
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp153169
                                 (let ((__tmp153171
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj152131_ '())))
                                       (__tmp153170
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object152108_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp153171 __tmp153170))))
                            (declare (not safe))
                            (cons __tmp153169 '())))
                         (__tmp153155
                          (let ((__tmp153156
                                 (let ((__tmp153157
                                        (let ((__tmp153161
                                               (let ((__tmp153162
                                                      (let ((__tmp153166
                                                             (let ((__tmp153167
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'class-instance-init! '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp153167)))
                    (__tmp153163
                     (let ((__tmp153164
                            (let ((__tmp153165
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj152131_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp153165))))
                       (declare (not safe))
                       (cons __tmp153164 _args152106_))))
                (declare (not safe))
                (cons __tmp153166 __tmp153163))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp153162)))
                                              (__tmp153158
                                               (let ((__tmp153159
                                                      (let ((__tmp153160
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj152131_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp153160))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp153159 '()))))
                                          (declare (not safe))
                                          (cons __tmp153161 __tmp153158))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp153157))))
                            (declare (not safe))
                            (cons __tmp153156 '()))))
                     (declare (not safe))
                     (cons __tmp153168 __tmp153155))))
              (declare (not safe))
              (cons '%#let-values __tmp153154))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp153153
                                                _stx152099_)))))
                                      (let* ((_g152138152178_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       ___stx152711152712_))
                                                    (___kont152715152716_)
                                                    (___kont152717152718_))))
                                             (___match152748152749_
                                              (lambda (_e152147152183_
                                                       _hd152146152186_
                                                       _tl152145152188_
                                                       _e152150152191_
                                                       _hd152149152194_
                                                       _tl152148152196_
                                                       _e152153152199_
                                                       _hd152152152202_
                                                       _tl152151152204_
                                                       _e152156152207_
                                                       _hd152155152210_
                                                       _tl152154152212_)
                                                (let ((_L152215_
                                                       _tl152154152212_)
                                                      (_L152216_
                                                       _hd152155152210_)
                                                      (_L152217_
                                                       _hd152152152202_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-keyword?
                                                         _L152217_))
                                                      (___kont152713152714_
                                                       _L152215_
                                                       _L152216_
                                                       _L152217_)
                                                      (___kont152717152718_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               ___stx152711152712_))
                                            (let ((_e152147152183_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      ___stx152711152712_))))
                                              (let ((_tl152145152188_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e152147152183_)))
                                                    (_hd152146152186_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e152147152183_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd152146152186_))
                                                    (let ((_e152150152191_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd152146152186_))))
                                                      (let ((_tl152148152196_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e152150152191_)))
                    (_hd152149152194_
                     (let () (declare (not safe)) (##car _e152150152191_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd152149152194_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd152149152194_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl152148152196_))
                            (let ((_e152153152199_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl152148152196_))))
                              (let ((_tl152151152204_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e152153152199_)))
                                    (_hd152152152202_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e152153152199_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl152151152204_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl152145152188_))
                                        (let ((_e152156152207_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl152145152188_))))
                                          (let ((_tl152154152212_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e152156152207_)))
                                                (_hd152155152210_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e152156152207_))))
                                            (___match152748152749_
                                             _e152147152183_
                                             _hd152146152186_
                                             _tl152145152188_
                                             _e152150152191_
                                             _hd152149152194_
                                             _tl152148152196_
                                             _e152153152199_
                                             _hd152152152202_
                                             _tl152151152204_
                                             _e152156152207_
                                             _hd152155152210_
                                             _tl152154152212_)))
                                        (___kont152717152718_))
                                    (___kont152717152718_))))
                            (___kont152717152718_))
                        (___kont152717152718_))
                    (___kont152717152718_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont152717152718_))))
                                            (let ()
                                              (declare (not safe))
                                              (_g152138152178_))))))))))))))))))
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
      (lambda (_self151921_ _stx151922_ _args151923_)
        (let* ((_g151925151935_
                (lambda (_g151926151932_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g151926151932_))))
               (_g151924151973_
                (lambda (_g151926151938_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g151926151938_))
                      (let ((_e151930151940_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g151926151938_))))
                        (let ((_hd151929151943_
                               (let ()
                                 (declare (not safe))
                                 (##car _e151930151940_)))
                              (_tl151928151945_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e151930151940_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl151928151945_))
                              ((lambda (_L151948_)
                                 (let* ((_klass151959_
                                         (let ((__tmp153294
                                                (##structure-ref
                                                 _self151921_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx151922_
                                            __tmp153294)))
                                        (_field151961_
                                         (let ((__tmp153295
                                                (##structure-ref
                                                 _self151921_
                                                 '2
                                                 gxc#!accessor::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _klass151959_
                                            __tmp153295)))
                                        (_object151963_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L151948_))))
                                   (if (##structure-ref
                                        _klass151959_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp153372
                                              (let ((__tmp153381
                                                     (if (##structure-ref
                                                          _self151921_
                                                          '3
                                                          gxc#!accessor::t
                                                          '#f)
                                                         '%#struct-direct-ref
                                                         '%#struct-unchecked-ref))
                                                    (__tmp153373
                                                     (let ((__tmp153378
                                                            (let ((__tmp153379
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153380
                                  (##structure-ref
                                   _self151921_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp153380 '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp153379)))
                   (__tmp153374
                    (let ((__tmp153376
                           (let ((__tmp153377
                                  (let ()
                                    (declare (not safe))
                                    (cons _field151961_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp153377)))
                          (__tmp153375
                           (let ()
                             (declare (not safe))
                             (cons _object151963_ '()))))
                      (declare (not safe))
                      (cons __tmp153376 __tmp153375))))
               (declare (not safe))
               (cons __tmp153378 __tmp153374))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp153381
                                                      __tmp153373))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp153372
                                          _stx151922_))
                                       (if (##structure-ref
                                            _klass151959_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp153362
                                                  (let ((__tmp153371
                                                         (if (##structure-ref
                                                              _self151921_
                                                              '3
                                                              gxc#!accessor::t
                                                              '#f)
                                                             '%#struct-ref
                                                             '%#struct-unchecked-ref))
                                                        (__tmp153363
                                                         (let ((__tmp153368
                                                                (let ((__tmp153369
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp153370
                                      (##structure-ref
                                       _self151921_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp153370 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp153369)))
                       (__tmp153364
                        (let ((__tmp153366
                               (let ((__tmp153367
                                      (let ()
                                        (declare (not safe))
                                        (cons _field151961_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp153367)))
                              (__tmp153365
                               (let ()
                                 (declare (not safe))
                                 (cons _object151963_ '()))))
                          (declare (not safe))
                          (cons __tmp153366 __tmp153365))))
                   (declare (not safe))
                   (cons __tmp153368 __tmp153364))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp153371
                                                          __tmp153363))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp153362
                                              _stx151922_))
                                           (let ((_$e151966_
                                                  (let ((__tmp153296
                                                         (##structure-ref
                                                          _self151921_
                                                          '2
                                                          gxc#!accessor::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _klass151959_
                                                     __tmp153296))))
                                             (if _$e151966_
                                                 ((lambda (_klass151969_)
                                                    (let ((__tmp153352
                                                           (let ((__tmp153361
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##structure-ref
                               _self151921_
                               '3
                               gxc#!accessor::t
                               '#f)
                              '%#struct-ref
                              '%#struct-unchecked-ref))
                         (__tmp153353
                          (let ((__tmp153358
                                 (let ((__tmp153359
                                        (let ((__tmp153360
                                               (##structure-ref
                                                _self151921_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp153360 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp153359)))
                                (__tmp153354
                                 (let ((__tmp153356
                                        (let ((__tmp153357
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _field151961_ '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp153357)))
                                       (__tmp153355
                                        (let ()
                                          (declare (not safe))
                                          (cons _object151963_ '()))))
                                   (declare (not safe))
                                   (cons __tmp153356 __tmp153355))))
                            (declare (not safe))
                            (cons __tmp153358 __tmp153354))))
                     (declare (not safe))
                     (cons __tmp153361 __tmp153353))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp153352 _stx151922_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e151966_)
                                                 (if (##structure-ref
                                                      _self151921_
                                                      '3
                                                      gxc#!accessor::t
                                                      '#f)
                                                     (let ((__tmp153306
                                                            (let* ((_$obj151971_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp153307 (gensym '__obj)))
                              (declare (not safe))
                              (make-symbol__0 __tmp153307)))
                           (__tmp153308
                            (let ((__tmp153348
                                   (let ((__tmp153349
                                          (let ((__tmp153351
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _$obj151971_ '())))
                                                (__tmp153350
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _object151963_ '()))))
                                            (declare (not safe))
                                            (cons __tmp153351 __tmp153350))))
                                     (declare (not safe))
                                     (cons __tmp153349 '())))
                                  (__tmp153309
                                   (let ((__tmp153310
                                          (let ((__tmp153311
                                                 (let ((__tmp153340
                                                        (let ((__tmp153341
                                                               (let ((__tmp153345
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp153346
                                     (let ((__tmp153347
                                            (##structure-ref
                                             _klass151959_
                                             '1
                                             gxc#!type::t
                                             '#f)))
                                       (declare (not safe))
                                       (cons __tmp153347 '()))))
                                (declare (not safe))
                                (cons '%#quote __tmp153346)))
                             (__tmp153342
                              (let ((__tmp153343
                                     (let ((__tmp153344
                                            (let ()
                                              (declare (not safe))
                                              (cons _$obj151971_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp153344))))
                                (declare (not safe))
                                (cons __tmp153343 '()))))
                         (declare (not safe))
                         (cons __tmp153345 __tmp153342))))
                  (declare (not safe))
                  (cons '%#struct-direct-instance? __tmp153341)))
               (__tmp153312
                (let ((__tmp153329
                       (let ((__tmp153330
                              (let ((__tmp153337
                                     (let ((__tmp153338
                                            (let ((__tmp153339
                                                   (##structure-ref
                                                    _self151921_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp153339 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp153338)))
                                    (__tmp153331
                                     (let ((__tmp153335
                                            (let ((__tmp153336
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field151961_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp153336)))
                                           (__tmp153332
                                            (let ((__tmp153333
                                                   (let ((__tmp153334
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj151971_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153334))))
                                              (declare (not safe))
                                              (cons __tmp153333 '()))))
                                       (declare (not safe))
                                       (cons __tmp153335 __tmp153332))))
                                (declare (not safe))
                                (cons __tmp153337 __tmp153331))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp153330)))
                      (__tmp153313
                       (let ((__tmp153314
                              (let ((__tmp153315
                                     (let ((__tmp153327
                                            (let ((__tmp153328
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'class-slot-ref
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp153328)))
                                           (__tmp153316
                                            (let ((__tmp153324
                                                   (let ((__tmp153325
                                                          (let ((__tmp153326
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref _self151921_ '1 gxc#!type::t '#f)))
                    (declare (not safe))
                    (cons __tmp153326 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153325)))
                                                  (__tmp153317
                                                   (let ((__tmp153322
                                                          (let ((__tmp153323
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj151971_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp153323)))
                 (__tmp153318
                  (let ((__tmp153319
                         (let ((__tmp153320
                                (let ((__tmp153321
                                       (##structure-ref
                                        _self151921_
                                        '2
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (cons __tmp153321 '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp153320))))
                    (declare (not safe))
                    (cons __tmp153319 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153322
                                                           __tmp153318))))
                                              (declare (not safe))
                                              (cons __tmp153324 __tmp153317))))
                                       (declare (not safe))
                                       (cons __tmp153327 __tmp153316))))
                                (declare (not safe))
                                (cons '%#call __tmp153315))))
                         (declare (not safe))
                         (cons __tmp153314 '()))))
                  (declare (not safe))
                  (cons __tmp153329 __tmp153313))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153340
                                                         __tmp153312))))
                                            (declare (not safe))
                                            (cons '%#if __tmp153311))))
                                     (declare (not safe))
                                     (cons __tmp153310 '()))))
                              (declare (not safe))
                              (cons __tmp153348 __tmp153309))))
                      (declare (not safe))
                      (cons '%#let-values __tmp153308))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp153306 _stx151922_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp153297
                                                            (let ((__tmp153298
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153304
                                  (let ((__tmp153305
                                         (let ()
                                           (declare (not safe))
                                           (cons 'unchecked-slot-ref '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp153305)))
                                 (__tmp153299
                                  (let ((__tmp153300
                                         (let ((__tmp153301
                                                (let ((__tmp153302
                                                       (let ((__tmp153303
                                                              (##structure-ref
                                                               _self151921_
                                                               '2
                                                               gxc#!accessor::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp153303
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote
                                                        __tmp153302))))
                                           (declare (not safe))
                                           (cons __tmp153301 '()))))
                                    (declare (not safe))
                                    (cons _object151963_ __tmp153300))))
                             (declare (not safe))
                             (cons __tmp153304 __tmp153299))))
                      (declare (not safe))
                      (cons '%#call __tmp153298))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp153297 _stx151922_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _hd151929151943_)
                              (let ()
                                (declare (not safe))
                                (_g151925151935_ _g151926151938_)))))
                      (let ()
                        (declare (not safe))
                        (_g151925151935_ _g151926151938_))))))
          (declare (not safe))
          (_g151924151973_ _args151923_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass152596 __method-table152597)
        (let ((__id152598
               (let ((__slot152601
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152596 'id))))
                 (if __slot152601
                     __slot152601
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__slot152599
               (let ((__slot152602
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152596 'slot))))
                 (if __slot152602
                     __slot152602
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__checked?152600
               (let ((__slot152603
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152596 'checked?))))
                 (if __slot152603
                     __slot152603
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?))))))
          (lambda (_self151921_ _stx151922_ _args151923_)
            (let* ((_g151925151935_
                    (lambda (_g151926151932_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g151926151932_))))
                   (_g151924151973_
                    (lambda (_g151926151938_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g151926151938_))
                          (let ((_e151930151940_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g151926151938_))))
                            (let ((_hd151929151943_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e151930151940_)))
                                  (_tl151928151945_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e151930151940_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl151928151945_))
                                  ((lambda (_L151948_)
                                     (let* ((_klass151959_
                                             (let ((__tmp153382
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self151921_
                                                       __id152598
                                                       __klass152596
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx151922_
                                                __tmp153382)))
                                            (_field151961_
                                             (let ((__tmp153383
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self151921_
                                                       __slot152599
                                                       __klass152596
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _klass151959_
                                                __tmp153383)))
                                            (_object151963_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L151948_))))
                                       (if (##structure-ref
                                            _klass151959_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp153460
                                                  (let ((__tmp153469
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self151921_
                        __checked?152600
                        __klass152596
                        '#f))
                     '%#struct-direct-ref
                     '%#struct-unchecked-ref))
                (__tmp153461
                 (let ((__tmp153466
                        (let ((__tmp153467
                               (let ((__tmp153468
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _self151921_
                                         __id152598
                                         __klass152596
                                         '#f))))
                                 (declare (not safe))
                                 (cons __tmp153468 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp153467)))
                       (__tmp153462
                        (let ((__tmp153464
                               (let ((__tmp153465
                                      (let ()
                                        (declare (not safe))
                                        (cons _field151961_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp153465)))
                              (__tmp153463
                               (let ()
                                 (declare (not safe))
                                 (cons _object151963_ '()))))
                          (declare (not safe))
                          (cons __tmp153464 __tmp153463))))
                   (declare (not safe))
                   (cons __tmp153466 __tmp153462))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp153469
                                                          __tmp153461))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp153460
                                              _stx151922_))
                                           (if (##structure-ref
                                                _klass151959_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp153450
                                                      (let ((__tmp153459
                                                             (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self151921_
                            __checked?152600
                            __klass152596
                            '#f))
                         '%#struct-ref
                         '%#struct-unchecked-ref))
                    (__tmp153451
                     (let ((__tmp153456
                            (let ((__tmp153457
                                   (let ((__tmp153458
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self151921_
                                             __id152598
                                             __klass152596
                                             '#f))))
                                     (declare (not safe))
                                     (cons __tmp153458 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp153457)))
                           (__tmp153452
                            (let ((__tmp153454
                                   (let ((__tmp153455
                                          (let ()
                                            (declare (not safe))
                                            (cons _field151961_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp153455)))
                                  (__tmp153453
                                   (let ()
                                     (declare (not safe))
                                     (cons _object151963_ '()))))
                              (declare (not safe))
                              (cons __tmp153454 __tmp153453))))
                       (declare (not safe))
                       (cons __tmp153456 __tmp153452))))
                (declare (not safe))
                (cons __tmp153459 __tmp153451))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp153450
                                                  _stx151922_))
                                               (let ((_$e151966_
                                                      (let ((__tmp153384
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self151921_
                        __slot152599
                        __klass152596
                        '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _klass151959_ __tmp153384))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e151966_
                                                     ((lambda (_klass151969_)
                                                        (let ((__tmp153440
                                                               (let ((__tmp153449
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self151921_
                                     __checked?152600
                                     __klass152596
                                     '#f))
                                  '%#struct-ref
                                  '%#struct-unchecked-ref))
                             (__tmp153441
                              (let ((__tmp153446
                                     (let ((__tmp153447
                                            (let ((__tmp153448
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self151921_
                                                      __id152598
                                                      __klass152596
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp153448 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp153447)))
                                    (__tmp153442
                                     (let ((__tmp153444
                                            (let ((__tmp153445
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field151961_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp153445)))
                                           (__tmp153443
                                            (let ()
                                              (declare (not safe))
                                              (cons _object151963_ '()))))
                                       (declare (not safe))
                                       (cons __tmp153444 __tmp153443))))
                                (declare (not safe))
                                (cons __tmp153446 __tmp153442))))
                         (declare (not safe))
                         (cons __tmp153449 __tmp153441))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp153440 _stx151922_)))
              _$e151966_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _self151921_
                                                            __checked?152600
                                                            __klass152596
                                                            '#f))
                                                         (let ((__tmp153394
                                                                (let* ((_$obj151971_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp153395 (gensym '__obj)))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp153395)))
                               (__tmp153396
                                (let ((__tmp153436
                                       (let ((__tmp153437
                                              (let ((__tmp153439
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _$obj151971_
                                                             '())))
                                                    (__tmp153438
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _object151963_
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp153439
                                                      __tmp153438))))
                                         (declare (not safe))
                                         (cons __tmp153437 '())))
                                      (__tmp153397
                                       (let ((__tmp153398
                                              (let ((__tmp153399
                                                     (let ((__tmp153428
                                                            (let ((__tmp153429
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153433
                                  (let ((__tmp153434
                                         (let ((__tmp153435
                                                (##structure-ref
                                                 _klass151959_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp153435 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp153434)))
                                 (__tmp153430
                                  (let ((__tmp153431
                                         (let ((__tmp153432
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj151971_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp153432))))
                                    (declare (not safe))
                                    (cons __tmp153431 '()))))
                             (declare (not safe))
                             (cons __tmp153433 __tmp153430))))
                      (declare (not safe))
                      (cons '%#struct-direct-instance? __tmp153429)))
                   (__tmp153400
                    (let ((__tmp153417
                           (let ((__tmp153418
                                  (let ((__tmp153425
                                         (let ((__tmp153426
                                                (let ((__tmp153427
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self151921_
                                                          __id152598
                                                          __klass152596
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp153427 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp153426)))
                                        (__tmp153419
                                         (let ((__tmp153423
                                                (let ((__tmp153424
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field151961_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp153424)))
                                               (__tmp153420
                                                (let ((__tmp153421
                                                       (let ((__tmp153422
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj151971_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp153422))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153421 '()))))
                                           (declare (not safe))
                                           (cons __tmp153423 __tmp153420))))
                                    (declare (not safe))
                                    (cons __tmp153425 __tmp153419))))
                             (declare (not safe))
                             (cons '%#struct-unchecked-ref __tmp153418)))
                          (__tmp153401
                           (let ((__tmp153402
                                  (let ((__tmp153403
                                         (let ((__tmp153415
                                                (let ((__tmp153416
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-slot-ref
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp153416)))
                                               (__tmp153404
                                                (let ((__tmp153412
                                                       (let ((__tmp153413
                                                              (let ((__tmp153414
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self151921_
                                __id152598
                                __klass152596
                                '#f))))
                        (declare (not safe))
                        (cons __tmp153414 '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp153413)))
              (__tmp153405
               (let ((__tmp153410
                      (let ((__tmp153411
                             (let ()
                               (declare (not safe))
                               (cons _$obj151971_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp153411)))
                     (__tmp153406
                      (let ((__tmp153407
                             (let ((__tmp153408
                                    (let ((__tmp153409
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _self151921_
                                              __slot152599
                                              __klass152596
                                              '#f))))
                                      (declare (not safe))
                                      (cons __tmp153409 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp153408))))
                        (declare (not safe))
                        (cons __tmp153407 '()))))
                 (declare (not safe))
                 (cons __tmp153410 __tmp153406))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153412
                                                        __tmp153405))))
                                           (declare (not safe))
                                           (cons __tmp153415 __tmp153404))))
                                    (declare (not safe))
                                    (cons '%#call __tmp153403))))
                             (declare (not safe))
                             (cons __tmp153402 '()))))
                      (declare (not safe))
                      (cons __tmp153417 __tmp153401))))
               (declare (not safe))
               (cons __tmp153428 __tmp153400))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#if __tmp153399))))
                                         (declare (not safe))
                                         (cons __tmp153398 '()))))
                                  (declare (not safe))
                                  (cons __tmp153436 __tmp153397))))
                          (declare (not safe))
                          (cons '%#let-values __tmp153396))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp153394 _stx151922_))
                 (let ((__tmp153385
                        (let ((__tmp153386
                               (let ((__tmp153392
                                      (let ((__tmp153393
                                             (let ()
                                               (declare (not safe))
                                               (cons 'unchecked-slot-ref
                                                     '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp153393)))
                                     (__tmp153387
                                      (let ((__tmp153388
                                             (let ((__tmp153389
                                                    (let ((__tmp153390
                                                           (let ((__tmp153391
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _self151921_
                             __slot152599
                             __klass152596
                             '#f))))
                     (declare (not safe))
                     (cons __tmp153391 '()))))
              (declare (not safe))
              (cons '%#quote __tmp153390))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153389 '()))))
                                        (declare (not safe))
                                        (cons _object151963_ __tmp153388))))
                                 (declare (not safe))
                                 (cons __tmp153392 __tmp153387))))
                          (declare (not safe))
                          (cons '%#call __tmp153386))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp153385 _stx151922_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd151929151943_)
                                  (let ()
                                    (declare (not safe))
                                    (_g151925151935_ _g151926151938_)))))
                          (let ()
                            (declare (not safe))
                            (_g151925151935_ _g151926151938_))))))
              (declare (not safe))
              (_g151924151973_ _args151923_))))))
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
      (lambda (_self151726_ _stx151727_ _args151728_)
        (let* ((_g151730151744_
                (lambda (_g151731151741_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g151731151741_))))
               (_g151729151796_
                (lambda (_g151731151747_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g151731151747_))
                      (let ((_e151736151749_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g151731151747_))))
                        (let ((_hd151735151752_
                               (let ()
                                 (declare (not safe))
                                 (##car _e151736151749_)))
                              (_tl151734151754_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e151736151749_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl151734151754_))
                              (let ((_e151739151757_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl151734151754_))))
                                (let ((_hd151738151760_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e151739151757_)))
                                      (_tl151737151762_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e151739151757_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl151737151762_))
                                      ((lambda (_L151765_ _L151766_)
                                         (let* ((_klass151780_
                                                 (let ((__tmp153470
                                                        (##structure-ref
                                                         _self151726_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _stx151727_
                                                    __tmp153470)))
                                                (_field151782_
                                                 (let ((__tmp153471
                                                        (##structure-ref
                                                         _self151726_
                                                         '2
                                                         gxc#!mutator::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass151780_
                                                    __tmp153471)))
                                                (_object151784_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L151766_)))
                                                (_value151786_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L151765_))))
                                           (if (##structure-ref
                                                _klass151780_
                                                '8
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp153553
                                                      (let ((__tmp153563
                                                             (if (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _self151726_
                          '3
                          gxc#!mutator::t
                          '#f)
                         '%#struct-direct-set!
                         '%#struct-unchecked-set!))
                    (__tmp153554
                     (let ((__tmp153560
                            (let ((__tmp153561
                                   (let ((__tmp153562
                                          (##structure-ref
                                           _self151726_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp153562 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp153561)))
                           (__tmp153555
                            (let ((__tmp153558
                                   (let ((__tmp153559
                                          (let ()
                                            (declare (not safe))
                                            (cons _field151782_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp153559)))
                                  (__tmp153556
                                   (let ((__tmp153557
                                          (let ()
                                            (declare (not safe))
                                            (cons _value151786_ '()))))
                                     (declare (not safe))
                                     (cons _object151784_ __tmp153557))))
                              (declare (not safe))
                              (cons __tmp153558 __tmp153556))))
                       (declare (not safe))
                       (cons __tmp153560 __tmp153555))))
                (declare (not safe))
                (cons __tmp153563 __tmp153554))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp153553
                                                  _stx151727_))
                                               (if (##structure-ref
                                                    _klass151780_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp153542
                                                          (let ((__tmp153552
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##structure-ref
                              _self151726_
                              '3
                              gxc#!mutator::t
                              '#f)
                             '%#struct-set!
                             '%#struct-unchecked-set!))
                        (__tmp153543
                         (let ((__tmp153549
                                (let ((__tmp153550
                                       (let ((__tmp153551
                                              (##structure-ref
                                               _self151726_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp153551 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp153550)))
                               (__tmp153544
                                (let ((__tmp153547
                                       (let ((__tmp153548
                                              (let ()
                                                (declare (not safe))
                                                (cons _field151782_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp153548)))
                                      (__tmp153545
                                       (let ((__tmp153546
                                              (let ()
                                                (declare (not safe))
                                                (cons _value151786_ '()))))
                                         (declare (not safe))
                                         (cons _object151784_ __tmp153546))))
                                  (declare (not safe))
                                  (cons __tmp153547 __tmp153545))))
                           (declare (not safe))
                           (cons __tmp153549 __tmp153544))))
                    (declare (not safe))
                    (cons __tmp153552 __tmp153543))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp153542
                                                      _stx151727_))
                                                   (let ((_$e151789_
                                                          (let ((__tmp153472
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref
                          _self151726_
                          '2
                          gxc#!mutator::t
                          '#f)))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct _klass151780_ __tmp153472))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e151789_
                                                         ((lambda (_klass151792_)
                                                            (let ((__tmp153531
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153541
                                  (if (##structure-ref
                                       _self151726_
                                       '3
                                       gxc#!mutator::t
                                       '#f)
                                      '%#struct-set!
                                      '%#struct-unchecked-set!))
                                 (__tmp153532
                                  (let ((__tmp153538
                                         (let ((__tmp153539
                                                (let ((__tmp153540
                                                       (##structure-ref
                                                        _self151726_
                                                        '1
                                                        gxc#!type::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp153540 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp153539)))
                                        (__tmp153533
                                         (let ((__tmp153536
                                                (let ((__tmp153537
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field151782_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp153537)))
                                               (__tmp153534
                                                (let ((__tmp153535
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _value151786_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons _object151784_
                                                        __tmp153535))))
                                           (declare (not safe))
                                           (cons __tmp153536 __tmp153534))))
                                    (declare (not safe))
                                    (cons __tmp153538 __tmp153533))))
                             (declare (not safe))
                             (cons __tmp153541 __tmp153532))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp153531 _stx151727_)))
                  _$e151789_)
                 (if (##structure-ref _self151726_ '3 gxc#!mutator::t '#f)
                     (let ((__tmp153483
                            (let* ((_$obj151794_
                                    (let ((__tmp153484 (gensym '__obj)))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp153484)))
                                   (__tmp153485
                                    (let ((__tmp153527
                                           (let ((__tmp153528
                                                  (let ((__tmp153530
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj151794_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp153529
                 (let () (declare (not safe)) (cons _object151784_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp153530
                                                          __tmp153529))))
                                             (declare (not safe))
                                             (cons __tmp153528 '())))
                                          (__tmp153486
                                           (let ((__tmp153487
                                                  (let ((__tmp153488
                                                         (let ((__tmp153519
                                                                (let ((__tmp153520
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp153524
                                      (let ((__tmp153525
                                             (let ((__tmp153526
                                                    (##structure-ref
                                                     _klass151780_
                                                     '1
                                                     gxc#!type::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp153526 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp153525)))
                                     (__tmp153521
                                      (let ((__tmp153522
                                             (let ((__tmp153523
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj151794_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp153523))))
                                        (declare (not safe))
                                        (cons __tmp153522 '()))))
                                 (declare (not safe))
                                 (cons __tmp153524 __tmp153521))))
                          (declare (not safe))
                          (cons '%#struct-direct-instance? __tmp153520)))
                       (__tmp153489
                        (let ((__tmp153507
                               (let ((__tmp153508
                                      (let ((__tmp153516
                                             (let ((__tmp153517
                                                    (let ((__tmp153518
                                                           (##structure-ref
                                                            _self151726_
                                                            '1
                                                            gxc#!type::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (cons __tmp153518 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp153517)))
                                            (__tmp153509
                                             (let ((__tmp153514
                                                    (let ((__tmp153515
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field151782_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp153515)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp153510
                                                    (let ((__tmp153512
                                                           (let ((__tmp153513
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj151794_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp153513)))
                  (__tmp153511
                   (let () (declare (not safe)) (cons _value151786_ '()))))
              (declare (not safe))
              (cons __tmp153512 __tmp153511))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153514
                                                     __tmp153510))))
                                        (declare (not safe))
                                        (cons __tmp153516 __tmp153509))))
                                 (declare (not safe))
                                 (cons '%#struct-unchecked-set! __tmp153508)))
                              (__tmp153490
                               (let ((__tmp153491
                                      (let ((__tmp153492
                                             (let ((__tmp153505
                                                    (let ((__tmp153506
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp153506)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp153493
                                                    (let ((__tmp153502
                                                           (let ((__tmp153503
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp153504
                                 (##structure-ref
                                  _self151726_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (cons __tmp153504 '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp153503)))
                  (__tmp153494
                   (let ((__tmp153500
                          (let ((__tmp153501
                                 (let ()
                                   (declare (not safe))
                                   (cons _$obj151794_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp153501)))
                         (__tmp153495
                          (let ((__tmp153497
                                 (let ((__tmp153498
                                        (let ((__tmp153499
                                               (##structure-ref
                                                _self151726_
                                                '2
                                                gxc#!mutator::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp153499 '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp153498)))
                                (__tmp153496
                                 (let ()
                                   (declare (not safe))
                                   (cons _value151786_ '()))))
                            (declare (not safe))
                            (cons __tmp153497 __tmp153496))))
                     (declare (not safe))
                     (cons __tmp153500 __tmp153495))))
              (declare (not safe))
              (cons __tmp153502 __tmp153494))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153505
                                                     __tmp153493))))
                                        (declare (not safe))
                                        (cons '%#call __tmp153492))))
                                 (declare (not safe))
                                 (cons __tmp153491 '()))))
                          (declare (not safe))
                          (cons __tmp153507 __tmp153490))))
                   (declare (not safe))
                   (cons __tmp153519 __tmp153489))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#if __tmp153488))))
                                             (declare (not safe))
                                             (cons __tmp153487 '()))))
                                      (declare (not safe))
                                      (cons __tmp153527 __tmp153486))))
                              (declare (not safe))
                              (cons '%#let-values __tmp153485))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp153483 _stx151727_))
                     (let ((__tmp153473
                            (let ((__tmp153474
                                   (let ((__tmp153481
                                          (let ((__tmp153482
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'unchecked-slot-set!
                                                         '()))))
                                            (declare (not safe))
                                            (cons '%#ref __tmp153482)))
                                         (__tmp153475
                                          (let ((__tmp153476
                                                 (let ((__tmp153478
                                                        (let ((__tmp153479
                                                               (let ((__tmp153480
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##structure-ref
                               _self151726_
                               '2
                               gxc#!mutator::t
                               '#f)))
                         (declare (not safe))
                         (cons __tmp153480 '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp153479)))
               (__tmp153477
                (let () (declare (not safe)) (cons _value151786_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153478
                                                         __tmp153477))))
                                            (declare (not safe))
                                            (cons _object151784_
                                                  __tmp153476))))
                                     (declare (not safe))
                                     (cons __tmp153481 __tmp153475))))
                              (declare (not safe))
                              (cons '%#call __tmp153474))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp153473 _stx151727_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd151738151760_
                                       _hd151735151752_)
                                      (let ()
                                        (declare (not safe))
                                        (_g151730151744_ _g151731151747_)))))
                              (let ()
                                (declare (not safe))
                                (_g151730151744_ _g151731151747_)))))
                      (let ()
                        (declare (not safe))
                        (_g151730151744_ _g151731151747_))))))
          (declare (not safe))
          (_g151729151796_ _args151728_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass152604 __method-table152605)
        (let ((__checked?152606
               (let ((__slot152609
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152604 'checked?))))
                 (if __slot152609
                     __slot152609
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__id152607
               (let ((__slot152610
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152604 'id))))
                 (if __slot152610
                     __slot152610
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__slot152608
               (let ((__slot152611
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152604 'slot))))
                 (if __slot152611
                     __slot152611
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_self151726_ _stx151727_ _args151728_)
            (let* ((_g151730151744_
                    (lambda (_g151731151741_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g151731151741_))))
                   (_g151729151796_
                    (lambda (_g151731151747_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g151731151747_))
                          (let ((_e151736151749_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g151731151747_))))
                            (let ((_hd151735151752_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e151736151749_)))
                                  (_tl151734151754_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e151736151749_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl151734151754_))
                                  (let ((_e151739151757_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl151734151754_))))
                                    (let ((_hd151738151760_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e151739151757_)))
                                          (_tl151737151762_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e151739151757_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl151737151762_))
                                          ((lambda (_L151765_ _L151766_)
                                             (let* ((_klass151780_
                                                     (let ((__tmp153564
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self151726_
                                                               __id152607
                                                               __klass152604
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _stx151727_
                                                        __tmp153564)))
                                                    (_field151782_
                                                     (let ((__tmp153565
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self151726_
                                                               __slot152608
                                                               __klass152604
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass151780_
                                                        __tmp153565)))
                                                    (_object151784_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L151766_)))
                                                    (_value151786_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L151765_))))
                                               (if (##structure-ref
                                                    _klass151780_
                                                    '8
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp153647
                                                          (let ((__tmp153657
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self151726_
                                __checked?152606
                                __klass152604
                                '#f))
                             '%#struct-direct-set!
                             '%#struct-unchecked-set!))
                        (__tmp153648
                         (let ((__tmp153654
                                (let ((__tmp153655
                                       (let ((__tmp153656
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _self151726_
                                                 __id152607
                                                 __klass152604
                                                 '#f))))
                                         (declare (not safe))
                                         (cons __tmp153656 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp153655)))
                               (__tmp153649
                                (let ((__tmp153652
                                       (let ((__tmp153653
                                              (let ()
                                                (declare (not safe))
                                                (cons _field151782_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp153653)))
                                      (__tmp153650
                                       (let ((__tmp153651
                                              (let ()
                                                (declare (not safe))
                                                (cons _value151786_ '()))))
                                         (declare (not safe))
                                         (cons _object151784_ __tmp153651))))
                                  (declare (not safe))
                                  (cons __tmp153652 __tmp153650))))
                           (declare (not safe))
                           (cons __tmp153654 __tmp153649))))
                    (declare (not safe))
                    (cons __tmp153657 __tmp153648))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp153647
                                                      _stx151727_))
                                                   (if (##structure-ref
                                                        _klass151780_
                                                        '7
                                                        gxc#!class::t
                                                        '#f)
                                                       (let ((__tmp153636
                                                              (let ((__tmp153646
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _self151726_
                                    __checked?152606
                                    __klass152604
                                    '#f))
                                 '%#struct-set!
                                 '%#struct-unchecked-set!))
                            (__tmp153637
                             (let ((__tmp153643
                                    (let ((__tmp153644
                                           (let ((__tmp153645
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self151726_
                                                     __id152607
                                                     __klass152604
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp153645 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp153644)))
                                   (__tmp153638
                                    (let ((__tmp153641
                                           (let ((__tmp153642
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _field151782_ '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp153642)))
                                          (__tmp153639
                                           (let ((__tmp153640
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _value151786_ '()))))
                                             (declare (not safe))
                                             (cons _object151784_
                                                   __tmp153640))))
                                      (declare (not safe))
                                      (cons __tmp153641 __tmp153639))))
                               (declare (not safe))
                               (cons __tmp153643 __tmp153638))))
                        (declare (not safe))
                        (cons __tmp153646 __tmp153637))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp153636 _stx151727_))
               (let ((_$e151789_
                      (let ((__tmp153566
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self151726_
                                __slot152608
                                __klass152604
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _klass151780_
                         __tmp153566))))
                 (if _$e151789_
                     ((lambda (_klass151792_)
                        (let ((__tmp153625
                               (let ((__tmp153635
                                      (if (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self151726_
                                             __checked?152606
                                             __klass152604
                                             '#f))
                                          '%#struct-set!
                                          '%#struct-unchecked-set!))
                                     (__tmp153626
                                      (let ((__tmp153632
                                             (let ((__tmp153633
                                                    (let ((__tmp153634
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _self151726_
                                                              __id152607
                                                              __klass152604
                                                              '#f))))
                                                      (declare (not safe))
                                                      (cons __tmp153634 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp153633)))
                                            (__tmp153627
                                             (let ((__tmp153630
                                                    (let ((__tmp153631
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field151782_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp153631)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp153628
                                                    (let ((__tmp153629
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _value151786_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _object151784_ __tmp153629))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153630
                                                     __tmp153628))))
                                        (declare (not safe))
                                        (cons __tmp153632 __tmp153627))))
                                 (declare (not safe))
                                 (cons __tmp153635 __tmp153626))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp153625 _stx151727_)))
                      _$e151789_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self151726_
                            __checked?152606
                            __klass152604
                            '#f))
                         (let ((__tmp153577
                                (let* ((_$obj151794_
                                        (let ((__tmp153578 (gensym '__obj)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp153578)))
                                       (__tmp153579
                                        (let ((__tmp153621
                                               (let ((__tmp153622
                                                      (let ((__tmp153624
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj151794_ '())))
                    (__tmp153623
                     (let () (declare (not safe)) (cons _object151784_ '()))))
                (declare (not safe))
                (cons __tmp153624 __tmp153623))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp153622 '())))
                                              (__tmp153580
                                               (let ((__tmp153581
                                                      (let ((__tmp153582
                                                             (let ((__tmp153613
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp153614
                                   (let ((__tmp153618
                                          (let ((__tmp153619
                                                 (let ((__tmp153620
                                                        (##structure-ref
                                                         _klass151780_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp153620 '()))))
                                            (declare (not safe))
                                            (cons '%#quote __tmp153619)))
                                         (__tmp153615
                                          (let ((__tmp153616
                                                 (let ((__tmp153617
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj151794_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp153617))))
                                            (declare (not safe))
                                            (cons __tmp153616 '()))))
                                     (declare (not safe))
                                     (cons __tmp153618 __tmp153615))))
                              (declare (not safe))
                              (cons '%#struct-direct-instance? __tmp153614)))
                           (__tmp153583
                            (let ((__tmp153601
                                   (let ((__tmp153602
                                          (let ((__tmp153610
                                                 (let ((__tmp153611
                                                        (let ((__tmp153612
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _self151726_
                          __id152607
                          __klass152604
                          '#f))))
                  (declare (not safe))
                  (cons __tmp153612 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp153611)))
                                                (__tmp153603
                                                 (let ((__tmp153608
                                                        (let ((__tmp153609
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _field151782_ '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp153609)))
               (__tmp153604
                (let ((__tmp153606
                       (let ((__tmp153607
                              (let ()
                                (declare (not safe))
                                (cons _$obj151794_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp153607)))
                      (__tmp153605
                       (let () (declare (not safe)) (cons _value151786_ '()))))
                  (declare (not safe))
                  (cons __tmp153606 __tmp153605))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153608
                                                         __tmp153604))))
                                            (declare (not safe))
                                            (cons __tmp153610 __tmp153603))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp153602)))
                                  (__tmp153584
                                   (let ((__tmp153585
                                          (let ((__tmp153586
                                                 (let ((__tmp153599
                                                        (let ((__tmp153600
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons 'class-slot-set! '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp153600)))
               (__tmp153587
                (let ((__tmp153596
                       (let ((__tmp153597
                              (let ((__tmp153598
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _self151726_
                                        __id152607
                                        __klass152604
                                        '#f))))
                                (declare (not safe))
                                (cons __tmp153598 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp153597)))
                      (__tmp153588
                       (let ((__tmp153594
                              (let ((__tmp153595
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj151794_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp153595)))
                             (__tmp153589
                              (let ((__tmp153591
                                     (let ((__tmp153592
                                            (let ((__tmp153593
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self151726_
                                                      __slot152608
                                                      __klass152604
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp153593 '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp153592)))
                                    (__tmp153590
                                     (let ()
                                       (declare (not safe))
                                       (cons _value151786_ '()))))
                                (declare (not safe))
                                (cons __tmp153591 __tmp153590))))
                         (declare (not safe))
                         (cons __tmp153594 __tmp153589))))
                  (declare (not safe))
                  (cons __tmp153596 __tmp153588))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153599
                                                         __tmp153587))))
                                            (declare (not safe))
                                            (cons '%#call __tmp153586))))
                                     (declare (not safe))
                                     (cons __tmp153585 '()))))
                              (declare (not safe))
                              (cons __tmp153601 __tmp153584))))
                       (declare (not safe))
                       (cons __tmp153613 __tmp153583))))
                (declare (not safe))
                (cons '%#if __tmp153582))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp153581 '()))))
                                          (declare (not safe))
                                          (cons __tmp153621 __tmp153580))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp153579))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp153577 _stx151727_))
                         (let ((__tmp153567
                                (let ((__tmp153568
                                       (let ((__tmp153575
                                              (let ((__tmp153576
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons 'unchecked-slot-set!
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#ref __tmp153576)))
                                             (__tmp153569
                                              (let ((__tmp153570
                                                     (let ((__tmp153572
                                                            (let ((__tmp153573
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153574
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self151726_
                                     __slot152608
                                     __klass152604
                                     '#f))))
                             (declare (not safe))
                             (cons __tmp153574 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp153573)))
                   (__tmp153571
                    (let () (declare (not safe)) (cons _value151786_ '()))))
               (declare (not safe))
               (cons __tmp153572 __tmp153571))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _object151784_
                                                      __tmp153570))))
                                         (declare (not safe))
                                         (cons __tmp153575 __tmp153569))))
                                  (declare (not safe))
                                  (cons '%#call __tmp153568))))
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp153567
                            _stx151727_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _hd151738151760_
                                           _hd151735151752_)
                                          (let ()
                                            (declare (not safe))
                                            (_g151730151744_
                                             _g151731151747_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g151730151744_ _g151731151747_)))))
                          (let ()
                            (declare (not safe))
                            (_g151730151744_ _g151731151747_))))))
              (declare (not safe))
              (_g151729151796_ _args151728_))))))
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
      (lambda (_self151560_ _stx151561_ _args151562_)
        (let* ((_self151563151572_ _self151560_)
               (_E151565151576_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self151563151572_))))
               (_K151566151583_
                (lambda (_inline151579_ _dispatch151580_ _arity151581_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self151560_ _args151562_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx151561_
                         _arity151581_)))
                  (if _inline151579_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp153663
                               (let ((__tmp153664
                                      (_inline151579_ _stx151561_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp153664
                                  _stx151561_))))
                          (declare (not safe))
                          (gxc#compile-e__0 __tmp153663)))
                      (if _dispatch151580_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch151580_))
                            (let ((__tmp153658
                                   (let ((__tmp153659
                                          (let ((__tmp153660
                                                 (let ((__tmp153661
                                                        (let ((__tmp153662
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch151580_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp153662))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153661
                                                         _args151562_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp153660))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp153659
                                      _stx151561_))))
                              (declare (not safe))
                              (gxc#compile-e__0 __tmp153658)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _stx151561_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self151563151572_ 'gxc#!lambda::t))
              (let* ((_e151567151586_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151563151572_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e151568151589_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151563151572_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity151592_ _e151568151589_)
                     (_e151569151594_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151563151572_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch151597_ _e151569151594_)
                     (_e151570151599_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151563151572_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline151602_ _e151570151599_))
                (declare (not safe))
                (_K151566151583_
                 _inline151602_
                 _dispatch151597_
                 _arity151592_))
              (let () (declare (not safe)) (_E151565151576_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self151399_ _stx151400_ _args151401_)
        (let* ((_self151402151409_ _self151399_)
               (_E151404151413_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self151402151409_))))
               (_K151405151427_
                (lambda (_clauses151416_)
                  (let ((_$e151422_
                         (let ((__tmp153665
                                (lambda (_g151417151419_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g151417151419_
                                     _args151401_)))))
                           (declare (not safe))
                           (find __tmp153665 _clauses151416_))))
                    (if _$e151422_
                        ((lambda (_clause151425_)
                           (let ((__method152880
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause151425_
                                     'optimize-call))))
                             (if __method152880
                                 (__method152880
                                  _clause151425_
                                  _stx151400_
                                  _args151401_)
                                 (let ()
                                   (declare (not safe))
                                   (error '"Missing method"
                                          _clause151425_
                                          'optimize-call)))))
                         _$e151422_)
                        (let ((__tmp153666
                               (map gxc#!lambda-arity _clauses151416_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx151400_
                           __tmp153666)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self151402151409_
                 'gxc#!case-lambda::t))
              (let* ((_e151406151430_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151402151409_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e151407151433_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151402151409_
                         '2
                         gxc#!case-lambda::t
                         '#f)))
                     (_clauses151436_ _e151407151433_))
                (declare (not safe))
                (_K151405151427_ _clauses151436_))
              (let () (declare (not safe)) (_E151404151413_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self151213_ _args151214_)
        (let* ((_self151215151222_ _self151213_)
               (_E151217151226_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self151215151222_))))
               (_K151218151266_
                (lambda (_arity151229_)
                  (let* ((_arity151230151239_ _arity151229_)
                         (_E151233151243_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (error '"No clause matching"
                                     _arity151230151239_)))))
                    (let ((_K151237151263_
                           (lambda ()
                             (fx= (length _args151214_) _arity151229_)))
                          (_K151234151249_
                           (lambda (_arity151247_)
                             (fx>= (length _args151214_) _arity151247_))))
                      (let ((_try-match151232151259_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity151230151239_))
                                   (let ((_tl151236151254_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity151230151239_)))
                                         (_hd151235151252_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity151230151239_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl151236151254_))
                                         (let ((_arity151257_
                                                _hd151235151252_))
                                           (declare (not safe))
                                           (_K151234151249_ _arity151257_))
                                         (let ()
                                           (declare (not safe))
                                           (_E151233151243_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E151233151243_))))))
                        (if (let ()
                              (declare (not safe))
                              (fixnum? _arity151230151239_))
                            (let () (declare (not safe)) (_K151237151263_))
                            (let ()
                              (declare (not safe))
                              (_try-match151232151259_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self151215151222_ 'gxc#!lambda::t))
              (let* ((_e151219151269_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151215151222_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e151220151272_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151215151222_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity151275_ _e151220151272_))
                (declare (not safe))
                (_K151218151266_ _arity151275_))
              (let () (declare (not safe)) (_E151217151226_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self151098_ _stx151099_ _args151100_)
        (let* ((_self151101151109_ _self151098_)
               (_E151103151113_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self151101151109_))))
               (_K151104151197_
                (lambda (_dispatch151116_ _table151117_)
                  (let* ((_g151118151127_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch151116_)))
                         (_else151120151135_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch151116_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _stx151099_))))
                         (_K151122151181_
                          (lambda (_main151138_ _keys151139_)
                            (let ((_g153667_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx151099_
                                      _args151100_))))
                              (begin
                                (let ((_g153668_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g153667_)
                                             (##vector-length _g153667_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g153668_ 2)))
                                      (error "Context expects 2 values"
                                             _g153668_)))
                                (let ((_pargs151141_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g153667_ 0)))
                                      (_kwargs151142_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g153667_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main151138_))
                                    (if _table151117_
                                        (let ((_xargs151149_
                                               (map (lambda (_key151144_)
                                                      (let ((_$e151146_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq__0 _key151144_ _kwargs151142_))))
                (if _$e151146_ (values _$e151146_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys151139_)))
                                          (for-each
                                           (lambda (_kw151151_)
                                             (if (memq (car _kw151151_)
                                                       _keys151139_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx151099_
                                                    _keys151139_
                                                    _kw151151_))))
                                           _kwargs151142_)
                                          (let ((__tmp153720
                                                 (let ((__tmp153721
                                                        (let ((__tmp153722
                                                               (let ((__tmp153727
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp153728
                                     (let ()
                                       (declare (not safe))
                                       (cons _main151138_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp153728)))
                             (__tmp153723
                              (let ((__tmp153725
                                     (let ((__tmp153726
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp153726)))
                                    (__tmp153724
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs151141_
                                               _xargs151149_))))
                                (declare (not safe))
                                (cons __tmp153725 __tmp153724))))
                         (declare (not safe))
                         (cons __tmp153727 __tmp153723))))
                  (declare (not safe))
                  (cons '%#call __tmp153722))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp153721
                                                    _stx151099_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0 __tmp153720)))
                                        (let* ((_kwt151153_
                                                (let ((__tmp153669
                                                       (gensym '__kwt)))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp153669)))
                                               (_kwvars151156_
                                                (map (lambda (_g153670_)
                                                       (let ((__tmp153671
                                                              (gensym '__kw)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp153671)))
                                                     _kwargs151142_))
                                               (_kwbind151161_
                                                (map (lambda (_kw151158_
                                                              _kwvar151159_)
                                                       (let ((__tmp153674
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar151159_ '())))
                     (__tmp153672
                      (let ((__tmp153673 (cdr _kw151158_)))
                        (declare (not safe))
                        (cons __tmp153673 '()))))
                 (declare (not safe))
                 (cons __tmp153674 __tmp153672)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs151142_
                                                     _kwvars151156_))
                                               (_kwset151166_
                                                (map (lambda (_kw151163_
                                                              _kwvar151164_)
                                                       (let ((__tmp153675
                                                              (let ((__tmp153676
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp153684
                                    (let ((__tmp153685
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt151153_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp153685)))
                                   (__tmp153677
                                    (let ((__tmp153681
                                           (let ((__tmp153682
                                                  (let ((__tmp153683
                                                         (car _kw151163_)))
                                                    (declare (not safe))
                                                    (cons __tmp153683 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp153682)))
                                          (__tmp153678
                                           (let ((__tmp153679
                                                  (let ((__tmp153680
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar151164_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp153680))))
                                             (declare (not safe))
                                             (cons __tmp153679 '()))))
                                      (declare (not safe))
                                      (cons __tmp153681 __tmp153678))))
                               (declare (not safe))
                               (cons __tmp153684 __tmp153677))))
                        (declare (not safe))
                        (cons '(%#ref symbolic-table-set!) __tmp153676))))
                 (declare (not safe))
                 (cons '%#call __tmp153675)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs151142_
                                                     _kwvars151156_))
                                               (_xkwargs151171_
                                                (map (lambda (_kw151168_
                                                              _kwvar151169_)
                                                       (let ((__tmp153688
                                                              (car _kw151168_))
                                                             (__tmp153686
                                                              (let ((__tmp153687
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar151169_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp153687))))
                 (declare (not safe))
                 (cons __tmp153688 __tmp153686)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs151142_
                                                     _kwvars151156_))
                                               (_xargs151178_
                                                (map (lambda (_key151173_)
                                                       (let ((_$e151175_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq__0 _key151173_ _xkwargs151171_))))
                 (if _$e151175_ (values _$e151175_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys151139_)))
                                          (let ((__tmp153689
                                                 (let ((__tmp153690
                                                        (let ((__tmp153691
                                                               (let ((__tmp153692
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp153693
                                     (let ((__tmp153694
                                            (let ((__tmp153708
                                                   (let ((__tmp153709
                                                          (let ((__tmp153719
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt151153_ '())))
                        (__tmp153710
                         (let ((__tmp153711
                                (let ((__tmp153712
                                       (let ((__tmp153713
                                              (let ((__tmp153714
                                                     (let ((__tmp153716
                                                            (let ((__tmp153717
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153718 (length _kwargs151142_)))
                             (declare (not safe))
                             (cons __tmp153718 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp153717)))
                   (__tmp153715
                    (let () (declare (not safe)) (cons '(%#quote 0) '()))))
               (declare (not safe))
               (cons __tmp153716 __tmp153715))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-symbolic-table)
                                                      __tmp153714))))
                                         (declare (not safe))
                                         (cons '%#call __tmp153713))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp153712
                                   _stx151099_))))
                           (declare (not safe))
                           (cons __tmp153711 '()))))
                    (declare (not safe))
                    (cons __tmp153719 __tmp153710))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153709 '())))
                                                  (__tmp153695
                                                   (let ((__tmp153696
                                                          (let ((__tmp153697
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp153698
                                (let ((__tmp153699
                                       (let ((__tmp153700
                                              (let ((__tmp153701
                                                     (let ((__tmp153706
                                                            (let ((__tmp153707
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main151138_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp153707)))
                   (__tmp153702
                    (let ((__tmp153704
                           (let ((__tmp153705
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt151153_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp153705)))
                          (__tmp153703
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs151141_ _xargs151178_))))
                      (declare (not safe))
                      (cons __tmp153704 __tmp153703))))
               (declare (not safe))
               (cons __tmp153706 __tmp153702))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp153701))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp153700
                                          _stx151099_))))
                                  (declare (not safe))
                                  (cons __tmp153699 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp153698 _kwset151166_))))
                    (declare (not safe))
                    (cons '%#begin __tmp153697))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153696 '()))))
                                              (declare (not safe))
                                              (cons __tmp153708 __tmp153695))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp153694))))
                                (declare (not safe))
                                (cons __tmp153693 '()))))
                         (declare (not safe))
                         (cons _kwbind151161_ __tmp153692))))
                  (declare (not safe))
                  (cons '%#let-values __tmp153691))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp153690
                                                    _stx151099_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0
                                             __tmp153689)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g151118151127_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e151123151184_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g151118151127_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                               (_e151124151187_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g151118151127_
                                   '2
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_keys151190_ _e151124151187_)
                               (_e151125151192_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g151118151127_
                                   '3
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_main151195_ _e151125151192_))
                          (declare (not safe))
                          (_K151122151181_ _main151195_ _keys151190_))
                        (let () (declare (not safe)) (_else151120151135_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self151101151109_
                 'gxc#!kw-lambda::t))
              (let* ((_e151105151200_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151101151109_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e151106151203_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151101151109_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table151206_ _e151106151203_)
                     (_e151107151208_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151101151109_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch151211_ _e151107151208_))
                (declare (not safe))
                (_K151104151197_ _dispatch151211_ _table151206_))
              (let () (declare (not safe)) (_E151103151113_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx150711_ _args150712_)
        (let _lp150714_ ((_rest150716_ _args150712_)
                         (_pargs150717_ '())
                         (_kwargs150718_ '()))
          (let* ((___stx152762152763_ _rest150716_)
                 (_g150724150776_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx152762152763_)))))
            (let ((___kont152764152765_
                   (lambda (_L150955_ _L150956_)
                     (let ((__tmp153729
                            (let ()
                              (declare (not safe))
                              (cons _L150956_ _pargs150717_))))
                       (declare (not safe))
                       (_lp150714_ _L150955_ __tmp153729 _kwargs150718_))))
                  (___kont152766152767_
                   (lambda (_L150901_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L150901_ _pargs150717_))
                             (reverse _kwargs150718_))))
                  (___kont152768152769_
                   (lambda (_L150848_ _L150849_ _L150850_)
                     (let ((_kw150867_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _L150850_))))
                       (if (assq _kw150867_ _kwargs150718_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx150711_
                              _kw150867_))
                           (let ((__tmp153730
                                  (let ((__tmp153731
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw150867_ _L150849_))))
                                    (declare (not safe))
                                    (cons __tmp153731 _kwargs150718_))))
                             (declare (not safe))
                             (_lp150714_
                              _L150848_
                              _pargs150717_
                              __tmp153730))))))
                  (___kont152770152771_
                   (lambda (_L150796_ _L150797_)
                     (let ((__tmp153732
                            (let ()
                              (declare (not safe))
                              (cons _L150797_ _pargs150717_))))
                       (declare (not safe))
                       (_lp150714_ _L150796_ __tmp153732 _kwargs150718_))))
                  (___kont152772152773_
                   (lambda ()
                     (values (reverse _pargs150717_)
                             (reverse _kwargs150718_)))))
              (let* ((_g150723150783_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx152762152763_))
                            (___kont152772152773_)
                            (let () (declare (not safe)) (_g150724150776_)))))
                     (___match152869152870_
                      (lambda (_e150757150816_
                               _hd150756150819_
                               _tl150755150821_
                               _e150760150824_
                               _hd150759150827_
                               _tl150758150829_
                               _e150763150832_
                               _hd150762150835_
                               _tl150761150837_
                               _e150766150840_
                               _hd150765150843_
                               _tl150764150845_)
                        (let ((_L150848_ _tl150764150845_)
                              (_L150849_ _hd150765150843_)
                              (_L150850_ _hd150762150835_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L150850_))
                              (___kont152768152769_
                               _L150848_
                               _L150849_
                               _L150850_)
                              (___kont152770152771_
                               _tl150755150821_
                               _hd150756150819_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx152762152763_))
                    (let ((_e150730150920_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx152762152763_))))
                      (let ((_tl150728150925_
                             (let ()
                               (declare (not safe))
                               (##cdr _e150730150920_)))
                            (_hd150729150923_
                             (let ()
                               (declare (not safe))
                               (##car _e150730150920_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd150729150923_))
                            (let ((_e150733150928_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd150729150923_))))
                              (let ((_tl150731150933_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e150733150928_)))
                                    (_hd150732150931_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e150733150928_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd150732150931_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd150732150931_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl150731150933_))
                                            (let ((_e150736150936_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl150731150933_))))
                                              (let ((_tl150734150941_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e150736150936_)))
                                                    (_hd150735150939_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e150736150936_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd150735150939_))
                                                    (let ((_e150737150944_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd150735150939_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e150737150944_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl150734150941_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl150728150925_))
                          (let ((_e150740150947_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl150728150925_))))
                            (let ((_tl150738150952_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e150740150947_)))
                                  (_hd150739150950_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e150740150947_))))
                              (___kont152764152765_
                               _tl150738150952_
                               _hd150739150950_)))
                          (___kont152770152771_
                           _tl150728150925_
                           _hd150729150923_))
                      (___kont152770152771_ _tl150728150925_ _hd150729150923_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e150737150944_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl150734150941_))
                          (___kont152766152767_ _tl150728150925_)
                          (___kont152770152771_
                           _tl150728150925_
                           _hd150729150923_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl150734150941_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl150728150925_))
                              (let ((_e150766150840_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl150728150925_))))
                                (let ((_tl150764150845_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e150766150840_)))
                                      (_hd150765150843_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e150766150840_))))
                                  (___match152869152870_
                                   _e150730150920_
                                   _hd150729150923_
                                   _tl150728150925_
                                   _e150733150928_
                                   _hd150732150931_
                                   _tl150731150933_
                                   _e150736150936_
                                   _hd150735150939_
                                   _tl150734150941_
                                   _e150766150840_
                                   _hd150765150843_
                                   _tl150764150845_)))
                              (___kont152770152771_
                               _tl150728150925_
                               _hd150729150923_))
                          (___kont152770152771_
                           _tl150728150925_
                           _hd150729150923_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl150734150941_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl150728150925_))
                                                            (let ((_e150766150840_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl150728150925_))))
                      (let ((_tl150764150845_
                             (let ()
                               (declare (not safe))
                               (##cdr _e150766150840_)))
                            (_hd150765150843_
                             (let ()
                               (declare (not safe))
                               (##car _e150766150840_))))
                        (___match152869152870_
                         _e150730150920_
                         _hd150729150923_
                         _tl150728150925_
                         _e150733150928_
                         _hd150732150931_
                         _tl150731150933_
                         _e150736150936_
                         _hd150735150939_
                         _tl150734150941_
                         _e150766150840_
                         _hd150765150843_
                         _tl150764150845_)))
                    (___kont152770152771_ _tl150728150925_ _hd150729150923_))
                (___kont152770152771_ _tl150728150925_ _hd150729150923_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont152770152771_
                                             _tl150728150925_
                                             _hd150729150923_))
                                        (___kont152770152771_
                                         _tl150728150925_
                                         _hd150729150923_))
                                    (___kont152770152771_
                                     _tl150728150925_
                                     _hd150729150923_))))
                            (___kont152770152771_
                             _tl150728150925_
                             _hd150729150923_))))
                    (let () (declare (not safe)) (_g150723150783_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self150707_ _stx150708_ _args150709_)
        (let () (declare (not safe)) (gxc#xform-call% _stx150708_))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
